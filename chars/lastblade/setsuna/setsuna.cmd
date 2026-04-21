;-| Super Motions |--------------------------------------------------------

[Command]
name = "anomsuf"
command = ~D, DF, F, D, DF, F, a
time = 40

[Command]
name = "anomsuf"
command = ~D, DF, F, D, DF, F, b
time = 40

[Command]
name = "anomsuf"
command = ~D, DF, F, D, DF, F, c
time = 40

[Command]
name = "anomend"
command = ~D, DF, F, a+b
time = 10

[Command]
name = "anomend"
command = ~D, DF, F, b+c

[Command]
name = "anomend"
command = ~D, DF, F, a+c

[Command]
name = "anomendhold"
command = /$a

[Command]
name = "anomendhold"
command = /$b

[Command]
name = "anomendhold"
command = /$c

[Command]
name = "anomult"
command = ~D, DB, B, D, DB, B, x
;command = ~F, D, B, ~F, D, B, x
time = 60;80 ;160

[Command]
name = "anomult"
command = ~D, DB, B, D, DB, B, y
;command = ~F, DF, D, DB, B, ~F, DF, D, DB, B, y
time = 60

[Command]
name = "anomult"
command = ~D, DB, B, D, DB, B, z
;command = ~F, DF, D, DB, B, ~F, DF, D, DB, B, z
time = 60

[Command]
name = "anomult_o"
command = ~F, D, B, F, D, B, y
time = 60

[Command]
name = "anomult_o"
command = ~D, DB, B, D, DB, B, y
time = 60

[Command]
name = "an_severance"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "an_severance"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "an_severance"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "an_severance_o"
command = ~D, DF, F, D, DF, F, x+y
time = 30 ;25;45

[Command]
name = "anomultcon"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "anomultcon"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "anomultcon"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "anomultcon_o"
command = ~B, D, F, x+y
time = 30

[Command]
name = "anomultcon_o"
command = ~D, DF, F, x+y

;-| Special Motions |------------------------------------------------------
[Command]
name = "anonymity1x"
command = ~D, DF, F, x

[Command]
name = "anonymity1y"
command = ~D, DF, F, y

[Command]
name = "anonymity1z"
command = ~D, DF, F, z

[Command]
name = "Anonymity2x"
command = ~F, D, DF, x
time = 15 ;5

[Command]
name = "Anonymity2y"
command = ~F, D, DF, y
time = 15 ;5

[Command]
name = "Anonymity2z"
command = ~F, D, DF, z
time = 15 ;5

[Command]
name = "anonymity3x"
command = ~D, DB, B, x

[Command]
name = "anonymity3y"
command = ~D, DB, B, y

[Command]
name = "anonymity3z"
command = ~D, DB, B, z

[Command]
name = "anonymity4"
command = ~F, D, DF, a
time = 15

[Command]
name = "anonymity4y"
command = ~F, D, DF, b
time = 15

[Command]
name = "anonymity4z"
command = ~F, D, DF, c
time = 15

[Command]
name = "anonymity4_o"
command = ~F, D, DF, z
time = 15

[Command]
name = "anonymity5"
;command = ~D, DB, B, a
command  = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "anonymity5"
;command = ~D, DB, B, b
command  = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "anonymity5"
;command = ~D, DB, B, c
command  = ~F, DF, D, DB, B, c
time = 20

[Command]
name = "anonymity5_o"
;command = ~D, DB, B, z
command  = ~F, DF, D, DB, B, z
time = 20

;[Command]
;name = "anonymity5_o"
;command = ~F, D, B, z
;time = 30

[Command]
name = "anom5cont"
;command = ~D, DF, F, a
command  = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "anom5cont"
;command = ~D, DF, F, b
command  = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "anom5cont"
;command = ~D, DF, F, c
command  = ~B, DB, D, DF, F, c
time = 20

[Command]
name = "anom5cont_o"
;command = ~D, DF, F, z
command  = ~B, DB, D, DF, F, z
time = 20

