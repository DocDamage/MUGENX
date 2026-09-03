# MUGEN X ENGINE - Development Progress

This is the canonical living status document. Older readiness documents may describe historical states and should not be used as the current completion metric.

## 2026-09-02 — Phase 1-5 Completion Branch

Branch: `phase-1-5-completion`

Status terminology:

- **Active**: loaded by default through the canonical runtime registry.
- **Experimental**: shipped in the repo but not auto-loaded; may still use legacy/mock APIs.
- **Archive**: retained only for compatibility/history.
- **Implemented**: code path is present and statically gated.
- **Runtime verified**: requires a successful waited Ikemen smoke run; implementation alone does not imply this state.

### Phase 1 — Runtime Consolidation — IMPLEMENTED

- `modules/module_registry.lua` is the canonical module classification source.
- Managed modules are classified `active`, `experimental`, or `archive`.
- Legacy polish/balance/finisher modules that still use hypothetical/object-style APIs are explicitly **experimental**, not advertised as active features.
- `modules/runtime.lua` centralizes safe Ikemen API calls, player-context switching, snapshots, character maps, hook registration, and runtime error capture.
- `modules/init_all.lua` now defers bootstrap until Ikemen's native hook runtime exists.
- Both tracked Ikemen configs call `mugen_x_loop()` through `CommonLua`.
- `mugen_x_loop()` preserves the stock Ikemen loop and adds MUGEN X lifecycle dispatch for match/round/tick/draw events.
- `tools/phase_1_5_selfcheck.py` checks registry coverage and flags unclassified Lua modules.

### Phase 2 — Combat + AI Completion — IMPLEMENTED FOR ACTIVE SET

The default active combat/AI layer no longer relies on fake player objects or pseudo command injection.

- `engine_ai.lua`
  - reads real Ikemen snapshots;
  - makes deterministic contextual decisions;
  - publishes `_mugenx_ai_*` character maps;
  - generated MUGEN X fighters consume those maps in CMD controllers;
  - legacy characters keep their own native AI.
- `engine_sf2.lua` and `engine_mvc.lua`
  - publish safe gameplay-profile maps rather than mutating arbitrary character internals.
- `input_history.lua`
  - reads actual Ikemen command buffers with `commandGetState`;
  - records directions/buttons with frame/tick history.
- `guard_crush.lua`
  - observes native guard points and emits pressure/crush events;
  - does not maintain a fake second guard meter.
- `counter_hit.lua`
  - detects real damage/state transitions;
  - no longer injects random/demo bonus damage.
- `combo_trainer.lua`
  - consumes real input history and timing windows.
- `logger.lua`
  - writes real match/round snapshots to `save/mugenx_match_history.jsonl`.

Unfinished legacy combat modules remain experimental until individually converted and runtime-tested.

### Phase 3 — Content Integrity — IMPLEMENTED

- `tools/common/content_lint.py` validates the **active** roster/stage surface rather than treating every archived DEF as playable content.
- High-signal checks include:
  - missing character references;
  - missing active stage DEF/SFF references;
  - malformed section headers;
  - targeted signed-int32 overflow fields;
  - malformed bare velocity tokens.
- `tools/content_lint.py` provides CLI/JSON output and optional guarded overflow repair.
- Reports can be written to:
  - `reports/content_lint.json`;
  - `reports/content_quarantine.json`.
- `tools/validate_system.py` now treats active-content lint errors as release-gate failures and verifies the `mugen_x_loop()` CommonLua contract.

Historical roster stabilization remains in force:

- 548 rebuilt active entries in the April 2026 audited state;
- broken references are quarantined by the canonical roster builder instead of blindly entering `select.def`.

### Phase 4 — Character/Stage Generation Pipeline — IMPLEMENTED

Character generation is consolidated around `tools/ai_character_gen/generator.py`.

Character pipeline:

1. Stable Diffusion or provided numbered source PNGs.
2. AIR/CNS/CMD/DEF generation.
3. Automated SFF definition generation and `sprmake2` invocation.
4. Native MUGEN SND v1.01 packing from numbered WAV sources.
5. DEF reference validation.
6. Atomic `select.def` registration only after successful compilation/validation.

Additional changes:

