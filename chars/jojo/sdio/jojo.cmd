
; Note: When copying files, please modify heavily.

;-| Super Motions |--------------------------------------------------------

[Command]
name = "theworld"
command = x, F, z, B, a
time = 30

[Command]
name = "theworld"
command = F, z, x, F, a
time = 30

[Command]
name = "superpunch"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "superpunch"
command = ~F, D, DF, y+z
time = 20

[Command]
name = "superpunch"
command = ~F, D, DF, x+z
time = 20

[Command]
name = "charisma"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "charisma"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "charisma"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "punish"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "punish"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "punish"
command = ~D, DF, F, x+z
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "dissapear"
command = ~B, D, DB, x
time = 30

[Command]
name = "dissapear"
command = ~B, D, DB, y
time = 30

[Command]
name = "dissapear"
command = ~B, D, DB, z
time = 30

[Command]
name = "choke"
command = ~F, D, DF, x
time = 30

[Command]
name = "choke"
command = ~F, D, DF, y
time = 30

[Command]
name = "choke"
command = ~F, D, DF, z
time = 30

[Command]
name = "knife_x"
command = ~D, DF, F, x

[Command]
name = "knife_y"
command = ~D, DF, F, y

[Command]
name = "knife_z"
command = ~D, DF, F, z

[Command]
name = "knife2_x"
command = ~F, DF, D, x

[Command]
name = "knife2_y"
command = ~F, DF, D, y

[Command]
name = "knife2_z"
command = ~F, DF, D, z

[Command]
name = "beam_x"
command = ~D, DB, B, x

[Command]
name = "beam_y"
command = ~D, DB, B, y

[Command]
name = "beam_z"
command = ~D, DB, B, z

[Command]
name = "ditch"
command = x+y+z
time = 2

[Command]
name = "world21_a"
command = ~D, DF, F, a

[Command]
name = "world21_b"
command = ~D, DF, F, b

[Command]
name = "world21_c"
command = ~D, DF, F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery" ;Extra "recovery" commands (optional)
command = y+z
time = 1

[Command]
name = "recovery" ;Extra "recovery" commands (optional)
command = x+z
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1
[Command]

name = "back_x"
command = /B,x
time = 1
[Command]

name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /D,a
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "down_c"
command = /D,c
time = 1

[Command]
name = "down_x"
command = /D,x
time = 1

[Command]
name = "down_y"
command = /D,y
time = 1

[Command]
name = "down_z"
command = /D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 2

[Command]
name = "fwd_bc"
command = /F, b+c
time = 2

[Command]
name = "fwd_xy"
command = /F, x+y
time = 2

[Command]
name = "fwd_yz"
command = /F, y+z
time = 2

[Command]
name = "back_xy"
command = /B, x+y
time = 2

[Command]
name = "back_yz"
command = /B, y+z
time = 2

[Command]
name = "back_ab"
command = /B, a+b
time = 2

[Command]
name = "back_bc"
command = /B, b+c
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "holddownforward"
command = /$DF
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
;time = 1

[Command]
name = "b"
command = b
;time = 1

[Command]
name = "c"
command = c
;time = 1

[Command]
name = "x"
command = x
;time = 1

[Command]
name = "y"
command = y
;time = 1

[Command]
name = "z"
command = z
;time = 1

[Command]
name = "s"
command = s
;time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

;---------------------------------------------------------------------------
; CPU only commands. Let's see you do this!!! >:)

[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1

;---------------------------------------------------------------------------

; Commands
[Statedef -1]

; The following was tipped to me by my friend.
; WHile it seems everyone is using this method..well... let's join in
; the bandwagon!!! >:)

[State -1]
type = VarSet
var(22) = 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"

[State -1, TimeStop End]
type = ChangeState
value = 3001
triggerall = backedgedist > -1
triggerall = !win && var(22) = 1
triggerall = statetype != A && var(5) = 1
trigger1 = power = 0 && ctrl

