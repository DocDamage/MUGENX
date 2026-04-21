import sys
import os
import re

def create_move(char_name, move_name, command, move_type, damage):
    print(f"=== MOVE CREATOR: Adding '{move_name}' to {char_name} ===")
    
    char_dir = os.path.join("..", "..", "chars", char_name)
    if not os.path.exists(char_dir):
        print(f"Error: Character {char_name} not found.")
        return

    cmd_path = os.path.join(char_dir, f"{char_name}.cmd")
    cns_path = os.path.join(char_dir, f"{char_name}.cns")
    air_path = os.path.join(char_dir, f"{char_name}.air")
    
    # 1. Update CMD (Command Definition + Trigger)
    if os.path.exists(cmd_path):
        with open(cmd_path, 'r', errors='ignore') as f:
            cmd_content = f.read()
            
        # Define Command
        cmd_def = f"""
; {move_name}
[Command]
name = "{move_name}"
command = {command}
time = 15
"""
        # Insert Command definition after [Command] section start or at top
        # Simplest: Insert at top of file (MUGEN reads top-down for priority, but definitions can be anywhere)
        # Actually, definitions usually go before Statedef -1.
        
        # Define Trigger
        # We need a unique state number. Let's pick a random one between 3000-4000
        state_no = 3000
        while f"statedef {state_no}" in cmd_content.lower() or f"statedef {state_no}" in open(cns_path, errors='ignore').read().lower():
            state_no += 1
            
        trigger_def = f"""
; {move_name}
[State -1, {move_name}]
type = ChangeState
value = {state_no}
triggerall = command = "{move_name}"
trigger1 = statetype = S
trigger1 = ctrl
"""
        # Append Command Def to top (after comments)
        cmd_content = cmd_def + cmd_content
        
        # Append Trigger to [Statedef -1]
        # Find [Statedef -1]
        if "[Statedef -1]" in cmd_content:
            cmd_content = cmd_content.replace("[Statedef -1]", f"[Statedef -1]\n{trigger_def}")
        else:
            print("  ! Warning: [Statedef -1] not found in CMD. Appending to end.")
            cmd_content += f"\n[Statedef -1]\n{trigger_def}"
            
        with open(cmd_path, 'w') as f:
            f.write(cmd_content)
        print(f"  > Updated CMD: Added command '{command}' and trigger for State {state_no}")

    # 2. Update CNS (State Definition)
    if os.path.exists(cns_path):
        hit_def = ""
        if move_type == "Projectile":
            hit_def = f"""
[State {state_no}, Projectile]
type = Projectile
trigger1 = AnimElem = 2
projanim = {state_no+5}
projhitanim = {state_no+6}
projpriority = 1
projshadow = -1
offset = 20,-20
velocity = 4,0
attr = S, SP
damage = {damage}, 10
animtype = Medium
guardflag = MA
hitflag = MAF
pausetime = 10,10
hitsound = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
air.velocity = -2.5,-3.5
"""
        else: # Melee
            hit_def = f"""
[State {state_no}, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = {damage}, 10
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -20
hitsound = 5, 1
guardsound = 6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
"""

        state_def = f"""
; {move_name}
[Statedef {state_no}]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = {state_no}

{hit_def}

[State {state_no}, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
"""
        with open(cns_path, 'a') as f:
            f.write(state_def)
        print(f"  > Updated CNS: Added State {state_no} ({move_type}, {damage} dmg)")

    # 3. Update AIR (Animation)
    if os.path.exists(air_path):
        # Placeholder animation
        anim_def = f"""
; {move_name} Animation
[Begin Action {state_no}]
5000,0, 0,0, 4
5000,1, 0,0, 4
5000,2, 0,0, 4
5000,1, 0,0, 4
5000,0, 0,0, 4
"""
        with open(air_path, 'a') as f:
            f.write(anim_def)
        print(f"  > Updated AIR: Added Action {state_no}")
        
    print(f"SUCCESS: Move '{move_name}' created!")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - MOVE CREATOR ===")
        
        # List chars
        char_dir = os.path.join("..", "..", "chars")
        chars = [d for d in os.listdir(char_dir) if os.path.isdir(os.path.join(char_dir, d))]
        
        for i, c in enumerate(chars):
            print(f"{i+1}. {c}")
            
        try:
            idx = int(input("Select Character (Number): ")) - 1
            if 0 <= idx < len(chars):
                char = chars[idx]
                name = input("Enter Move Name (e.g. Fireball): ")
                cmd = input("Enter Command (e.g. ~D, DF, F, x): ")
                mtype = input("Enter Type (Melee/Projectile): ")
                dmg = int(input("Enter Damage (e.g. 80): "))
                create_move(char, name, cmd, mtype, dmg)
            else:
                print("Invalid selection.")
        except ValueError:
            print("Invalid input.")
        input("\nPress Enter to close...")
    else:
        # Test mode
        create_move("Ryu", "TestMove", "~D, DF, F, x", "Projectile", 100)
