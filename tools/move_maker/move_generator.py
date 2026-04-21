import os

def create_move_template(move_type):
    """Create a move template file for custom moves"""
    
    # Create moves directory
    moves_dir = os.path.join("..", "..", "data", "moves")
    os.makedirs(moves_dir, exist_ok=True)
    
    # ULTIMATE MEGA MOVE LIBRARY
    templates = {
        # === BASIC NORMALS ===
        "Standing_Light": "[Statedef 200]\ntype = S\nmovetype = A\nphysics = S\nanim = 200\nctrl = 0\n\n[State 200, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = S, NA\ndamage = 30, 0\nguardpause = 8, 8\nground.type = High",
        "Standing_Medium": "[Statedef 210]\ntype = S\nmovetype = A\nphysics = S\nanim = 210\nctrl = 0\n\n[State 210, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 3\nattr = S, NA\ndamage = 60, 0\nguardpause = 10, 10",
        "Standing_Heavy": "[Statedef 220]\ntype = S\nmovetype = A\nphysics = S\nanim = 220\nctrl = 0\n\n[State 220, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 4\nattr = S, NA\ndamage = 90, 0\nguardpause = 12, 12",
        "Crouching_Light": "[Statedef 400]\ntype = C\nmovetype = A\nphysics = C\nanim = 400\nctrl = 0\n\n[State 400, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = C, NA\ndamage = 25, 0\nground.type = Low",
        "Crouching_Medium": "[Statedef 410]\ntype = C\nmovetype = A\nphysics = C\nanim = 410\nctrl = 0\n\n[State 410, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 3\nattr = C, NA\ndamage = 55, 0\nground.type = Low",
        "Crouching_Heavy": "[Statedef 420]\ntype = C\nmovetype = A\nphysics = C\nanim = 420\nctrl = 0\n\n[State 420, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 5\nattr = C, NA\ndamage = 85, 0\nground.type = Low\nground.velocity = -3, -5",
        "Jumping_Light": "[Statedef 600]\ntype = A\nmovetype = A\nphysics = A\nanim = 600\nctrl = 0\n\n[State 600, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = A, NA\ndamage = 35, 0",
        "Jumping_Medium": "[Statedef 610]\ntype = A\nmovetype = A\nphysics = A\nanim = 610\nctrl = 0\n\n[State 610, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 3\nattr = A, NA\ndamage = 65, 0",
        "Jumping_Heavy": "[Statedef 620]\ntype = A\nmovetype = A\nphysics = A\nanim = 620\nctrl = 0\n\n[State 620, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 4\nattr = A, NA\ndamage = 95, 0\nground.velocity = -4, -6",
        
        # === SPECIAL MOVES (Expanded) ===
        "Projectile": "[Statedef 1000]\ntype = S\nmovetype = A\nphysics = S\nanim = 1000\nctrl = 0\n\n[State 1000, Projectile]\ntype = Projectile\ntrigger1 = AnimElem = 3\nprojanim = 1001\nvelocity = 4, 0\ndamage = 50, 0",
        "Multi_Projectile": "[Statedef 1010]\ntype = S\nmovetype = A\nphysics = S\nanim = 1010\nctrl = 0\n\n[State 1010, Projectile]\ntype = Projectile\ntrigger1 = AnimElem = 3\nprojanim = 1011\nvelocity = 4, -1\noffset = 0, -30\n\n[State 1010, Projectile2]\ntype = Projectile\ntrigger1 = AnimElem = 3\nprojanim = 1011\nvelocity = 4, 0\n\n[State 1010, Projectile3]\ntype = Projectile\ntrigger1 = AnimElem = 3\nprojanim = 1011\nvelocity = 4, 1\noffset = 0, 30",
        "Homing_Projectile": "[Statedef 1020]\ntype = S\nmovetype = A\nphysics = S\nanim = 1020\nctrl = 0\n\n[State 1020, Projectile]\ntype = Projectile\ntrigger1 = AnimElem = 3\nprojanim = 1021\nvelocity = 3, 0\naccel = 0.2, 0\nvelmul = 1.05, 1.0",
        "AntiAir": "[Statedef 1100]\ntype = A\nmovetype = A\nphysics = N\nanim = 1100\nctrl = 0\n\n[State 1100, VelSet]\ntype = VelSet\ntrigger1 = AnimElem = 1\ny = -8\n\n[State 1100, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = A, SA\ndamage = 80, 0\nguardflag = MA",
        "Command_Grab": "[Statedef 1200]\ntype = S\nmovetype = A\nphysics = S\nanim = 1200\nctrl = 0\n\n[State 1200, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = S, NT\ndamage = 120, 0\np2stateno = 1201\np2getp1state = 0\nguardflag = ",
        "Air_Grab": "[Statedef 1210]\ntype = A\nmovetype = A\nphysics = A\nanim = 1210\nctrl = 0\n\n[State 1210, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = A, NT\ndamage = 100, 0\np2stateno = 1211\nguardflag = ",
        "Counter": "[Statedef 1300]\ntype = S\nmovetype = I\nphysics = S\nanim = 1300\nctrl = 0\n\n[State 1300, ReversalDef]\ntype = ReversalDef\ntrigger1 = AnimElem = 1, 5\nreversal.attr = SCA, AA\np2stateno = 1301\nsparkno = 1302",
        "Teleport": "[Statedef 1400]\ntype = A\nmovetype = I\nphysics = N\nanim = 1400\nctrl = 0\n\n[State 1400, PosSet]\ntype = PosSet\ntrigger1 = AnimElem = 3\nx = 100\n\n[State 1400, Turn]\ntype = Turn\ntrigger1 = AnimElem = 3",
        "Rekka": "[Statedef 1500]\ntype = S\nmovetype = A\nphysics = S\nanim = 1500\nctrl = 0\n\n[State 1500, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = S, SA\ndamage = 40, 0\nground.type = Low\nair.type = Low",
        "Charge_Move": "[Statedef 1600]\ntype = S\nmovetype = A\nphysics = S\nanim = 1600\nctrl = 0\n\n[State 1600, VarAdd]\ntype = VarAdd\ntrigger1 = command = \"hold_b\"\nvar(0) = 1\n\n[State 1600, Projectile]\ntype = Projectile\ntrigger1 = var(0) >= 30\nprojanim = 1601\nvelocity = 6, 0\ndamage = fvar(0) * 2",
        "Dive_Kick": "[Statedef 1700]\ntype = A\nmovetype = A\nphysics = N\nanim = 1700\nctrl = 0\n\n[State 1700, VelSet]\ntype = VelSet\ntrigger1 = AnimElem = 1\nx = 3\ny = 5\n\n[State 1700, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = A, SA\ndamage = 60, 0",
        "Dragon_Punch": "[Statedef 1800]\ntype = A\nmovetype = A\nphysics = N\nanim = 1800\nctrl = 0\n\n[State 1800, VelSet]\ntype = VelSet\ntrigger1 = AnimElem = 1\ny = -10\n\n[State 1800, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = A, SA\ndamage = 100, 0\nground.velocity = -3, -8",
        "Slide": "[Statedef 1900]\ntype = C\nmovetype = A\nphysics = N\nanim = 1900\nctrl = 0\n\n[State 1900, VelSet]\ntype = VelSet\ntrigger1 = AnimElem = 1\nx = 8\n\n[State 1900, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = C, SA\ndamage = 50, 0\nground.type = Low",
        
        # === ADVANCED TECHNIQUES ===
        "Dash_Cancel": "[Statedef 2000]\ntype = S\nmovetype = I\nphysics = S\nanim = 2000\nctrl = 1\n\n[State 2000, VelSet]\ntype = VelSet\ntrigger1 = Time = 0\nx = 8\ny = 0",
        "Wave_Dash": "[Statedef 2010]\ntype = C\nmovetype = I\nphysics = C\nanim = 2010\nctrl = 1\n\n[State 2010, VelSet]\ntype = VelSet\ntrigger1 = Time = 0\nx = 6",
        "Instant_Air_Dash": "[Statedef 2020]\ntype = A\nmovetype = I\nphysics = N\nanim = 2020\nctrl = 1\n\n[State 2020, VelSet]\ntype = VelSet\ntrigger1 = Time = 0\nx = 10\ny = 0",
        "Tiger_Knee": "[Statedef 2030]\ntype = A\nmovetype = A\nphysics = N\nanim = 2030\nctrl = 0\n\n[State 2030, VelSet]\ntype = VelSet\ntrigger1 = Time = 0\ny = -2\n\n[State 2030, Projectile]\ntype = Projectile\ntrigger1 = AnimElem = 2\nprojanim = 2031\nvelocity = 4, 2",
        "Kara_Cancel": "[Statedef 2040]\ntype = S\nmovetype = A\nphysics = S\nanim = 2040\nctrl = 0\n\n[State 2040, PosAdd]\ntype = PosAdd\ntrigger1 = Time = 0\nx = 15",
        "FADC": "[Statedef 2050]\ntype = U\nmovetype = I\nphysics = U\nanim = 2050\nctrl = 1\npoweradd = -500\n\n[State 2050, VelSet]\ntype = VelSet\ntrigger1 = Time = 0\nx = 5",
        "Red_Focus": "[Statedef 2060]\ntype = S\nmovetype = A\nphysics = S\nanim = 2060\nctrl = 0\npoweradd = -1000\n\n[State 2060, NotHitBy]\ntype = NotHitBy\ntrigger1 = AnimElem = 1, 20\nvalue = SCA",
        "Alpha_Counter": "[Statedef 2070]\ntype = S\nmovetype = A\nphysics = S\nanim = 2070\nctrl = 0\npoweradd = -500\n\n[State 2070, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 2\nattr = S, SA\ndamage = 70, 0\nguardpause = 15, 15",
        
        # === SUPER MOVES (Expanded) ===
        "Install_Super": "[Statedef 3000]\ntype = S\nmovetype = A\nphysics = S\nanim = 3000\npoweradd = -1000\n\n[State 3000, VarSet]\ntype = VarSet\ntrigger1 = AnimElem = 5\nvar(10) = 300\n\n[State 3000, PowerAdd]\ntype = PowerAdd\ntrigger1 = var(10) > 0\nvalue = 10",
        "Beam_Super": "[Statedef 3100]\ntype = S\nmovetype = A\nphysics = S\nanim = 3100\npoweradd = -1000\n\n[State 3100, Projectile]\ntype = Projectile\ntrigger1 = AnimElem = 5\nprojanim = 3101\nvelocity = 8, 0\ndamage = 250, 0\nprojectilescale = 2.0, 2.0",
        "Rush_Super": "[Statedef 3200]\ntype = S\nmovetype = A\nphysics = N\nanim = 3200\npoweradd = -1000\n\n[State 3200, VelSet]\ntype = VelSet\ntrigger1 = AnimElem = 2\nx = 15\n\n[State 3200, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 3\nattr = S, HA\ndamage = 200, 0\nnumhits = 10",
        "Cinematic_Super": "[Statedef 3300]\ntype = S\nmovetype = A\nphysics = S\nanim = 3300\npoweradd = -1000\n\n[State 3300, EnvShake]\ntype = EnvShake\ntrigger1 = AnimElem = 5\ntime = 30\nfreq = 60\nampl = 8\n\n[State 3300, Pause]\ntype = Pause\ntrigger1 = AnimElem = 8\ntime = 10\nmovetime = 10\n\n[State 3300, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 10\nattr = S, HA\ndamage = 300, 0\np2stateno = 3301",
        "Level_3_Super": "[Statedef 3400]\ntype = S\nmovetype = A\nphysics = S\nanim = 3400\npoweradd = -3000\n\n[State 3400, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 8\nattr = S, HA\ndamage = 500, 0\nkill = 1\nfall.damage = 100",
        "Transformation_Super": "[Statedef 3500]\ntype = S\nmovetype = A\nphysics = S\nanim = 3500\npoweradd = -2000\n\n[State 3500, ChangeState]\ntype = ChangeState\ntrigger1 = AnimTime = 0\nvalue = 3501\nctrl = 1",
        "Time_Stop_Super": "[Statedef 3600]\ntype = S\nmovetype = A\nphysics = S\nanim = 3600\npoweradd = -1000\n\n[State 3600, Pause]\ntype = Pause\ntrigger1 = AnimElem = 5\ntime = 120\nmovetime = 120",
        "Meteor_Super": "[Statedef 3700]\ntype = S\nmovetype = A\nphysics = S\nanim = 3700\npoweradd = -1000\n\n[State 3700, Projectile]\ntype = Projectile\ntrigger1 = AnimElem = 5\nprojanim = 3701\nvelocity = 0, -10\ndamage = 150, 0\nprojectilescale = 3.0, 3.0",
        "Combo_Super": "[Statedef 3800]\ntype = S\nmovetype = A\nphysics = S\nanim = 3800\npoweradd = -1000\n\n[State 3800, TargetBind]\ntype = TargetBind\ntrigger1 = AnimElem = 3, 20\npos = 0, 0\n\n[State 3800, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 3\nattr = S, HA\ndamage = 30, 0\nnumhits = 15",
        "Ultimate_Super": "[Statedef 3900]\ntype = S\nmovetype = A\nphysics = S\nanim = 3900\npoweradd = -3000\n\n[State 3900, ScreenBound]\ntype = ScreenBound\ntrigger1 = 1\nvalue = 0\n\n[State 3900, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 10\nattr = S, HA\ndamage = 999, 0\nkill = 1",
        
        # === UNIQUE MECHANICS ===
        "Parry": "[Statedef 4000]\ntype = S\nmovetype = I\nphysics = S\nanim = 4000\nctrl = 0\n\n[State 4000, ReversalDef]\ntype = ReversalDef\ntrigger1 = AnimElem = 1, 3\nreversal.attr = SCA, AA\np2stateno = 4001\nsparkno = 4002\n\n[State 4000, PosAdd]\ntype = PosAdd\ntrigger1 = MoveContact\nx = 5",
        "Focus_Attack": "[Statedef 4100]\ntype = S\nmovetype = A\nphysics = S\nanim = 4100\nctrl = 0\n\n[State 4100, NotHitBy]\ntype = NotHitBy\ntrigger1 = AnimElem = 1, 10\nvalue = SCA\n\n[State 4100, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 5\nattr = S, SA\ndamage = 80, 0\nground.velocity = -5, 0\nground.type = Trip",
        "V_Trigger": "[Statedef 4200]\ntype = S\nmovetype = A\nphysics = S\nanim = 4200\nctrl = 0\n\n[State 4200, VarSet]\ntype = VarSet\ntrigger1 = AnimElem = 3\nvar(20) = 1\n\n[State 4200, PowerAdd]\ntype = PowerAdd\ntrigger1 = var(20) = 1\nvalue = 10",
        "Roman_Cancel": "[Statedef 4300]\ntype = U\nmovetype = I\nphysics = U\nanim = 4300\nctrl = 1\npoweradd = -500\n\n[State 4300, EnvShake]\ntype = EnvShake\ntrigger1 = Time = 0\ntime = 10\nfreq = 60\nampl = 4\n\n[State 4300, PauseTime]\ntype = PauseTime\ntrigger1 = Time = 0\nvalue = 5\nmovetime = 5",
        "Burst": "[Statedef 4400]\ntype = U\nmovetype = A\nphysics = U\nanim = 4400\nctrl = 0\n\n[State 4400, HitDef]\ntype = HitDef\ntrigger1 = AnimElem = 1\nattr = S, HA\ndamage = 0, 0\nground.velocity = -8, -8\nair.velocity = -8, -8\nguardflag = ",
    }
    
    template = templates.get(move_type, templates["Projectile"])
    
    # Save move template
    safe_name = move_type.lower().replace("_", "")
    filepath = os.path.join(moves_dir, f"{safe_name}_template.txt")
    
    with open(filepath, 'w') as f:
        f.write(f"; {move_type} Move Template\n")
        f.write(f"; Copy this into your character's .cns file\n\n")
        f.write(template)
    
    print(f"    ✓ Created {move_type} template")

