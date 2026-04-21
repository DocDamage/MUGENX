; Arcueid Brunestud - Command File
;==============================================================================
;-| 入力コマンドデフォルト設定 |-----------------------------------------------

[Defaults]
command.time = 15
command.buffer.time = 1

;==============================================================================
;-| ＣＰＵ判定用フラグ |-------------------------------------------------------

[Command]
name = "AI"
command = F,F,F
time = 0

[Command]
name = "AI0"
command = B,B,B
time = 0

[Command]
name = "AI1"
command = U,U,U
time = 0

[Command]
name = "AI2"
command = D,D,D
time = 0

;***********************************
[Command]
name = "AI3"
command = a,a,a
time = 0

[Command]
name = "AI4"
command = b,b,b
time = 0

[Command]
name = "AI5"
command = c,c,c
time = 0

[Command]
name = "AI6"
command = x,x,x
time = 0

[Command]
name = "AI7"
command = y,y,y
time = 0

[Command]
name = "AI8"
command = z,z,z
time = 0

[Command]
name = "AI9"
command = s,s,s
time = 0

;***********************************
;カスタムＡＩ手動発動
[Command]
name = "CustomAI"
command = y+s
time = 15

;==============================================================================
;-| 特殊必殺技 |---------------------------------------------------------------

;アルトシュヴァイゼン
[Command]
name = "se-no_low"
command = ~F,F,F,a
time = 20

[Command]
name = "se-no_middle"
command = ~F,F,F,b
time = 20

;メテオスマッシュ
[Command]
name = "meteor_smash"
command = ~F,F,F,c
time = 20

;マーヴルファンタズム・とどめ
[Command]
name = "todome"
command = ~D,D,D,c
time = 20

;マーヴルファンタズム
[Command]
name = "kuusou_gugenka"
command = ~B,DB,D,DF,F,c
time = 14

; ????
;[Command]
;name = "nazo"
;command = ~F,DF,D,DB,B,c
;time = 14

;==============================================================================
;-| 必殺技 |-------------------------------------------------------------------

;アルトシューレ
[Command]
name = "jama_low"
command = ~D,DF,F,a
time = 14

[Command]
name = "jama_middle"
command = ~D,DF,F,b
time = 14

[Command]
name = "jama_high"
command = ~D,DF,F,c
time = 14

;***********************************
;アルトネーゲル・アインハンス
[Command]
name = "tobe_low"
command = ~D,D,a
time = 14

[Command]
name = "tobe_middle"
command = ~D,D,b
time = 14

[Command]
name = "tobe_high"
command = ~D,D,c
time = 14

;***********************************
;アルトネーゲル・ツヴァイカルト
[Command]
name = "kiero_low"
command = ~F,F,a
time = 16

[Command]
name = "kiero_middle"
command = ~F,F,b
time = 16

[Command]
name = "kiero_high"
command = ~F,F,c
time = 16

;***********************************
;アルトネーゲル・ドライライゼ
[Command]
name = "oshimai_low"
command = ~U,U,a
time = 16

[Command]
name = "oshimai_middle"
command = ~U,U,b
time = 16

[Command]
name = "oshimai_high"
command = ~U,U,c
time = 16

;***********************************
;ヴァイスカッツェ・前方
[Command]
name = "osoi_low"
command = ~F,D,DF,a
time = 14

[Command]
name = "osoi_middle"
command = ~F,D,DF,b
time = 14

[Command]
name = "osoi_high"
command = ~F,D,DF,c
time = 14

;***********************************
;ヴァイスカッツェ・後方
[Command]
name = "osoi2_low"
command = ~B,D,DB,a
time = 14

[Command]
name = "osoi2_middle"
command = ~B,D,DB,b
time = 14

[Command]
name = "osoi2_high"
command = ~B,D,DB,c
time = 14

;==============================================================================
;-| 特殊技 |-------------------------------------------------------------------


;==============================================================================
;-| 2度押し |------------------------------------------------------------------