[State -1, Knife C]
type = ChangeState
value = 1020
triggerall = backedgedist > -1 && random > 700
triggerall = win != 1 && numhelper(250) = 0 && p2bodydist Y > -10
triggerall = statetype != A && power != 0 && numhelper(1000) < 27
triggerall = ctrl && var(22) = 1
trigger1 = var(5) = 0 && hitdefattr = SC, NA && movecontact && statetype != A
trigger2 = var(5) = 1 && numhelper(1000) > 1 && statetype != A
trigger2 = p2bodydist Y < -10
trigger3 = var(5) = 0 && p2bodydist X > 100 && statetype != A
trigger4 = var(5) = 0 && hitdefattr = SC, NA && movecontact && statetype != A
trigger5 = var(5) = 0 && p2movetype != H && p2bodydist X >= 300 && random > 820

[State -1 Knife B]
type = ChangeState
value = 1010
triggerall = backedgedist > -1
triggerall = win != 1 && var(22) = 1
triggerall = statetype != A && power != 0 && numhelper(1000) < 27
triggerall = ctrl && p2statetype = A
trigger1 = var(5) = 1 && numhelper(1000) >= 0 && p2statetype = A
trigger2 = var(5) = 0 && p2stateno = 5210 && statetype != A && p2bodydist Y < -20
trigger3 = var(5) = 0 && p2bodydist Y >= -40 && p2statetype = A && p2bodydist Y < -20
trigger4 = var(5) = 0 && hitdefattr = SC, NA && movecontact && p2bodydist Y < -20
trigger4 = p2statetype = A && p2bodydist Y < -20
trigger5 = var(5) = 0 && p2movetype != H && p2bodydist Y <= -80
trigger6 = var(5) = 0 && hitdefattr = SC, NA && movecontact && statetype != A

[State -1 Knife A]
type = ChangeState
value = 1000
triggerall = backedgedist > -1 && p2bodydist Y = 0
triggerall = !win && var(22) = 1 && random > 100 && ctrl
triggerall = statetype != A && power != 0 && numhelper(1000) < 27
trigger1 = var(5) = 0 && p2bodydist X > 150 && statetype != A
trigger2 = var(5) = 0 && (stateno = [200, 350]) && movecontact && statetype != A
trigger3 = var(5) = 0 && p2stateno = 5200 || p2stateno = 5100 && statetype != A

[State -1, Najimuzo]
type = ChangeState
value = 1300
triggerall = backedgedist > -1 && ! Win
triggerall = (p2stateno != [5000,5999]) && !movehit
triggerall = ctrl && (numhelper(250) > 1 && moveguarded)
triggerall = p2bodydist X < 30
triggerall = var(22) = 1
triggerall = var(5) = 0
triggerall = statetype != A && p2movetype != H
triggerall = p2movetype = A || p2movetype = I
trigger1 = prevstateno = 1205 && p2statetype != A
trigger2 = stateno = 52
trigger3 = hitdefattr = SC, NA && moveguarded
trigger4 = prevstateno = 270
trigger5 = (p2stateno = [130,132]) || (p2stateno = [150,155])
trigger6 = p2statetype = S && p2bodydist X < 20
trigger7 = p2movetype = I
trigger8 = p2stateno != 5210 && p2bodydist X < 30
trigger9 = p2bodydist X = [32,-15]
trigger10 = p2dist X < 30 && p2statetype != A

[State -1, Scales]
type = ChangeState
value = 1200
triggerall = backedgedist > -1
triggerall = var(5) = 0
triggerall = !win && random < 500
triggerall = p2stateno != [5000,5999]
triggerall = var(22) = 1
triggerall = random > 300
triggerall = statetype != A
triggerall = ctrl
triggerall = var(22) = 1
triggerall = numhelper(1205) = 0
trigger1   = prevstateno = [5000,5999]
trigger1   = p2movetype = A
trigger2   = hitdefattr = SC, NA
trigger2   = movecontact
trigger2   = p2bodydist X < 20
trigger3   = p2bodydist X < 40
trigger3   = random > 400
trigger4   = p2movetype = A
trigger4   = p2statetype != A
trigger5   = stateno = 52
trigger6   = life < 400 && p2bodydist X < 70

[State -1, World21 C]
type = ChangeState
value = 1420
triggerall = backedgedist > -1
triggerall = win != 1 && var(22) = 1
triggerall = var(7) = 0 && p2bodydist Y = 0
triggerall = statetype != A
triggerall = ctrl && numhelper(250) = 0
trigger1   = p2bodydist X > 120
trigger2   = p2statetype != A && p2bodydist X > 190 && statetype != A
trigger3   = p2bodydist X < 50 && random > 400
trigger4   = hitdefattr = SC, NA && movecontact && (p2stateno != [5070,5999])
trigger5   = prevstateno = 1205 && var(1) = 2 && statetype != A

