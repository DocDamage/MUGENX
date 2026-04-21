;===========================================================================
; コマンド設定ファイル
;===========================================================================
;-| 超必殺技 |-------------------------------------------------------------
[Command]
name = "ファラオデコレーション"
command = c, y, a, D, x, b, z
time = 80

[Command]
name = "ファラオサルベーション"
command = c, y, D, b, z
time = 40

[Command]
name = "ファラオマジック"
command = b, x, D, a, y
time = 40

[Command]
name = "奈落の穴"
command = ~B, D, F, a+b
time = 40

[Command]
name = "奈落の穴"
command = ~B, D, F, a+c
time = 40

[Command]
name = "奈落の穴"
command = ~B, D, F, b+c
time = 40

[Command]
name = "真実の教え"
command = ~F, D, DF, x+y

[Command]
name = "真実の教え"
command = ~F, D, DF, y+z

[Command]
name = "真実の教え"
command = ~F, D, DF, x+z

;-| 必殺技 |----------------------------------------------------------------
[Command]
name = "棺の舞_x"
command = ~D, D, x

[Command]
name = "棺の舞_y"
command = ~D, D, y

[Command]
name = "棺の舞_z"
command = ~D, D, z

[Command]
name = "棺の舞_a"
command = ~D, D, a

[Command]
name = "棺の舞_b"
command = ~D, D, b

[Command]
name = "棺の舞_c"
command = ~D, D, c

[Command]
name = "コブラクロー_x"
command = ~B, F, x

[Command]
name = "コブラクロー_y"
command = ~B, F, y

[Command]
name = "コブラクロー_z"
command = ~B, F, z

[Command]
name = "言霊返し"
command = ~D, B, a

[Command]
name = "言霊返し"
command = ~D, B, b

[Command]
name = "言霊返し"
command = ~D, B, c

[Command]
name = "DF_x"
command = ~D, F, x

[Command]
name = "DF_y"
command = ~D, F, y

[Command]
name = "DF_z"
command = ~D, F, z

[Command]
name = "DF_a"
command = ~D, F, a

[Command]
name = "DF_b"
command = ~D, F, b

[Command]
name = "DF_c"
command = ~D, F, c

[Command]
name = "FDDF"
command = ~F, D, DF, a

[Command]
name = "FDDF"
command = ~F, D, DF, b

[Command]
name = "FDDF"
command = ~F, D, DF, c

[Command]
name = "ESFDDF"
command = ~F, D, DF, a+b

[Command]
name = "ESFDDF"
command = ~F, D, DF, b+c

[Command]
name = "ESFDDF"
command = ~F, D, DF, a+c

;-| 2度押し |---------------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| ボタン同時押し |--------------------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery"
command = y+b
time = 1

[Command]
name = "recovery"
command = z+c
time = 1

[Command]
name = "パンチ同時押し"
command = x+y
time = 1

[Command]
name = "パンチ同時押し"
command = y+z
time = 1

[Command]
name = "パンチ同時押し"
command = x+z
time = 1

[Command]
name = "キック同時押し"
command = a+b
time = 1

[Command]
name = "キック同時押し"
command = b+c
time = 1

[Command]
name = "キック同時押し"
command = a+c
time = 1

;-| 方向キー＋ボタン |-------------------------------------------------------
[Command]
name = "聖者の歩み"
command = /F, b
time = 1

[Command]
name = "聖者の歩み"
command = /B, b
time = 1

[Command]
name = "聖なる墓碑"
command = /D, a
time = 1

[Command]
name = "聖なる墓碑"
command = /D, b
time = 1

[Command]
name = "聖なる墓碑"
command = /D, c
time = 1

[Command]
name = "大いなる墓碑"
command = /DF, a
time = 1

[Command]
name = "大いなる墓碑"
command = /DF, b
time = 1

[Command]
name = "大いなる墓碑"
command = /DF, c
time = 1

[Command]
name = "戒めの墓碑"
command = /$U, x
time = 1

[Command]
name = "戒めの墓碑"
command = /$U, y
time = 1

[Command]
name = "戒めの墓碑"
command = /$U, z
time = 1

[Command]
name = "戒めの墓碑"
command = /$U, a
time = 1

[Command]
name = "戒めの墓碑"
command = /$U, b
time = 1

[Command]
name = "戒めの墓碑"
command = /$U, c
time = 1

