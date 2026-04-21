;Clark's Command(Arcade Style)
==============================
;-|AI Command |--------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1

[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1

[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1

[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1

[Command]
name = "AI_8"
command = U,D,U,F,B,B
time = 1

[Command]
name = "AI_9"
command = U,D,D,F,B,B
time = 1

[Command]
name = "AI_10"
command = D,D,F,F,B,B
time = 1

[Command]
name = "AI_11"
command = U,U,F,F,B,B
time = 1

[Command]
name = "AI_12"
command = U,B,F,F,B,B
time = 1

;-|Super Motions |--------------------------------------------------------
[Command]
name = "UAB"
command = F, DF, D, DB, F, DF, D, DB, B, x
time = 50

[Command]
name = "UAB"
command = F, DF, D, DB, F, DF, D, DB, B, z
time = 50

[Command]
name = "UAB2"
command = F, DF, D, DB, F, DF, D, DB, B, x+z
time = 50

[Command];reverse command for Ultra Argentina BackBreaker
name = "iUAB"
command = B, DB, D, DF, B, DB, D, DF, F, x
time = 50

[Command];reverse command for Ultra Argentina BackBreaker
name = "iUAB"
command = B, DB, D, DF, B, DB, D, DF, F, z
time = 50

[Command];reverse command for Ultra Argentina BackBreaker kof2000 max
name = "iUAB2"
command = B, DB, D, DF, B, DB, D, DF, F, x+z
time = 50

;--------

[Command]
name = "runthree"
command = B, DB, D, DF, B, DB, D, DF, F, y
time = 50

[Command]
name = "runthree"
command = B, DB, D, DF, B, DB, D, DF, F, a
time = 50

[Command];reverse command for Running Three
name = "irunthree"
command = F, DF, D, DB, F, DF, D, DB, B, y
time = 50

[Command];reverse command for Running Three
name = "irunthree"
command = F, DF, D, DB, F, DF, D, DB, B, a
time = 50

;-| Special Motions |------------------------------------------------------
[Command]
name = "backbreak"
command = ~B, DB, D, DF, F, y
time = 15

[Command]
name = "backbreak"
command = ~B, DB, D, DF, F, a
time = 15

[Command];reverse command for Super Argentina BackBreaker
name = "ibackbreak"
command = ~F, DF, D, DB, B, y
time = 15

[Command];reverse command for Super Argentina BackBreaker
name = "ibackbreak"
command = ~F, DF, D, DB, B, a
time = 15

;--------

[Command]
name = "frank"
command = ~F, D, DF, y
time = 15

[Command]
name = "frank"
command = ~F, D, DF, a
time = 15

[Command];reverse command for Frankensteiner
name = "ifrank"
command = ~B, D, DB, y
time = 15

[Command];reverse command for Frankensteiner
name = "ifrank"
command = ~B, D, DB, a
time = 15

;--------

[Command]
name = "elbow"
command = ~D, DF, F, x
time = 15

[Command]
name = "elbow"
command = ~D, DF, F, z
time = 15

[Command]
name = "ielbow";reverse command for Flashing Elbow
command = ~D, DB, B, x
time = 15

[Command]
name = "ielbow";reverse command for Flashing Elbow
command = ~D, DB, B, z
time = 15

;--------

[Command]
name = "gatling_1"
command = ~40$B, F, x
time = 10

[Command]
name = "gatling_2"
command = ~40$B, F, z
time = 10

[Command]
name = "igatling_1";reverse command for Gatling Attack
command = ~40$F, B, x
time = 10

[Command]
name = "igatling_2";reverse command for Gatling Attack
command = ~40$F, B, z
time = 10

;--------

[Command]
name = "napalm"
command = ~F, D, DF, x
time = 15

[Command]
name = "napalm"
command = ~F, D, DF, z
time = 15

[Command];reverse command for Napalm Stretch
name = "inapalm"
command = ~B, D, DB, x
time = 15

[Command];reverse command for Napalm Stretch
name = "inapalm"
command = ~B, D, DB, z
time = 15

;--------

[Command]
name = "mount_1"
command = ~B, DB, D, DF, F, x
time = 15

[Command]
name = "mount_2"
command = ~B, DB, D, DF, F, z
time = 15

[Command];reverse command for Super Argentina BackBreaker
name = "imount_1"
command = ~F, DF, D, DB, B, x
time = 15

[Command];reverse command for Super Argentina BackBreaker
name = "imount_2"
command = ~F, DF, D, DB, B, z
time = 15

;--------

[Command]
name = "c.lift"
command = ~D, D, x
time = 15

[Command]
name = "s.lift"
command = ~D, D, z
time = 15

[Command]
name = "r.cradle"
command = ~D, D, y
time = 15

[Command]
name = "r.cradle"
command = ~D, D, a
time = 15

;--------

[Command]
name = "r.launcher"
command = ~F, DF, D, DB, B, y
time = 15

[Command]
name = "f.launcher"
command = ~F, DF, D, DB, B, a
time = 15

[Command];reverse command for Running Launcher short
name = "ir.launcher"
command = ~B, DB, D, DF, F, y
time = 15

[Command];reverse command for Running Launcher long
name = "if.launcher"
command = ~B, DB, D, DF, F, a
time = 15

;--------

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "dizzyrecover"
command = F,B
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "FBF"
command = F, B, F
time = 10

[Command]
name = "BFB"
command = B, F, B
time = 10

;-| 2 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = U,D,B,F,U,D,B,F;using this method to disable air-recovery
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "knock_down"
command = a+z
time = 1

[Command]
name = "striker"
command = y+z
time = 1

[Command]
name = "counter"
command = x+y+z
time = 1

[Command]
name = "armor"
command = y+z+a
time = 1

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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "throw_1"
command = /F,z
time = 1

[Command]
name = "throw_1"
command = /B,z
time = 1

[Command]
name = "throw_2"
command = /F,a
time = 1

[Command]
name = "throw_2"
command = /B,a
time = 1

[Command]
name = "throw_3"
command = /$B,z
time = 1

[Command]
name = "throw_3"
command = /$B,a
time = 1

[Command]
name = "throw_3"
command = /$F,z
time = 1

[Command]
name = "throw_3"
command = /$F,a
time = 1

[Command]
name = "throw_3"
command = /D,z
time = 1

[Command]
name = "throw_3"
command = /D,a
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "s"
command = s
time = 1

;=========
; Commands
:=========
[Statedef -1]
;================
; Speical Attacks
;================
; Ultra Argentina BackBreaker(Max)
[State -1]
type = ChangeState
value = 4000
triggerall = command = "UAB"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = palno <= 6
triggerall = life <= 200
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
[State -1];for kof2000 style
type = ChangeState
value = 4000
triggerall = command = "UAB2"
triggerall = statetype != A
triggerall = power >= 3000
triggerall = palno > 6
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400

;---------------------------------------------------------------------------
; Ultra Argentina BackBreaker
[State -1]
type = ChangeState
value = 3000
triggerall = command = "UAB"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life > 200
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
[State -1];for counter mode
type = ChangeState
value = 3000
triggerall = command = "UAB"
triggerall = statetype != A
triggerall = var(10) != 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger10 = movecontact
trigger10 = stateno = 212
trigger11 = movecontact
trigger11 = stateno = 1100
trigger12 = movecontact
trigger12 = stateno = 1101

;---------------------------------------------------------------------------
; Running Three(Max)
[State -1]
type = ChangeState
value = 4100
triggerall = command = "runthree"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life <= 200
triggerall = palno <= 6
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
[State -1];for kof2000 style
type = ChangeState
value = 4100
triggerall = command = "runthree"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = palno > 6
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
[State -1];for countermode
type = ChangeState
value = 4100
triggerall = command = "runthree"
triggerall = statetype != A
triggerall = palno > 6
triggerall = var(10) != 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400

;---------------------------------------------------------------------------
; Running Three
[State -1]
type = ChangeState
value = 3100
triggerall = command = "runthree"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life > 200
triggerall = palno <= 6
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
[State -1];for counter mode
type = ChangeState
value = 3100
triggerall = command = "runthree"
triggerall = statetype != A
triggerall = palno <= 6
triggerall = var(10) != 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger10 = movecontact
trigger10 = stateno = 212
trigger11 = movecontact
trigger11 = stateno = 1100
trigger12 = movecontact
trigger12 = stateno = 1101

;================
; Speical Attacks
;================
; Super Argentina BackBreaker
[State -1]
type = ChangeState
value = 800
triggerall = command = "backbreak"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_z";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Mount Tackle - Short
[State -1]
type = ChangeState
value = 1300
triggerall = command = "mount_1"
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Mount Tackle - Long
[State -1]
type = ChangeState
value = 1310
triggerall = command = "mount_2"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Frankensteiner
[State -1]
type = ChangeState
value = 1000
triggerall = command = "frank"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_z";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Gatling Attack - Light
[State -1]
type = ChangeState
value = 1100
triggerall = command = "gatling_1"
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Gatling Attack - Heavy
[State -1]
type = ChangeState
value = 1101
triggerall = command = "gatling_2"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Napalm Stretch
[State -1]
type = ChangeState
value = 1200
triggerall = command = "napalm"
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Running Launcher short
[State -1]
type = ChangeState
value = 1700
triggerall = command = "r.launcher"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Running Launcher long
[State -1]
type = ChangeState
value = 1703
triggerall = command = "f.launcher"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Flashing Launcher(Self-striker)
[State -1]
type = ChangeState
value = 1800
triggerall = command = "striker"
triggerall = NumHelper(9400) = 1
triggerall = statetype != A
triggerall = palno > 6;Only for kof 200 style
trigger1 = ctrl
trigger2 = stateno = 9400
trigger2 = time >= 1

;===============
; Basic Controls
;===============
; Counter Mode
[State -1]
type = ChangeState
value = 9200
triggerall = command = "counter"
triggerall = var(10) = 0;make sure not in counter mode now
triggerall = var(11) = 0;make sure not in armor mode now
triggerall = statetype = S
triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Armor Mode
[State -1]
type = ChangeState
value = 9300
triggerall = command = "armor"
triggerall = var(10) = 0;make sure not in counter mode now
triggerall = var(11) = 0;make sure not in armor mode now
triggerall = statetype = S
triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Guard reversal
[State -1]
type = ChangeState
value = 245
triggerall = command = "knock_down"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
; Slide Attacks
[State -1]
type = ChangeState
value = 235
triggerall = time >= 12
triggerall = time <= 25
trigger1 = command = "x"
trigger1 = stateno = 250
trigger2 = command = "x"
trigger2 = stateno = 255
trigger3 = command = "y"
trigger3 = stateno = 250
trigger4 = command = "y"
trigger4 = stateno = 255
trigger5 = command = "z"
trigger5 = stateno = 250
trigger6 = command = "z"
trigger6 = stateno = 255
trigger7 = command = "a"
trigger7 = stateno = 250
trigger8 = command = "a"
trigger8 = stateno = 255

;---------------------------------------------------------------------------
; Guard cancel back
[State -1]
type = ChangeState
value = 265
triggerall = command = "dodge"
triggerall = command = "holdback"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
; Dodge back
[State -1]
type = ChangeState
value = 260
triggerall = command = "dodge"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Guard cancel fwd
[State -1]
type = ChangeState
value = 255
triggerall = command = "dodge"
triggerall = command = "holdfwd"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
; Slide fwd 
[State -1]
type = ChangeState
value = 250
triggerall = command = "dodge"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run fwd
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = command != "FBF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Step back
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = command != "BFB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(9) != 1;disable AI access
triggerall = command = "s"
triggerall = stateno != 195
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;=============
; Basic Throws
;=============
; Nageppanashi German(Throw 1)
[State -1]
type = ChangeState
value = 2000
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100;Not running
triggerall = p2bodydist X < 6
trigger1 = command = "throw_1" ;Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "throw_1" ;Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Fisherman Buster(Throw 2)
[State -1]
type = ChangeState
value = 2100
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100;Not running
triggerall = p2bodydist X < 6
trigger1 = command = "throw_2" ;Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "throw_2" ;Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Death Lake Drive(Air throw)
[State -1]
type = ChangeState
value = 2200
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist X < 6
triggerall = p2bodydist Y > -20
triggerall = p2bodydist Y < 20
trigger1 = command = "throw_3";Near, p2 stand
trigger1 = command != "holdup";any direction except up
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;==============
; Basic Attacks
;==============
; Standing Knock Down
[State -1]
type = ChangeState
value = 240
triggerall = command = "knock_down"
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Knock Down
[State -1]
type = ChangeState
value = 640
triggerall = command = "knock_down"
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = animelem = 2, >4
trigger3 = movecontact
trigger3 = stateno = 211
trigger3 = animelem = 2, >4

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = command != "striker"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = animelem = 2, >4
trigger3 = movecontact
trigger3 = stateno = 211
trigger3 = animelem = 2, >4

;---------------------------------------------------------------------------
; Jumping Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Forward Light Kick
[State -1]
type = ChangeState
value = 212
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 210
trigger3 = movecontact
trigger3 = stateno = 220
trigger3 = animelem = 4, <0
trigger4 = movecontact
trigger4 = stateno = 400

;---------------------------------------------------------------------------
; Standing Near Light Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = P2bodydist X < 18
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = animelem = 2, >5

;---------------------------------------------------------------------------
; Standing Far Light Kick
[State -1]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = P2bodydist X >= 18
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 211
trigger2 = animelem = 2, >5
trigger3 = movecontact
trigger3 = stateno = 210

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command != "striker"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Stright Light kick
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = vel x = 0
triggerall = stateno != 9000;kof does not use stright kicks for short jump
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Light kick
[State -1]
type = ChangeState
value = 611
triggerall = command = "y"
triggerall = command != "striker"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 9000

;---------------------------------------------------------------------------
; Standing Near Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = P2bodydist X < 35
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Far Strong Punch
[State -1]
type = ChangeState
value = 221
triggerall = command = "z"
triggerall = P2bodydist X >= 35
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = command != "striker"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Near Strong Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = P2bodydist X < 35
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Far Strong Kick
[State -1]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = P2bodydist X >= 35
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "striker"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Stright Strong kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = vel x = 0
triggerall = stateno != 9000;kof does not use stright kicks for short jump
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Strong kick
[State -1]
type = ChangeState
value = 631
triggerall = command = "a"
triggerall = command != "striker"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 9000

;================
; AI Modification
;================
; High percent stand guard
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = random <= 950;Extreme high percent
triggerall = statetype != A;perform when not in air
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
trigger1 = p2statetype = S
trigger2 = p2statetype = A

;---------------------------------------------------------------------------
; High percent crouch guard
[State -1]
type = ChangeState
value = 131
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = statetype != A;perform when not in air
triggerall = random <= 950;Extreme high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
trigger1 = p2statetype = C

;---------------------------------------------------------------------------
; High percent air guard
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = statetype = A;perform when in air
triggerall = random <= 950;Extreme high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; Near Strong Kick to prevent player jumping towards
[State -1]
type = ChangeState
value = 230
triggerall = p2movetype != A;access only when opponent not attacking
triggerall = random <= 600;moderate high percent
triggerall = var(9) = 1;only AI can access
triggerall = statetype != A;perform when not in air
triggerall = P2bodydist X < 35
triggerall = ctrl;make sure AI had control
trigger1 = p2statetype = A
trigger1 = P2bodydist y > 100

;---------------------------------------------------------------------------
; Far Strong Kick to prevent player jumping towards
[State -1]
type = ChangeState
value = 231
triggerall = p2movetype != A;access only when opponent not attacking
triggerall = random <= 600;moderate high percent
triggerall = var(9) = 1;only AI can access
triggerall = statetype != A;perform when not in air
triggerall = P2bodydist X >= 35
triggerall = ctrl;make sure AI had control
trigger1 = p2statetype = A
trigger1 = P2bodydist y > 100

;---------------------------------------------------------------------------
; Do Jumping Knock Down when opponent is also attacking in the air
[State -1]
type = ChangeState
value = 640
triggerall = var(9) = 1;only AI can access
triggerall = random <= 600;moderate high percent
triggerall = P2bodydist X <= 35
trigger1 = statetype = A
trigger1 = p2statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Do Death Lake Drive(Air throw)
[State -1]
type = ChangeState
value = 2200
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist X < 6
triggerall = p2bodydist Y > -20
triggerall = p2bodydist Y < 20
triggerall = var(9) = 1;only AI can access
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; Do Guard reversal at low health
[State -1]
type = ChangeState
value = 245
triggerall = var(9) = 1;Only AI can access
triggerall = random <= 700;high percent
triggerall = power >= 1000
triggerall = life <= 100
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
; Do Recover near ground
[State -1]
type = ChangeState
value = 5200
triggerall = var(9) = 1;Only AI can access
triggerall = random <= 700;high percent
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = alive
trigger1 = CanRecover
trigger1 = stateno = 5050

;---------------------------------------------------------------------------
; Fast recovery when dizzy
[State -1]
type = ChangeState
value = 0
triggerall = var(9) = 1;Only AI can access
triggerall = random <= 100;very low percent
triggerall = stateno = 5304
trigger1 = time >= 100
ctrl = 1

;---------------------------------------------------------------------------
; Keep running forward when there is chance
[State -1]
type = ChangeState
value = 100
triggerall = var(9) = 1;Only AI can access
triggerall = p2movetype != A;access only when opponent not attacking
triggerall = P2bodydist X >= 40;access only when far
triggerall = P2life != 0;don't run when opponent had die
trigger1 = stateno = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
; Do Super Argentina BackBreaker
[State -1]
type = ChangeState
value = 800
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movehit
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movehit
trigger3 = stateno = 240
trigger4 = movehit
trigger4 = stateno = 210
trigger5 = movehit
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movehit
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movehit
trigger7 = stateno = 211
trigger8 = movehit
trigger8 = stateno = 400
trigger9 = stateno = 263
trigger10 = stateno = 901
trigger10 = time = 55
trigger11 = movecontact
trigger11 = stateno = 235
trigger11 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Do Frankensteiner
[State -1]
type = ChangeState
value = 1000
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Do Gatling Attack - Heavy
[State -1]
type = ChangeState
value = 1101
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
triggerall = p2movetype != A;access only when opponent not attacking
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Do Napalm Stretch
[State -1]
type = ChangeState
value = 1200
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 600;medium high percent
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = time >= 30
trigger9 = time >= 42
trigger9 = stateno = 1101
trigger10 = movecontact
trigger10 = stateno = 235
trigger10 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Do Running Launcher long
[State -1]
type = ChangeState
value = 1703
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Do Flashing Launcher(Self-Striker)
[State -1]
type = ChangeState
value = 1800
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
triggerall = NumHelper(9400) = 1
triggerall = palno > 6;Only for kof 200 style
trigger1 = backedgedist <= 100
trigger1 = ctrl

;---------------------------------------------------------------------------
; Do Mount Tackle - Long
[State -1]
type = ChangeState
value = 1310
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger9 = var(10) != 0;can be cancel at counter mode

;---------------------------------------------------------------------------
; Do Flashing Elbow everytime when possible
[State -1]
type = ChangeState
value = 900
triggerall = var(9) = 1;Only AI can access
trigger1 = random < 100;low percent
trigger1 = time >= 10
trigger1 = stateno = 803;after Super Argentina BackBreaker
trigger2 = time >= 50
trigger2 = time <= 57
trigger2 = stateno = 1001;after Frankensteiner
trigger3 = time > 10
trigger3 = stateno = 1203;after Naplam Stretch
trigger4 = time = 68
trigger4 = stateno = 1500;after Super Lift

;---------------------------------------------------------------------------
; Do Ultra Argentina BackBreaker
[State -1]
type = ChangeState
value = 3000
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life > 200
triggerall = p2statetype != A;player not in air
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movehit
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movehit
trigger3 = stateno = 240
trigger4 = movehit
trigger4 = stateno = 210
trigger5 = movehit
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movehit
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movehit
trigger7 = stateno = 211
trigger8 = movehit
trigger8 = stateno = 400
trigger9 = stateno = 263
trigger10 = stateno = 901
trigger10 = time = 55
[State -1];for counter mode
type = ChangeState
value = 3000
triggerall = var(9) = 1;Only AI can access
triggerall = p2statetype != A;player not in air
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 500;higher percent
triggerall = statetype != A
triggerall = var(10) != 0
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger10 = movecontact
trigger10 = stateno = 212
trigger11 = movecontact
trigger11 = stateno = 1100
trigger12 = movecontact
trigger12 = stateno = 1101

;---------------------------------------------------------------------------
; Do Ultra Argentina BackBreaker(Max)
[State -1]
type = ChangeState
value = 4000
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life <= 200
triggerall = palno <= 6
triggerall = p2statetype != A;player not in air
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movehit
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movehit
trigger3 = stateno = 240
trigger4 = movehit
trigger4 = stateno = 210
trigger5 = movehit
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movehit
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movehit
trigger7 = stateno = 211
trigger8 = movehit
trigger8 = stateno = 400
trigger9 = stateno = 263
trigger10 = stateno = 901
trigger10 = time = 55
[State -1]
type = ChangeState
value = 4000
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = power >= 3000
triggerall = palno > 6
triggerall = p2statetype != A;player not in air
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 100;low percent
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movehit
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movehit
trigger3 = stateno = 240
trigger4 = movehit
trigger4 = stateno = 210
trigger5 = movehit
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movehit
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movehit
trigger7 = stateno = 211
trigger8 = movehit
trigger8 = stateno = 400
trigger9 = stateno = 263
trigger10 = stateno = 901
trigger10 = time = 55

;---------------------------------------------------------------------------
; Do Running Three
[State -1]
type = ChangeState
value = 3100
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life > 200
triggerall = p2statetype != A;player not in air
triggerall = p2statetype != S;player not Standing
triggerall = p2statetype != L;player not lying down
triggerall = p2statetype = C;player crouching
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 150;higher percent
triggerall = palno <= 6
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
[State -1];for counter mode
type = ChangeState
value = 3100
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = p2statetype != A;player not in air
triggerall = p2statetype != S;player not Standing
triggerall = p2statetype != L;player not lying down
triggerall = p2statetype = C;player crouching
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 50;low percent
triggerall = palno <= 6
triggerall = var(10) != 0
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 235
trigger10 = movecontact
trigger10 = stateno = 212
trigger11 = movecontact
trigger11 = stateno = 1100
trigger12 = movecontact
trigger12 = stateno = 1101

;---------------------------------------------------------------------------
; Do Running Three(Max)
[State -1]
type = ChangeState
value = 4100
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life <= 200
triggerall = p2statetype != A;player not in air
triggerall = p2statetype != S;player not Standing
triggerall = p2statetype != L;player not lying down
triggerall = p2statetype = C;player crouching
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 50;low percent
triggerall = palno <= 6
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400
[State -1]
type = ChangeState
value = 4100
triggerall = var(9) = 1;Only AI can access
triggerall = statetype != A
triggerall = power >= 1000
triggerall = p2statetype != A;player not in air
triggerall = p2statetype != S;player not Standing
triggerall = p2statetype != L;player not lying down
triggerall = p2statetype = C;player crouching
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2life != 0;don't access when opponent had die
triggerall = random < 50;low percent
triggerall = palno <= 6
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger1 = P2bodydist X <= 40;do when near
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = animelem = 4, <0
trigger3 = movecontact
trigger3 = stateno = 240
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 200
trigger5 = animelem = 4, <0
trigger6 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 3, <0
trigger7 = movecontact
trigger7 = stateno = 211
trigger8 = movecontact
trigger8 = stateno = 400

;---------------------------------------------------------------------------
; Access Counter Mode
[State -1]
type = ChangeState
value = 9200
triggerall = var(9) = 1;Only AI can access
triggerall = random < 20;Ultra low percent
triggerall = var(10) = 0;make sure not in counter mode now
triggerall = var(11) = 0;make sure not in armor mode now
triggerall = statetype = S
triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Access Armor Mode
[State -1]
type = ChangeState
value = 9300
triggerall = var(9) = 1;Only AI can access
triggerall = random < 10;Ultra low percent
triggerall = var(10) = 0;make sure not in counter mode now
triggerall = var(11) = 0;make sure not in armor mode now
triggerall = statetype = S
triggerall = power = 3000
trigger1 = ctrl