[State -1, air World21 c]
type = ChangeState
value = 1450
triggerall = backedgedist > -1 && var(7) = 0
triggerall = !win && var(22) = 1 && p2bodydist Y < -30
triggerall = p2movetype = A && random > 120
triggerall = statetype != A
triggerall = ctrl && numhelper(250) = 0
trigger1   = (prevstateno = 220 || prevstateno = 225) && p2statetype = A
trigger2   = (prevstateno = 240 || prevstateno = 245) && p2bodydist X < 30
trigger3   = hitdefattr = SC, NA && movecontact && p2bodydist X < 35
trigger4   = p2bodydist X >= 30

[State -1, Ditch]
type = ChangeState
value = 270
triggerall = backedgedist > -1 && prevstateno != 270 && frontedgedist > 60
triggerall = !win && var(22) = 1 && ctrl && frontedgedist > 100
;triggerall = random > 200 && p2movetype != H
triggerall = p2bodydist X > 0 && prevstateno != 270
triggerall = statetype != A && numhelper(1205) = 0
trigger1   = backedgedist < 14 && p2bodydist Y < -50 && random > 200
trigger2   = (p2statetype = S || p2statetype = C) && p2movetype = A
trigger3   = p2bodydist Y > -40 && p2bodydist X < 10 && p2movetype = A
trigger4   = p2bodydist X < 20 && p2movetype = A

[State -1, Standing Low Punch]
type = ChangeState
value = 200
triggerall = backedgedist > -1 && !win && statetype = S && ctrl
triggerall = p2statetype = A && var(22) = 1
trigger1 = var(5) = 0 && p2bodydist X < 10 && random > 60
trigger1 = var(5) = 0 && p2bodydist Y > -10
trigger2 = var(5) = 0 && stateno = 205 && movecontact && p2bodydist Y = 0

[State -1, Crouch High Punch]
type = ChangeState
value = 321
triggerall = backedgedist > -1
triggerall = win != 1 && ctrl
triggerall = p2movetype = A
triggerall = var(22) = 1
triggerall = statetype != A
trigger1 = prevstateno = 270 && statetype != A
trigger2 = p2bodydist X < 30 && p2statetype = A && prevstateno != 1205
trigger3 = ((stateno = [200, 210]) || (stateno = [300, 310])) && movecontact
trigger4 = p2movetype = I && random > 500 && prevstateno != 1205
trigger5 = p2stateno = 5210 && p2bodydist Y < -50 && statetype != A
trigger6 = p2bodydist X < 50 && (p2statetype = A || p2statetype = C)
trigger7 = prevstateno = 1205 && random < 300
trigger8 = stateno = 310 && movecontact
trigger9 = helper(250), movecontact && random < 120
trigger10 = stateno = 340 && movecontact
trigger11 = p2statetype = S
trigger12 = ((stateno = [300, 310]) || (stateno = [330,340])) && movecontact

[State -1, Medium Kick]
type = ChangeState
value = 240
triggerall = backedgedist > -1
triggerall = win != 1 && ctrl
triggerall = p2bodydist X < 40 && p2movetype = A
triggerall = var(22) = 1
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 300 && movecontact
trigger6 = stateno = 310 && movecontact
trigger8 = stateno = 330 && movecontact

[State -1, Crouch Low Punch]
type = ChangeState
value = 300
triggerall = backedgedist > -1 && statetype = C
triggerall = win != 1 && ctrl
triggerall = p2bodydist X < 20 && p2movetype = A
triggerall = var(22) = 1
trigger1 = stateno = 205 && movecontact
trigger2 = stateno = 200 && movecontact
trigger3 = p2statetype = S

[State -1, Kuretsu]
type = ChangeState
value = 1100
triggerall = backedgedist > -1 && p2bodydist Y < -80
triggerall = win != 1 && ctrl && random = [0,300]
triggerall = var(22) = 1 && p2bodydist X > 130
triggerall = statetype != A && p2dist Y < 30
triggerall = p2statetype = S || p2statetype = C
trigger1 = prevstateno = 270 || prevstateno = 1205
trigger2 = p2movetype = A 
trigger3 = hitdefattr = SC, NA && movecontact
trigger4 = stateno = 321 && movehit