[Command]
name = "down_x"
command = /$D, x
time = 1

[Command]
name = "down_y"
command = /$D, y
time = 1

[Command]
name = "down_z"
command = /$D, z
time = 1

[Command]
name = "down_a"
command = /$D, a
time = 1

[Command]
name = "down_b"
command = /$D, b
time = 1

[Command]
name = "down_c"
command = /$D, c
time = 1

;-| ボタン |-----------------------------------------------------------------
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
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "s"
command = s
time = 1

;-| ボタン押しっぱなし |-------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 10

[Command]
name = "hold_y"
command = /y
time = 10

[Command]
name = "hold_z"
command = /z
time = 10

[Command]
name = "hold_a"
command = /a
time = 10

[Command]
name = "hold_b"
command = /b
time = 10

[Command]
name = "hold_c"
command = /c
time = 10

[Command]
name = "hold_s"
command = /s
time = 10

;-| 方向キー |------------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddown2"
command = /D
time = 1

[Command]
name = "気絶回復"
command = ~$F
time = 1

[Command]
name = "気絶回復"
command = ~$B
time = 1

[Command]
name = "気絶回復"
command = ~$U
time = 1

[Command]
name = "気絶回復"
command = ~$D
time = 1

;===========================================================================
; コマンド設定ファイル
;===========================================================================
[Statedef -1]
;===========================================================================
; ダークフォース系
;===========================================================================
;---------------------------------------------------------------------------
;ファラオスプリット
[State -1]
type = ChangeState
value = 4000
triggerall = command = "recovery" && Power >= 1000 && NumHelper(1890) = 0 && NumHelper(4200) = 0
trigger1 = ctrl = 1 && StateType != A && StateNo != 48 && Var(30) = 0

;===========================================================================
; Ex必殺技系
;===========================================================================
;---------------------------------------------------------------------------
;ファラオデコレーション
[State -1]
type = ChangeState
value = 3700+((StateType = A || StateNo = 48) && StateNo != 250)*100
triggerall = command = "ファラオデコレーション" && Power >= 3000 && NumHelper(1890) = 0 && Var(23) = 0 
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0 && NumHelper(3250) = 0
trigger1 = (Ctrl = 1 || (Stateno = [200,650])) && Stateno != 52 && Stateno != 5040 
trigger1 = (StateNo != [48,52]) && (Anim != 44 && Anim != 67)

[State -1]
type = ChangeState
value = 3700+((StateType = A || StateNo = 48) && StateNo != 250)*100
triggerall = Var(30) = 1 && Random < 30 && (P2Stateno != [4999,5020]) && Power >= 3000 && NumHelper(1890) = 0 && Var(23) = 0 && NumHelper(3250) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0 && P2Stateno != [3290,3790]
trigger1 = (Ctrl = 1 || (Stateno = [200,650])) && Stateno != 52 && Stateno != 5040 
trigger1 = (StateNo != [48,52]) && (Anim != 44 && Anim != 67)

;---------------------------------------------------------------------------
;ファラオサルベーション
[State -1]
type = ChangeState
value = 3400+((StateType = A || StateNo = 48) && StateNo != 250)*100
triggerall = command = "ファラオサルベーション" && Power >= 2000 && NumHelper(1890) = 0 && Var(23) = 0 
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0 && NumHelper(3250) = 0
trigger1 = (Ctrl = 1 || (Stateno = [200,650])) && Stateno != 52 && Stateno != 5040 
trigger1 = (StateNo != [48,52]) && (Anim != 44 && Anim != 67)

[State -1]
type = ChangeState
value = 3400+((StateType = A || StateNo = 48) && StateNo != 250)*100
triggerall = Var(30) = 1 && Random < 20 && (P2Stateno != [4999,5020]) && Power >= 2000 && NumHelper(1890) = 0 && Var(23) = 0 && NumHelper(3250) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0 && P2Stateno != [3290,3790]
trigger1 = (Ctrl = 1 || (Stateno = [200,650])) && Stateno != 52 && Stateno != 5040 
trigger1 = (StateNo != [48,52]) && (Anim != 44 && Anim != 67)

