# MUGEN X Technical Debt Audit And Remediation Plan

Date: 2026-04-21
Workspace audited: `F:\MUGENAI\MUGENX`

## Session Update: 2026-04-21 Stabilization Pass

This audit started as a gap analysis, but several high-risk pipeline items were also tightened during the same session. The most important changes now in place are:

- `tools\build_roster_from_inventory.py` is now the active canonical roster builder
- the roster policy now distinguishes:
  - explicit promotion of default-stage candidates
  - explicit defer of risky default-stage candidates
  - residual quarantine for truly unreviewed entries
- the generated quarantine report now separates:
  - `deferred_default_stage_candidates`
  - `default_stage_quarantined_candidates`
  - `promoted_default_stage_entries`
- `build_roster_from_inventory.py` now has a write safety gate:
  - `--max-promoted-default-stage-entries`
- `tools\validate_system.py` is no longer just a file-exists check:
  - it is repo-root aware
  - it supports JSON output
  - it can scan active roster `.def` references for missing files before launch
  - it supports per-run log scanning with `--log-from-offset`
  - it can fail on newly scanned log errors with `--fail-on-log-errors`
- `TEST_LAUNCH.bat` now supports waited smoke-test automation with per-run log gating instead of a simple fire-and-forget launch
- the waited smoke path now also captures console output to `logs\`
- `tools\common\def_references.py` is now shared by validation and roster build logic
- broken active roster candidates are now excluded during roster rebuild instead of discovered only at launch
- `data\select.def` has been rewritten from the audited builder and then rewritten again after broken-reference cleanup
- `data\system.def` no longer references missing BGM assets during smoke tests
- a narrow active-roster overflow clamp pass has been applied to current playable content, but waited smoke still shows some `9999999999`-style console warnings
- `modules\init_all.lua` now acts as a manifest-driven loader with per-module status logging
- `settings_manager` is now explicitly represented in the loader manifest instead of being only an implicit dependency of `dev_menu`
- `tools\audit_lua_modules.py` now generates:
  - `reports\lua_module_audit.json`
  - `reports\lua_module_audit_summary.txt`
- the latest stable audited state is:
  - active roster rebuilt to 548 entries
  - 102 broken-reference playable candidates auto-quarantined
  - 9 explicitly deferred default-stage candidates
  - 7 canonical duplicate suppressions
  - Lua manifest now loads 16 modules
  - 57 Lua modules remain unwired

What remains risky after this pass:

- the workspace is now attached to the GitHub `main` history, but the first full-content push depends on Git LFS handling the archived character-pack payload
- there is still no dependency manifest or automated test suite for the Python tooling layer
- Lua runtime wiring is more understandable and now auditable, but there is still no active/experimental/archive registry boundary
- documentation sprawl is still high, with many older readiness-style docs competing with the living remediation docs
- console-side int32 overflow warnings still appear during waited smoke and need another tracing pass

## Executive Summary

This repo has a large amount of shipped content and a sizable custom toolchain, but the maintenance surface is much less mature than the content volume suggests. The main debt is not "a few bugs"; it is structural:

- environment and path handling are not portable
- multiple setup and roster generators compete with each other
- launch and validation flows are unreliable
- runtime module integration is incomplete
- data integrity checks are weak for a repo with 1,000+ character definition files
- there is no visible dependency manifest, test suite, or VCS hygiene at the current root

The fastest path to a stable project is to stop adding new features first, create a canonical tool/runtime contract, and then clean the data and integration layers in phases.

## Engine Baseline Clarification

This project is already using Ikemen GO as its base runtime, with a custom MUGEN X layer on top.

Local evidence:

- `engine\Ikemen_GO.exe` exists in the workspace
- `data\system.def` points the active script to `external/script/main.lua`
- `external/script/main.lua` injects the custom module path and requires `init_all`
- `modules\init_all.lua` is the current custom runtime layer

This distinction matters for remediation:

- upstream Ikemen GO is the primary external reference for engine behavior and script integration
- custom MUGEN 1.1-only hook projects are not a drop-in architectural base for this repo
- debt cleanup should preserve the Ikemen baseline and reduce drift where possible

## Audit Method

The audit was based on direct inspection and lightweight execution:

- reviewed repo structure, launch scripts, Python tools, Lua modules, and current docs
- scanned for manifests, tests, TODO/FIXME markers, hardcoded paths, and bare `except:` blocks
- ran `python -m compileall tools`
  - result: Python files compiled successfully at syntax level
- ran `python tools\validate_system.py`
  - result: script crashed before validation due to Windows console encoding output
- inspected `Ikemen.log`
  - result: current runtime error exists in `chars\kof\mary\Mary-s.cns`
- analyzed `data\select.def` for broken or suspicious roster entries
- analyzed Lua module wiring by comparing existing modules vs `require(...)` usage

This was a static-plus-smoke audit. It did not include full interactive engine QA or exhaustive per-character gameplay verification.

## Baseline Snapshot

| Metric | Value |
|---|---:|
| Root git repository visible at audit path | No |
| Markdown docs in `docs/` | 31 |
| Python files in `tools/` | 72 |
| Lua files in `modules/` | 79 |
| Lua files in `modules/` + `external\script\` | 92 |
| Character `.def` files under `chars/` | 1370 |
| Stage `.def` files under `stages/` | 257 |
| Hardcoded `D:\MUGENAI\MUGENX` base paths in tools | 22 |
| Bare `except:` blocks in tools | 21 |
| Lua modules required anywhere | 22 of 79 |
| Lua modules never required anywhere | 57 of 79 |
| Setup scripts with overlapping responsibilities | 3 |
| Automated test suite found | None |

## Major Findings

## External Repos And Plugins To Leverage

Not every external repo is equally useful. For this project, the best return comes from using upstream engine references plus modern tooling repos, not collecting more game-content forks.

Recommended high-value references:

- `ikemen-engine/Ikemen-GO`
  - use as the main reference for stock engine behavior, expected script wiring, and compatibility boundaries
- `astral-sh/uv`
  - use for reproducible Python environment and dependency management
- `astral-sh/ruff`
  - use for rapid Python linting and low-friction cleanup
- `pytest-dev/pytest`
  - use for automated regression coverage around path handling, roster generation, and validation
- `mpeterv/luacheck`
  - use for Lua linting once runtime wiring is stabilized
- `JohnnyMorganz/StyLua`
  - use for Lua formatting after active/orphan module boundaries are decided

Plugin guidance:

- GitHub plugin
  - useful now for checking upstream repos, comparing patterns, and later supporting issue/PR workflows
- Superpowers plugin
  - useful as a remediation workflow aid for structured planning, debugging, and TDD discipline
  - not a substitute for upstream engine references

Specific note on `ermaccer/mugenhook`:

- potential value:
  - good as a feature-idea reference for select-screen UX and front-end polish
  - examples called out in its README include animated portraits, animated icons, announcers, slot variations, and stage announcers
- low value for direct integration:
  - the repo explicitly says it "only supports version 1.1 of M.U.G.E.N"
  - installation depends on `Ultimate-ASI-Loader` and Windows DLL hooking
  - this project is built on Ikemen GO, not stock M.U.G.E.N 1.1

Conclusion:

- treat `mugenhook` as optional inspiration only
- do not plan around adopting it as a dependency or architectural base
- prioritize Ikemen GO upstream for runtime questions and modern tooling repos for cleanup automation

## 1. Critical: Environment And Path Portability Are Broken

The toolchain is tightly bound to one machine layout and, in some cases, to one working directory.

Evidence:

- 22 Python tools hardcode `BASE_DIR = Path(r"d:\MUGENAI\MUGENX")`
- current workspace is `F:\MUGENAI\MUGENX`, so those scripts are immediately non-portable here
- affected files include:
  - `tools\update_roster.py`
  - `tools\update_roster_recursive.py`
  - `tools\update_roster_smart.py`
  - `tools\install_zipped_chars.py`
  - `tools\asset_lab.py`
  - `tools\dev_bridge.py`
  - `tools\llm_backend.py`
  - `tools\image_gen_backend.py`
  - `tools\build_release.py`
- `tools\settings\configurator.py` relies on `..\..\save\config.json`, which changes meaning depending on the launch directory

Impact:

- tools silently fail or write outside the active workspace
- onboarding a new machine becomes fragile
- scheduled or scripted automation becomes unsafe

Remediation:

- create a single canonical path resolver module, for example `tools\common\paths.py`
- resolve the project root from `Path(__file__).resolve()` rather than a drive letter
- ban absolute machine-local paths in committed code
- add a smoke test that imports every tool and asserts root resolution matches the current workspace

## 2. Critical: Validation And Launch Flows Are Improving, But Post-Launch Review Still Has Gaps

The current validation and test-launch story is not reliable enough to be used as a gate.

Evidence:

- the original validator/launcher state was broken, but the current state is materially better:
  - `tools\validate_system.py` is now repo-root aware
  - validation has JSON output and active-roster `.def` reference checks
  - `TEST_LAUNCH.bat` supports waited launch, log capture, and per-run log gating
- the newest smoke-test blocker class is now post-launch observability:
  - some warnings appear on console rather than `Ikemen.log`
  - a waited run can exit `0` and still emit useful warnings only to stdout/stderr
- the current log gate catches new `Ikemen.log` failures, but not yet console-only warnings

Impact:

- preflight confidence is much better than at the start of the audit
- repeated smoke tests are now scriptable, but some warning classes are still easy to lose
- maintainers can trust the launch harness more than before, but not yet as a complete artifact capture path

Remediation:

- keep `tools\validate_system.py` as the canonical preflight and post-run log scanner
- add waited-launch console artifact capture to `TEST_LAUNCH.bat`
- preserve the per-run log gate pattern and extend it to include console warnings
- keep a single supported smoke path centered on:
  - `TEST_LAUNCH.bat --wait`
  - per-run log offset scanning
  - optional console capture

## 3. Critical: Roster And Content Inventory Integrity Are Weak

The repo contains a large volume of character data, but the playable roster pipeline does not cleanly distinguish real playable entries from support defs and side files.

Evidence:

- `data\select.def` currently has 662 character entries
- 73 of those entries are suspicious non-playable refs such as:
  - `Hulk_X/end.def`
  - `Kyo_X/ending.def`
  - `Raiden_X/intro.def`
  - `Scorpion_X/ending.def`
  - `darkstalkers/hsien-ko/intro.def`
- `chars/` contains 1370 `.def` files overall, so simple "all defs are characters" logic is unsafe
- there are multiple roster generators with conflicting rules:
  - `tools\update_roster.py`
  - `tools\update_roster_recursive.py`
  - `tools\update_roster_smart.py`
  - `tools\batch_update_roster.py`
  - `tools\install_zipped_chars.py`
  - `tools\cleanup_roster.py`
  - `tools\cleanup_aggressive.py`
- many generators default every entry to `stages/training.def`, which is useful for fallback but not a stable long-term roster strategy
- the current canonical builder now improves this significantly:
  - `tools\build_roster_from_inventory.py` emits a quarantine report
  - risky default-stage entries can be explicitly deferred
  - safe reviewed default-stage entries can be explicitly promoted
  - the builder can refuse `--write` when too many default-stage promotions would land at once

Impact:

- non-playable defs can be surfaced as characters
- different scripts can overwrite `data\select.def` with incompatible assumptions
- roster reproducibility is poor

Remediation:

- build one canonical inventory scanner that classifies defs into:
  - playable character defs
  - intro/ending/story defs
  - support/variant defs
  - unknown/manual-review defs
- generate `select.def` only from the canonical inventory
- make roster generation dry-run by default with diff output
- add a quarantine report for suspicious entries instead of blindly including or deleting them
- keep explicit defer as a first-class policy state for reviewed-but-not-safe families
- keep large default-stage promotion rehearsals behind an explicit count gate

## 4. Critical: There Are Still Live Runtime Content Risks, Even After Roster Cleanup

This is not theoretical debt. The engine log shows a present content failure.

Evidence:

- `Ikemen.log` reports:
  - `chars\kof\mary/Mary-s.cns:4432`
  - `air.velocity: Invalid data: n`
- inspecting `chars\kof\mary\Mary-s.cns` around line 4432 shows an invalid blank line where the engine expected data after the preceding move block
- active-roster startup also surfaced content-adjacent failures that are not simple syntax crashes:
  - missing `.def` references such as `States/Common.st`
  - oversized sentinel values such as `9999999999` in active roster content
  - console-only warnings that do not always land in `Ikemen.log`

Impact:

- current runtime can fail before broader feature validation even begins
- one bad character file can derail launch confidence and make tool feedback noisy

Remediation:

- create a content-lint pass for `.cns`, `.cmd`, `.air`, and `.def` syntax patterns
- start with high-signal parsing checks:
  - malformed numeric vectors
  - missing referenced files
  - orphan intro/ending defs
  - duplicate stage references
- fix currently known blockers first:
  - `chars\kof\mary\Mary-s.cns`
- maintain a `content_exclusions.json` or equivalent quarantine list for known-bad assets until fixed
- reuse the active-roster `.def` reference validation helper inside the roster builder so broken candidates never reach a `--write` rehearsal
- clamp only high-risk oversized scalar literals in active files:
  - `pausemovetime`
  - `supermovetime`
  - `projpriority`
  - selected plain numeric `time` / `movetime` / `trigger Time`
- skip comments, expressions, and `pos` forms in the first automated clamp pass

## 5. High: Lua Runtime Integration Is Incomplete, But The Next Step Is Visibility Rather Than Behavior Change

The codebase has many feature modules, but only a small fraction are actually wired into the current runtime.

Evidence:

- `modules\init_all.lua` requires 15 modules
- only 22 of 79 module files are required anywhere in `modules\` or `external\script\`
- 57 modules are never required at all
- examples of never-required modules include:
  - `achievements.lua`
  - `assist.lua`
  - `burst.lua`
  - `clash_system.lua`
  - `combo_trainer.lua`
  - `dynamic_difficulty.lua`
  - `fatalities.lua`
  - `logger.lua`
  - `parry.lua`
  - `roman_cancel.lua`
  - most `rpg_*` modules
- `external\script\mugenx_main.lua` looks like an alternate hook entrypoint, but `data\system.def` loads `external/script/main.lua`
- `modules\init_all.lua` defines `mugen_x_update()` and `mugen_x_draw()`, but those names are not referenced elsewhere in the scanned runtime files

Impact:

- many shipped systems are probably dead code
- feature completeness is overstated by file count
- contributors cannot tell which runtime contract is real

Remediation:

- define one runtime integration model:
  - explicit module registry
  - standardized lifecycle: `init`, `register_hooks`, `update`, `draw`
- deprecate or delete orphan entrypoints such as unused alternate hook files
- require every active module through a central registry rather than ad hoc `require` calls
- mark modules as one of:
  - active
  - experimental
  - archived
  - dead code pending removal
- before changing gameplay wiring, add a low-risk audit step that classifies modules as:
  - bootstrap-manifest
  - directly-required-elsewhere
  - dependency-only
  - unwired
- treat `modules\init_all.lua` as the current bootstrap manifest until a formal registry lands

## 6. High: Setup, Build, And Asset Pipeline Logic Is Duplicated And Misleading

Several scripts claim to "compile" or "complete setup" when they actually generate placeholder structure or rewrite configuration files.

Evidence:

- overlapping setup scripts:
  - `tools\master_setup.py`
  - `tools\automated_setup.py`
  - `tools\quick_play_setup.py`
- `tools\batch_compile_characters.py` creates `.def`, `.cns`, and `.cmd` placeholder files rather than compiling real sprite/sound assets
- `tools\batch_compile_stages.py` creates stage folder structure and `.def` files, but the script itself states actual SFF compilation still requires Fighter Factory
- setup scripts overwrite `modules\init_all.lua`
- setup scripts generate optimistic status text such as "98% ready" without enforcing hard validation gates

Impact:

- dangerous mismatch between reported state and actual state
- accidental overwrites of hand-maintained files
- impossible to tell which scripts are safe to run on a mature workspace

Remediation:

- split setup into explicit commands:
  - `inventory`
  - `generate-placeholders`
  - `compile-assets`
  - `build-roster`
  - `validate`
  - `launch`
- prevent destructive overwrites unless `--write` or `--force` is passed
- make generated files clearly generated and keep them under a controlled output directory
- stop regenerating handwritten integration files from multiple scripts

## 7. High: Dependency Management Is Missing

The project uses multiple third-party Python packages but has no visible dependency manifest at the audited root.

Evidence:

- no `pyproject.toml`
- no `requirements.txt`
- no `Pipfile`
- imports include:
  - `requests`
  - `pyttsx3`
  - `Pillow`
  - `ctransformers`
  - `diffusers`
  - `torch`
- some scripts install packages at runtime:
  - `tools\tts_backend.py` installs `pyttsx3` on first run

Impact:

- non-reproducible environments
- unclear optional vs required dependencies
- long first-run failures and hidden network side effects

Remediation:

- add a root `pyproject.toml`
- define dependency groups:
  - core tooling
  - AI text
  - AI image
  - TTS
  - dev/test
- remove runtime package installation from scripts
- replace it with actionable startup diagnostics

## 8. Medium: Error Handling And Observability Need Standardization

The codebase swallows failures in too many places.

Evidence:

- 21 bare `except:` blocks in the tools folder
- examples:
  - `tools\generate_mega_content.py`
  - `tools\dev_bridge.py`
  - `tools\fix_folders.py`
  - `tools\remove_broken_chars.py`
  - `tools\settings\configurator.py`
  - `tools\asset_gen\sd_client.py`
- many scripts log with `print(...)` only
- some failures are ignored with `pass`, which hides root causes

Impact:

- silent corruption or silent no-op behavior
- hard-to-debug field failures
- poor operator confidence

Remediation:

- replace bare `except:` with typed exceptions
- add structured logging helpers
- standardize exit codes
- capture log artifacts to `logs/` or a dedicated diagnostics directory

## 9. Medium: AI Integration Is Hardcoded And Operationally Brittle

AI features are scattered across multiple scripts with local assumptions baked in.

Evidence:

- `tools\llm_client.py` hardcodes:
  - `API_URL = "http://localhost:1234/v1/chat/completions"`
  - placeholder API key behavior
- `tools\llm_backend.py` hardcodes model path and workspace drive
- `tools\image_gen_backend.py` hardcodes model ID and output location
- `modules\dev_menu.lua` and `modules\tutorial_dojo.lua` call Python through `os.execute("start /B ...")`

Impact:

- Windows-only coupling
- poor failure reporting from in-game actions
- impossible to know which AI features are optional and healthy

Remediation:

- centralize AI configuration in one config file or env-driven settings layer
- separate capability detection from generation logic
- make in-game Lua call a single bridge command with structured result handling
- document supported local backends and fallback behavior

## 10. Medium: Documentation Is Large But Not Canonical

The repo has a lot of documentation, but much of it is status-report style rather than stable operating guidance.

Evidence:

- 31 markdown files under `docs/`
- no clear root `README` or canonical operator guide was found at the audited root
- several docs make strong readiness claims that do not align with current tool/runtime reality

Impact:

- contributors will follow stale guidance
- important constraints are hard to find
- docs maintenance cost is high

Remediation:

- create a single top-level README as the source of truth
- reduce status docs to archived reports
- keep only living documents for:
  - setup
  - runtime architecture
  - content pipeline
  - troubleshooting
  - release checklist

## Remediation Roadmap

## Phase 0: Freeze Risk And Establish A Safe Baseline

Goal: stop further accidental damage while creating a known-good cleanup branch.

Tasks:

- put the workspace under git if this path is meant to be the active source tree
- tag or snapshot the current state before cleanup
- back up mutable files:
  - `data\select.def`
  - `modules\init_all.lua`
  - `save\config.json`
  - `Ikemen.log`
- declare a temporary feature freeze on new gameplay systems until Phase 2 completes

Acceptance criteria:

- repo has a baseline branch or snapshot
- critical mutable files have restorable backups
- current remediation work can be reviewed as deltas instead of manual comparison

## Phase 1: Make The Tooling Portable And Honest

Goal: ensure scripts run against the current workspace and report real status.

Tasks:

- introduce `tools\common\paths.py`
- remove hardcoded drive-letter roots from all Python tools
- extend `tools\validate_system.py`
  - repo-root aware
  - machine-readable JSON mode
  - active-roster `.def` reference checks
  - per-run `Ikemen.log` offset scanning
- keep `TEST_LAUNCH.bat` as the working smoke harness and add console artifact capture
- normalize all scripts to run correctly from any working directory

Acceptance criteria:

- all core tools run from `F:\MUGENAI\MUGENX` without path edits
- validation exits cleanly with deterministic status codes
- waited smoke tests can preserve both `Ikemen.log` and console warnings as run artifacts

## Phase 2: Repair Content Inventory And Roster Generation

Goal: make playable roster generation deterministic and safe.

Tasks:

- create a canonical content inventory scanner
- add classification rules for playable vs support defs
- generate an audit report for suspicious defs
- rebuild `data\select.def` from canonical inventory only
- remove intro/ending defs from the playable roster
- add duplicate and naming-conflict reports
- keep explicit promote/defer/quarantine states in policy and report outputs
- keep `--max-promoted-default-stage-entries` or equivalent write gate on large rehearsal writes

Acceptance criteria:

- `select.def` is reproducible from a single command
- suspicious refs are reported, not silently included
- no `intro.def` or `ending.def` entries remain in `[Characters]`
- reviewed risky families can be explicitly deferred without remaining in an undifferentiated quarantine bucket

## Phase 3: Fix Known Runtime Blockers And Add Content Linting

Goal: catch broken content before launch.

Completed in this session:

- fixed the live `chars\kof\mary\Mary-s.cns` blocker
- added shared `.def` reference validation in `tools\common\def_references.py`
- updated `tools\validate_system.py` to fail preflight on broken active-roster references
- reused `.def` reference validation inside `tools\build_roster_from_inventory.py`
- auto-quarantined 102 broken-reference playable candidates during the rebuilt roster pass
- added waited-launch console capture and per-run `Ikemen.log` gating to `TEST_LAUNCH.bat`
- removed missing BGM warnings by blanking nonexistent motif music paths in `data\system.def`
- applied a narrow int32 clamp pass to active-roster content that was emitting `9999999999` startup warnings, but some console-side warnings still remain

Tasks:

- fix current known log blocker in `chars\kof\mary\Mary-s.cns`
- create a linter for:
  - invalid numeric fields
  - missing file references
  - malformed vectors
  - invalid stage refs
- add quarantine support for known-bad assets
- update validation to run linting before launch
- reuse `.def` reference validation from `validate_system.py` inside the roster builder to exclude broken would-be active entries before write
- add a narrow active-roster clamp pass for oversized scalar literals that are known to trip startup warnings

Acceptance criteria:

- the current `Ikemen.log` blocker is resolved
- validation reports content issues before launch
- known-bad assets can be excluded without manual file surgery
- broken active candidates do not enter rewritten `select.def`
- waited smoke tests produce both log and console artifacts for review

## Phase 4: Consolidate Runtime Architecture

Goal: turn the module set from a file collection into a controlled runtime.

Completed in this session:

- replaced the opaque bootstrap block in `modules\init_all.lua` with a manifest-driven loader
- added guarded per-module `require` and optional `init()` status logging
- explicitly registered `settings_manager` in the manifest as a first-party dependency
- added `tools\audit_lua_modules.py` plus generated JSON and text audit reports
- produced the first static module wiring snapshot:
  - 79 module files
  - 16 manifest-loaded modules
  - 5 dependency-only modules
  - 57 unwired modules

Tasks:

- define a module manifest, for example `modules\registry.lua`
- classify each module:
  - active
  - experimental
  - archived
- require active modules through the manifest only
- remove or archive orphan integration files such as unused alternate entrypoints
- decide whether hook-based modules self-register on `require` or expose explicit registration functions, then enforce one pattern
- add a static Lua module audit tool before changing the loader contract

Acceptance criteria:

- every active module is loaded intentionally
- unused modules are clearly marked or removed
- runtime integration path is documented and singular
- a generated audit can explain why each module is considered active, dependency-only, or unwired

## Phase 5: Consolidate Setup And Build Commands

Goal: replace overlapping convenience scripts with one composable CLI.

Tasks:

- deprecate:
  - `master_setup.py`
  - `automated_setup.py`
  - ad hoc roster rewrites in installers
- create one entrypoint, for example `tools\cli.py`, with subcommands:
  - `inventory`
  - `roster build`
  - `content lint`
  - `validate`
  - `launch`
  - `ai doctor`
- ensure placeholder generation is opt-in and isolated from real asset compilation

Acceptance criteria:

- operators know which command to run for each task
- no script overwrites runtime files without explicit confirmation flags
- setup flow documentation matches actual command behavior

## Phase 6: Add Dependency And Test Discipline

Goal: make the toolchain reproducible and regression-resistant.

Tasks:

- add `pyproject.toml`
- define optional extras for AI features
- add unit tests for:
  - path resolution
  - roster classification
  - select.def generation
  - validation output
- add smoke tests for:
  - launch preflight
  - sample content lint
- if the repo is moved under git, add CI for the Python tooling layer

Acceptance criteria:

- fresh environment setup is documented and reproducible
- core tools are covered by automated tests
- regressions in roster generation or validation fail fast

## Phase 7: Reduce Documentation Sprawl

Goal: keep only living docs that contributors can trust.

Tasks:

- add root `README.md`
- create canonical docs:
  - `docs\SETUP.md`
  - `docs\RUNTIME_ARCHITECTURE.md`
  - `docs\CONTENT_PIPELINE.md`
  - `docs\TROUBLESHOOTING.md`
  - `docs\RELEASE_CHECKLIST.md`
- move one-off reports into `docs\archive\`
- remove inflated readiness claims from living docs

Acceptance criteria:

- new contributors can find the correct setup flow in one place
- archived reports no longer compete with active guidance

## Prioritized Backlog

| ID | Priority | Task | Outcome |
|---|---|---|---|
| TD-01 | P0 | Put workspace under git or create a clean tracked source mirror | Enables safe remediation and review |
| TD-02 | P0 | Centralize root/path resolution | Removes machine-specific breakage |
| TD-03 | P0 | Reuse active-roster `.def` validation in the roster builder | Prevents broken candidates from reaching `select.def` |
| TD-04 | P0 | Capture waited-launch console warnings as smoke-test artifacts | Preserves warnings that never reach `Ikemen.log` |
| TD-05 | P0 | Fix `Mary-s.cns` current runtime blocker | Removes a live engine failure |
| TD-06 | P1 | Build canonical character/stage inventory scanner | Makes roster generation deterministic |
| TD-07 | P1 | Keep explicit promote/defer/quarantine policy in the roster pipeline | Makes staged review safer and auditable |
| TD-08 | P1 | Add a Lua module audit report before changing runtime wiring | Makes integration status reviewable |
| TD-09 | P1 | Add dependency manifest and optional extras | Makes environments reproducible |
| TD-10 | P1 | Introduce structured logging and typed exceptions | Improves debuggability |
| TD-11 | P1 | Create module registry and classify active modules | Makes runtime integration explicit |
| TD-12 | P1 | Archive or delete orphaned runtime entrypoints | Reduces confusion |
| TD-13 | P2 | Add content linting for `.def/.cns/.cmd/.air` | Prevents bad assets from reaching launch |
| TD-14 | P2 | Add automated tests for tooling | Prevents regressions |
| TD-15 | P2 | Replace runtime `pip install` behavior | Removes hidden side effects |
| TD-16 | P2 | Centralize AI backend config and health checks | Stabilizes optional AI features |
| TD-17 | P3 | Normalize docs into a canonical set | Reduces onboarding friction |
| TD-18 | P3 | Review and prune dead Lua modules | Shrinks maintenance surface |

## Recommended Execution Order

1. TD-01 through TD-05
2. TD-06 through TD-08
3. TD-09 through TD-13
4. TD-14 through TD-18

## Definition Of Done For This Cleanup Program

The technical debt program should be considered complete only when all of the following are true:

- tools run against the current workspace without drive-letter edits
- there is one canonical launch and validation path
- `select.def` is generated from audited inventory rules
- known-bad assets are detected before launch
- active Lua modules are explicitly registered
- dependencies are declared and installable from one manifest
- at least the core Python tooling has automated tests
- docs contain one source of truth for setup and operation

## Immediate Next Actions

If remediation continues from the current session, the next week should focus on these concrete items:

- verify the first GitHub push and then split oversized archive payloads from core source/content if repository size becomes a maintenance problem
- add a formal Lua registry or classification file for active, experimental, and archived modules
- add a dependency manifest and optional extras for Python tooling
- add automated tests around path resolution, roster building, and validation output
- consolidate overlapping setup/build entrypoints into one supported CLI
- reduce living docs to a smaller canonical set and archive stale readiness reports

These six tasks build directly on the work already completed and remove the next layer of operational risk without broad refactors.
