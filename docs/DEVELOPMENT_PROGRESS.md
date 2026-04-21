# MUGEN X ENGINE - Development Progress

## 2026-04-21 Stabilization Snapshot

- The canonical roster pipeline is now centered on `tools/build_roster_from_inventory.py`
- `tools/content_inventory.py` and `tools/content_inventory_overrides.json` now classify `chars/` content into playable, story, support, and review buckets
- `tools/roster_policy.json` now drives:
  - canonical duplicate suppression
  - explicit promote/defer decisions
  - glob and path exclusions
  - controlled default-stage allowlists
- `tools/build_roster_from_inventory.py` now supports:
  - dry-run diffs by default
  - guarded `--write`
  - `--max-promoted-default-stage-entries`
  - broken-reference quarantine during roster build
- `data/select.def` was rebuilt from the audited pipeline and then rewritten again after broken-reference pruning
- Current active roster state:
  - 548 rebuilt entries
  - 548 reused stage assignments
  - 102 broken-reference candidates auto-quarantined
  - 9 explicitly deferred default-stage candidates
  - 7 canonical-suppressed duplicate candidates
- `tools/validate_system.py` now covers:
  - repo-root-aware validation
  - JSON output
  - active-roster `.def` reference checks
  - per-run log offset scanning
  - waited-run log failure gating
- `TEST_LAUNCH.bat` now supports:
  - `--dry-run`
  - `--wait`
  - `--capture-log`
  - `--fail-on-log-errors`
  - fresh-log smoke-test gating and console artifact capture
- `data/system.def` no longer points to missing BGM files during smoke tests
- Active-roster overflow literals were partially clamped to int32-safe bounds in the current playable set
- Waited smoke is still surfacing console-side `9999999999` int32 warnings, so that cleanup remains in progress
- `modules/init_all.lua` is now manifest-driven and explicitly loads `settings_manager` as a first-party dependency
- `tools/audit_lua_modules.py` now generates:
  - `reports/lua_module_audit.json`
  - `reports/lua_module_audit_summary.txt`
- Current Lua audit snapshot after wiring `settings_manager`:
  - 79 module files
  - 16 manifest-loaded modules
  - 5 dependency-only modules
  - 57 unwired modules
- Verified runtime workflow:
  - `python tools\\validate_system.py`
  - `TEST_LAUNCH.bat --dry-run --no-pause`
  - `TEST_LAUNCH.bat --wait --capture-log --fail-on-log-errors --no-pause`
- The workspace is now attached to the GitHub `main` history for `DocDamage/MUGENX`, with Git LFS enabled for archived character pack files
- Current follow-up priorities:
  - formalize module registry and active/experimental/archive classification
  - finish tracing and eliminating the remaining console-side int32 overflow warnings
  - add dependency manifest and automated tests for the Python tooling layer
  - consolidate overlapping setup/build entrypoints
  - reduce documentation sprawl into a smaller canonical set

## ★ PHASE 0 — FOUNDATION SETUP
- [x] 0.1 Install Requirements
    - [x] IKEMEN GO (Installed in engine/, assets moved to root)
    - [x] Python 3.11+ (Assumed available)
    - [ ] Node.js (optional UI tools)
    - [x] Image generation backend (SD Client implemented)
    - [ ] Audio backend
- [x] 0.2 Project Folder Structure
- [x] 0.3 Implement Loader Tag System (via engine_loader.lua)

## ★ PHASE 1 — ENGINE ARCHITECTURE
- [x] 1.1 SF2 Engine Module (engine_sf2.lua) - Dizzy System, Hitstop, Physics
- [x] 1.2 MVC Engine Module (engine_mvc.lua) - Super Jump, Magic Series, OTG Logic
- [x] 1.3 AI Engine Module (engine_ai.lua) - Structure Implemented
- [x] 1.4 Engine Switcher (engine_loader.lua created)

## ★ PHASE 2 — SCREENPACK + UI SYSTEM
- [x] 2.1 Screenpack Files (System.def updated with Hybrid Layout & AI Menu)
- [ ] 2.2 UI Pages

## ★ PHASE 3 — AI CHARACTER GENERATOR
- [x] 3.1 Python Pipeline Steps (Generator integrated with SD Client)
- [x] 3.2 Built-In Move Architectures (CMD/AIR/CNS generation implemented)
    - Note: SFF generation currently assumes sprite sheets are manually compiled or placeholders.

## ★ PHASE 4 — AI STAGE GENERATOR
- [x] Generator Outputs (Stage Generator implemented with SD Client)
    - Note: SFF compilation is manual.

## ★ PHASE 5 — AI FUSION LAB
- [x] Fusion Pipeline (fusion.py implemented with Stats Averaging & SD Generation)

## ★ PHASE 6 — DEATH BATTLE SIM ENGINE
- [x] 6.1 Simulation Goals (sim.py implemented)
- [x] 6.3 Engine (Headless execution loop implemented)
    - Note: Result logging requires further Lua hooks for accuracy.

## ★ PHASE 7 — TESTING + POLISH
- [ ] Tuning and Fixes

## ★ PHASE 8 — FINAL PACKAGE
- [ ] Deliverables