;---------------------------------------------------------------------------
;ファラオマジック
[State -1]
type = ChangeState
value = 3200+((StateType = A || StateNo = 48) && StateNo != 250)*100
triggerall = command = "ファラオマジック" && Power >= 1000 && NumHelper(1890) = 0 && Var(23) = 0 
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0 && NumHelper(3250) = 0
trigger1 = (Ctrl = 1 || (Stateno = [200,650])) && Stateno != 52 && Stateno != 5040 
trigger1 = (StateNo != [48,52]) && (Anim != 44 && Anim != 67)

[State -1]
type = ChangeState
value = 3200+((StateType = A || StateNo = 48) && StateNo != 250)*100
triggerall = Var(30) = 1 && Random < 10 && (P2Stateno != [4999,5020]) && Power >= 2000 && NumHelper(1890) = 0 && Var(23) = 0 && NumHelper(3250) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0 && P2Stateno != [3290,3790]
trigger1 = (Ctrl = 1 || (Stateno = [200,650])) && Stateno != 52 && Stateno != 5040 
trigger1 = (StateNo != [48,52]) && (Anim != 44 && Anim != 67)

;---------------------------------------------------------------------------
;真実の教え
[State -1]
type = ChangeState
value = 3000
triggerall = command = "真実の教え" && Var(23) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = Power >= 1000 && (StateNo = [150,155])

[State -1]
type = ChangeState
value = 3000
triggerall = Var(30) = 1  && Random < 600 && Var(23) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = Power >= 1000 && (StateNo = [150,155]) && Life > 0 && P2Life > 0

;---------------------------------------------------------------------------
;奈落の穴
[State -1]
type = ChangeState
value = 3100
triggerall = command = "奈落の穴" && Power >= 1000 && NumHelper(1890) = 0 && Var(23) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12])
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12])

;===========================================================================
; ES必殺技系
;===========================================================================
;---------------------------------------------------------------------------
;ES棺の舞
[State -1]
type = ChangeState
value = 2000+(StateType = A || StateNo = 48)*50
triggerall = ((command = "棺の舞_x" || command = "棺の舞_y" || command = "棺の舞_z") && (command = "パンチ同時押し")) || ((command = "棺の舞_a" || command = "棺の舞_b" || command = "棺の舞_c") && (command = "キック同時押し"))
triggerall = NumHelper(1060) = 0 && Power >= 1000
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) 
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12])
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12])

;---------------------------------------------------------------------------
;ESコブラクロー
[State -1]
type = ChangeState
value = 2100
triggerall = (command = "コブラクロー_x" || command = "コブラクロー_y" || command = "コブラクロー_z") && command = "パンチ同時押し" && Power >= 1000 && Var(23) = 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12])
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12])

;---------------------------------------------------------------------------
;ESミイラドロップ
[State -1]
type = ChangeState
value = 2200
triggerall = (command ="DF_x" || command ="DF_y" || command ="DF_z") && command = "パンチ同時押し" && Power >= 1000 && NumHelper(1890) = 0 && Var(23) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12])
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12])

[State -1]
type = ChangeState
value = 2200
triggerall = Var(30) = 1 && (P2StateNo = [150,153]) && P2Bodydist X < 50 && Power >= 1000 && NumHelper(1890) = 0 && Var(23) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48 && P2Life > 0
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12])
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12])

;---------------------------------------------------------------------------
;ES王家の裁き
[State -1]
type = ChangeState
value = 2300
triggerall = (command ="DF_x" || command ="DF_y" || command ="DF_z") && command = "パンチ同時押し" && Power >= 1000 && NumHelper(1890) = 0 && Var(23) = 0
triggerall = Enemy, NumPartner = 0
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)

[State -1]
type = ChangeState
value = 2300
triggerall = Var(30) = 1 && Random < 100 && P2Bodydist X> 60 && Pos Y <= -80 && Power >= 1000 && NumHelper(1890) = 0 && Var(23) = 0
triggerall = Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)

;---------------------------------------------------------------------------
;ES版言霊返し(吐き出し)
[State -1]
type = ChangeState
value = 2400
triggerall = (command ="DF_a" || command ="DF_b" || command ="DF_c") && command = "キック同時押し" && Power >= 1000 && Var(19) >= 2 
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && Statetype != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;空中ES版言霊返し(吐き出し)
[State -1]
type = ChangeState
value = 2500
triggerall = (command ="DF_a" || command ="DF_b" || command ="DF_c") && command = "キック同時押し" && Power >= 1000 
triggerall = (Var(19) >= 2 || (Var(19) = 1 && (P2StateNo != [1840,1899])))
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;ES版咎めの穴
[State -1]
type = ChangeState
value = 2900
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = Var(12) = 2 && Anim = 5110 && Life > 0 && P2Life > 0
persistent = 0
 