[State -1, Kuretsu]
type = ChangeState
value = 1101
triggerall = backedgedist > -1 && p2bodydist Y < -80
triggerall = win != 1 && ctrl && random > 120
triggerall = var(22) = 1 && p2dist X < 50
triggerall = stateno = 1100 && animtime = 0
trigger1 = p2bodydist X < 20
trigger2 = (p2stateno = [5030,5060])
trigger3 = p2stateno = [5030, 5090]

[State -1, Kuretsu]
type = ChangeState
value = 1110
triggerall = backedgedist > -1 && p2bodydist Y < -80
triggerall = win != 1 && ctrl && random = [301,600]
triggerall = var(22) = 1 && p2bodydist X > 150
triggerall = statetype != A && p2bodydist Y < -50
triggerall = p2statetype = S || p2statetype = C
trigger1 = prevstateno = 270 || prevstateno = 1205
trigger2 = p2movetype = A
trigger3 = hitdefattr = SC, NA && movehit
trigger4 = stateno = 321 && movehit

[State -1, Kuretsu]
type = ChangeState
value = 1111
triggerall = backedgedist > -1 && p2bodydist Y < -80
triggerall = win != 1 && ctrl && random > 120
triggerall = var(22) = 1 && p2bodydist X < 40
triggerall = stateno = 1110 && time >= 44
trigger1 = p2bodydist X < 20
trigger2 = (p2stateno = [5030,5060]) && p2bodydist Y < -140

[State -1, Kuretsu]
type = ChangeState
value = 1120
triggerall = backedgedist > -1 && p2bodydist Y < -80
triggerall = win != 1 && ctrl && random = [601,999]
triggerall = var(22) = 1 && p2bodydist X > 150
triggerall = statetype != A  && p2bodydist Y < -50
triggerall = p2statetype = S || p2statetype = C
trigger1 = prevstateno = 270 || prevstateno = 1205
trigger2 = p2movetype = A
trigger3 = hitdefattr = SC, NA && movecontact
trigger4 = stateno = 321 && movehit

[State -1, Kuretsu]
type = ChangeState
value = 1121
triggerall = backedgedist > -1 && p2bodydist Y < -80
triggerall = win != 1 && ctrl && random > 120
triggerall = var(22) = 1 && p2bodydist X < 30
triggerall = stateno = 1120 && time >= 60
trigger1 = p2bodydist X < 20
trigger2 = (p2stateno = [5030,5060]) && p2bodydist Y < -210
trigger3 = stateno = 1120 && time >= 73

[State -1, Normal Stand]
type = ChangeState
value = 250
triggerall = !win && ctrl && numhelper(250) = 0
triggerall = p2bodydist X < 40
triggerall = var(22) = 1 && random > 10
triggerall = statetype != A
trigger1 = prevstateno = 270
trigger2 = p2bodydist X > 30 && p2statetype = A
trigger3 = p2statetype = S && p2movetype = A
trigger4 = p2stateno = 5210
trigger5 = p2movetype = A
trigger6 = hitdefattr = SC, NA && movecontact
trigger7 = random > 200
trigger8 = p2movetype = I
trigger9 = prevstateno = 1205 && var(1) = 3

[State -1, Aerial Stand]
type = ChangeState
value = 450
triggerall = win != 1 && ctrl && numhelper(250) = 0
triggerall = p2bodydist X < 40
triggerall = var(22) = 1 && random > 10
triggerall = statetype = A
trigger1 = prevstateno = 420
trigger2 = p2bodydist X > 30 && p2statetype = A
trigger3 = p2statetype = S && p2movetype = A
trigger4 = p2stateno = 5210
trigger5 = p2movetype = A
trigger6 = hitdefattr = SC, NA && movecontact
trigger7 = random > 200
trigger8 = p2movetype = I

[State -1, Jump]
type = ChangeState
value = 40
triggerall = win != 1 && ctrl && numhelper(250) = 0
triggerall = p2bodydist X > 120 && random > 600
triggerall = var(22) = 1
triggerall = statetype = s
trigger1 = p2movetype = A
trigger2 = p2bodydist X < 30 && p2movetype = A
trigger3 = var(5) = 1 && p2bodydist Y < -1

