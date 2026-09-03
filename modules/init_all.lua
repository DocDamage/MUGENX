-- MUGEN X ENGINE - Deferred Module Bootstrap
-- This file is required very early by external/script/main.lua, before Ikemen's
-- hook table exists. It therefore defines the runtime entrypoint immediately
-- and delays all module initialization until CommonLua invokes mugen_x_loop().

local registry = require("module_registry")
local runtime = require("runtime")

local state = {
    bootstrapped = false,
    hook_wrapped = false,
    loaded = {},
    load_order = {},
    failures = {},
    match_started = false,
    match_ended = false,
    last_round_state = nil,
    last_round_no = nil,
}

_G.mugen_x_modules = state

local function log_status(status, phase, module_id, detail)
    local line = string.format("[MUGENX:%s] %s %s", status, phase, module_id or "runtime")
    if detail and detail ~= "" then
        line = line .. " - " .. tostring(detail)
    end
    print(line)
end

local function remember_failure(id, phase, err)
    state.failures[#state.failures + 1] = {
        id = id,
        phase = phase,
        error = tostring(err),
    }
    log_status("FAIL", phase, id, err)
end

local function safe_module_call(id, module_table, function_name, ...)
    if type(module_table) ~= "table" or type(module_table[function_name]) ~= "function" then
        return true
    end
    local ok, err = pcall(module_table[function_name], ...)
    if not ok then
        remember_failure(id, function_name, err)
        return false
    end
    return true
end

local function wrap_hook_add()
    if state.hook_wrapped then return true end
    if type(hook) ~= "table" or type(hook.add) ~= "function" then return false end

    local original_add = hook.add
    hook.add = function(list, name, fn)
        if type(fn) ~= "function" then
            return original_add(list, name, fn)
        end
        return original_add(list, name, function(...)
            local ok, err = pcall(fn, ...)
            if not ok then
                remember_failure(name or "anonymous", "hook:" .. tostring(list), err)
            end
        end)
    end
    state.hook_wrapped = true
    return true
end

local function load_spec(spec, allow_non_active, visiting)
    if state.loaded[spec.id] then
        return state.loaded[spec.id]
    end
    if not allow_non_active and spec.status ~= "active" then
        return nil
    end

    visiting = visiting or {}
    if visiting[spec.id] then
        remember_failure(spec.id, "dependency", "dependency cycle")
        return nil
    end
    visiting[spec.id] = true

    for _, dependency_id in ipairs(spec.depends or {}) do
        local dep_spec = registry.get(dependency_id)
        if not dep_spec then
            remember_failure(spec.id, "dependency", "missing registry entry: " .. dependency_id)
            visiting[spec.id] = nil
            return nil
        end
        if not load_spec(dep_spec, true, visiting) then
            remember_failure(spec.id, "dependency", "failed dependency: " .. dependency_id)
            visiting[spec.id] = nil
            return nil
        end
    end

    visiting[spec.id] = nil
    local ok_require, mod_or_err = pcall(require, spec.id)
    if not ok_require then
        remember_failure(spec.id, "require", mod_or_err)
        return nil
    end

    local entry = {spec = spec, module = mod_or_err}
    state.loaded[spec.id] = entry
    state.load_order[#state.load_order + 1] = spec.id
    log_status("OK", "require", spec.id, spec.status)

    if spec.init and type(mod_or_err) == "table" and type(mod_or_err.init) == "function" then
        if safe_module_call(spec.id, mod_or_err, "init") then
            log_status("OK", "init", spec.id)
        end
    elseif spec.init then
        log_status("WARN", "init", spec.id, "no init() function")
    end

    return entry
end

function mugen_x_bootstrap()
    if state.bootstrapped then return true end
    if type(hook) ~= "table" or type(hook.add) ~= "function" then
        return false
    end

    wrap_hook_add()
    local counts = registry.counts()
    print("MUGEN X ENGINE - Deferred module bootstrap")
    print(string.format(
        "Registry: %d active / %d experimental / %d archive",
        counts.active, counts.experimental, counts.archive
    ))

    for _, spec in ipairs(registry.active()) do
        load_spec(spec, false)
    end

    state.bootstrapped = true
    print(string.format(
        "MUGEN X ENGINE - Bootstrap complete: %d loaded, %d failure(s)",
        #state.load_order,
        #state.failures
    ))
    return true
end

function mugen_x_enable_module(id)
    local spec = registry.get(id)
    if not spec then
        return false, "unknown module: " .. tostring(id)
    end
    if not mugen_x_bootstrap() then
        return false, "Ikemen hook runtime is not ready"
    end
    local entry = load_spec(spec, true)
    if not entry then
        return false, "module failed to load"
    end
    return true, entry.module
end

function mugen_x_disable_module(id)
    -- Runtime unloading is intentionally conservative: Lua require() state and
    -- hooks cannot be reliably reversed for arbitrary legacy modules.
    return false, "runtime unload is unsupported; change module_registry.lua and restart"
end

local function call_lifecycle(function_name)
    for _, id in ipairs(state.load_order) do
        local entry = state.loaded[id]
        local lifecycle = entry and entry.spec.lifecycle
        if lifecycle and lifecycle[function_name] then
            safe_module_call(id, entry.module, function_name)
        end
    end
end

local function current_round_state()
    return runtime.round_state()
end

local function current_round_no()
    return runtime.round_no()
end

local function dispatch_match_events()
    local round_state = current_round_state()
    local round_no_value = current_round_no()

    if not state.match_started then
        state.match_started = true
        state.match_ended = false
        runtime.run_hook_safe("enter")
        runtime.run_hook_safe("matchstart")
    end

    local is_round_start = runtime.call("roundstart")
    if is_round_start and round_no_value ~= state.last_round_no then
        runtime.run_hook_safe("roundstart", round_no_value)
    end

    runtime.run_hook_safe("tick")
    call_lifecycle("update")

    if state.last_round_state ~= 4 and round_state == 4 then
        runtime.run_hook_safe("roundend", round_no_value)
    end

    if round_state == -1 and not state.match_ended then
        state.match_ended = true
        runtime.run_hook_safe("matchend")
        runtime.run_hook_safe("matchover") -- legacy alias used by older modules
    end

    call_lifecycle("draw")
    runtime.run_hook_safe("draw")

    state.last_round_state = round_state
    state.last_round_no = round_no_value
end

-- CommonLua should call this instead of loop(). The original Ikemen loop is
-- preserved and runs first; MUGEN X then observes the real post-update state.
function mugen_x_loop()
    mugen_x_bootstrap()

    if type(loop) == "function" then
        local ok, err = pcall(loop)
        if not ok then
            remember_failure("ikemen", "loop", err)
            error(err)
        end
    end

    dispatch_match_events()
end

function mugen_x_registry_snapshot()
    local counts = registry.counts()
    local loaded = {}
    for _, id in ipairs(state.load_order) do
        loaded[#loaded + 1] = id
    end
    return {
        counts = counts,
        loaded = loaded,
        failures = state.failures,
        runtime_errors = runtime.get_errors(),
    }
end

return {
    bootstrap = mugen_x_bootstrap,
    enable = mugen_x_enable_module,
    registry = registry,
    runtime = runtime,
    state = state,
}