;---------------------------------------------------------------------------
;ES版戒めの墓碑
[State -1]
type = ChangeState
value = 2950
triggerall = command = "戒めの墓碑" && (command = "パンチ同時押し" || command = "キック同時押し") && Power >= 1000
trigger1 = StateNo = 40 && Pos Y = 0 && Var(15) =0 && (P2StateNo = [5100,5170]) 

[State -1]
type = ChangeState
value = 2950
triggerall = Var(30) =1 && Random < 300+(Var(32) = 1)*699 && Power >= 1000 && P2Life > 0
trigger1 = StateNo = 40 && Pos Y = 0 && Var(15) =0 && (P2StateNo = 5110) 

;===========================================================================
; 必殺技系
;===========================================================================
;---------------------------------------------------------------------------
;棺の舞_x
[State -1]
type = ChangeState
value = 1000+(StateType = A || StateNo = 48)*50
triggerall = command = "棺の舞_x" && NumHelper(1060) = 0
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105])  
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1000+(StateType = A || StateNo = 48)*50
triggerall = Var(30) = 1 && Random < 50 && (P2Bodydist X = [80,120]) && NumHelper(1060) = 0 && P2StateType != S
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) && P2Life > 0

;---------------------------------------------------------------------------
;棺の舞_y
[State -1]
type = ChangeState
value = 1001+(StateType = A || StateNo = 48)*50
triggerall = command = "棺の舞_y" && NumHelper(1060) = 0
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) 
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1001+(StateType = A || StateNo = 48)*50
triggerall = Var(30) = 1 && Random < 50 && (P2Bodydist X = [112,152]) && NumHelper(1060) = 0 && P2StateType != S
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) && P2Life > 0

;---------------------------------------------------------------------------
;棺の舞_z
[State -1]
type = ChangeState
value = 1002+(StateType = A || StateNo = 48)*50
triggerall = command = "棺の舞_z" && NumHelper(1060) = 0
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) 
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1002+(StateType = A || StateNo = 48)*50
triggerall = Var(30) = 1 && Random < 50 && (P2Bodydist X = [144,184]) && NumHelper(1060) = 0 && P2StateType != S
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) && P2Life > 0

;---------------------------------------------------------------------------
;棺の舞_a
[State -1]
type = ChangeState
value = 1003+(StateType = A || StateNo = 48)*50
triggerall = command = "棺の舞_a" && NumHelper(1060) = 0
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) 
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1003+(StateType = A || StateNo = 48)*50
triggerall = Var(30) = 1 && Random < 50 && (P2Bodydist X = [96,136]) && NumHelper(1060) = 0 && P2StateType != S
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) && P2Life > 0

;---------------------------------------------------------------------------
;棺の舞_b
[State -1]
type = ChangeState
value = 1004+(StateType = A || StateNo = 48)*50
triggerall = command = "棺の舞_b" && NumHelper(1060) = 0
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105])
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1004+(StateType = A || StateNo = 48)*50
triggerall = Var(30) = 1 && Random < 50 && (P2Bodydist X = [128,168]) && NumHelper(1060) = 0 && P2StateType != S
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) && P2Life > 0

;---------------------------------------------------------------------------
;棺の舞_c
[State -1]
type = ChangeState
value = 1005+(StateType = A || StateNo = 48)*50
triggerall = command = "棺の舞_c" && NumHelper(1060) = 0
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105])
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1005+(StateType = A || StateNo = 48)*50
triggerall = Var(30) = 1 && Random < 50 && (P2Bodydist X = [160,200]) && NumHelper(1060) = 0 && P2StateType != S
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) && P2Life > 0