[State -1, Aerial High Punch]
type = ChangeState
value = 420
triggerall = win != 1 && ctrl && numhelper(250) = 0
triggerall = p2bodydist X > 120 && random > 300
triggerall = var(22) = 1
triggerall = statetype = A
trigger1 = p2movetype = A
trigger2 = p2bodydist X < 20 && p2movetype = A

[State -1, Aerial High Punch]
type = ChangeState
value = 420
triggerall = win != 1 && ctrl && numhelper(250) = 0
triggerall = p2bodydist X > 120 && random > 300
triggerall = var(22) = 1
triggerall = statetype = A
trigger1 = p2movetype = A
trigger2 = p2bodydist X < 20 && p2movetype = A

[State -1 Crouch Stand]
type = ChangeState
value = 350
triggerall = backedgedist > -1 && var(7) = 0
triggerall = win != 1 && ctrl && numhelper(250) = 0
triggerall = p2statetype = S || p2statetype = A
triggerall = var(22) = 1 && random > 90
triggerall = statetype = C || statetype = S
trigger1 = prevstateno = 270
trigger3 = p2movetype = A
trigger4 = p2stateno = 5210
trigger5 = hitdefattr = SC, NA && movecontact
trigger6 = helper(1000), moveguarded
trigger7 = p2stateno = [5100, 5200]

[State -1, Slide Trip]
type = ChangeState
value = 325
triggerall = backedgedist > -1
triggerall = win != 1 && ctrl
triggerall = statetype != A
triggerall = var(22) = 1
trigger1 = p2stateno = 5210 && p2bodydist Y < -10
trigger2 = hitdefattr = SC, NA && movecontact
trigger3 = helper(1000), movecontact && random >= 700
trigger4 = p2statetype = S && random >= 800

[State -1 Charisma]
type = ChangeState
value = 2100
triggerall = backedgedist > -1
triggerall = !win
triggerall = random = [201, 400]
triggerall = var(5) = 0
triggerall = var(22) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = power > 4000 || power > 2000
trigger1 = p2bodydist X < 40 && p2movetype = A
trigger2 = p2bodydist Y > -20 && p2movetype = A
trigger3 = life <= 700

[State -1, Destruction]
type = ChangeState
value = 2000
triggerall = backedgedist > -1
triggerall = !win && var(22) = 1 && p2bodydist Y < -40
triggerall = var(5) = 0 && random = [0, 200]
triggerall = statetype != A
triggerall = ctrl && power > 2500
trigger1 = hitdefattr = SC, NA && movecontact
trigger2 = 1
trigger3 = life < 300 && p2movetype != H

[State -1, Punishment]
type = ChangeState
value = 2200
triggerall = backedgedist > -1 && numhelper(250) = 0
triggerall = !win && var(22) = 1 && var(7) = 0
triggerall = var(5) = 0
triggerall = statetype != A && p2bodydist Y < -40
triggerall = ctrl && power > 2500
trigger1 = (stateno = [200,350]) && movecontact
trigger2 = 1
trigger3 = life < 200
trigger4 = (p2stateno = [5030, 5070]) && p2bodydist Y <= -200
trigger5 = frontedgedist < 40

[State -1, The World]
type = ChangeState
value = 3000
triggerall = backedgedist > -1
triggerall = win != 1 && random = [601, 999]
triggerall = var(5) = 0 && var(22) = 1
triggerall = statetype != A && p2movetype != A
triggerall = ctrl && power > 3000
trigger1 = p2bodydist X > 70
trigger2 = (p2stateno != [5000,5999]) && p2bodydist Y < -40
trigger3 = 1 && p2stateno != [5000,5999]

[State -1, Guard Cancel]
type = ChangeState
value = 290
triggerall = backedgedist > -1 && statetype != A && numhelper(0010) = 0
triggerall = var(7) = 0 && numhelper(250) = 0 && var(22) = 1
trigger1 = (stateno = [150,155]) && random > 10
ignorehitpause = 1

[State -1, Run]
type = ChangeState
value = 100
triggerall = backedgedist > -1 && ctrl
triggerall = win != 1 && var(22) = 1 && random = [301, 999]
triggerall = statetype != A
trigger1 = p2bodydist X > 200 && p2statetype != A
trigger2 = prevstateno = 250 || prevstateno = 1410 || prevstateno = 1420
trigger3 = numhelper(250) = 1 && helper(250), movehit