[Command]
name = "cancel"
command = ~B, DB, D, x

[Command]
name = "cancel"
command = ~B, DB, D, y

[Command]
name = "cancel"
command = ~B, DB, D, z

;[Command]
;name = "cancel"
;command = ~D, DF, F, x

;[Command]
;name = "cancel"
;command = ~D, DF, F, y

;[Command]
;name = "cancel"
;command = ~D, DF, F, z

[Command]
name = "cancel_o"
command = ~B, DB, D, a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = ~F, /F
time = 25

[Command]
name = "FB"
command = ~F, /B
time = 25

[Command]
name = "BB"
command = ~B, /B
time = 25

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery_o";Required (do not remove)
command = a
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 2

[Command]
name = "crush"
command = /$y+z
time = 2

[Command]
name = "crush_o"
command = /$za
time = 2

[Command]
name = "bc"
command = b+c
time = 2

[Command]
name = "yz"
command = y+z
time = 2

[Command]
name = "xz"
command = x+z
time = 2

[Command]
name = "za"
command = x+z
time = 2

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
command = /F+c
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
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "throw"
command = z+c
time = 1

[Command]
name = "throw_o"
command = z+a
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "s"
command = s
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
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 2

[Command]
name = "holddownforward"
command = /$DF
time = 2

[Command]
name = "longjump"
command = D, $U
time = 18

;---------------------------------------------------------------------------
; CPU only commands. Let's see you do this!!! >:)