;---------------------------------------------------------------------------
;コブラクロー_x
[State -1]
type = ChangeState
value = 1100
triggerall = command = "コブラクロー_x" && Var(23) = 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48 
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;コブラクロー_y
[State -1]
type = ChangeState
value = 1150
triggerall = command = "コブラクロー_y" && Var(23) = 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;コブラクロー_z
[State -1]
type = ChangeState
value = 1200
triggerall = command = "コブラクロー_z" && Var(23) = 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;ミイラドロップ_x
[State -1]
type = ChangeState
value = 1300
triggerall = command ="DF_x" && NumHelper(1890) = 0 && Var(23) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1300
triggerall = Var(30) = 1 && Random < 200 && (P2Bodydist X = [81,118]) && NumHelper(1890) = 0 && Var(23) = 0 && P2StateType = S
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48 && P2Life > 0
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;ミイラドロップ_y
[State -1]
type = ChangeState
value = 1301
triggerall = command ="DF_y" && NumHelper(1890) = 0 && Var(23) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1301
triggerall = Var(30) = 1 && Random < 200 && (P2Bodydist X = [137,174]) && NumHelper(1890) = 0 && Var(23) = 0 && P2StateType = S
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48 && P2Life > 0
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;ミイラドロップ_z
[State -1]
type = ChangeState
value = 1302
triggerall = command = "DF_z" && NumHelper(1890) = 0 && Var(23) = 0
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12])
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12])

[State -1]
type = ChangeState
value = 1302
triggerall = Var(30) = 1 && Random < 200 && (P2Bodydist X = [193,230]) && NumHelper(1890) = 0 && Var(23) = 0 && P2StateType = S
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && StateType != A && StateNo != 48 && P2Life > 0
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12])
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12])

;---------------------------------------------------------------------------
;言霊返し(吸引)
[State -1]
type = ChangeState
value = 1400
triggerall = command = "言霊返し"
triggerall = Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105]) 
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

[State -1]
type = ChangeState
value = 1400
triggerall = Var(30) = 1 && P2MoveType = A && ctrl = 1
triggerall = Enemy, NumPartner = 0 && P2Life > 0
triggerall = (ctrl = 1 && StateNo != 48) || (Anim = 44 || Anim = 67) || (StateNo = [100,105])  
trigger1 = P2Name = "Anakaris By Third" && Enemy, NumprojId(1800) = 1 && P2Bodydist X = [25,80]
trigger2 = P2Name = "Lilith" && Enemy, NumprojId(1100) = 1 && P2Bodydist X = [25,60]

;---------------------------------------------------------------------------
;言霊返し(吐き出し)_a
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "DF_a" && Var(19) = 2
triggerall = NumprojId(1510) = 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && Statetype != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;言霊返し(吐き出し)_b
[State -1]
type = ChangeState
value = 1501
triggerall = Command = "DF_b" && Var(19) = 2
triggerall = NumprojId(1510) = 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && Statetype != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;言霊返し(吐き出し)_c
[State -1]
type = ChangeState
value = 1502
triggerall = Command = "DF_c" && Var(19) = 2
triggerall = NumprojId(1510) = 0
trigger1 = (ctrl = 1 || (StateNo = [100,105])) && Statetype != A && StateNo != 48
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;空中言霊返し(吐き出し)_a
[State -1]
type = ChangeState
value = 1550
triggerall = Command = "DF_a" && ((Var(19) = 1 && (P2StateNo != [1840,1899])) || Var(19) = 2)
triggerall = NumprojId(1510) = 0
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;空中言霊返し(吐き出し)_b
[State -1]
type = ChangeState
value = 1551
triggerall = NumprojId(1510) = 0
triggerall = Command = "DF_b" && ((Var(19) = 1 && (P2StateNo != [1840,1899])) || Var(19) = 2)
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;空中言霊返し(吐き出し)_c
[State -1]
type = ChangeState
value = 1552
triggerall = Command = "DF_c" && ((Var(19) = 1 && (P2StateNo != [1840,1899])) || Var(19) = 2)
triggerall = NumprojId(1510) = 0
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)
trigger2 = StateNo = 200 && (Var(6) = [7,12])
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400
trigger4 = StateNo = 400 && (Var(6) = [7,12])
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && PrevStateNo != 200 && PrevStateNo != 400

;---------------------------------------------------------------------------
;王家の裁き_x
[State -1]
type = ChangeState
value = 1800
triggerall = Command = "DF_x" && NumHelper(1890) = 0 && Var(23) = 0
triggerall = Enemy, NumPartner = 0
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)

;---------------------------------------------------------------------------
;王家の裁き_y
[State -1]
type = ChangeState
value = 1801
triggerall = Command = "DF_y" && NumHelper(1890) = 0 && Var(23) = 0
triggerall = Enemy, NumPartner = 0
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)

