[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Ultimate"
command = ~B, DB, D, DF, F, c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "Sinn_a"
command = ~D, D, a

[Command]
name = "Sinn_b"
command = ~D, D, b

[Command]
name = "Sinn_c"
command = ~D, D, c

[Command]
name = "Renkan_a"
command = ~F, D, DF, a

[Command]
name = "Renkan_b"
command = ~F, D, DF, b

[Command]
name = "Renkan_c"
command = ~F, D, DF, c

[Command]
name = "Sippo_a"
command = ~D, DB, B, a

[Command]
name = "Sippo_b"
command = ~D, DB, B, b

[Command]
name = "Sippo_c"
command = ~D, DB, B, c

[Command]
name = "Tyou_a"
command = ~D, DF, F, a

[Command]
name = "Tyou_b"
command = ~D, DF, F, b

[Command]
name = "Tyou_c"
command = ~D, DF, F, c

[Command]
name = "Shield"
command = ~D, DB, B, x
[Command]
name = "Shield"
command = ~D, DB, B, z

[Command]
name = "Blood"
command = ~D, D, D, x
Time = 20
[Command]
name = "Blood"
command = ~D, D, D, z
Time = 20
[Command]
name = "Blood"
command = a+b+c
Time = 10

[Command]
name = "high"
command = $D, UF
time = 10

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
name = "recovery"
command = x
time = 1
[Command]
name = "recovery"
command = y
time = 1
[Command]
name = "recovery"
command = z
time = 1
[Command]
name = "recovery"
command = a
time = 1
[Command]
name = "recovery"
command = b
time = 1
[Command]
name = "recovery"
command = c
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

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
; すっごい究極奥義
[State -1]
type = ChangeState
value = 3600
triggerall = command = "Ultimate" && var(25) = 3
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger3 = (stateno = [1000,1199]) && movecontact

; 究極奥義
[State -1]
type = ChangeState
value = 3500
triggerall = command = "Ultimate" && var(25) = [1,2]
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger3 = (stateno = [1000,1199]) && movecontact

;---------------------------------------------------------------------------
; EXしんきゃく
[State -1]
type = ChangeState
value = 3300
triggerall = command = "Sinn_c" && statetype != A
triggerall = ((var(25) = [1,3]) || power >= 1000)
trigger1 = ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger3 = (stateno = [1000,1400]) && movecontact

;---------------------------------------------------------------------------
; EXれんかんたい
[State -1]
type = ChangeState
value = 3200
triggerall = command = "Renkan_c" && statetype != A
triggerall = ((var(25) = [1,3]) || power >= 1000)
trigger1 = ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger3 = (stateno = [1000,1400]) && movecontact

; EX空中れんかんたい
[State -1]
type = ChangeState
value = 3250
triggerall = command = "Renkan_c" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3=(stateno=1200)&&movecontact&&(AnimElemTime(7)>=0)&&(AnimElemTime(8)<0)
trigger4=(stateno=3200)&&movecontact&&(AnimElemTime(7)>=0)&&(AnimElemTime(8)<0)

;---------------------------------------------------------------------------
; EXせんしっぽ
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Sippo_c" && statetype != A
triggerall = ((var(25) = [1,3]) || power >= 1000)
trigger1 = ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger3 = (stateno = [1000,1400]) && movecontact

;---------------------------------------------------------------------------
; EXちょうしんちゅう
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Tyou_c" && statetype != A
triggerall = ((var(25) = [1,3]) || power >= 1000)
trigger1 = ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger3 = (stateno = [1000,1400]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; しんきゃく
[State -1]
type = ChangeState
value = 1300
triggerall = command = "Sinn_a"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact

; 強しんきゃく
[State -1]
type = ChangeState
value = 1310
triggerall = command = "Sinn_b" || command = "Sinn_c"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact

;---------------------------------------------------------------------------
; れんかんたい
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Renkan_a"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact

; 強れんかんたい
[State -1]
type = ChangeState
value = 1210
triggerall = command = "Renkan_b" || command = "Renkan_c"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact

; 空中れんかんたい
[State -1]
type = ChangeState
value = 1250
triggerall = command = "Renkan_a"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 3200) && movecontact && (AnimElemTime(7) >= 0) && (AnimElemTime(8) < 0)

; 空中強れんかんたい
[State -1]
type = ChangeState
value = 1260
triggerall = command = "Renkan_b" || command = "Renkan_c"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,620]) && movecontact
trigger3 = (stateno = 3200) && movecontact && (AnimElemTime(7) >= 0) && (AnimElemTime(8) < 0)

