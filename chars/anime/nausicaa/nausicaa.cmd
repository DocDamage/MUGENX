[Command]
name = "BDBDDFF_x"
command = ~B, DB, D, DF, F, x
time = 40

[Command]
name = "BDBDDFF_y"
command = ~B, DB, D, DF, F, y
time = 40

[Command]
name = "BDBDDFF_z"
command = ~B, DB, D, DF, F, z
time = 40

[Command]
name = "FDDF_ex1"
command = ~F, D, DF, x+y

[Command]
name = "FDDF_ex2"
command = ~F, D, DF, y+z

[Command]
name = "FDDF_ex3"
command = ~F, D, DF, x+z

[Command]
name = "FDDF_x"
command = ~F, D, DF, x

[Command]
name = "FDDF_y"
command = ~F, D, DF, y

[Command]
name = "FDDF_z"
command = ~F, D, DF, z

;###################################################
;メーヴェ強襲
[command]
name = "shoohkenx"
command = ~F, D, DF, x
;time = 15

[command]
name = "shoohkeny"
command = ~F, D, DF, y
;time = 15

[command]
name = "shoohkenz"
command = ~F, D, DF, z
;time = 15
;####################################################

[Command]
name = "QCD_x"
command = ~B, DB, D, x
[Command]
name = "QCD_y"
command = ~B, DB, D, y
[Command]
name = "QCD_z"
command = ~B, DB, D, z
[Command]
name = "QCD_a"
command = ~B, DB, D, a
[Command]
name = "QCD_b"
command = ~B, DB, D, b

;#######################################
;ピックルアタック
[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z
;#######################################
;超必殺
;お願いミト
[Command]
name = "QCF_c"
command = ~D, DF, F, c

;王蟲大地の怒り
[Command]
name = "QCB_c"
command = ~D, DB, B, c

;#######################################


[Command]
name = "DDFF_x"
command = ~D, DF, F, x

[Command]
name = "DDFF_y"
command = ~D, DF, F, y

[Command]
name = "DDFF_z"
command = ~D, DF, F, z

[Command]
name = "bl_F"
command = F
time = 0

[Command]
name = "osu_z"
command = /z
time = 0

[Command]
name = "xy"
command = x+y
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;二度押し（必須）ダッシュ
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Command]
name = "FF"      ;変更不可
command = F, F
time = 10

[Command]
name = "BB"       ;変更不可
command = B, B
time = 10

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;同時押し（必須）
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[Command]
name = "recovery" ;変更不可
command = a+b
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;単発（必須）
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

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
name = "s"
command = s
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;押しっぱなし
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

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

;------------------------------------------------------------
;以上で最低限のコマンドの設定が終了
;あとは個人で設定しましょう

;
;でここからがコマンド受け付けから行動までのリンク設定
;------------------------------------------------------------


[Statedef -1]
[State -1]
type = ChangeState ;Null
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


;============================================
;デバック用
;[State -1]
;type = ChangeState
;value = 552
;triggerall = command = "c"
;trigger1 = ctrl = 1


;#####################################################
;メーヴェ強襲
; Shoohken Y
[state -1]
type = changestate
value = 1003
triggerall = command = "shoohkenx"
;triggerall = command = "c"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 255
trigger9 = movecontact
trigger10 = stateno = 300
trigger10 = movecontact
trigger11 = stateno = 310
trigger11 = movecontact
trigger12 = stateno = 320
trigger12 = movecontact
trigger13 = stateno = 330
trigger13 = movecontact
trigger14 = stateno = 340
trigger14 = movecontact
trigger15 = stateno = 1022
trigger15 = movecontact
trigger16 = stateno = 1023
trigger16 = movecontact

; Shoohken Y
[state -1]
type = changestate
value = 1003
triggerall = command = "shoohkeny"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 255
trigger9 = movecontact
trigger10 = stateno = 300
trigger10 = movecontact
trigger11 = stateno = 310
trigger11 = movecontact
trigger12 = stateno = 320
trigger12 = movecontact
trigger13 = stateno = 330
trigger13 = movecontact
trigger14 = stateno = 340
trigger14 = movecontact
trigger15 = stateno = 1022
trigger15 = movecontact
trigger16 = stateno = 1023
trigger16 = movecontact