;---------------------------------------------------------------------------
;王家の裁き_z
[State -1]
type = ChangeState
value = 1802
triggerall = Command = "DF_z" && NumHelper(1890) = 0 && Var(23) = 0
triggerall = Enemy, NumPartner = 0
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)

[State -1]
type = ChangeState
value = 1802
triggerall = Var(30) = 1 && Random < 300 && P2Bodydist X> 60 && Pos Y <= -80 && NumHelper(1890) = 0 && Var(23) = 0
triggerall = Enemy, NumPartner = 0 && P2Life > 0
trigger1 = (ctrl = 1 && StateType = A && StateNo != 48) || (Anim = 44 || Anim = 67)

;===========================================================================
; 特殊技系
;===========================================================================
;---------------------------------------------------------------------------
;咎めの穴
[State -1]
type = ChangeState
value = 900
triggerall = NumPartner = 0 && Enemy, NumPartner = 0 && P2Life > 0
trigger1 = Var(12) = 1 && Anim = 5110 && Life > 0 && P2Life > 0
persistent = 0

;---------------------------------------------------------------------------
;戒めの墓碑
[State -1]
type = ChangeState
value = 950
triggerall = command = "戒めの墓碑" && Var(23) = 0
trigger1 = StateNo = 40 && Pos Y = 0 && Var(15) =0 && (P2StateNo = [5100,5170]) 

[State -1]
type = ChangeState
value = 950
triggerall = Var(30) = 1 && Var(23) = 0 && Random < 700
trigger1 = StateNo = 40 && Pos Y = 0 && Var(15) =0 && (P2StateNo = 5110) 

;===========================================================================
; 追加攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;聖者の歩み
[State -1]
type = ChangeState
value = 300
triggerall = command = "聖者の歩み"
triggerall = command != "holddown"
trigger1 = statetype = S && (ctrl = 1 || (StateNo = [100,105])) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0
trigger6 = StateNo = 210 && (Var(6) = [7,12]) && Var(22) = 0
trigger7 = StateNo = 410 && (Var(6) = [7,12]) && Var(22) = 0

;---------------------------------------------------------------------------
;聖なる墓碑
[State -1]
type = ChangeState
value = 310
triggerall = command = "聖なる墓碑"
triggerall = StateNo != 48 && Pos Y < -30
trigger1 = statetype = A && ctrl = 1

;---------------------------------------------------------------------------
;大いなる墓碑
[State -1]
type = ChangeState
value = 320
triggerall = command = "大いなる墓碑"
triggerall = StateNo != 48 && Pos Y < -30
trigger1 = statetype = A && ctrl = 1

[State -1]
type = ChangeState
value = 320
triggerall = Var(30) = 1 && P2Bodydist X <= 30
triggerall = StateNo != 48 && Pos Y < -30
trigger1 = statetype = A && ctrl = 1 && P2Life > 0

;===========================================================================
; 基本攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;喝
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && (ctrl = 1 || (StateNo = [100,105])) 
trigger2 = StateNo = 200 && (Var(6) = [12,15]) && Var(22) = 0

;---------------------------------------------------------------------------
;導き
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S && (ctrl = 1 || (StateNo = [100,105])) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0

;---------------------------------------------------------------------------
;粛清
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S && (ctrl = 1 || (StateNo = [100,105])) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0
trigger6 = StateNo = 210 && (Var(6) = [7,12]) && Var(22) = 0
trigger7 = StateNo = 240 && (Var(6) = [7,12]) && Var(22) = 0
trigger8 = StateNo = 410 && (Var(6) = [7,37]) && Var(22) = 0
trigger9 = StateNo = 440 && (Var(6) = [7,12]) && Var(22) = 0
trigger10 = StateNo = 300 && (Var(6) = [7,12]) && Var(22) = 0

;---------------------------------------------------------------------------
;制裁
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S && (ctrl = 1 || (StateNo = [100,105])) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0

;---------------------------------------------------------------------------
;神罰
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S && (ctrl = 1 || (StateNo = [100,105])) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0
trigger6 = StateNo = 210 && (Var(6) = [7,12]) && Var(22) = 0
trigger7 = StateNo = 410 && (Var(6) = [7,37]) && Var(22) = 0