[Command]
name = "FF";Required (do not remove)
command = F,F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B,B
time = 10

[Command]
name = "UU"
command = U,U
time = 10

[Command]
name = "DD"
command = D,D
time = 10

;==============================================================================
;-| 受け身コマンド |-----------------------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

;==============================================================================
;-| 方向キー＋ボタン(消しちゃダメ) |-------------------------------------------

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
name = "downfwd_z"
command = /DF,z
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

;==============================================================================
;-| ボタン(消しちゃダメ) |-----------------------------------------------------

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

;***********************************
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
name = "hold_s"
command = /s
time = 1

;==============================================================================
;-| 方向キー(消しちゃダメ) |---------------------------------------------------

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

;==============================================================================
;------------------------------------------------------------------------------
;※次の一行は消さないでください。（CMDの必須です）

[Statedef -1]

;==============================================================================
;------------------------------------------------------------------------------
;メテオスマッシュ
[State -1, Meteor Smash]
type = ChangeState
value = 3100
triggerall = command = "meteor_smash"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumHelper(960) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;アルト・シュヴァイゼン
[State -1, L.Se-no!]
type = ChangeState
value = 1200
triggerall = var(6) = 1
triggerall = command = "se-no_low"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

[State -1, M.Se-no!]
type = ChangeState
value = 1210
triggerall = var(6) = 1
triggerall = command = "se-no_middle"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;==============================================================================
;------------------------------------------------------------------------------
;マーヴルファンタズム
[State -1, Kuusou Gugenka]
type = ChangeState
value = 3500
triggerall = command = "kuusou_gugenka"
triggerall = power >= 2900
triggerall = statetype != A
triggerall = NumHelper(961) = 0
triggerall = NumHelper(3500) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;[State -1, 未完成なんで触るな]
;type = ChangeState
;value = 3550
;triggerall = var(6) = 1
;triggerall = command = "nazo"
;triggerall = power >= 3000
;triggerall = statetype != A
;triggerall = NumHelper(960) = 0
;trigger1 = ctrl = 1
;trigger2 = ((StateNo = [200,499]) && (MoveContact))
;trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;==============================================================================
;------------------------------------------------------------------------------
;ヴァイスカッツェ：前方
[State -1, Osoi! (front)]
type = ChangeState
value = 900
triggerall = (command = "osoi_low") || (command = "osoi_middle") || (command = "osoi_high")
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;ヴァイスカッツェ：後方
[State -1, Osoi! (back)]
type = ChangeState
value = 901
triggerall = (command = "osoi2_low") || (command = "osoi2_middle") || (command = "osoi2_high")
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;==============================================================================
;------------------------------------------------------------------------------
;アルトシューレ：弱
[State -1, L.Jama-yo!]
type = ChangeState
value = 1000
triggerall = command = "jama_low"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;アルトシューレ：中
[State -1, M.Jama-yo!]
type = ChangeState
value = 1010
triggerall = command = "jama_middle"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;シュナイデン・エンデ
[State -1, Chotto Honki dasu-wayo!]
type = ChangeState
value = 3000
triggerall = command = "jama_high"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumHelper(960) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;------------------------------------------------------------------------------
;アルトネーゲル：弱
[State -1, L.Urusai!]
type = ChangeState
value = 1100
triggerall = command = "tobe_low"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;アルトネーゲル：弱
[State -1, M.Urusai!]
type = ChangeState
value = 1110
triggerall = command = "tobe_middle"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))

;シュテルベン・エンデ
[State -1, Kore de Owari-yo!]
type = ChangeState
value = 3010
triggerall = command = "tobe_high"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumHelper(960) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))

;------------------------------------------------------------------------------
;ルフト・シュルブロック
[State -1, L.Yaaaa!]
type = ChangeState
value = 1300
triggerall = var(6) = 1
triggerall = command = "jama_low"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,620]) && (MoveContact))
trigger3 = ((StateNo = 621) && (MoveContact) && (HitCount = 1))
trigger4 = ((StateNo = 1201) && (MoveContact)) || ((StateNo = 1211) && (MoveContact))

