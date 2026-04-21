
; Backedgedist at > -1 is to ensure he does moves while within the
; screen. Without this, he can do moves outside the screen, which is
; giga-weird.

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

;-| Super Motions |--------------------------------------------------------

[Command]
name = "theworld"
command = x, F, z, B, a
time = 60

[Command]
name = "theworld"
command = F, z, x, F, a
time = 60

[Command]
name = "superpunch"
command = ~F, D, DF, x+y
time = 30

[Command]
name = "superpunch"
command = ~F, D, DF, y+z
time = 30

[Command]
name = "superpunch"
command = ~F, D, DF, x+z
time = 30

[Command]
name = "demolition"
command = ~F, D, DF, a+b
time = 30

[Command]
name = "demolition"
command = ~F, D, DF, b+c
time = 30

[Command]
name = "demolition"
command = ~F, D, DF, a+c
time = 30

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
time = 15;30

[Command]
name = "dissapear"
command = ~B, D, DB, y
time = 15;30

[Command]
name = "dissapear"
command = ~B, D, DB, z
time = 15;30

[Command]
name = "choke"
command = ~F, D, DF, x
time = 15

[Command]
name = "choke"
command = ~F, D, DF, y
time = 15

[Command]
name = "choke"
command = ~F, D, DF, z
time = 15

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

; Normal Commands
[Statedef -1]

; Global Stand Settings

[state haha]
type = defencemulset
trigger1 = var(22) = 1
value = .7
ignorehitpause = 1

[state haha]
type = attackmulset
trigger1 = var(22) = 1
value = 1.5
ignorehitpause = 1

[state heh]
type = ctrlset
trigger1 = 1 && ishelper = 1
value = 0

[state that Prevent The World from activating]
type = VarSet
trigger1 = 1 && ishelper(250)
var(35) = gethitvar(damage)
ignorehitpause = 1

[State that enables unblockability for helpers]
type = assertspecial
triggerall = ishelper = 1
trigger1 = root, var(5) = 1
trigger2 = root, var(13) = [1,59]
flag = nojugglecheck
flag2 = unguardable
ignorehitpause = 1

[state that disables shadows for Stands]
type = assertspecial
trigger1 = ishelper(250)
flag = noshadow
ignorehitpause = 1

[State that ensures mightyness]
type = NotHitBy
triggerall = ishelper(250)
trigger1 = root, var(5) = 1
trigger2 = root, var(13) = [1,59]
trigger3 = root, stateno = 270
value = SCA
time = 1
ignorehitpause = 1

[state 251, that cancels when DIo is hurt]
type = Changestate
trigger1 = ishelper(250)
trigger1 = root, var(14) = 1
trigger1 = stateno != 256
value = 256
ignorehitpause = 1

[state 251, that Prevent The World from activating]
type = null;parentVarset
trigger1 = ishelper(250)
trigger1 = animtime = 0
v = 8
value = 0
ignorehitpause = 1

[state haha]
type = attackmulset
trigger1 = var(5) = 1
trigger2 = numhelper >= 1
trigger2 = ishelper  = 1
trigger2 = root, var(5) = 1
value = .5
ignorehitpause = 1

; Global Knife settings

[state bwee]
type = null;playsnd
triggerall = ishelper(2210) >= 1
trigger1 = var(36) = 1
;trigger1 = numhelper(1000) >= 1
;trigger2 = numhelper(250) >= 1
;trigger2 = helper(2210), var(36) = 1
;trigger1 = helper(1000), stateno = 1061
value = s0,ifelse(random >= 500, 19, 20)
;value = s0, ifelse(random >= 500, (root, var(37)), 5)
volume = 200
channel = 3
abspan = var(38) ;helper(1000), pos X
ignorehitpause = 1
persistent = 0

;state haha
[state heck]
type = varset
trigger1 = numhelper(2210) >= 1
var(36) = helper(2210), var(36)
ignorehitpause = 1

[state heck]
type = varset
trigger1 = numhelper(2210) >= 1
var(38) = helper(2210), var(38)
ignorehitpause = 1

; COmmand Settings.

[State -1, Destruction]
type = ChangeState
value = 2000
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = power >= 1000
triggerall = command = "superpunch"
triggerall = var(5) = 0
triggerall = win != 1
triggerall = winko != 1
trigger1 = ctrl
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
trigger19 = stateno = [100,101]
trigger20 = stateno = 105

[State -1, Guard Cancel]
type = ChangeState
value = 290
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1 && statetype != A && numhelper(0010) = 0
triggerall = command = "choke" || (var(37) = 1 && command = "c")
triggerall = var(7) = 0 && numhelper(250) = 0
trigger1 = stateno >= 150 && stateno <= 155
;trigger2 = stateno >= 130 && stateno <= 132
ignorehitpause = 1

