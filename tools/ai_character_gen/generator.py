"""Generate, compile, validate, and register a basic playable MUGEN X character.

Pipeline:
  prompt/source sprites -> PNG sources -> SFF -> AIR/CNS/CMD/DEF -> SND ->
  reference validation -> guarded select.def registration.

Generated characters consume the runtime AI decision maps published by
modules/engine_ai.lua while retaining normal human commands.
"""

from __future__ import annotations

import argparse
import math
import re
import shutil
import struct
import sys
import wave
from pathlib import Path

TOOLS_DIR = Path(__file__).resolve().parents[1]
if str(TOOLS_DIR) not in sys.path:
    sys.path.insert(0, str(TOOLS_DIR))

from asset_gen import sd_client
from common.asset_compile import compile_sff, compile_snd, discover_sprmake2
from common.def_references import missing_def_references
from common.paths import repo_path
from common.roster_registration import register_character

STYLES = {
    "balanced": {"attack": 100, "defence": 100, "life": 1000, "speed": 5.0},
    "rushdown": {"attack": 108, "defence": 92, "life": 950, "speed": 6.2},
    "grappler": {"attack": 118, "defence": 108, "life": 1150, "speed": 3.6},
    "zoner": {"attack": 102, "defence": 96, "life": 975, "speed": 4.6},
    "power": {"attack": 115, "defence": 102, "life": 1080, "speed": 4.0},
}

SPRITE_PROMPTS = {
    "0-0.png": "neutral fighting stance, full body, feet visible, side view",
    "200-0.png": "quick standing punch pose, full body, side view",
    "210-0.png": "heavy standing strike pose, full body, side view",
    "1000-0.png": "projectile casting fighting pose, full body, side view",
    "1001-0.png": "compact glowing fighting-game energy projectile only, centered",
    "1100-0.png": "rising anti-air uppercut pose, full body, side view",
    "1200-0.png": "close-range grab strike pose, full body, side view",
    "3000-0.png": "dramatic super attack pose, full body, side view",
    "9000-0.png": "fighting game character select portrait, head and shoulders",
    "9000-1.png": "dramatic fighting game versus portrait, upper body",
}

COMMON_ACTIONS = [
    0, 5, 10, 11, 12, 20, 21, 40, 41, 42, 43, 47, 100, 105, 120, 130,
    131, 132, 140, 141, 142, 150, 151, 152, 170, 175, 181, 190, 5000, 5001,
    5010, 5011, 5020, 5030, 5040, 5050, 5060, 5070,
]


def slugify(name: str) -> str:
    slug = re.sub(r"[^A-Za-z0-9_-]+", "_", name.strip()).strip("_")
    if not slug:
        raise ValueError("Character name must contain at least one letter or number")
    return slug


def _safe_prompt(name: str, style: str, prompt: str, pose: str) -> str:
    return (
        f"{name}, original 2D fighting game character, {style} archetype, {prompt}, {pose}, "
        "clean readable silhouette, sprite source art, plain flat background, no text, no logo"
    )


def generate_sprites(directory: Path, name: str, style: str, prompt: str) -> None:
    if not sd_client.check_connection():
        raise ConnectionError(
            "Stable Diffusion API is unavailable at the configured URL. "
            "Start Automatic1111 with --api or use --source-sprites."
        )
    negative = "text, logo, watermark, multiple characters, cropped feet, frame, UI"
    for filename, pose in SPRITE_PROMPTS.items():
        output = directory / filename
        result = sd_client.generate_image(
            _safe_prompt(name, style, prompt, pose),
            negative_prompt=negative,
            width=512,
            height=512,
            steps=20,
            output_path=str(output),
        )
        if result is None or not output.is_file():
            raise RuntimeError(f"Image generation failed for {filename}")


def import_sprite_sources(source: Path, destination: Path) -> None:
    source = source.resolve()
    copied = 0
    for filename in SPRITE_PROMPTS:
        src = source / filename
        if src.is_file():
            shutil.copy2(src, destination / filename)
            copied += 1
    required = {"0-0.png", "200-0.png", "210-0.png", "1000-0.png", "1001-0.png", "1100-0.png", "1200-0.png", "3000-0.png", "9000-0.png", "9000-1.png"}
    missing = [filename for filename in sorted(required) if not (destination / filename).is_file()]
    if missing:
        raise FileNotFoundError(f"Missing required source sprites: {', '.join(missing)}")
    if copied == 0:
        raise FileNotFoundError(f"No recognized generated sprite sources found in {source}")