;---------------------------------------------------------------------------
; せんしっぽ
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Sippo_a"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact

; 強せんしっぽ
[State -1]
type = ChangeState
value = 1110
triggerall = command = "Sippo_b" || command = "Sippo_c"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact

;---------------------------------------------------------------------------
; ちょうしんちゅう
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Tyou_a"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact

; 強ちょうしんちゅう
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Tyou_b" || command = "Tyou_c"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,420]) && movecontact

; ちょうしんちゅう追加Ａ
[State -1]
type = ChangeState
value = 1050
trigger1 = command = "a" && command = "holdfwd" && command != "holddown"
trigger1 = (stateno = [1000,1010]) && AnimElemTime(10) < 0 && movecontact

; ちょうしんちゅう追加Ｂ
[State -1]
type = ChangeState
value = 1060
trigger1 = command = "b" && command = "holdfwd" && command != "holddown"
trigger1 = (stateno = [1000,1010]) && AnimElemTime(10) < 0 && movecontact

;--------------------------
; 強制開放
[State -1]
type = ChangeState
value = 900
triggerall = (command="Blood") && (statetype != A) && (Var(25) != [2,3])
triggerall = ((Var(25) = 0) && power >= 1000) || (Var(25) != 0)
trigger1 = ctrl
trigger2 = Stateno = [10,19]

;--------------------------
; 空中投げ
[State -1]
type = ChangeState
value = 850
triggerall = command = "c"
triggerall = (statetype = A) && (p2statetype = A)
triggerall = (command = "holdfwd") || (command = "holdback")
triggerall = (p2bodydist X < 16)
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact && (Var(18) = 0)
trigger3 = (stateno = 3200) && movecontact && (AnimElemTime(7) >= 0) && (AnimElemTime(8) < 0)

[State -1]
type = ChangeState
value = 851
triggerall = command = "a" && (command = "x" || command = "z")
triggerall = (statetype = A) && (p2statetype = A)
triggerall = (command = "holdfwd") || (command = "holdback")
triggerall = (p2bodydist X < 16)
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact && (Var(18) = 0)
trigger3 = (stateno = 3200) && movecontact && (AnimElemTime(7) >= 0) && (AnimElemTime(8) < 0)

;--------------------------
; 投げ
[State -1]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S && ctrl
trigger1 = (command = "holdfwd") && (p2bodydist X < 3) && (p2movetype != H)
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = (command = "holdback") && p2bodydist X < 5 && (p2movetype != H)
trigger2 = (p2statetype = S) || (p2statetype = C)

[State -1]
type = ChangeState
value = 800
triggerall = command = "a" && (command = "x" || command = "z")
triggerall = statetype = S && ctrl
trigger1 = (command = "holdfwd") || (command = "holdback")

;--------------------------
; シールドバンカー
[State -1]
type = ChangeState
value = 750
triggerall = command="Shield"
trigger1 = (statetype != A) && ctrl

;---------------------------------------------------------------------------
; 立ち　シールド
[State -1]
type = ChangeState
value = 700
triggerall = (command = "x" || command = "z") && command != "holddown"
trigger1 = statetype = S && ctrl

; 屈み　シールド
[State -1]
type = ChangeState
value = 710
triggerall = (command = "x" || command = "z") && command = "holddown"
trigger1 = statetype = C && ctrl

; 空中　シールド
[State -1]
type = ChangeState
value = 720
triggerall = (command = "x" || command = "z")
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; チェイジャン
[State -1]
type = ChangeState
value = 58
triggerall = command = "holdup"
trigger1 =  (stateno = 225) && movehit && (AnimElemTime(8) < 0)