;---------------------------------------------------------------------------
;天誅
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S && (ctrl = 1 || (StateNo = [100,105])) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0
trigger6 = StateNo = 210 && (Var(6) = [7,12]) && Var(22) = 0
trigger7 = StateNo = 240 && (Var(6) = [7,12]) && Var(22) = 0
trigger8 = StateNo = 410 && (Var(6) = [7,37]) && Var(22) = 0
trigger9 = StateNo = 440 && (Var(6) = [7,12]) && Var(22) = 0
trigger10 = StateNo = 220 && (Var(6) = [7,12]) && Var(22) = 0
trigger11 = StateNo = 420 && (Var(6) = [7,12]) && Var(22) = 0
trigger12 = StateNo = 300 && (Var(6) = [7,12]) && Var(22) = 0

;===========================================================================
; しゃがみ攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;奇跡の手
[State -1]
type = ChangeState
value = 400
triggerall = command = "down_x"
trigger1 = (statetype = C && ctrl = 1) || (StateNo = [100,105])
trigger2 = StateNo = [100,105]

;---------------------------------------------------------------------------
;聖域の罠
[State -1]
type = ChangeState
value = 410
triggerall = command = "down_y"
trigger1 = (statetype = C && ctrl = 1) || (StateNo = [100,105])
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0

;---------------------------------------------------------------------------
;聖域の護り
[State -1]
type = ChangeState
value = 420
triggerall = command = "down_z"
trigger1 = (statetype = C && ctrl = 1) || (StateNo = [100,105])
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0
trigger6 = StateNo = 210 && (Var(6) = [7,12]) && Var(22) = 0
trigger7 = StateNo = 240 && (Var(6) = [7,12]) && Var(22) = 0
trigger8 = StateNo = 410 && (Var(6) = [7,37]) && Var(22) = 0
trigger9 = StateNo = 440 && (Var(6) = [7,12]) && Var(22) = 0
trigger10 = StateNo = 300 && (Var(6) = [7,12]) && Var(22) = 0

[State -1]
type = ChangeState
value = 420
triggerall = Var(30) = 1 && P2Life > 0 && Random < 500 && P2BodyDist X <= 25 && P2StateType = A && NumHelper(1890) = 0 && Var(10) =0
trigger1 = (statetype = C && ctrl = 1) || (StateNo = [100,105]) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0
trigger6 = StateNo = 210 && (Var(6) = [7,12]) && Var(22) = 0
trigger7 = StateNo = 240 && (Var(6) = [7,12]) && Var(22) = 0
trigger8 = StateNo = 410 && (Var(6) = [7,37]) && Var(22) = 0
trigger9 = StateNo = 440 && (Var(6) = [7,12]) && Var(22) = 0
trigger10 = StateNo = 300 && (Var(6) = [7,12]) && Var(22) = 0

;---------------------------------------------------------------------------
;地の災い
[State -1]
type = ChangeState
value = 430
triggerall = command = "down_a"
trigger1 = (statetype = C && ctrl = 1) || (StateNo = [100,105]) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0

;---------------------------------------------------------------------------
;地の叫び
[State -1]
type = ChangeState
value = 440
triggerall = command = "down_b"
trigger1 = (statetype = C && ctrl = 1) || (StateNo = [100,105])
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0
trigger6 = StateNo = 210 && (Var(6) = [7,12]) && Var(22) = 0
trigger7 = StateNo = 410 && (Var(6) = [7,37]) && Var(22) = 0

;---------------------------------------------------------------------------
;地の逆鱗
[State -1]
type = ChangeState
value = 450
triggerall = command = "down_c"
trigger1 = (statetype = C && ctrl = 1) || (StateNo = [100,105]) 
trigger2 = StateNo = 200 && (Var(6) = [7,12]) && Var(22) = 0
trigger3 = StateNo = 230 && (Var(6) = [7,12]) && Var(22) = 0
trigger4 = StateNo = 400 && (Var(6) = [7,12]) && Var(22) = 0
trigger5 = StateNo = 430 && (Var(6) = [7,12]) && Var(22) = 0
trigger6 = StateNo = 210 && (Var(6) = [7,12]) && Var(22) = 0
trigger7 = StateNo = 240 && (Var(6) = [7,12]) && Var(22) = 0
trigger8 = StateNo = 410 && (Var(6) = [7,37]) && Var(22) = 0
trigger9 = StateNo = 440 && (Var(6) = [7,12]) && Var(22) = 0
trigger10 = StateNo = 220 && (Var(6) = [7,12]) && Var(22) = 0
trigger11 = StateNo = 420 && (Var(6) = [7,12]) && Var(22) = 0
trigger12 = StateNo = 300 && (Var(6) = [7,12]) && Var(22) = 0