def write_tone(path: Path, frequency: float, duration: float, *, volume: float = 0.28) -> None:
    sample_rate = 22050
    frames = max(1, int(sample_rate * duration))
    with wave.open(str(path), "wb") as wav:
        wav.setnchannels(1)
        wav.setsampwidth(2)
        wav.setframerate(sample_rate)
        payload = bytearray()
        for i in range(frames):
            t = i / sample_rate
            envelope = max(0.0, 1.0 - i / frames)
            sample = math.sin(2 * math.pi * frequency * t)
            sample += 0.35 * math.sin(2 * math.pi * frequency * 1.7 * t)
            value = int(max(-1.0, min(1.0, sample * volume * envelope)) * 32767)
            payload.extend(struct.pack("<h", value))
        wav.writeframes(bytes(payload))


def generate_sounds(directory: Path) -> Path:
    write_tone(directory / "0-0.wav", 180, 0.10)  # light hit/voice surrogate
    write_tone(directory / "1-0.wav", 120, 0.16)  # heavy hit
    write_tone(directory / "2-0.wav", 420, 0.22)  # special
    write_tone(directory / "3-0.wav", 90, 0.32)   # super
    return compile_snd(directory, "generated.snd")


def write_air(path: Path) -> None:
    lines = ["; Generated by MUGEN X", ""]
    for action in COMMON_ACTIONS:
        lines.extend(
            [
                f"[Begin Action {action}]",
                "Clsn2Default: 1",
                "  Clsn2[0] = -22,-92,22,0",
                "0,0, 0,0, 6",
                "",
            ]
        )

    attack_specs = {
        200: (200, "-28,-80,42,-34"),
        210: (210, "-32,-85,55,-28"),
        1000: (1000, "-24,-90,26,0"),
        1001: (1001, "-10,-10,10,10"),
        1100: (1100, "-25,-100,35,-28"),
        1200: (1200, "-28,-85,38,-22"),
        3000: (3000, "-35,-100,62,-18"),
    }
    for action, (sprite_group, attack_box) in attack_specs.items():
        lines.extend(
            [
                f"[Begin Action {action}]",
                "Clsn2Default: 1",
                "  Clsn2[0] = -22,-92,22,0",
                "Clsn1Default: 1",
                f"  Clsn1[0] = {attack_box}",
                f"{sprite_group},0, 0,0, 4",
                f"{sprite_group},0, 0,0, 4",
                f"{sprite_group},0, 0,0, 4",
                "",
            ]
        )
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def write_cns(path: Path, style: str) -> None:
    stats = STYLES[style]
    walk = stats["speed"]
    run = walk * 1.75
    text = f"""; Generated by MUGEN X
[Data]
life = {stats['life']}
power = 3000
attack = {stats['attack']}
defence = {stats['defence']}
fall.defence_up = 50
liedown.time = 60
airjuggle = 15
sparkno = 2
guard.sparkno = 40
KO.echo = 0
volume = 0
IntPersistIndex = 60
FloatPersistIndex = 40

[Size]
xscale = 1
yscale = 1
ground.back = 15
ground.front = 16
air.back = 12
air.front = 12
height = 60
attack.dist = 160
proj.attack.dist = 90
proj.doscale = 0
head.pos = -5,-90
mid.pos = -5,-50
shadowoffset = 0
draw.offset = 0,0

[Velocity]
walk.fwd = {walk:.2f}
walk.back = {-walk * 0.8:.2f}
run.fwd = {run:.2f},0
run.back = {-run * 1.1:.2f},-4
jump.neu = 0,-8.4
jump.back = -2.55,-8.4
jump.fwd = 2.5,-8.4
runjump.back = -2.55,-8.1
runjump.fwd = 4,-8.1
airjump.neu = 0,-8.1
airjump.back = -2.55,-8.1
airjump.fwd = 2.5,-8.1

[Movement]
airjump.num = 1
airjump.height = 35
yaccel = .44
stand.friction = .85
crouch.friction = .82
stand.friction.threshold = 2
crouch.friction.threshold = .05
air.gethit.groundlevel = 25
air.gethit.groundrecover.ground.threshold = -20
air.gethit.groundrecover.groundlevel = 10
air.gethit.airrecover.threshold = -1
air.gethit.airrecover.yaccel = .35
air.gethit.trip.groundlevel = 15
down.bounce.offset = 0,20
down.bounce.yaccel = .4
down.bounce.groundlevel = 12
down.friction.threshold = .05

; Light attack
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
ctrl = 0
velset = 0,0
poweradd = 20

[State 200, Hit]
type = HitDef
trigger1 = Time = 2
attr = S, NA
damage = 32,4
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
ground.type = High
ground.slidetime = 8
ground.hittime = 12
ground.velocity = -3.2,0
air.velocity = -2.4,-3.2
sparkno = -1
guardsparkno = -1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Heavy attack
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0
velset = 0,0
poweradd = 35

[State 210, Hit]
type = HitDef
trigger1 = Time = 4
attr = S, NA
damage = 62,8
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
ground.type = High
ground.slidetime = 12
ground.hittime = 18
ground.velocity = -5.0,-1.5
air.velocity = -4.0,-4.2
fall = 1
sparkno = -1
guardsparkno = -1

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Projectile special
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0
poweradd = 55

[State 1000, Sound]
type = PlaySnd
trigger1 = Time = 1
value = 2,0

[State 1000, Projectile]
type = Projectile
trigger1 = Time = 5
projid = 1000
projanim = 1001
projhitanim = -1
projremanim = -1
projcancelanim = -1
projremove = 1
projremovetime = 120
velocity = 5.5,0
attr = S, SP
damage = 70,10
animtype = Medium
guardflag = MA
hitflag = MAF
pausetime = 6,6
sparkno = -1
guardsparkno = -1
ground.velocity = -4,0
air.velocity = -3,-3

[State 1000, End]
type = ChangeState
trigger1 = Time >= 24
value = 0
ctrl = 1

; Anti-air
[Statedef 1100]
type = S
movetype = A
physics = N
anim = 1100
ctrl = 0
velset = 0,-5.8
poweradd = 45

[State 1100, Hit]
type = HitDef
trigger1 = Time = 2
attr = S, SP
damage = 78,8
animtype = Up
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8,8
ground.velocity = -2,-7
air.velocity = -2,-7
fall = 1
sparkno = -1
guardsparkno = -1

[State 1100, Gravity]
type = VelAdd
trigger1 = Time > 4
y = .44

[State 1100, Land]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

; Close strike / throw archetype command
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 40

[State 1200, Hit]
type = HitDef
trigger1 = Time = 3
attr = S, SA
damage = 90,0
animtype = Hard
guardflag =
hitflag = MAF
priority = 7, Hit
pausetime = 10,10
ground.velocity = -6,-3
air.velocity = -5,-4
fall = 1
sparkno = -1
guardsparkno = -1

[State 1200, End]
type = ChangeState
trigger1 = Time >= 18
value = 0
ctrl = 1

; Super
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
ctrl = 0
velset = 0,0
poweradd = -1000

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 24
movetime = 24
anim = -1
sound = 3,0

[State 3000, Hit]
type = HitDef
trigger1 = Time = 8
attr = S, HA
damage = 220,30
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 16,16
ground.velocity = -8,-5
air.velocity = -7,-6
fall = 1
sparkno = -1
guardsparkno = -1

[State 3000, End]
type = ChangeState
trigger1 = Time >= 32
value = 0
ctrl = 1
"""
    path.write_text(text, encoding="utf-8")