[Command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[Command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[Command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[Command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[Command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[Command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[Command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[Command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[Command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[Command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[Command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[Command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[Command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[Command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[Command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[Command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[Command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[Command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[Command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[Command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[Command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[Command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[Command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[Command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[Command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU31"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU32"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU33"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU34"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU35"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU36"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU37"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU38"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU39"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU40"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU41"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU42"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU43"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU44"
command = s, s, s, s, s, s, s, s
time = 1

[Command]
name = "CPU45"
command = s, s, s, s, s, s, s, s
time = 1

;[command]
;name = "CPU46"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU47"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU48"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU49"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU50"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU51"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU52"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU53"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU54"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU55"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU56"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU57"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU58"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU59"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU60"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU61"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU62"
;command = s, s, s, s, s, s, s, s
;time = 1

;[command]
;name = "CPU63"
;command = s, s, s, s, s, s, s, s
;time = 1

;---MOVES
[Statedef -1]
;-Player Routine

[State -2, AttackUP]
type = AttackMulSet
trigger1 = 1 && IsHelper = 0
value = fvar(31)
ignorehitpause = 1

[State -2, AttackUP]
type = AttackMulSet
trigger1 = 1 && IsHelper = 1
value = (root, fvar(31))
ignorehitpause = 1

[State haha]
type = DestroySelf
trigger1 = IsHelper(6005) && Name = "psycho shredder[s]"
trigger2 = IsHelper(1) && StateNo = [9200, 9299]
ignorehitpause = 1

[State haha]
type = SelfState
trigger1 = IsHelper(6005) && Name = "psycho shredder[s]"
trigger2 = IsHelper(1) && StateNo = [9200, 9299]
value = 5040
ignorehitpause = 1

[State -1, Death]
type = ChangeState
triggerall = !Win
triggerall = var(16) = 1
triggerall = Command = "anomend"
triggerall = var(31) = 0
triggerall = StateType != A 
triggerall = (power >= 3000 && Life >= 256) || (power >= 1000 && Life <= 256)
trigger1 = Ctrl
trigger2 = HitDefAttr = SC,NA && MoveContact
trigger3 = StateNo = [100,101]
value = 1800

[State -1, Crush]
type = ChangeState
triggerall = !Win
triggerall = var(16) = 1 || (var(16) = 0 && var(17) = 0)
triggerall = var(31) = 0
triggerall = Command = "yz"
trigger1 = StateType = S  
trigger1 = Ctrl = 1
trigger2 = StateNo = [100,101]
trigger3 = var(17) = 0 && StateNo = 225 && MoveGuarded
value = 360

[State -1, Crush Type 2]
type = ChangeState
value = 255
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "bc") || (var(16) = 0 && Command = "yz")
triggerall = StateType != A
trigger1 = Ctrl
trigger1 = (var(16) = 1 || (var(16) = 0 && var(17) = 1))
trigger2 = var(16) = 1 && HitDefAttr = SC,NA && MoveContact
trigger3 = StateNo = [100,101]
trigger3 = (var(16) = 1 || (var(16) = 0 && var(17) = 1))
trigger4 = HitDefAttr = SC,NA && MoveContact && StateNo != 225 && StateNo != 221 && StateNo != [430, 450]
trigger4 = StateNo != [230, 255]
trigger4 = var(16) = 0 && var(17) = 1

[State -1]
type = ChangeState
value = 221
triggerall = !Win
triggerall = var(16) = 0 && var(20) = 2 && var(17) = 1
trigger1 = Command = "z" && Command != "holddown"
trigger1 = StateNo = 220 && MoveContact

[State 5050, 5]; Recover in mid air
type = ChangeState
trigger1 = (Command = "recovery" && var(16) = 1) || (command = "recovery_o" && var(16) = 0)
trigger1 = Alive
trigger1 = StateNo = 5040
value = 5210 ;HITFALL_AIRRECOVER
ignorehitpause = 1

[State -1, Suffering]
type = ChangeState
triggerall = !Win
triggerall = var(16) = 1
triggerall = Command = "anomsuf"
triggerall = var(31) = 0
triggerall = StateType != A && Power >= 1000
triggerall = (power >= 1000 && Life >= 256) || (power >= 0 && Life <= 256)
trigger1 = Ctrl
trigger2 = HitDefAttr = SC,NA && MoveContact
trigger3 = StateNo = [100,101]
value = 1700

[State -1, Suffering Cancel]
type = ChangeState
triggerall = !Win
triggerall = var(16) = 1
triggerall = Command = "anomsuf"
triggerall = var(31) = 0
triggerall = StateType != A && Power >= 1000
trigger1 = StateNo = 10052 && MoveContact
trigger2 = StateNo = 10062 && MoveContact
value = 1710

[State -1, Ultimate Continuation]
type = ChangeState
triggerall = !Win
triggerall = var(16) = 1 || (var(16) = 0 && (var(17) = 0 || (var(17) = 1 && (PalNo = 7 || PalNo = 9 || PalNo = 10 || PalNo = 12))))
triggerall = (var(16) = 1 && Command = "anomultcon") || (var(16) = 0 && Command = "anomultcon_o")
triggerall = var(31) = 0
triggerall = StateType != A
triggerall = NumExplod(1602) = 1
trigger1 = Ctrl
trigger2 = HitDefAttr = SC,NA && MoveContact && (var(16) = 1 || (var(16) = 0 && StateNo != 255))
trigger3 = StateNo = [100,101]
value = 1610

[State -1, Ultimate]
type = ChangeState
triggerall = !Win
triggerall = var(16) = 1 || (var(16) = 0 && (var(17) = 0 || (var(17) = 1 && (PalNo = 7 || PalNo = 9 || PalNo = 10 || PalNo = 12))))
triggerall = (var(16) = 1 && Command = "anomult") || (var(16) = 0  && Command = "anomult_o")
triggerall = StateType != A
triggerall = var(31) = 0
triggerall = NumExplod(1003) = 0 && NumExplod(1602) = 0
triggerall = (var(16) = 1 && Power >= 2000 && Life >= 256) || (power >= 1000 && Life <= 256)
trigger1 = Ctrl
trigger2 = StateNo = [100,101]
trigger3 = HitDefAttr = SC, NA && MoveContact && (var(16) = 1 || (var(16) = 0 && StateNo != 255))
value = 1600

[State -1, guard cancel]
type = ChangeState
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "cancel") || (var(16) = 0 && Command = "cancel_o")
triggerall = StateType != A && Power >= 1000
trigger1 = StateNo = [150,155]
value = 335
ignorehitpause = 1

[State -1, Repel Counterattack]
type = ChangeState
triggerall = !Win
triggerall = (var(16) = 1 && (command = "xy" || Command = "xz")) || (var(16) = 0 && Command = "a")
trigger1 = StateNo = 331 && Anim = 331
trigger1 = AnimElemNo(0) = [5,6]
trigger2 = StateNo = 341 && Anim = 341
trigger2 = AnimElemNo(0) = [7,8]
value = 332

;Anonymity Severance
[State -1]
type = ChangeState
value = 1520
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "an_severance") || (var(16) = 0 && Command = "an_severance_o")
triggerall = (power >= 1000 && Life >= 256) || (life <= 256)
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = HitDefAttr = SC,NA && MoveContact
trigger2 = var(16) = 1 || (var(16) = 0 && var(17) >= 1 && StateNo != 225)
trigger3 = StateNo = [100,101]

;Anonymity Severance Cancel Version
[State -1]
type = ChangeState
value = 1525
triggerall = !Win
triggerall = (var(16) = 1 && Command = "an_severance") || (var(16) = 0 && Command = "an_severance_o")
triggerall = (power >= 1000 && Life >= 256) || (life <= 256)
triggerall = StateType != A
triggerall = StateNo = [999, 1001]
triggerall = MoveContact
trigger1 = var(16) = 1
trigger2 = var(16) = 0 && var(17) = 0 
trigger3 = var(16) = 0 && var(17) = 1 && (PalNo = 9 || PalNo = 12)

;Throw!
[State -1, bakame!]
type = ChangeState
value = 300
triggerall = !Win
triggerall = var(31) = 0
trigger1 = StateType != A
triggerall = (var(16) = 1 && Command = "throw") || (var(16) = 0 && Command = "throw_o")
trigger1 = Ctrl
trigger2 = StateNo = [100,101]
ignorehitpause = 1

[State -1, Standing Repel]
type = ChangeState
value = 330
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && (Command = "xy" || Command = "xz")) || (var(16) = 0 && Command = "a")
triggerall = StateType = S && StateNo != 331
trigger1 = Ctrl
trigger2 = StateNo = 122 && StateNo = 132 && StateNo = 142
trigger3 = StateNo = [100,101]
ignorehitpause = 1

[State -1, Crouching Repel]
type = ChangeState
value = 340
triggerall = !Win
triggerall = var(31) = 0 && StateNo != 341
triggerall = (var(16) = 1 && (Command = "xy" || Command = "xz" || Command = "yz")) || (var(16) = 0 && Command = "a")
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 122 && StateNo = 132 && StateNo = 142
trigger3 = StateNo = [100,101]
ignorehitpause = 1

[State -1, Air Repel]
type = ChangeState
value = 350
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && (Command = "xy" || Command = "xz" || Command = "yz")) || (var(16) = 0 && Command = "a")
triggerall = StateType = A && StateNo != 351
trigger1 = Ctrl
trigger2 = StateNo = 122 && StateNo = 132 && StateNo = 142
trigger3 = StateNo = 5040 || StateNo = 5210

[State -1, Running Kick attack]
type = ChangeState
value = 320
triggerall = !Win
triggerall = StateNo = 100
triggerall = var(31) = 0
triggerall = P2BodyDist X < 20
triggerall = StateNo != [200,450]
triggerall = var(21) = 1
triggerall = Time > 10
triggerall = MoveContact != 1
trigger1 = Command = "down_x"
trigger2 = Command = "down_y"
trigger3 = Command = "down_z"

; Anonymity # 2
[State -1]
type = ChangeState
value = 1010
triggerall = !Win
triggerall = var(31) = 0
triggerall = Command = "Anonymity2x"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = [210, 214]
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = [245, 249]
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = [100,101]

; Anonymity # 2
[State -1]
type = ChangeState
value = 1012
triggerall = !Win
triggerall = var(31) = 0
triggerall = Command = "Anonymity2y"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = [210, 214]
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = [100,101]

; Anonymity # 2
[State -1]
type = ChangeState
value = 1014
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "Anonymity2z"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = [210, 215]
trigger3 = MoveContact
trigger4 = StateNo = 216
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger21 = StateNo = [100,101]

; Anonymity # 3
[State -1]
type = ChangeState
value = 1005
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "anonymity3x"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 21
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger22 = StateNo = 205
trigger22 = MoveContact
trigger23 = StateNo = [100,101]

[State -1]
type = ChangeState
value = 1006
triggerall = !Win
triggerall = var(31) = 0
triggerall = Command = "anonymity3y"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 21
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger22 = StateNo = 205
trigger22 = MoveContact
trigger23 = StateNo = [100,101]

[State -1]
type = ChangeState
value = 1007
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "anonymity3z"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 21
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger22 = StateNo = 205
trigger22 = MoveContact
trigger23 = StateNo = [100,101]

; Anonymity # 1 X
[State -1]
type = ChangeState
value = 999
StateType = A
ctrl = 0
triggerall = !Win
triggerall = var(31) = 0
triggerall = Command = "anonymity1x"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 21
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger5 = var(16) = 1 
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger22 = StateNo = [100,101]

; Anonymity # 1
[State -1]
type = ChangeState
value = 1000
triggerall = !Win
triggerall = var(31) = 0
triggerall = Command = "anonymity1y"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 21
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger22 = StateNo = [100,101]

; Anonymity # 1
[State -1]
type = ChangeState
value = 1001
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "anonymity1z"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 21
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger22 = StateNo = [100,101]

; Anonymity # 4 Original Power
[State -1]
type = ChangeState
value = 1020
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "anonymity4"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = HitDefAttr = SC, NA && MoveContact && StateNo != 221
trigger2 = StateNo != [221,224]
trigger3 = StateNo = [100,101]

; Anonymity # 4 Speed Mode
[State -1]
type = ChangeState
value = 1021
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "anonymity4y"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = HitDefAttr = SC, NA && MoveContact && StateNo != 221
trigger3 = StateNo = [100,101]

; Anonymity # 4 Original Mode
[State -1]
type = ChangeState
value = 1020 + var(17)
triggerall = !Win
triggerall = var(16) = 0
triggerall = Command = "anonymity4_o"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = HitDefAttr = SC, NA && MoveContact && StateNo != 225 && StateNo != 250 && StateNo != 221
trigger3 = StateNo = [100,101]
trigger4 = HitDefAttr = SC, NA && MoveContact && StateNo = 250 && var(17) = 0 && StateNo != 221

; Anonymity # 4 Horizontal
[State -1]
type = ChangeState
value = 1030
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "anonymity4z"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = HitDefAttr = SC, NA && MoveContact
trigger3 = StateNo = [100,101]

; Anonymity # 5
[State -1]
type = ChangeState
value = 1002
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "anonymity5") || (var(16) = 0 && Command = "anonymity5_o")
triggerall = StateType != A
trigger1 = Ctrl
triggerall = NumExplod(1003) = 0 && NumExplod(1602) = 0
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 21
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger22 = StateNo = 207
trigger22 = MoveContact
trigger23 = StateNo = [100,101]

; Anonymity # 5 continuation
[State -1]
type = ChangeState
value = 1004
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "anom5cont") || (var(16) = 0 && Command = "anom5cont_o")
triggerall = StateType != A
triggerall = NumExplod(1003) = 1 || NumExplod(1602) = 1
trigger1 = Ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 21
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 225
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger7 = StateNo = 220
trigger7 = MoveContact
trigger8 = StateNo = 325
trigger8 = MoveContact
trigger9 = StateNo = 350
tirgger9 = MoveContact
trigger10 = StateNo = 230
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact
trigger12 = StateNo = 245
trigger12 = MoveContact
trigger13 = StateNo = 250
trigger13 = MoveContact
trigger14 = StateNo = 355
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 450
trigger20 = MoveContact
trigger21 = StateNo = 200
trigger21 = MoveContact
trigger22 = StateNo = 207
trigger22 = MoveContact
trigger23 = StateNo = [100,101]
trigger24 = StateNo = 1004 && MoveHit && Ctrl = 1

; Pursuit Attack
[State wanker!~]
type = ChangeState
value = 217
triggerall = !Win
triggerall = var(31) = 0
triggerall = StateType != A && Ctrl
trigger1 = Command = "fwd_y" || Command = "downfwd_y"
trigger1 = P2StateType = L || P2StateNo = [5080, 5120]

; Nudge!
[State wanker!~]
type = ChangeState
value = 206
triggerall = !Win
triggerall = var(31) = 0
triggerall = StateNo = 100
triggerall = P2BodyDist X < 20
triggerall = Time > 10
triggerall = P2StateType != L && P2StateNo != [5080, 5120]
trigger1 = Command = "fwd_x"
trigger2 = Command = "fwd_y" && (p2stateno != [5080, 5120])
trigger3 = Command = "fwd_z"

[State smp cancel]
type = ChangeState
triggerall = !Win
triggerall = var(16) = 1 || (var(16) = 0 && var(17) = 1)
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "y") || (var(16) = 0 && Command = "x")
triggerall = Command != "holddown"
triggerall = StateNo = 210 && MoveContact
trigger1 = AnimElemNo(0) = [4,8]
value = 215
ignorehitpause = 1

;---------------------------------------------------------------------------

; Forward High Punch
[State -1]
type = ChangeState
value = 225
triggerall = !Win
triggerall = var(31) = 0
triggerall = ((var(16) = 1 && Command = "fwd_z") || (var(16) = 0 && Command = "fwd_y")) && PrevStateNo != 100
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger4 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger5 = StateNo = 220
trigger5 = MoveContact
trigger5 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger6 = var(16) = 1 
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger7 = var(16) = 1 ;|| (var(16) = 0 && var(17) = 1 && var(23) = 2)
trigger8 = StateNo = 420
trigger8 = MoveContact
trigger8 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger9 = var(16) = 1
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger10 = var(16) = 1
trigger11 = StateNo = 207
trigger11 = MoveContact
trigger11 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger12 = StateNo = [100,101]

;---------------------------------------------------------------------------
; STANDING LOW PUNCH (X)
[State -1]
type = ChangeState
value = 200
triggerall = !Win
triggerall = var(31) = 0
triggerall = Command = "x" && (var(16) = 1 || (var(16) = 0 && Command = "holdback"))
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = [100,101]
trigger3 = StateNo = 207
trigger3 = MoveContact
trigger3 = var(16) = 1


;---------------------------------------------------------------------------
; STANDING MEDIUM PUNCH (Y)
[State -1]
type = ChangeState
value = 210
triggerall = !Win
triggerall = var(31) = 0
triggerall = (Command = "y" && var(16) = 1) || (Command = "x" && var(16) = 0)
triggerall = Command != "holddown"
trigger1 = StateType = S 
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger3 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger4 = var(16) = 1
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger6 = var(16) = 1
trigger7 = StateNo = [100,101]

;---------------------------------------------------------------------------
; Standing High Punch (Z)
[State -1]
type = ChangeState
value = 220
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "z") || (var(16) = 0 && Command = "y" && Command != "holdfwd")
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = StateNo = 215
trigger4 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger6 = var(16) = 1
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger7 = var(16) = 1 
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger8 = var(16) = 1 || (var(16) = 0 && var(17) = 1 && var(23) = 2)
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger9 = var(16) = 1
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger10 = var(16) = 1 
trigger11 = StateNo = 207
trigger11 = MoveContact
trigger11 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger12 = StateNo = [100,101]

;---------------------------------------------------------------------------
; Standing Low Kick
[State -1]
type = ChangeState
value = 230
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "a"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact
trigger4 = StateNo = 207
trigger4 = MoveContact
trigger4 = var(16) = 1
trigger4 = StateNo = [100,101]

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "b") || (var(16) = 0 && Command = "z" && Command != "holdfwd")
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1
trigger3 = StateNo = 201
trigger3 = MoveContact
trigger3 = var(16) = 1
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger4 = var(16) = 1
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger6 = var(16) = 1
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger7 = var(16) = 1
trigger8 = StateNo = 430
trigger8 = MoveContact
trigger8 = var(16) = 1
trigger9 = StateNo = 207
trigger9 = MoveContact
trigger9 = var(16) = 1
trigger10 = StateNo = [100,101]

;---------------------------------------------------------------------------
; Standing High Kick (C)
[State -1]
type = ChangeState
value = 250
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "c") || (var(16) = 0 && Command = "z" && Command = "holdfwd")
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = StateNo = 215
trigger4 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = MoveContact
trigger5 = StateNo = 220
trigger5 = MoveContact
trigger5 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger6 = var(16) = 1 
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger7 = var(16) = 1
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger8 = var(16) = 1
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger9 = var(16) = 1 
trigger10 = StateNo = 420
trigger10 = MoveContact
trigger10 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger11 = StateNo = 430
trigger11 = MoveContact
trigger11 = var(16) = 1
trigger12 = StateNo = 440
trigger12 = MoveContact
trigger12 = var(16) = 1
trigger13 = StateNo = 207
trigger13 = MoveContact
trigger13 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger14 = StateNo = [100,101]

;---------------------------------------------------------------------------
; Crouching Low Punch
[State -1]
type = ChangeState
value = 400
triggerall = !Win ;&& command != "down_x"
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = [100,101]
trigger3 = StateNo = 207
trigger3 = MoveContact
trigger3 = var(16) = 1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = !Win ;&& command != "down_y"
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "y") || (var(16) = 0 && Command = "x")
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger4 = var(16) = 1 
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger5 = var(16) = 1
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = var(16) = 1 
trigger6 = StateNo = [100,101]
trigger7 = StateNo = 207
trigger7 = MoveContact
trigger7 = var(16) = 1

;---------------------------------------------------------------------------
; Crouching High Punch
[State -1]
type = ChangeState
value = 420
triggerall = !Win ;&& command != "down_z"
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "z") || (var(16) = 0 && Command = "y")
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger4 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger5 = var(16) = 1 
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger6 = var(16) = 1 
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger7 = var(16) = 1 
trigger8 = StateNo = 410 
trigger8 = MoveContact
trigger8 = var(16) = 1 || (var(16) = 0 && var(17) = 1 && var(23) = 2)
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger9 = var(16) = 1 
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger10 = var(16) = 1 
trigger11 = StateNo = 207
trigger11 = MoveContact
trigger11 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger12 = StateNo = [100,101]

;Crouching Low Kick
[State -1]
type = ChangeState
value = 430
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "a") || (var(16) = 0 && Command = "z" && Command != "holdfwd")
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger3 = var(16) = 1
trigger4 = StateNo = 400 && AnimElemNo(0) >= 3
trigger4 = var(16) = 1
trigger5 = StateNo = [100,101]
trigger6 = StateNo = 207
trigger6 = MoveContact
trigger6 = var(16) = 1

;---------------------------------------------------------------------------

;Crouching Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveContact
trigger9 = StateNo = [100,101]
trigger10 = StateNo = 207
trigger10 = MoveContact

;---------------------------------------------------------------------------

;Crouching High Kick
[State -1]
type = ChangeState
value = 450
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "c") || (var(16) = 0 && Command = "z" && Command = "holdfwd")
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger4 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger5 = StateNo = 220
trigger5 = MoveContact
trigger5 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger6 = var(16) = 1 
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger7 = var(16) = 1 
trigger8 = StateNo = 245
trigger8 = MoveContact
trigger8 = var(16) = 1 
trigger9 = StateNo = 250
trigger9 = MoveContact
trigger9 = var(16) = 1 
trigger10 = StateNo = 355
trigger10 = MoveContact
trigger10 = var(16) = 1 
trigger11 = StateNo = 400
trigger11 = MoveContact
trigger11 = var(16) = 1 
trigger12 = StateNo = 410
trigger12 = MoveContact
trigger12 = var(16) = 1 
trigger13 = StateNo = 420
trigger13 = MoveContact
trigger13 = var(16) = 1 || (var(16) = 0 && var(17) = 1) 
trigger14 = StateNo = 430
trigger14 = MoveContact
trigger14 = var(16) = 1 
trigger15 = StateNo = 440
trigger15 = MoveContact 
trigger15 = var(16) = 1
trigger16 = StateNo = 207
trigger16 = MoveContact
trigger16 = var(16) = 1 || (var(16) = 0 && var(17) = 1)
trigger17 = StateNo = [100,101]

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "x"
trigger1 = StateType = A
trigger1 = Ctrl

;Jump_B
[State -1]
type = ChangeState
value = 610
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "y") || (var(16) = 0 && Command = "x")
trigger1 = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger2 = var(16) = 1
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger3 = var(16) = 1

;Jump_C
[State -1]
type = ChangeState
value = 620
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "z") || (var(16) = 0 && Command = "y")
trigger1 = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger2 = var(16) = 1
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger3 = var(16) = 1
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger4 = var(16) = 1
trigger5 = StateNo = 640
trigger5 = MoveContact
trigger5 = var(16) = 1

;---------------------------------------------------------------------------
; Jump x
[State -1]
type = ChangeState
value = 630
triggerall = !Win
triggerall = var(31) = 0
triggerall = (var(16) = 1 && Command = "a") || (var(16) = 0 && Command = "z")
trigger1 = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger2 = var(16) = 1

;Jump_B
[State -1]
type = ChangeState
value = 640
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "b"
trigger1 = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact

;Jump_C
[State -1]
type = ChangeState
value = 650
triggerall = !Win
triggerall = var(16) = 1
triggerall = var(31) = 0
triggerall = Command = "c"
trigger1 = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact
;---------------------------------------------------------------------------
;;Push blocking
;[state -1]
;type = changestate
;value = 133
;triggerall = command = "pushblock"
;triggerall = command = "holddown"
;trigger1 = statetype = a
;trigger1 = stateno = 130

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = !Win
triggerall = var(31) = 0
triggerall = Command = "FF"
trigger1 = StateType = S
trigger1 = Ctrl
trigger1 = StateNo != [100,109]

;---------------------------------------------------------------------------
;RunB
[State -1]
type = ChangeState
value = 105
triggerall = !Win
triggerall = var(31) = 0
trigger1 = Command = "BB" && Command != "FB"
trigger1 = StateType = S
trigger1 = Ctrl
trigger1 = StateNo != [100,109]

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = !Win
triggerall = var(31) = 0
triggerall = Command = "s"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = [100,101]

[State -2, 2]
type = HitOverride
triggerall = IsHelper(99999)
triggerall = (var(5) >= 1 || var(7) >= 1)
trigger1 = P2Name != "psycho shredder[s]" && StateNo != [130,132]
trigger1 = P2Name != "psycho shredder[s]" && StateNo != [150,155]
attr = SCA, AA, AT, AP, NA, SA, HA, NT, ST, HT, NP, SP, HP
slot = 0
stateno = 5600
ignorehitpause = 1

[State haha]
type = ChangeState
trigger1 = IsHelper(99999) && StateNo != 99999
value = 99999
ignorehitpause = 1

[State heh]
type = DestroySelf
triggerall = IsHelper(99999)
trigger1 = root, RoundState >= 3 && root, WinKO
trigger2 = MoveType = H

[State haha]
type = AssertSpecial
trigger1 = 1 && IsHelper(99999)
flag = invisible
ignorehitpause = 1

[State haha]
type = NotHitBy
trigger1 = RoundState >= 3
value = SCA
time = -1