[State -1, Running punch]
type = ChangeState
value = 205
triggerall = backedgedist > -1 && ctrl
triggerall = win != 1 && var(22) = 1 && random = [0,451]
triggerall = statetype != A
trigger1 = p2bodydist X < 60 && p2bodydist Y > -30
trigger2 = p2movetype = H

[State -1, Running kick]
type = ChangeState
value = 245
triggerall = backedgedist > -1 && ctrl
triggerall = win != 1 && var(22) = 1 && random = [452,999]
triggerall = statetype != A
trigger1 = p2bodydist X < 60 && p2bodydist Y > -30
trigger2 = p2movetype = H

[State -1, Running Punch]
type = ChangeState
value = 105
triggerall = backedgedist > -1 && ctrl
triggerall = !win && var(22) = 1 && statetype != A
trigger1 = p2bodydist X < 20 && backedgedist > 100

[State -1, Throw]
type = ChangeState
value = 900
triggerall = backedgedist > -1 && p2movetype != H
triggerall = (p2stateno != [130,132]) && p2stateno != [150,155]
triggerall = win != 1 && random = [100, 500]
triggerall = statetype = S && prevstateno != 900
triggerall = ctrl && p2bodydist X < 30 && var(5) = 0
trigger1 = var(22) = 1 && var(10) = 2

[State -1, Throw]
type = ChangeState
value = 901
triggerall = backedgedist > -1 && p2movetype != H
triggerall = (p2stateno != [130,132]) && p2stateno != [150,155]
triggerall = win != 1 && random = [100, 500]
triggerall = statetype = S && prevstateno != 900
triggerall = ctrl && p2bodydist X < 20 && var(5) = 0
trigger1 = var(22) = 1 && var(10) = 1

[State -1 Guard]
type = ChangeState
value = 130
triggerall = backedgedist > -1 && var(22) = 1
triggerall = !win && var(5) = 0 && var(13) >= 1
triggerall = statetype = S && prevstateno != 1205
triggerall = ctrl && p2bodydist X < 120
trigger1 = p2movetype = A && p2bodydist X < 60

[State -1 Guard]
type = ChangeState
value = 131
triggerall = backedgedist > -1 && var(5) = 0
triggerall = !win && p2movetype = A && p2statetype = C
triggerall = ctrl && p2bodydist X < 120 && var(13) >= 1
trigger1 = var(22) = 1 && p2bodydist X < 60

[State -1]
type = ChangeState
value = 5123
triggerall = backedgedist > -1
triggerall = !win && stateno = 5120 && anim != 5111
triggerall = p2bodydist X < 10 && backedgedist < 30
trigger1 = var(22) = 1

[State -1]
type = ChangeState
value = 5125
triggerall = backedgedist > -1
triggerall = !win && stateno = 5120 && anim = 5111
triggerall = p2bodydist X < 10 && backedgedist < 30
trigger1 = var(22) = 1

[State -1]
type = ChangeState
value = 5122
triggerall = backedgedist > -1 && frontedgedist > 200
triggerall = !win && stateno = 5120 && anim != 5111
triggerall = p2bodydist X > 10 && backedgedist > 40
trigger1 = var(22) = 1

[State -1]
type = ChangeState
value = 5124
triggerall = backedgedist > -1 && frontedgedist > 200
triggerall = !win && stateno = 5120 && anim = 5111
triggerall = p2bodydist X > 10 && backedgedist > 40
trigger1 = var(22) = 1

[State -1]
type = VarSet
var(20) = 2
trigger1 = p2statetype = A && var(22) = 1 && p2bodydist Y > 30

[State -1]
type = VarSet
var(20) = 3
triggerall = var(22) = 1
trigger1 = p2statetype = S || p2statetype = C
trigger1 = random > 400
trigger2 = statetype = A && p2statetype != A

[State -1]
type = VarSet
var(20) = 1
trigger1 = var(22) = 1 && random < 400

[State -1]
type = VarSet
var(8) = 1
trigger1 = p2statetype = A && var(22) = 1