[State -1, M.Yaaaa!]
type = ChangeState
value = 1310
triggerall = var(6) = 1
triggerall = command = "jama_middle"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,620]) && (MoveContact))
trigger3 = ((StateNo = 621) && (MoveContact) && (HitCount = 1))
trigger4 = ((StateNo = 1201) && (MoveContact)) || ((StateNo = 1211) && (MoveContact))

;アトモスファリシュス・エンデ
[State -1, Nando yattemo onaji-yo!]
type = ChangeState
value = 3020
triggerall = var(6) = 1
triggerall = command = "jama_high"
triggerall = power >= 1000
triggerall = statetype != S
triggerall = statetype != C
triggerall = NumHelper(960) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,620]) && (MoveContact))
trigger3 = ((StateNo = 621) && (MoveContact) && (HitCount = 1))
trigger4 = ((StateNo = 1201) && (MoveContact)) || ((StateNo = 1211) && (MoveContact))

;==============================================================================
;------------------------------------------------------------------------------
;回転ひっかき攻撃
[State -1, Spin Claw Attack]
type = ChangeState
value = 621
triggerall = ((command = "holddown") && (command = "c"))
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (MoveContact))
trigger3 = ((StateNo = 610) && (MoveContact))
trigger4 = ((StateNo = 611) && (MoveContact))
trigger5 = ((StateNo = 620) && (MoveContact))

;==============================================================================
;------------------------------------------------------------------------------
;シールド
[State -1, Shield]
type = ChangeState
value = 700
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,299]) && (MoveContact))
trigger3 = StateNo = [150,151]

[State -1, Crouch Shield]
type = ChangeState
value = 702
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [400,499]) && (MoveContact))
trigger3 = StateNo = [152,153]

[State -1, Air Shield]
type = ChangeState
value = 704
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))
trigger3 = StateNo = [154,155]

;===========================================================================
;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = var(8) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;空中投げ
[State -1, Air Throw]
type = ChangeState
value = 810
triggerall = command = "c"
triggerall = statetype = A
triggerall = var(8) = 0
trigger1 = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = p2statetype = A
trigger2 = ctrl
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = p2statetype = A
trigger3 = StateNo = 600
trigger3 = ((command = "holdfwd") || (command = "holdback"))
trigger3 = MoveContact
trigger3 = p2statetype = A
trigger4 = StateNo = 610
trigger4 = ((command = "holdfwd") || (command = "holdback"))
trigger4 = MoveContact
trigger4 = p2statetype = A

;==============================================================================
;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = var(8) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックダッシュ
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = var(8) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Air Dash]
type = ChangeState
value = 102
triggerall = var(8) = 0
trigger1 = var(44) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y < -30

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Air Back Dash]
type = ChangeState
value = 108
triggerall = var(8) = 0
trigger1 = var(44) = 0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y < -30

;---------------------------------------------------------------------------
;ホバリング
[State -1, Hobbering]
type = ChangeState
value = 10001
triggerall = StateNo != 10001
trigger1 = command = "DD"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y < -30

;==============================================================================
;------------------------------------------------------------------------------
;弱攻撃
[State -1, L.Attack]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger3 = ((StateNo = 200) && (MoveContact))
trigger4 = ((var(49) = 0) && (StateNo = 210) && (MoveContact))
trigger5 = ((var(49) = 0) && (StateNo = 220) && (MoveContact))
trigger6 = ((var(49) = 0) && (StateNo = 400) && (MoveContact))
trigger7 = ((var(49) = 0) && (StateNo = 401) && (MoveContact))
trigger8 = ((var(49) = 0) && (StateNo = 410) && (MoveContact))
trigger9 = ((var(49) = 0) && (StateNo = 420) && (MoveContact))