;===========================================================================
; ジャンプ攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;死の兆し
[State -1]
type = ChangeState
value = 600
triggerall = command = "x" && Var(23) = 0
trigger1 = ctrl = 1 &&StateType = A && StateNo != 48
trigger2 = (StateNo = 48 && (Anim != 44 && Anim != 61)) && (Var(1) <= 67 || (Var(1) = [128,195]))

;---------------------------------------------------------------------------
;死の予言
[State -1]
type = ChangeState
value = 610
triggerall = command = "y" && Var(23) = 0
trigger1 = ctrl = 1 && StateType = A && StateNo != 48 
trigger2 = (StateNo = 48 && (Anim != 44 && Anim != 61)) && (Var(1) <= 68 || (Var(1) = [128,196]))

;---------------------------------------------------------------------------
;死の宿命
[State -1]
type = ChangeState
value = 620
triggerall = command = "z" && Var(23) = 0
trigger1 = ctrl = 1 && StateType = A && StateNo != 48
trigger2 = (StateNo = 48 && (Anim != 44 && Anim != 61)) && (Var(1) <= 58 || (Var(1) = [128,185]))

;---------------------------------------------------------------------------
;王の嘆き
[State -1]
type = ChangeState
value = 630
triggerall = command = "a" && Var(23) = 0
trigger1 = ctrl = 1 && StateType = A && StateNo != 48
trigger2 = StateNo = 48 && (Anim != 44 && Anim != 61) && (Var(1) <= 60 || (Var(1) = [128,187]))

;---------------------------------------------------------------------------
;王の憂い
[State -1]
type = ChangeState
value = 640
triggerall = command = "b" && Var(23) = 0
trigger1 = ctrl = 1 && StateType = A && StateNo != 48
trigger2 = StateNo = 48 && (Anim != 44 && Anim != 61) && (Var(1) <= 60 || (Var(1) = [128,187]))

;---------------------------------------------------------------------------
;王の怒り
[State -1]
type = ChangeState
value = 650
triggerall = command = "c" && Var(23) = 0
trigger1 = ctrl = 1 && StateType = A && StateNo != 48
trigger2 = StateNo = 48 && (Anim != 44 && Anim != 61) && (Var(1) <= 60 || (Var(1) = [128,187]))

;===========================================================================
; 基本･移動系
;===========================================================================
;---------------------------------------------------------------------------
;浮遊
[State -1]
type = ChangeState
value = 45
triggerall = command = "holdup" && Var(2) < 2
triggerall = statetype = A && Anim = 45  && Anim  != 7 && Vel Y > 2.5 && P2Bodydist X >= 0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = statetype = S && StateNo != [100,109]
trigger1 = ctrl = 1 

[State -1]
type = ChangeState
value = 100
triggerall = Var(30) = 1 && Random < 600 && StateNo != [100,109]
triggerall = statetype = S  && P2Life > 0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;バックダッシュ
[State -1]
type = ChangeState
value = 105+(BackEdgeBodyDist <= 10)
triggerall = command = "BB" && StateNo != [100,109]
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 105+(BackEdgeBodyDist <= 10)
triggerall = Var(30) = 1 && BackEdgeBodyDist <= 30 && Random < 500 && StateNo != [100,109]
triggerall = statetype = S && P2Life > 0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;大挑発
[State -1]
type = ChangeState
value = 197+((P2Name = "Anakaris By Third" || P4Name = "Anakaris By Third") && P2StateNo = 197)
triggerall = command = "s" && command = "hold_x" && command = "hold_y" && command = "hold_z"  
triggerall = statetype = S && Var(4) < 16 && Var(23) = 0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s" 
triggerall = statetype = S && Var(4) < 16 && Var(23) = 0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;前転起き上がり
[State -1]
type = ChangeState
value = 5121
triggerall = command = "holdfwd" && Command != "FDDF" && stateno = 5110
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"

;---------------------------------------------------------------------------
;後転起き上がり
[State -1]
type = ChangeState
value = 5122
triggerall = command = "holdback" && Command != "FDDF" && stateno = 5110
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"