[State -1]
type = VarSet
var(8) = 2
triggerall = var(22) = 1
trigger1 = p2statetype = S || p2statetype = C
trigger1 = random > 400
trigger2 = statetype = A && p2statetype != A

[State -1, Destruction]
type = ChangeState
value = 2000
triggerall = backedgedist > -1
triggerall = power >= 1000
triggerall = command = "superpunch"
triggerall = var(5) = 0
triggerall = win != 1
triggerall = winko != 1
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, Guard Cancel]
type = ChangeState
value = 290
triggerall = backedgedist > -1 && statetype != A && numhelper(0010) = 0
triggerall = command = "choke" || command = "a"
triggerall = var(7) = 0 && numhelper(250) = 0
;triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = stateno >= 150 && stateno <= 155
;trigger2 = stateno >= 130 && stateno <= 132
ignorehitpause = 1

[State -1, Air World21 C]
type = ChangeState
value = 1450
triggerall = backedgedist > -1
triggerall = command = "world21_a"
triggerall = statetype = A
triggerall = var(7) = 0
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 440
trigger6 = movecontact

[State -1, WOrld21 C]
type = ChangeState
value = 1420
triggerall = backedgedist > -1
triggerall = command = "world21_a"
triggerall = var(7) = 0
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 300
trigger10 = movecontact
trigger11 = stateno = 310
trigger11 = movecontact
trigger12 = stateno = 321
trigger12 = movecontact
trigger13 = stateno = 330
trigger13 = movecontact
trigger14 = stateno = 340
trigger14 = movecontact
trigger15 = stateno = 100

[State -1, Normal Stand Attack]
type = ChangeState
value = 250
triggerall = backedgedist > -1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(7) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 100

[State -1, Toki yo Tomare]
type = ChangeState
value = 3000
triggerall = backedgedist > -1
triggerall = power >= 2000
triggerall = command = "theworld"
triggerall = var(5) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
triggerall = win != 1
triggerall = winko != 1
triggerall = var(7) = 0 && numhelper(250) = 0
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
;trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, Charisma]
type = ChangeState
value = 2100
triggerall = backedgedist > -1
triggerall = power >= 2000
triggerall = command = "charisma"
triggerall = var(5) = 0
triggerall = win != 1
triggerall = winko != 1
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, Punishment]
type = ChangeState
value = 2200
triggerall = backedgedist > -1
triggerall = power >= 1000
triggerall = command = "punish"
triggerall = var(5) = 0
triggerall = var(7) = 0
triggerall = win != 1
triggerall = winko != 1
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, Run]
type = ChangeState
value = 100
triggerall = backedgedist > -1
trigger1 = command = "FF"
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, Najimuzo]
type = ChangeState
value = 1300
triggerall = backedgedist > -1
triggerall = command = "choke"
trigger1 = ctrl = 1
triggerall = var(5) = 0
triggerall = statetype != A
triggerall = var(7) = 0 && numhelper(250) = 0
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100
trigger20 = stateno = 52

[State -1, Kyoufu no Henrin]
type = ChangeState
value = 1200
triggerall = backedgedist > -1
triggerall = command = "dissapear"
trigger1 = ctrl = 1
triggerall = statetype != A && var(5) = 0
triggerall = var(7) = 0 && numhelper(250) = 0
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100
trigger20 = stateno = 52

[State -1, Ditch]
type = ChangeState
value = 270
triggerall = backedgedist > -1
triggerall = command = "ditch" || command = "c"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 100

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = backedgedist > -1
trigger1 = command = "BB"
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, Kuretsu A]
type = ChangeState
value = 1100
triggerall = backedgedist > -1
triggerall = command = "beam_x"
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, Kuretsu B]
type = ChangeState
value = 1110
triggerall = backedgedist > -1
triggerall = command = "beam_y"
trigger1 = ctrl = 1
triggerall = var(7) = 0 && numhelper(250) = 0
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, Kuretsu C]
type = ChangeState
value = 1120
triggerall = backedgedist > -1
triggerall = command = "beam_z"
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, KNife A]
type = ChangeState
value = 1000
triggerall = backedgedist > -1
triggerall = command = "knife_x"
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, Knife B]
type = ChangeState
value = 1010
triggerall = backedgedist > -1
triggerall = command = "knife_y"
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, KNife C]
type = ChangeState
value = 1020
triggerall = backedgedist > -1
triggerall = command = "knife_z"
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = ctrl = 1
triggerall = statetype != A
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 321
trigger14 = movecontact
trigger15 = stateno = 325
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact
trigger18 = stateno = 350
trigger18 = movecontact
trigger19 = stateno = 100