def write_cmd(path: Path) -> None:
    text = r"""; Generated by MUGEN X
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 2

[Command]
name = "light"
command = x
time = 1

[Command]
name = "heavy"
command = y
time = 1

[Command]
name = "projectile"
command = ~D, DF, F, x
time = 18

[Command]
name = "anti_air"
command = ~F, D, DF, x
time = 18

[Command]
name = "close_strike"
command = /F, y
time = 8

[Command]
name = "super"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Statedef -1]

[State -1, Super]
type = ChangeState
value = 3000
triggerall = StateType != A
triggerall = Ctrl
triggerall = Power >= 1000
trigger1 = command = "super"
trigger2 = AILevel > 0 && Map(_mugenx_ai_decision) = 8

[State -1, Projectile]
type = ChangeState
value = 1000
triggerall = StateType != A
triggerall = Ctrl
trigger1 = command = "projectile"
trigger2 = AILevel > 0 && Map(_mugenx_ai_decision) = 1

[State -1, AntiAir]
type = ChangeState
value = 1100
triggerall = StateType != A
triggerall = Ctrl
trigger1 = command = "anti_air"
trigger2 = AILevel > 0 && Map(_mugenx_ai_decision) = 2

[State -1, CloseStrike]
type = ChangeState
value = 1200
triggerall = StateType != A
triggerall = Ctrl
trigger1 = command = "close_strike"
trigger2 = AILevel > 0 && Map(_mugenx_ai_decision) = 3

[State -1, Heavy]
type = ChangeState
value = 210
triggerall = StateType != A
triggerall = Ctrl
trigger1 = command = "heavy"
trigger2 = AILevel > 0 && (Map(_mugenx_ai_decision) = 4 || Map(_mugenx_ai_decision) = 5)

[State -1, Light]
type = ChangeState
value = 200
triggerall = StateType != A
triggerall = Ctrl
trigger1 = command = "light"
trigger2 = AILevel > 0 && Map(_mugenx_ai_decision) = 6 && P2Dist X < 80
"""
    path.write_text(text, encoding="utf-8")