;---------------------------------------------------------------------------
;中攻撃
[State -1, M.Attack]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((var(50) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(50) = 0) && (StateNo = 220) && (MoveContact))
trigger4 = ((var(50) = 0) && (StateNo = 400) && (MoveContact))
trigger5 = ((var(50) = 0) && (StateNo = 401) && (MoveContact))
trigger6 = ((var(50) = 0) && (StateNo = 410) && (MoveContact))
trigger7 = ((var(50) = 0) && (StateNo = 420) && (MoveContact))

;---------------------------------------------------------------------------
;強攻撃
[State -1, H.Attack]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((var(51) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(51) = 0) && (StateNo = 210) && (MoveContact))
trigger4 = ((var(51) = 0) && (StateNo = 400) && (MoveContact))
trigger5 = ((var(51) = 0) && (StateNo = 401) && (MoveContact))
trigger6 = ((var(51) = 0) && (StateNo = 410) && (MoveContact))
trigger7 = ((var(51) = 0) && (StateNo = 420) && (MoveContact))

;==============================================================================
;------------------------------------------------------------------------------
;しゃがみ弱攻撃
[State -1, Crouch L.Attack]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((var(52) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(52) = 0) && (StateNo = 210) && (MoveContact))
trigger4 = ((var(52) = 0) && (StateNo = 220) && (MoveContact))
trigger5 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger6 = ((var(52) = 0) && (StateNo = 401) && (MoveContact))
trigger7 = ((var(52) = 0) && (StateNo = 410) && (MoveContact))
trigger8 = ((var(52) = 0) && (StateNo = 420) && (MoveContact))

;---------------------------------------------------------------------------
;しゃがみ中攻撃
[State -1, Crouch M.Attack]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((var(53) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(53) = 0) && (StateNo = 210) && (MoveContact))
trigger4 = ((var(53) = 0) && (StateNo = 220) && (MoveContact))
trigger5 = ((var(53) = 0) && (StateNo = 400) && (MoveContact))
trigger6 = ((var(53) = 0) && (StateNo = 401) && (MoveContact))
trigger7 = ((var(53) = 0) && (StateNo = 420) && (MoveContact))

;---------------------------------------------------------------------------
;しゃがみ強攻撃
[State -1, Crouch H.Attack]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((var(54) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(54) = 0) && (StateNo = 210) && (MoveContact))
trigger4 = ((var(54) = 0) && (StateNo = 220) && (MoveContact))
trigger5 = ((var(54) = 0) && (StateNo = 400) && (MoveContact))
trigger6 = ((var(54) = 0) && (StateNo = 401) && (MoveContact))
trigger7 = ((var(54) = 0) && (StateNo = 410) && (MoveContact))

;==============================================================================
;------------------------------------------------------------------------------
;ジャンプ弱攻撃
[State -1, Air L.Attack]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
trigger4 = ((var(55) = 0) && (StateNo = 610) && (MoveContact))
trigger5 = ((var(55) = 0) && (StateNo = 611) && (MoveContact))
trigger6 = ((var(55) = 0) && (StateNo = 620) && (MoveContact))

;---------------------------------------------------------------------------
;ジャンプ中攻撃
[State -1, Air M.Attack]
type = ChangeState
value = 610
triggerall = ((command = "b") && (Vel Y <= 0))
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((var(56) = 0) && (StateNo = 600) && (MoveContact))
trigger3 = ((var(56) = 0) && (StateNo = 620) && (MoveContact))

[State -1, Air M.Attack]
type = ChangeState
value = 611
triggerall = ((command = "b") && (Vel Y > 0))
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((var(56) = 0) && (StateNo = 600) && (MoveContact))
trigger3 = ((var(56) = 0) && (StateNo = 620) && (MoveContact))

;---------------------------------------------------------------------------
;ジャンプ強攻撃
[State -1, Air H.Attack]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((var(57) = 0) && (StateNo = 600) && (MoveContact))
trigger3 = ((var(57) = 0) && (StateNo = 610) && (MoveContact))
trigger4 = ((var(57) = 0) && (StateNo = 611) && (MoveContact))

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 940
triggerall = command = "s"
triggerall = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