; Shoohken Y
[state -1]
type = changestate
value = 1003
triggerall = command = "shoohkenz"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 255
trigger9 = movecontact
trigger10 = stateno = 300
trigger10 = movecontact
trigger11 = stateno = 310
trigger11 = movecontact
trigger12 = stateno = 320
trigger12 = movecontact
trigger13 = stateno = 330
trigger13 = movecontact
trigger14 = stateno = 340
trigger14 = movecontact
trigger15 = stateno = 1022
trigger15 = movecontact
trigger16 = stateno = 1023
trigger16 = movecontact






;============================================

;前ブロッキング
[State -1]
type = ChangeState
value = 1030
triggerall = command = "bl_F"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno =1031
trigger2 = AnimElem =2

;============================================


;============================================
;必殺技関連
;ピックルアタック
;-----------------------------------
;SpecialB x    Knuckle Pad
[State -1]
type = ChangeState
value = 1021
triggerall = command = "QCF_x"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 211
trigger7 = movecontact
trigger8 = stateno = 201
trigger8 = movecontact
trigger9 = stateno = 203
trigger9 = movecontact
trigger10 = stateno = 401
trigger10 = movecontact
trigger11 = stateno = 411
trigger11 = movecontact
trigger12 = stateno = 214
trigger12 = movecontact
trigger13 = stateno = 204
trigger13 = movecontact
trigger14 = stateno = 240
trigger14 = movecontact
trigger15 = stateno = 209
trigger15 = movecontact

;SpecialB y    Knuckle Pad
[State -1]
type = ChangeState
value = 1020
triggerall = command = "QCF_y"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 211
trigger7 = movecontact
trigger8 = stateno = 201
trigger8 = movecontact
trigger9 = stateno = 203
trigger9 = movecontact
trigger10 = stateno = 401
trigger10 = movecontact
trigger11 = stateno = 411
trigger11 = movecontact
trigger12 = stateno = 214
trigger12 = movecontact
trigger13 = stateno = 204
trigger13 = movecontact
trigger14 = stateno = 240
trigger14 = movecontact

;SpecialB z    Knuckle Pad
[State -1]
type = ChangeState
value = 1020
triggerall = command = "QCF_z"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 211
trigger7 = movecontact
trigger8 = stateno = 201
trigger8 = movecontact
trigger9 = stateno = 203
trigger9 = movecontact
trigger10 = stateno = 401
trigger10 = movecontact
trigger11 = stateno = 411
trigger11 = movecontact
trigger12 = stateno = 214
trigger12 = movecontact
trigger13 = stateno = 204
trigger13 = movecontact
trigger14 = stateno = 240
trigger14 = movecontact

;########################################################
;ピックルアタック2
;-----------------------------------
;SpecialB x    Knuckle Pad
[State -1]
type = ChangeState
value = 1023
triggerall = command = "QCF_x"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1020
trigger2 = movecontact
trigger3 = stateno = 1021
trigger3 = movecontact

;SpecialB y    Knuckle Pad
[State -1]
type = ChangeState
value = 1022
triggerall = command = "QCF_y"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1020
trigger2 = movecontact
trigger3 = stateno = 1021
trigger3 = movecontact

;SpecialB z    Knuckle Pad
[State -1]
type = ChangeState
value = 1022
triggerall = command = "QCF_z"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1020
trigger2 = movecontact
trigger3 = stateno = 1021
trigger3 = movecontact

;########################################################
;ピックルアタック2
;-----------------------------------
;SpecialB x    Knuckle Pad
[State -1]
type = ChangeState
value = 1024
triggerall = command = "QCF_x"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1022
trigger2 = movecontact
trigger3 = stateno = 1023
trigger3 = movecontact

;SpecialB y    Knuckle Pad
[State -1]
type = ChangeState
value = 1024
triggerall = command = "QCF_y"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1022
trigger2 = movecontact
trigger3 = stateno = 1023
trigger3 = movecontact

;SpecialB z    Knuckle Pad
[State -1]
type = ChangeState
value = 1024
triggerall = command = "QCF_z"
;triggerall = pos y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1022
trigger2 = movecontact
trigger3 = stateno = 1023
trigger3 = movecontact