[State -1, Air World21 A]
type = ChangeState
value = 1430
triggerall = var(37) = 1
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "world21_a"
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
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

[State -1, Air World21 B]
type = ChangeState
value = 1440
triggerall = var(37) = 1
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "world21_b"
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
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

[State -1, Air World21 C]
type = ChangeState
value = 1450
triggerall = var(37) = 1
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "world21_c"
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
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

[State -1, WOrld21 A]
type = ChangeState
value = 1400
triggerall = var(37) = 1
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "world21_a"
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
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
trigger15 = stateno = [100,105]
trigger16 = stateno = 225
trigger16 = movecontact

[State -1, World21 B]
type = ChangeState
value = 1410
triggerall = var(37) = 1
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "world21_b"
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
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
trigger15 = stateno = [100,105]
trigger16 = stateno = 225
trigger16 = movecontact

[State -1, WOrld21 C]
type = ChangeState
value = 1420
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = (var(37) = 1 && command = "world21_c") || (var(37) = 0 && command = "world21_a")
triggerall = var(7) = 0
trigger1 = statetype != A
trigger1 = ctrl
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
trigger15 = stateno = [100,105]
trigger16 = stateno = 225
trigger16 = movecontact

[State -1, Normal Stand Attack]
type = ChangeState
value = 250
triggerall = var(22) = 0 || (var(22) = 1 && var(5) = 1)
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = (var(37) = 1 && command = "c") || (var(37) = 0 && command = "a")
triggerall = command != "holddown"
triggerall = var(7) = 0
trigger1 = statetype = S
trigger1 = ctrl
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
trigger15 = stateno = [100,105]
trigger16 = stateno = 225
trigger16 = movecontact

[State -1, Toki yo Tomare]
type = ChangeState
value = 3000
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = power >= 2000
triggerall = command = "theworld"
triggerall = var(5) = 0
trigger1 = ctrl
triggerall = statetype != A
triggerall = win != 1
triggerall = winko != 1
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 220
trigger7 = stateno = 225
trigger8 = stateno = 230
trigger9 = stateno = 240
trigger10 = stateno = 245
trigger11 = stateno = 250
trigger12 = stateno = 300
trigger13 = stateno = 310
trigger14 = stateno = 321
trigger15 = stateno = 325
trigger16 = stateno = 330
trigger17 = stateno = 340
trigger18 = stateno = 350
trigger19 = stateno = [100,105]
trigger20 = hitdefattr = SC, NA

[State -1, Charisma]
type = ChangeState
value = 2100
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = power >= 2000
triggerall = command = "charisma"
triggerall = var(5) = 0
triggerall = win != 1
triggerall = winko != 1
trigger1 = ctrl
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
trigger19 = stateno = [100,105]

[State -1, Punishment]
type = ChangeState
value = 2200
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = power >= 1000
triggerall = command = "punish"
triggerall = var(5) = 0
triggerall = var(7) = 0
triggerall = win != 1
triggerall = winko != 1
trigger1 = ctrl
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
trigger19 = stateno = [100,105]

[State -1, Aerial Punishment]
type = ChangeState
value = 2300
triggerall = var(37) = 1
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = power >= 1000
triggerall = command = "punish"
triggerall = var(5) = 0
triggerall = var(7) = 0
triggerall = win != 1
triggerall = winko != 1
trigger1 = ctrl
triggerall = statetype = A
trigger2 = hitdefattr = A, NA
trigger2 = movecontact

[State -1, Run]
type = ChangeState
value = 100
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1 && stateno != [100,105]
trigger1 = command = "FF"
trigger1 = ctrl
trigger1 = statetype = S

[State -1, Najimuzo]
type = ChangeState
value = 1300
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "choke"
trigger1 = ctrl
triggerall = var(5) = 0
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
trigger19 = stateno = [100,105]
trigger20 = stateno = 52

[State -1, Kyoufu no Henrin]
type = ChangeState
value = 1200
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "dissapear"
trigger1 = ctrl
triggerall = statetype != A && var(5) = 0
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
trigger19 = stateno = [100,105]
trigger20 = stateno = 52

[State -1, Ditch]
type = ChangeState
value = 270
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1 && var(33) = 0
triggerall = command = "ditch" || (var(37) = 0 && command = "c")
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = stateno = [100,105]

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1 && stateno != [100,105]
triggerall = command = "BB"
trigger1 = ctrl
trigger1 = statetype = S

[State -1, Kuretsu A]
type = ChangeState
value = 1100
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "beam_x"
trigger1 = ctrl
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
trigger19 = stateno = [100,105]

[State -1, Kuretsu B]
type = ChangeState
value = 1110
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "beam_y"
trigger1 = ctrl
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
trigger19 = stateno = [100,105]

