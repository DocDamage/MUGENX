;-| CPU |--------------------------------------------------------
[Command]
name = "cpu"
command =D,D,D,D,D,D,D,D
time = 0

[Command]
name = "cpu"
command =F,F,F,F,F,F,F
time = 0

[Command]
name = "cpu"
command =U,U,U,U,U,U,U,U
time = 0

[Command]
name = "cpu"
command = B,B,B,B,B,B,B
time = 0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "àÍëM"
command =~F,DF,D,DB,B,F,DF,D,DB,B,x+y
time = 40

[Command]
name = "àÍëM"
command =~F,D,B,F,D,B,x+y
time = 35

[Command]
name = "êF"
command =~D,DB,B,DB,D,DF,F,a+b
time = 25

[Command]
name = "êF"
command =~D,B,D,F,a+b
time = 20

[Command]
name = "ìVñÇx"
command =~D,DB,B,DB,D,DF,F,x
time = 25

[Command]
name = "ìVñÇx"
command =~D,B,D,F,x
time = 20

[Command]
name = "ìVñÇy"
command =~D,DB,B,DB,D,DF,F,y
time = 25

[Command]
name = "ìVñÇy"
command =~D,B,D,F,y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "ñ≥ñæ"
command =~F,DF,D,DB,B,a
time = 17

[Command]
name = "ñ≥ñæ"
command =~F,DF,D,DB,B,b
time = 17

[Command]
name = "è∏ó≥x"
command =~F,D,DF,x
time = 13

[Command]
name = "è∏ó≥y"
command =~F,D,DF,y
time = 13

[Command]
name = "ãtè∏ó≥a"
command =~B,D,DB,a
time = 13

[Command]
name = "ãtè∏ó≥b"
command =~B,D,DB,b
time = 13

[Command]
name = "ãtè∏ó≥"
command =~B,D,DB
time = 13

[Command]
name = "îgìÆx"
command =~D,DF,F,x
time = 10

[Command]
name = "îgìÆy"
command =~D,DF,F,y
time = 10

[Command]
name = "îgìÆa"
command =~D,DF,F,a
time = 10

[Command]
name = "îgìÆb"
command =~D,DF,F,b
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "â∫â∫x"
command =~D,D,x
time = 12

[Command]
name = "â∫â∫y"
command =~D,D,y
time = 12

[Command]
name = "â∫â∫a"
command =~D,D,a
time = 12

[Command]
name = "â∫â∫b"
command =~D,D,b
time = 12

[Command]
name = "FF"   ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"   ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "ABC"
command = x+a+y
time = 1

[Command]
name = "AB"
command = x+a
time = 1

[Command]
name = "CD"
command = y+b
time = 1

[Command]
name = "FS"
command = a+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]
;===========================================================================
;àÍëM
[State -1]
type = ChangeState
value = 3300
triggerall = command = "àÍëM"
triggerall = fvar(25) = 1
triggerall = statetype != A && power >= 2000
trigger1 = ctrl

;àÍëM
[State -1]
type = ChangeState
value = 3300
triggerall = command = "àÍëM"
triggerall = fvar(25) = 1
triggerall = statetype != A && power >= 2000
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 13,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0
trigger8 = (stateno = 505) && animelem = 8,>= 0 && animelem = 12,<= 0
trigger9 = (stateno = 510) && animelem = 6,>= 0 && animelem = 7,<= 0

;àÍëMÅEÇ«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 3300
triggerall = command = "àÍëM"
triggerall = fvar(25) = 1
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1
trigger2 = fvar(10) >= 198 && stateno = 3010

;===========================================================================
;êFôÓ
[State -1]
type = ChangeState
value = 3100
triggerall = command = "êF"

triggerall = statetype != A && life <= 500
triggerall = fvar(26) || (fvar(26) = 0 && var(5) = 0)
trigger1 = ctrl

;êFôÓ
[State -1]
type = ChangeState
value = 3100
triggerall = command = "êF"

triggerall = statetype != A && life <= 500
triggerall = movecontact
triggerall = fvar(26) || (fvar(26) = 0 && var(5) = 0)
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 13,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0
trigger8 = (stateno = 505) && animelem = 8,>= 0 && animelem = 12,<= 0
trigger9 = (stateno = 510) && animelem = 6,>= 0 && animelem = 7,<= 0