if __name__ == "__main__":
    # Generate ALL move types
    all_moves = [
        # Normals
        "Standing_Light", "Standing_Medium", "Standing_Heavy",
        "Crouching_Light", "Crouching_Medium", "Crouching_Heavy",
        "Jumping_Light", "Jumping_Medium", "Jumping_Heavy",
        # Specials
        "Projectile", "Multi_Projectile", "Homing_Projectile",
        "AntiAir", "Command_Grab", "Air_Grab", "Counter", "Teleport",
        "Rekka", "Charge_Move", "Dive_Kick", "Dragon_Punch", "Slide",
        # Advanced
        "Dash_Cancel", "Wave_Dash", "Instant_Air_Dash", "Tiger_Knee",
        "Kara_Cancel", "FADC", "Red_Focus", "Alpha_Counter",
        # Supers
        "Install_Super", "Beam_Super", "Rush_Super", "Cinematic_Super",
        "Level_3_Super", "Transformation_Super", "Time_Stop_Super",
        "Meteor_Super", "Combo_Super", "Ultimate_Super",
        # Mechanics
        "Parry", "Focus_Attack", "V_Trigger", "Roman_Cancel", "Burst"
    ]
    
    for move in all_moves:
        create_move_template(move)
    
    print(f"\n✅ Generated {len(all_moves)} move templates!")