[State -1, Kuretsu C]
type = ChangeState
value = 1120
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "beam_z"
trigger1 = ctrl
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
trigger19 = stateno = [100,105]

[State -1, KNife A]
type = ChangeState
value = 1000
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "knife_x"
trigger1 = ctrl
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
trigger19 = stateno = [100,105]

[State -1, Knife B]
type = ChangeState
value = 1010
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "knife_y"
trigger1 = ctrl
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
trigger19 = stateno = [100,105]

[State -1, KNife C]
type = ChangeState
value = 1020
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "knife_z"
trigger1 = ctrl
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
trigger19 = stateno = [100,105]

[State -1, Throw] ; Ripoff from TestP Guile...>:P
type = ChangeState
value = 900
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
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
value = 360
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = statetype = S && movetype != H
triggerall = backedgedist > -1
triggerall = ctrl && var(5) = 0
trigger1 = command = "fwd_b" || command = "back_b"
trigger1 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger2 = command = "fwd_c" || command = "back_c"
trigger2 = p2bodydist X < 5
trigger2 = p2statetype != A
trigger2 = p2movetype != H

[State -1, Throw] ; Ripoff from TestP Guile...>:P
type = ChangeState
value = 901
triggerall = var(37) = 1 || (var(37) = 0 && numhelper(250) = 0)
triggerall = var(22) = 0
triggerall = ishelper = 0
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
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1 && numhelper(250) = 0
trigger1 = command = "x"
triggerall = stateno = [100,105]
triggerall = command != "holddown"
trigger2 = command = "y" && var(37) = 1
trigger3 = command = "a" && var(37) = 1

[State -1, Running High Punch]
type = ChangeState
value = 225
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "z"
trigger1 = command != "holddown"
trigger1 = stateno = [100,105]

[State -1, Running Medium Kick]
type = ChangeState
value = 245
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = (var(37) = 1 && command = "b") || (var(37) = 0 && command = "y")
trigger1 = stateno = [100,105]
trigger1 = command != "holddown"

[State -1, Crouching Slide]
type = ChangeState
value = 325
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "z"
triggerall = command = "holddownforward"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = var(37) = 1
trigger6 = stateno = 240
trigger6 = movecontact
trigger6 = var(37) = 1
trigger7 = stateno = 245
trigger7 = movecontact
trigger7 = var(37) = 1
trigger8 = stateno = 300
trigger8 = movecontact
trigger8 = var(37) = 1
trigger9 = stateno = 310
trigger9 = movecontact
trigger9 = var(37) = 1
trigger10 = stateno = 330
trigger10 = movecontact
trigger10 = var(37) = 1
trigger11 = stateno = 340
trigger11 = movecontact
trigger11 = var(37) = 1
trigger12 = Stateno = [100,105]

;---------------------------------------------------------------------------
[State -1, Standing Low Punch]
type = ChangeState
value = 200
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemno(0) >= 3 && var(5) = 0
trigger3 = stateno = 200
trigger3 = animelemno(0) >= 3 && var(5) = 1 && power >= 1

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "y" && var(37) = 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 300
trigger5 = movecontact
trigger5 = var(37) = 1
trigger6 = stateno = 330
trigger6 = movecontact
trigger6 = var(37) = 1

[State -1, Standing High Punch]
type = ChangeState
value = 220
;triggerall = var(22) = 0 || (var(22) = 1 && var(5) = 1)
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = var(37) = 1
trigger6 = stateno = 240
trigger6 = movecontact
trigger6 = var(37) = 1
;trigger7 = stateno = 245
;trigger7 = movecontact && numhelper(250) = 0
trigger7 = stateno = 300
trigger7 = movecontact
trigger7 = var(37) = 1
trigger8 = stateno = 310
trigger8 = movecontact
trigger6 = var(37) = 1
trigger9 = stateno = 330
trigger9 = movecontact
trigger9 = var(37) = 1
trigger10 = stateno = 340
trigger10 = movecontact
trigger10 = var(37) = 1
trigger11 = stateno = 52
trigger12 = stateno = 220
trigger12 = animelemno(0) >= 11
trigger12 = var(5) = 0
trigger13 = stateno = 220
trigger13 = animelemno(0) >= 11
trigger13 = var(5) = 1 && power >= 1


[State -1, Standing Low Punch 2]
type = ChangeState
value = 230
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "a" && var(37) = 1
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 300
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 230
trigger5 = animelemno(0) >= 3 && var(5) = 0
trigger6 = stateno = 230
trigger6 = animelemno(0) >= 3 && var(5) = 1 && power >= 1

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = (var(37) = 1 && command = "b") || (var(37) = 0 && command = "y")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = var(37) = 1
trigger6 = stateno = 300
trigger6 = movecontact
trigger6 = var(37) = 1
trigger7 = stateno = 310
trigger7 = movecontact
trigger7 = var(37) = 1
trigger8 = stateno = 330
trigger8 = movecontact
trigger8 = var(37) = 1