- `generator_v2.py` is now a compatibility entrypoint for the canonical generator instead of a second competing implementation.
- `tools/common/asset_compile.py` centralizes SFF/SND compilation.
- `tools/common/roster_registration.py` centralizes guarded character/stage registration.
- `tools/sff_packer/sff_prep.py` now uses the canonical compiler utility.

Stage generation is consolidated around `tools/ai_stage_gen/stage_generator.py`:

1. Stable Diffusion or supplied background PNG.
2. SFF compilation using origin axes.
3. Stage DEF generation.
4. Stage validation.
5. Atomic `[ExtraStages]` registration only after successful compilation/validation.

`sprmake2` is an external dependency and is **not vendored**. It is discovered through `MUGENX_SPRMAKE2`, repo-local tool locations, or `PATH`. If it is absent, the generator fails clearly unless `--allow-uncompiled` is explicitly selected; uncompiled content is never auto-registered.

Fighter Factory is no longer required for generated SND files and is no longer the only supported route for generated SFF compilation.

### Phase 5 — Extended Gameplay + Runtime UI — IMPLEMENTED FOR ACTIVE SET

Persistent shared gameplay state:

- `rpg_core.lua`
  - per-player level, XP, gold, stats, inventory, equipment, quests, achievements, counters;
  - real match rewards from `winnerteam`;
  - character-map publishing for MUGEN X-aware content.
- `rpg_save.lua`
  - loads/saves actual RPG state to `save/rpg_data.json`;
  - temp-file + backup replacement;
  - autosave on real match completion.
- `weapon_system.lua`
  - uses the actual `data/weapons_db.json` database;
  - grants/equips inventory-owned weapons;
  - publishes weapon stat/element maps.
- `rpg_quests.lua`
  - quest progress from real damage deltas, native guard pressure, wins, and trial completions.
- `achievements.lua`
  - persistent unlocks driven by real progression/match events.
- `trials.lua`
  - loads `data/trials.json`;
  - verifies trial sequences from real input history in Training mode.
- `tournament.lua`
  - builds brackets from the active `select.def` roster;
  - never randomizes winners;
  - records actual Ikemen match winners when loaded fighters match the bracket pairing.

`dev_menu.lua` is now an F8 runtime dashboard with live pages for:

- runtime/registry health;
- AI decisions;
- RPG/equipment;
- quests/achievements;
- tournament state;
- trials;
- canonical maintenance/generation commands;
- runtime/log errors.

The old dashboard's invalid player-input calls and background Python-process mocks were removed.

## Validation Gates

Branch-only GitHub workflow:

- `.github/workflows/phase-1-5-validation.yml`
- Windows runner / Python 3.11
- sparse checkout of runtime/tooling surface
- runs `python tools/phase_1_5_selfcheck.py --skip-content`

Local/full-content static gate:

```text
python tools/phase_1_5_selfcheck.py
python tools/validate_system.py
```

Runtime gate before merging to `main`:

```text
TEST_LAUNCH.bat --wait --capture-log --fail-on-log-errors --no-pause
```

A Phase 1-5 implementation should not be labeled **runtime verified** until the waited Ikemen run succeeds against the full workspace.

## Remaining After Phase 1-5

These items are outside the requested Phase 1-5 implementation and remain release work:

- convert or archive the remaining experimental legacy Lua modules;
- full active-roster gameplay QA, not just structural linting;
- dependency manifest and broader automated Python tests;
- Lua lint/format/static checks;
- full CI including complete content validation where repository size permits;
- complete motif/front-end UI beyond the runtime dashboard;
- release packaging, installer/update path, and final deliverables;
- final tuning/balance and per-character regression passes.

## Historical 2026-04-21 Stabilization Baseline

The April stabilization pass established the canonical roster builder and improved the smoke-test harness. At that time the important audited state was:

- 548 rebuilt active roster entries;
- 102 broken-reference candidates auto-quarantined;
- 9 explicitly deferred default-stage candidates;
- 7 canonical duplicate suppressions;
- 79 Lua module files with only a small manifest-loaded subset;
- 57 Lua modules effectively unwired;
- remaining console-side int32 overflow warnings;
- no automated Python test suite.

The September Phase 1-5 branch addresses the module-classification/runtime-contract problem, active combat/AI mocks, active-content linting, generated-asset compilation/registration, and the persistent extended-gameplay/dashboard layer. It does not erase the need for final runtime smoke testing and full release QA.