def write_def(path: Path, name: str, slug: str, style: str, *, compiled: bool) -> None:
    sprite = f"{slug}.sff" if compiled else ""
    sound = "generated.snd"
    text = f"""; Generated by MUGEN X
[Info]
name = "{name}"
displayname = "{name}"
versiondate = 09,02,2026
mugenversion = 1.1
author = "MUGEN X ENGINE"
localcoord = 320,240

[Files]
cmd = {slug}.cmd
cns = {slug}.cns
st = {slug}.cns
stcommon = common1.cns
sprite = {sprite}
anim = {slug}.air
sound = {sound}

[Arcade]
intro.storyboard =
ending.storyboard =

[MUGENX]
generated = 1
style = {style}
runtime_ai_maps = 1
compiled = {1 if compiled else 0}
"""
    path.write_text(text, encoding="utf-8")


def build_character(args: argparse.Namespace) -> dict:
    slug = slugify(args.name)
    style = args.style.lower()
    if style not in STYLES:
        raise ValueError(f"Unknown style {style}; choose from {', '.join(sorted(STYLES))}")

    directory = repo_path("chars", "generated", slug)
    if directory.exists() and not args.overwrite:
        raise FileExistsError(f"Character directory already exists: {directory}. Use --overwrite to replace generated files.")
    directory.mkdir(parents=True, exist_ok=True)

    if args.source_sprites:
        import_sprite_sources(Path(args.source_sprites), directory)
    elif not args.no_images:
        generate_sprites(directory, args.name, style, args.prompt)

    write_air(directory / f"{slug}.air")
    write_cns(directory / f"{slug}.cns", style)
    write_cmd(directory / f"{slug}.cmd")
    snd_path = generate_sounds(directory)

    compiled = False
    compile_error = None
    try:
        compile_sff(directory, f"{slug}.sff")
        compiled = True
    except Exception as exc:
        compile_error = str(exc)
        if not args.allow_uncompiled:
            raise

    def_path = directory / f"{slug}.def"
    write_def(def_path, args.name, slug, style, compiled=compiled)
    missing = missing_def_references(def_path)

    registered = False
    if args.register and compiled and not missing:
        registered = register_character(
            f"generated/{slug}/{slug}.def",
            stage=args.stage,
        )
    elif args.register and (not compiled or missing):
        raise RuntimeError(
            "Generated character was not registered because it is not release-valid: "
            f"compiled={compiled}, missing_references={len(missing)}"
        )

    return {
        "name": args.name,
        "slug": slug,
        "style": style,
        "directory": str(directory),
        "def": str(def_path),
        "sff": str(directory / f"{slug}.sff") if compiled else None,
        "snd": str(snd_path),
        "compiled": compiled,
        "compiler": str(discover_sprmake2()) if discover_sprmake2() else None,
        "compile_error": compile_error,
        "missing_references": missing,
        "registered": registered,
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("name", help="Display name for the generated fighter")
    parser.add_argument("--style", default="balanced", choices=sorted(STYLES))
    parser.add_argument("--prompt", default="distinct original costume and combat theme")
    parser.add_argument("--source-sprites", help="Directory containing required group-index PNG source files")
    parser.add_argument("--no-images", action="store_true", help="Do not call Stable Diffusion; use already-present PNGs")
    parser.add_argument("--allow-uncompiled", action="store_true", help="Keep scaffold if sprmake2 is unavailable; never auto-register it")
    parser.add_argument("--no-register", dest="register", action="store_false", help="Do not add the finished character to select.def")
    parser.add_argument("--stage", default="stages/training.def", help="Default stage roster assignment")
    parser.add_argument("--overwrite", action="store_true")
    parser.set_defaults(register=True)
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    try:
        result = build_character(args)
    except Exception as exc:
        print(f"MUGEN X character generation failed: {exc}", file=sys.stderr)
        return 1

    print("MUGEN X CHARACTER GENERATION COMPLETE")
    for key, value in result.items():
        print(f"{key}: {value}")
    return 0 if result["compiled"] and not result["missing_references"] else 2


if __name__ == "__main__":
    raise SystemExit(main())