;êFôÓÇ«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 3100
triggerall = command = "êF"
triggerall = statetype != A && life <= 500
triggerall = fvar(26) || (fvar(26) = 0 && var(5) = 0)
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===========================================================================
;é„ÅEìVñÇîgè{Å@
[State -1]
type = ChangeState
value = 3000
triggerall = command = "ìVñÇx"

triggerall = statetype != A && power >= 1000
trigger1 = ctrl

;é„ÅEìVñÇîgè{Å@
[State -1]
type = ChangeState
value = 3000
triggerall = command = "ìVñÇx"

triggerall = statetype != A && power >= 1000
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 13,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0
trigger8 = (stateno = 505) && animelem = 8,>= 0 && animelem = 12,<= 0
trigger9 = (stateno = 510) && animelem = 6,>= 0 && animelem = 7,<= 0

;é„ÅEìVñÇîgè{Ç«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 3000
triggerall = command = "ìVñÇx"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;ã≠ÅEìVñÇîgè{Å@
[State -1]
type = ChangeState
value = 3005
triggerall = command = "ìVñÇy"

triggerall = statetype != A && power >= 1000
trigger1 = ctrl

;ã≠ÅEìVñÇîgè{Å@
[State -1]
type = ChangeState
value = 3005
triggerall = command = "ìVñÇy"

triggerall = statetype != A && power >= 1000
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 13,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0
trigger8 = (stateno = 505) && animelem = 8,>= 0 && animelem = 12,<= 0
trigger9 = (stateno = 510) && animelem = 6,>= 0 && animelem = 7,<= 0

;ã≠ÅEìVñÇîgè{Ç«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 3005
triggerall = command = "ìVñÇy"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===========================================================================
;ñ≥ñæ
[State -1]
type = ChangeState
value = 1300
triggerall = command = "ñ≥ñæ"
triggerall = numhelper(1390) = 0
triggerall = statetype != A
;triggerall = p2bodydist X <= 15
trigger1 = ctrl

;ñ≥ñæ
[State -1]
type = ChangeState
value = 1300
triggerall = command = "ñ≥ñæ"
triggerall = numhelper(1390) = 0
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ñ≥ñæÇ«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1300
triggerall = command = "ñ≥ñæ"
triggerall = numhelper(1390) = 0
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===========================================================================
;é„ÅEìVôÙó÷Å@
[State -1]
type = ChangeState
value = 1100
triggerall = command = "è∏ó≥x"

triggerall = statetype != A
trigger1 = ctrl

;é„ÅEìVôÙó÷Å@
[State -1]
type = ChangeState
value = 1100
triggerall = command = "è∏ó≥x"

triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;é„ÅEìVôÙó÷ÅEãÛíÜ
[State -1]
type = ChangeState
value = 1105
triggerall = command = "è∏ó≥x"

triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 610) && animelem = 7,>= 0 && animelem = 9,<= 0
trigger3 = movecontact
trigger3 = (stateno = 640) && animelem = 5,>= 0 && animelem = 7,<= 0

;é„ÅEìVôÙó÷Ç«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1105
triggerall = command = "è∏ó≥x"
triggerall = statetype = A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;é„ÅEìVôÙó÷Ç«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1100
triggerall = command = "è∏ó≥x"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;ã≠ÅEìVôÙó÷Å@
[State -1]
type = ChangeState
value = 1110
triggerall = command = "è∏ó≥y"

triggerall = statetype != A
trigger1 = ctrl

;ã≠ÅEìVôÙó÷Å@
[State -1]
type = ChangeState
value = 1110
triggerall = command = "è∏ó≥y"

triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ã≠ÅEìVôÙó÷ÅEãÛíÜ
[State -1]
type = ChangeState
value = 1115
triggerall = command = "è∏ó≥y"

triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 610) && animelem = 7,>= 0 && animelem = 9,<= 0
trigger3 = movecontact
trigger3 = (stateno = 640) && animelem = 5,>= 0 && animelem = 7,<= 0

;ã≠ÅEìVôÙó÷Ç«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1115
triggerall = command = "è∏ó≥y"
triggerall = statetype = A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;ã≠ÅEìVôÙó÷Ç«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1110
triggerall = command = "è∏ó≥y"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===========================================================================
;ñ≥óJâÿ
[State -1]
type = ChangeState
value = 1600
triggerall = command = "ãtè∏ó≥a"
triggerall = fvar(25) = 1
triggerall = statetype != A
trigger1 = ctrl

;ñ≥óJâÿ
[State -1]
type = ChangeState
value = 1601
triggerall = command = "ãtè∏ó≥b"
triggerall = fvar(25) = 1
triggerall = statetype != A
trigger1 = ctrl

;ñ≥óJâÿ
[State -1]
type = ChangeState
value = 1600
triggerall = command = "ãtè∏ó≥a"
triggerall = fvar(25) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ñ≥óJâÿ
[State -1]
type = ChangeState
value = 1601
triggerall = command = "ãtè∏ó≥b"
triggerall = fvar(25) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ñ≥óJâÿ
[State -1]
type = ChangeState
value = 1600
triggerall = command = "ãtè∏ó≥a"
triggerall = fvar(25) = 1
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;ñ≥óJâÿ
[State -1]
type = ChangeState
value = 1601
triggerall = command = "ãtè∏ó≥b"
triggerall = fvar(25) = 1
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===========================================================================
;é„ÅEç~ó’ÅEãÛíÜ
[State -1]
type = ChangeState
value = 1500
triggerall = command = "îgìÆa"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 610) && animelem = 7,>= 0 && animelem = 9,<= 0
trigger3 = movecontact
trigger3 = (stateno = 640) && animelem = 5,>= 0 && animelem = 7,<= 0

;é„ÅEç~ó’ÅEãÛíÜ
[State -1]
type = ChangeState
value = 1500
triggerall = command = "îgìÆa"
triggerall = statetype = A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;ã≠ÅEç~ó’ÅEãÛíÜ
[State -1]
type = ChangeState
value = 1505
triggerall = command = "îgìÆb"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 610) && animelem = 7,>= 0 && animelem = 9,<= 0
trigger3 = movecontact
trigger3 = (stateno = 640) && animelem = 5,>= 0 && animelem = 7,<= 0

;ã≠ÅEç~ó’ÅEãÛíÜ
[State -1]
type = ChangeState
value = 1505
triggerall = command = "îgìÆb"
triggerall = statetype = A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===========================================================================
;é„ÅEòI‚P
[State -1]
type = ChangeState
value = 1000
triggerall = command = "îgìÆx"
triggerall = statetype != A
trigger1 = ctrl

;é„ÅEòI‚P
[State -1]
type = ChangeState
value = 1000
triggerall = command = "îgìÆx"
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;é„ÅEòI‚PÇ«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1000
triggerall = command = "îgìÆx"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;ã≠ÅEòI‚P
[State -1]
type = ChangeState
value = 1010
triggerall = command = "îgìÆy"

triggerall = statetype != A
trigger1 = ctrl

;ã≠ÅEòI‚P
[State -1]
type = ChangeState
value = 1010
triggerall = command = "îgìÆy"

triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ã≠ÅEòI‚PÇ«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1010
triggerall = command = "îgìÆy"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;===========================================================================
;é„ÅEñªâÿ
[State -1]
type = ChangeState
value = 1400
triggerall = command = "îgìÆa"

triggerall = statetype != A
trigger1 = ctrl

;é„ÅEñªâÿ
[State -1]
type = ChangeState
value = 1400
triggerall = command = "îgìÆa"

triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;é„ÅEñªâÿÇ«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1400
triggerall = command = "îgìÆa"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;ã≠ÅEñªâÿ
[State -1]
type = ChangeState
value = 1410
triggerall = command = "îgìÆb"

triggerall = statetype != A
trigger1 = ctrl

;ã≠ÅEñªâÿ
[State -1]
type = ChangeState
value = 1410
triggerall = command = "îgìÆb"

triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ã≠ÅEñªâÿÇ«Ç±ÉLÉÉÉì
[State -1]
type = ChangeState
value = 1410
triggerall = command = "îgìÆb"
triggerall = statetype != A && var(10) = 1
triggerall = movecontact
trigger1 = var(11) = 1

;---------------------------------------------------------------------------
;ÉoÉbÉNÉ_ÉbÉVÉÖ
[State -1,B_Dash]
type = ChangeState
value = 105
triggerall = command = "ABC" || command = "c"
triggerall = statetype != A && fvar(25) = 1
triggerall = command = "holdback"
trigger1 = ctrl
trigger2 = stateno = 52

;ëOï˚îÇØà⁄ìÆ
[State -1]
type = ChangeState
value = 300
triggerall = command = "ABC"||command="c"
triggerall = statetype != A && fvar(25) = 1
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 52

;---------------------------------------------------------------------------
;ABìäÇ∞
[State -1]
type = ChangeState
value = 800
triggerall = command = "AB"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger2 = command = "holdfwd" || command = "holdback"
;---------------------------------------------------------------------------
;CDìäÇ∞2
[State -1]
type = ChangeState
value = 900
triggerall = command = "CD"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger2 = command = "holdfwd" || command = "holdback"

;========================================================================
;òAÇÀéaÇËÅEó÷âÙ
[State -1]
type = ChangeState
value = 500
triggerall = command = "x" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;òAÇÀéaÇËÅEó÷âÙ
[State -1]
type = ChangeState
value = 500
triggerall = command = "x" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0

;========================================================================
;òAÇÀéaÇËÅEì]ê∂
[State -1]
type = ChangeState
value = 550
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;òAÇÀéaÇËÅEì]ê∂
[State -1]
type = ChangeState
value = 550
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0