[State -1, Throw] ; Ripoff from TestP Guile...>:P
type = ChangeState
value = 900
triggerall = statetype = S && movetype != H
triggerall = backedgedist > -1
triggerall = ctrl && var(5) = 0
trigger1 = command = "fwd_xy"  ;Command
trigger2 = command = "fwd_y"   ;Near
trigger2 = command != "fwd_yz"
trigger2 = p2bodydist X < 5
trigger2 = p2statetype = S
trigger2 = p2movetype != H
trigger3 = command = "fwd_y"   ;Near
trigger3 = command != "fwd_yz"
trigger3 = p2bodydist X < 5
trigger3 = p2statetype = C
trigger3 = p2movetype != H
trigger4 = command = "fwd_z"   ;Near
trigger4 = command != "fwd_yz"
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = S
trigger4 = p2movetype != H
trigger5 = command = "fwd_z"   ;Near
trigger5 = command != "fwd_yz"
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = C
trigger5 = p2movetype != H

[State -1, Throw] ; Ripoff from TestP Guile...>:P
type = ChangeState
value = 901
triggerall = statetype = S && movetype != H
triggerall = backedgedist > -1
triggerall = ctrl && var(5) = 0
trigger1 = command = "back_xy" ;Command
trigger2 = command = "back_y"  ;Near
trigger2 = command != "back_yz"
trigger2 = p2bodydist X < 5
trigger2 = p2statetype = S
trigger2 = p2movetype != H
trigger3 = command = "back_y"  ;Near
trigger3 = command != "back_yz"
trigger3 = p2bodydist X < 5
trigger3 = p2statetype = C
trigger3 = p2movetype != H
trigger4 = command = "back_z"  ;Near
trigger4 = command != "back_yz"
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = S
trigger4 = p2movetype != H
trigger5 = command = "back_z"  ;Near
trigger5 = command != "back_yz"
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = C
trigger5 = p2movetype != H

[State -1, Running Low and Medium Punch]
type = ChangeState
value = 205
triggerall = backedgedist > -1
trigger1 = command = "x"
triggerall = stateno = 100

[State -1, Running High Punch]
type = ChangeState
value = 225
triggerall = backedgedist > -1
triggerall = command = "z"
trigger1 = stateno = 100

[State -1, Running Medium Kick]
type = ChangeState
value = 245
triggerall = backedgedist > -1
triggerall = command = "y"
trigger1 = stateno = 100

[State -1, Crouching Slide]
type = ChangeState
value = 325
triggerall = backedgedist > -1
triggerall = command = "z"
triggerall = command = "holddownforward"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Standing Low Punch]
type = ChangeState
value = 200
triggerall = backedgedist > -1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl 
trigger1 = command = "x" && ctrl

[State -1, Standing High Punch]
type = ChangeState
value = 220
triggerall = backedgedist > -1
triggerall = command = "z"
triggerall = command != "holddown"
;triggerall = numhelper(250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 52

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = backedgedist > -1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

[State -1, Crouching Low Punch]
type = ChangeState
value = 300
triggerall = backedgedist > -1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = command = "x"

[State -1, Crouching Medium Punch]
type = ChangeState
value = 310
triggerall = backedgedist > -1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1, Crouching High Punch]
type = ChangeState
value = 321
triggerall = backedgedist > -1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact

[State -1, Crouching Stand Attack]
type = ChangeState
value = 350
triggerall = backedgedist > -1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(7) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 321
trigger4 = movecontact
trigger5 = stateno = 330
trigger5 = movecontact
trigger6 = stateno = 340
trigger6 = movecontact
trigger7 = stateno = 100

[State -1, Air Low Punch]
type = ChangeState
value = 400
trigger1 = command = "x"
triggerall = statetype = A
triggerall = ctrl = 1

[State -1, Air High Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1, Air Medium Kick]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1, Air Stand Attack]
type = ChangeState
value = 450
triggerall = command = "a"
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl = 1

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = backedgedist > -1
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1