[State -1, Crouching Low Punch]
type = ChangeState
value = 300
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 300
trigger3 = (var(5) = 0 || (var(5) >= 1 && power >= 1))
trigger4 = stateno = [100,105]

[State -1, Crouching Medium Punch]
type = ChangeState
value = 310
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 300
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 330
trigger5 = movecontact
trigger5 = var(37) = 1
trigger6 = stateno = [100,105]

[State -1, Crouching High Punch]
type = ChangeState
value = 321
triggerall = var(22) = 0 || (var(22) = 1 && var(5) = 1)
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = var(37) = 1
trigger6 = stateno = 240
trigger6 = movecontact
trigger6 = var(37) = 1
trigger7 = stateno = 245
trigger7 = movecontact
trigger7 = var(37) = 1
trigger8 = stateno = 300
trigger8 = movecontact
trigger8 = var(37) = 1
trigger9 = stateno = 310
trigger9 = movecontact
trigger9 = var(37) = 1
trigger10 = stateno = 330
trigger10 = movecontact
trigger10 = var(37) = 1
trigger11 = stateno = 340
trigger11 = movecontact
trigger11 = var(37) = 1
trigger12 = stateno = [100,105]

[State -1, Crouching Low Punch 2]
type = ChangeState
value = 330
triggerall = var(37) = 1
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 300
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 330
trigger4 = (var(5) = 0 || (var(5) >= 1 && power >= 1))
trigger5 = stateno = [100,105]

[State -1, Crouching Medium Punch 2]
type = ChangeState
value = 340
triggerall = var(37) = 1
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 300
trigger5 = movecontact
trigger5 = var(37) = 1
trigger6 = stateno = 310
trigger6 = movecontact
trigger6 = var(37) = 1
trigger7 = stateno = 330
trigger7 = movecontact
trigger7 = var(37) = 1
trigger8 = stateno = [100,105]

[State -1, Crouching Stand Attack]
type = ChangeState
value = 350
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = backedgedist > -1
triggerall = (var(37) = 1 && command = "c") || (var(37) = 0 && command = "a")
triggerall = command = "holddown"
triggerall = var(7) = 0
trigger1 = statetype = C
trigger1 = ctrl
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
trigger15 = stateno = [100,105]
trigger16 = stateno = 225
trigger16 = movecontact

[State -1, Air Low Punch]
type = ChangeState
value = 400
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
trigger1 = command = "x"
triggerall = statetype = A
triggerall = ctrl
trigger2 = command = "a" && var(37) = 1

[State -1, Air Medium Punch]
type = ChangeState
value = 410
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = command = "y" && var(37) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 430
trigger3 = movecontact
trigger3 = var(37) = 1

[State -1, Air High Punch]
type = ChangeState
value = 420
triggerall = var(22) = 0 || (var(22) = 1 && var(5) = 1)
triggerall = ishelper = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 410
trigger3 = movecontact
trigger3 = var(37) = 1
trigger4 = stateno = 430
trigger4 = movecontact
trigger4 = var(37) = 1
trigger5 = stateno = 440
trigger5 = movecontact
trigger5 = var(37) = 1

[State -1, Air Medium Kick]
type = ChangeState
value = 440
;triggerall = var(22) = 0
triggerall = (var(22) = 0 || (var(22) = 1 && var(5) = 1 && p2bodydist X <= 20))
triggerall = ishelper = 0
triggerall = (var(37) = 1 && command = "b") || (var(37) = 0 && command = "y")
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = var(37) = 1
trigger3 = stateno = 410
trigger3 = movecontact
trigger3 = var(37) = 1

[State -1, Air Stand Attack]
type = ChangeState
value = 450
triggerall = var(22) = 0 || (var(22) = 1 && var(5) = 1)
triggerall = ishelper = 0
triggerall = (var(37) = 1 && command = "c") || (var(37) = 0 && command = "a")
triggerall = statetype = A
triggerall = var(7) = 0
trigger1 = ctrl
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

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(22) = 0
triggerall = ishelper = 0
triggerall = backedgedist > -1
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl

[state haha]
type = changestate
triggerall = (stateno = [150, 155]) ;&& numhelper(250) = 0
trigger1 = var(37) = 1 && (command = "xy" || command = "yz")
trigger2 = var(37) = 0 && command = "c"
trigger3 = var(22) = 1 && random > 100
trigger4 = var(22) = 1 && p2bodydist X <= 10
value = 5300
ignorehitpause = 1