;###################################################
;超必殺（お願いミト）
[State -1]
type = ChangeState
value = 1200
;triggerall = numproj = 0
triggerall = numhelper = 0
triggerall = command = "QCF_c"
trigger1 = StateType = S
trigger2 = stateno != 1200
trigger2 = movecontact

;trigger2 = p2statetype = C
;triggerall = power >= 1000
triggerall = var(23) > 0
triggerall = ctrl = 1

;王蟲大地の怒り
[State -1]
type = ChangeState
value = 1300

;triggerall = numproj = 0
triggerall = numhelper = 0
triggerall = command = "QCB_c"
trigger1 = StateType = S
trigger2 = stateno != 1300
trigger2 = movecontact
trigger3 = stateno != 41
trigger3 = movecontact
trigger4 = stateno != 44
trigger4 = movecontact

;triggerall = power >= 1000
triggerall = var(23) > 0
triggerall = ctrl = 1


;============================================

;空中攻撃X
[State -1]
type = ChangeState
value = 207
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = stateno = 207
;trigger2 = movecontact


;下攻撃X
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype  = C
trigger1 = ctrl = 1
;trigger2 = statetype  != A
;trigger2 = time >= 3
;trigger2 = movecontact
trigger2 = time >= 5
trigger2 = stateno = 203
trigger2 = movecontact

;攻撃X
[State -1]
type = ChangeState
value = 203
triggerall = command = "x"
trigger1 = statetype  = S
trigger1 = ctrl = 1
;trigger2 = statetype  = S
;trigger2 = statetype  != A
;trigger2 = time >= 3
;trigger2 = movecontact


;空中攻撃Y
[State -1]
type = ChangeState
value = 208
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 207
trigger2 = movecontact
trigger3 = stateno = 217
trigger3 = movecontact


;下攻撃Y
[State -1]
type = ChangeState
value = 206
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype  = C
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
trigger3 = stateno = 204
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact

;攻撃Y
[State -1]
type = ChangeState
value = 204
triggerall = command = "y"
trigger1 = statetype  = S
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
trigger3 = stateno = 213
trigger3 = movecontact

;空中攻撃Z
[State -1]
type = ChangeState
value = 216
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 207
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 217
trigger4 = movecontact
trigger5 = stateno = 218
trigger5 = movecontact

;下攻撃Z
[State -1]
type = ChangeState
value = 214
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype  = C
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
trigger3 = stateno = 204
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 206
trigger5 = movecontact
trigger6 = stateno = 209
trigger6 = movecontact
trigger7 = stateno = 211
trigger7 = movecontact
trigger8 = stateno = 212
trigger8 = movecontact
trigger9 = stateno = 213
trigger9 = movecontact
trigger10 = stateno = 215
trigger10 = movecontact

;攻撃Z
[State -1]
type = ChangeState
value = 209
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype  = S
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
trigger3 = stateno = 204
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 206
trigger5 = movecontact
trigger6 = stateno = 211
trigger6 = movecontact
trigger7 = stateno = 212
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = movecontact
trigger9 = stateno = 215
trigger9 = movecontact



;空中攻撃A
[State -1]
type = ChangeState
value = 217
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 207
trigger2 = movecontact
trigger3 = stateno = 217
trigger3 = movecontact


;下攻撃A
[State -1]
type = ChangeState
value = 212
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype  = C
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 212
trigger4 = movecontact

;攻撃A
[State -1]
type = ChangeState
value = 213
triggerall = command = "a"
trigger1 = statetype  = S
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact

;空中攻撃B（垂直下B）
[State -1]
type = ChangeState
value = 219
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 207
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 217
trigger4 = movecontact

;空中攻撃B
[State -1]
type = ChangeState
value = 218
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 207
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 217
trigger4 = movecontact
trigger5 = stateno = 203
trigger5 = movecontact

;下攻撃B
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype  = C
trigger1 = ctrl = 1
trigger2 = statetype  != A
trigger2 = time >= 3
trigger2 = movecontact

;攻撃B
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
trigger1 = statetype  = S
trigger1 = ctrl = 1
trigger2 = stateno = 203
trigger2 = movecontact
trigger3 = stateno = 204
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 213
trigger5 = movecontact