;===========================================================================
;ôãìﬂÅEx
[State -1]
type = ChangeState
value = 1200
triggerall = command = "â∫â∫x"

triggerall = statetype != A
trigger1 = ctrl

;ôãìﬂÅEx
[State -1]
type = ChangeState
value = 1200
triggerall = command = "â∫â∫x"

triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ôãìﬂÅEa
[State -1]
type = ChangeState
value = 1210
triggerall = command = "â∫â∫a"
triggerall = statetype != A
trigger1 = ctrl

;ôãìﬂÅEa
[State -1]
type = ChangeState
value = 1210
triggerall = command = "â∫â∫a"
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ôãìﬂÅEy
[State -1]
type = ChangeState
value = 1220
triggerall = command = "â∫â∫y"
triggerall = statetype != A
trigger1 = ctrl

;ôãìﬂÅEy
[State -1]
type = ChangeState
value = 1220
triggerall = command = "â∫â∫y"
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;ôãìﬂÅEb
[State -1]
type = ChangeState
value = 1230
triggerall = command = "â∫â∫b"
triggerall = statetype != A
trigger1 = ctrl

;ôãìﬂÅEb
[State -1]
type = ChangeState
value = 1230
triggerall = command = "â∫â∫b"
triggerall = statetype != A
triggerall = movecontact
trigger1 = (stateno = [200,205]) && animelem = 6,>= 0 && animelem = 8,<= 0
trigger2 = (stateno = 215) && animelem = 9,>= 0 && animelem = 11,<= 0
trigger3 = (stateno = 235) && animelem = 5,>= 0 && animelem = 6,<= 0
trigger4 = (stateno = 400) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger5 = (stateno = 430) && animelem = 6,>= 0 && animelem = 7,<= 0
trigger6 = (stateno = 440) && animelem = 4,>= 0 && animelem = 6,<= 0
trigger7 = (stateno = 500) && animelem = 4,>= 0 && animelem = 5,<= 0