; キャンジャン
[State -1]
type = ChangeState
value = 45
triggerall = var(8) < 1
triggerall = command = "holdup"
trigger1 = (stateno = [200,699]) && movecontact
trigger1 = (stateno != 220) && (stateno != 225)
trigger2 = (stateno = 110) && Time >= 8
trigger3 = (stateno = 225) && moveguarded
trigger4 = (stateno = 225) && movehit && (AnimElemTime(8) >= 0)
trigger5 = (stateno = 3200) && (movecontact && (AnimElemTime(7) >= 1) && (AnimElemTime(8) < 0))

; ハイジャンプ
[State -1]
type = ChangeState
value = 55
trigger1 = command = "high" && statetype != A && ctrl

; 空中ダシュ
[State -1]
type = ChangeState
value = 110
triggerall = var(7) < 1
triggerall = command = "FF" || command = "BB"
triggerall = stateno!= 45 && stateno!= 110 && pos y < -25
trigger1 = (prevstateno!= 45) && statetype = A && ctrl
trigger2 = (prevstateno = 45) && stateno = 50 && time >= 10
trigger3 =(stateno = [600,699]) && movecontact
trigger4 = (stateno = 3200) && movecontact && (AnimElemTime(7) >= 0) && (AnimElemTime(8) < 0)

;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl

;後退ダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

;===========================================================================
;---------------------------------------------------------------------------
; 前強
[State -1]
type = ChangeState
value = 225
triggerall = command = "c" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger2 = stateno != 220 && (stateno != 225)

;---------------------------------------------------------------------------
; 前中
[State -1]
type = ChangeState
value = 215
triggerall = command = "b" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger2 = (stateno != 215) && (stateno != 220) && (stateno != 225) && (Var(20) = 0)

;---------------------------------------------------------------------------
; 立ち　弱
[State -1]
type = ChangeState
value = 200
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = 200) || (stateno = 400)) && movecontact
trigger3 = (stateno = [201,420]) && movecontact
trigger3 = (stateno != 220) && (stateno != 400) && (stateno != 225) && (Var(10) = 0)
trigger4 = (stateno = 200) && time >= 8

;---------------------------------------------------------------------------
; 立ち　中
[State -1]
type = ChangeState
value = 210
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger2 = (stateno != 210) && (stateno != 220) && (stateno != 225) && (Var(11) = 0)

;---------------------------------------------------------------------------
; 立ち　強
[State -1]
type = ChangeState
value = 220
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger2 = stateno != 220 && (stateno != 225) && (Var(12) = 0)

;---------------------------------------------------------------------------
; しゃがみ　弱
[State -1]
type = ChangeState
value = 400
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = ((stateno = 200) || (stateno = 400)) && movecontact
trigger3 = (stateno = [201,420]) && movecontact
trigger3 = (stateno != 220) && (stateno != 400) && (stateno != 225) && (Var(13) = 0)

;---------------------------------------------------------------------------
; しゃがみ　中
[State -1]
type = ChangeState
value = 410
triggerall = command = "b" && command = "holddown" && (Var(14) = 0)
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [200,420]) && movecontact
trigger2 = (stateno != 410) && (stateno != 220) && (stateno != 225)

;---------------------------------------------------------------------------
; しゃがみ　強
[State -1]
type = ChangeState
value = 420
triggerall = command = "c" && command = "holddown" && (Var(15) = 0)
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [200,410]) && movecontact
trigger2 = (stateno != 220) && (stateno != 225)

;---------------------------------------------------------------------------
; 空中　弱
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = (stateno = [610,620]) && movecontact && (Var(16) = 0)
trigger4 = (stateno = 3200) && movecontact && (AnimElemTime(7) >= 0) && (AnimElemTime(8) < 0)

;---------------------------------------------------------------------------
; 空中　中
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact && (Var(17) = 0)
trigger3 = (stateno = 3200) && movecontact && (AnimElemTime(7) >= 0) && (AnimElemTime(8) < 0)

;---------------------------------------------------------------------------
; 空中　強
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,610]) && movecontact && (Var(18) = 0)
trigger3 = (stateno = 3200) && movecontact && (AnimElemTime(7) >= 0) && (AnimElemTime(8) < 0)