;---------------------------------------------------------------------------
;GCFS
[State -1,FS]
type = ChangeState
value = 260
triggerall = Power>=1000
triggerall = stateno=150 || stateno=152
triggerall = Statetype!=A
trigger1 = command = "FS"
trigger2 = command = "c"

;GCFS
[State -1,FS]
type = ChangeState
value = 260
triggerall = Power>=1000
triggerall = stateno=150 || stateno=152
triggerall = Statetype != A
trigger1 = command = "FF"

;É_ÉbÉVÉÖ
[State -1,Dash]
type = ChangeState
value = 100
triggerall = Statetype != A && ctrl
trigger1 = command = "FF"

;ÉoÉbÉNÉ_ÉbÉVÉÖ
[State -1,B_Dash]
type = ChangeState
value = 105
triggerall = Statetype != A && ctrl
trigger1 = command = "BB"
trigger1 = command != "ãtè∏ó≥"

;GCçUåÇ
[State -1,GC_Attack]
type = ChangeState
value = 250
triggerall = Power>=1000
triggerall = stateno=150 || stateno=152
triggerall = Statetype != A
trigger1 = command = "CD" || command = "z"


;===========================================================================
;íßî≠
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A && var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;óßÇøé„ÉpÉìÉ`
[State -1]
type = ChangeState
value = ifelse(p2bodydist X<=15,205,200)
triggerall = command = "x"
triggerall = command != "holddown" && var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact

;óßÇøã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = ifelse(p2bodydist X<=38,215,210)
triggerall = command = "y"
triggerall = command != "holddown" && var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;óßÇøé„ÉLÉbÉN
[State -1]
type = ChangeState
value = ifelse(p2bodydist X<=10,235,230)
triggerall = command = "a"
triggerall = command != "holddown" && var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 235 && movecontact

;óßÇøã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = ifelse(p2bodydist X<=32,245,240)
triggerall = command = "b"
triggerall = command != "holddown" && var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown" && var(1) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown" && var(1) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›é„ÉLÉbÉN
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown" && var(1) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown" && var(1) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;ãÛíÜé„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 600
triggerall = command = "x" && var(1) = 0
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ãÛíÜã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 610
triggerall = command = "y" && var(1) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ãÛíÜé„ÉLÉbÉN
[State -1]
type = ChangeState
value = 630
triggerall = command = "a" && var(1) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ãÛíÜã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 640

triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl


