;-| Super Motions |--------------------------------------------------------
[Command];レプリカントコーディネイター(全員集合)
name = "Replica_all"
command = ~F, DF, D, DB, B, c
time = 20

[Command];ナイトオンザブラッドライアー
name = "night"
command = ~B, DB, D, DF, F, c
time = 20

;-| Special Motions |------------------------------------------------------
[Command];オリ技弱
name = "bomb_a"
command = ~F, D, DF, a

[Command];オリ技中
name = "bomb_b"
command = ~F, D, DF, b

[Command];オリ技強
name = "bomb_c"
command = ~F, D, DF, c

[Command];ワープ・弱
name = "warp_a"
command = ~B, D, DB, a

[Command];ワープ・中
name = "warp_b"
command = ~B, D, DB, b

[Command];ワープ・強
name = "warp_c"
command = ~B, D, DB, c

[Command];バッドニュース(ライ)・弱
name = "badnews_a"
command = ~D, DF, F, a

[Command];バッドニュース(ライ)・中
name = "badnews_b"
command = ~D, DF, F, b

[Command];バッドニュース(ライ)・強
name = "badnews_c"
command = ~D, DF, F, c

[Command];レプリカントコーディネイター(イド)・弱
name = "Replica _a"
command = ~D, DB, B, a

[Command];レプリカントコーディネイター(イド)・中
name = "Replica _b"
command = ~D, DB, B, b

[Command];レプリカントコーディネイター(イド)・強
name = "Replica _c"
command = ~D, DB, B, c

[Command];オリ技・ＥＸ
name = "bomb_ex"
command = ~D, D, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_c"
command = /$F,c

[Command]
name = "back_c"
command = /$B,c

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
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdc"
command = /$c
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
;-------------------------
;[Statedef -1]
;意味：
;	コマンド入力が可能ならば常時実行されるstate
[Statedef -1] ;この一行は削除しないで下さい

;===========================================================================
;---------------------------------------------------------------------------
;レプリカントコーディネイター(全員集合)
[State -1, Replica_all]
type = ChangeState
value = 3100
triggerall = command = "Replica_all"
triggerall = power >= 3000
triggerall = numhelper(1110) = 0
triggerall = numhelper(1120) = 0
triggerall = numhelper(1130) = 0
triggerall = numhelper(1140) = 0
triggerall = numhelper(1150) = 0
triggerall = numhelper(1170) = 0
triggerall = numhelper(1180) = 0
triggerall = numhelper(1190) = 0
triggerall = numhelper(1195) = 0
triggerall = numhelper(3110) = 0
triggerall = numhelper(3120) = 0
triggerall = numhelper(3130) = 0
triggerall = numhelper(3140) = 0
triggerall = numhelper(3150) = 0
triggerall = numhelper(3170) = 0
triggerall = numhelper(3180) = 0
triggerall = numhelper(3190) = 0
triggerall = numhelper(3195) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;ナイトオンザブラッドライアー
[State -1, night on the blood liar]
type = ChangeState
value = 3000
triggerall = command = "night"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;オリ技・弱
[State -1, bomb_a]
type = ChangeState
value = 1200
triggerall = command = "bomb_a"
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;オリ技・中
[State -1, bomb_b]
type = ChangeState
value = 1205
triggerall = command = "bomb_b"
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;オリ技・強
[State -1, bomb_c]
type = ChangeState
value = 1206
triggerall = command = "bomb_c"
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;ワープ・弱
[State -1, warp_a]
type = ChangeState
value = 1000
triggerall = command = "warp_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;ワープ・中
[State -1, warp_b]
type = ChangeState
value = 1010
triggerall = command = "warp_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;ワープ・強
[State -1, warp_c]
type = ChangeState
value = 1020
triggerall = command = "warp_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;バッドニュース(ライ)・弱
[State -1, badnews_a]
type = ChangeState
value = 1050
triggerall = command = "badnews_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;バッドニュース(ライ)・中
[State -1, badnews_b]
type = ChangeState
value = 1060
triggerall = command = "badnews_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;バッドニュース(ライ)・強（パワー足りない時）
[State -1, badnews_c]
type = ChangeState
value = 1060
triggerall = command = "badnews_c"
triggerall = power < 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;バッドニュース(ライ)・強
[State -1, badnews_c]
type = ChangeState
value = 1070
triggerall = command = "badnews_c"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;レプリカントコーディネイター(イド)・弱
[State -1, Replica _a]
type = ChangeState
value = 1100
triggerall = command = "Replica _a"
triggerall = numhelper(1110) = 0
triggerall = numhelper(1120) = 0
triggerall = numhelper(1130) = 0
triggerall = numhelper(1140) = 0
triggerall = numhelper(1150) = 0
triggerall = numhelper(1170) = 0
triggerall = numhelper(1180) = 0
triggerall = numhelper(1190) = 0
triggerall = numhelper(1195) = 0
triggerall = numhelper(3110) = 0
triggerall = numhelper(3120) = 0
triggerall = numhelper(3130) = 0
triggerall = numhelper(3140) = 0
triggerall = numhelper(3150) = 0
triggerall = numhelper(3170) = 0
triggerall = numhelper(3180) = 0
triggerall = numhelper(3190) = 0
triggerall = numhelper(3195) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;レプリカントコーディネイター(イド)・中
[State -1, Replica _b]
type = ChangeState
value = 1101
triggerall = command = "Replica _b"
triggerall = numhelper(1110) = 0
triggerall = numhelper(1120) = 0
triggerall = numhelper(1130) = 0
triggerall = numhelper(1140) = 0
triggerall = numhelper(1150) = 0
triggerall = numhelper(1170) = 0
triggerall = numhelper(1180) = 0
triggerall = numhelper(1190) = 0
triggerall = numhelper(1195) = 0
triggerall = numhelper(3110) = 0
triggerall = numhelper(3120) = 0
triggerall = numhelper(3130) = 0
triggerall = numhelper(3140) = 0
triggerall = numhelper(3150) = 0
triggerall = numhelper(3170) = 0
triggerall = numhelper(3180) = 0
triggerall = numhelper(3190) = 0
triggerall = numhelper(3195) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;レプリカントコーディネイター(イド)・大
[State -1, Replica _c]
type = ChangeState
value = 1102
triggerall = command = "Replica _c"
triggerall = numhelper(1110) = 0
triggerall = numhelper(1120) = 0
triggerall = numhelper(1130) = 0
triggerall = numhelper(1140) = 0
triggerall = numhelper(1150) = 0
triggerall = numhelper(1170) = 0
triggerall = numhelper(1180) = 0
triggerall = numhelper(1190) = 0
triggerall = numhelper(1195) = 0
triggerall = numhelper(3110) = 0
triggerall = numhelper(3120) = 0
triggerall = numhelper(3130) = 0
triggerall = numhelper(3140) = 0
triggerall = numhelper(3150) = 0
triggerall = numhelper(3170) = 0
triggerall = numhelper(3180) = 0
triggerall = numhelper(3190) = 0
triggerall = numhelper(3195) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;オリ技・ＥＸ
[State -1, bomb_ex]
type = ChangeState
value = 3300
triggerall = command = "bomb_ex"
triggerall = var(59) = 1
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = var(5) = 0
triggerall = command = "FF"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 50
trigger3 = stateno = 51
;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 103
triggerall = var(5) = 0
triggerall = command = "BB"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 50
trigger3 = stateno = 51
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中投げ
[State -1, Air Throw]
type = ChangeState
value = 850
ignorehitpause = 1
triggerall = statetype = A
triggerall = ctrl
triggerall = command = "c"
triggerall = stateno != 102
triggerall = stateno != 103
trigger1 = command = "holdback"|| command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = P2bodyDist Y >= -20
trigger1 = P2bodyDist Y <= 20
trigger1 = p2statetype = A
trigger2 = command = "holdback"|| command = "holdfwd"
trigger2 = p2statetype = A
trigger2 = stateno = 600
trigger2 = time >= 7
trigger3 = command = "holdback"|| command = "holdfwd"
trigger3 = p2statetype = A
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = command = "holdback"|| command = "holdfwd"
trigger4 = p2bodydist X < 10
trigger4 = P2bodyDist Y >= -20
trigger4 = P2bodyDist Y <= 20
trigger4 = p2statetype = A
trigger4 = stateno = 50
trigger5 = command = "holdback"|| command = "holdfwd"
trigger5 = p2bodydist X < 10
trigger5 = P2bodyDist Y >= -20
trigger5 = P2bodyDist Y <= 20
trigger5 = p2statetype = A
trigger5 = stateno = 51

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;避け
[State -1, sake]
type = ChangeState
value = 960
triggerall = p2statetype != C
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = ctrl
triggerall = var(26) = 1
trigger5 = P2bodyDist Y >= -50
trigger1 = p2bodydist X < 90
trigger1 = command = "holdback"

;---------------------------------------------------------------------------
;下段避け
[State -1, sake]
type = ChangeState
value = 961
triggerall = p2statetype = C
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = ctrl
triggerall = var(26) = 1
trigger5 = P2bodyDist Y >= -50
trigger1 = p2bodydist X < 90
trigger1 = command = "holddown"

;===========================================================================
;---------------------------------------------------------------------------
;立ち→C
[State -1, fwd C]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230 
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 100
trigger9 = stateno = 101
;---------------------------------------------------------------------------
;立ちA
[State -1, A]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;立ちB
[State -1, B]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 
trigger2 = time >= 7
trigger3 = stateno = 400
trigger3 = time >= 7
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 100
trigger6 = stateno = 101

;---------------------------------------------------------------------------
;立ちC
[State -1, C]
type = ChangeState
value = 230
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 240 
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 100
trigger9 = stateno = 101

;---------------------------------------------------------------------------
;立ちシールド
[State -1, shield]
type = ChangeState
value = 890
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 7
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = time >= 7
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみA
[State -1, Crouching A]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 7
trigger3 = stateno = 200
trigger3 = time >= 7
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;しゃがみB
[State -1, Crouching B]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 7
trigger3 = stateno = 200
trigger3 = time >= 7
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 100
trigger6 = stateno = 101

;---------------------------------------------------------------------------
;しゃがみC
[State -1, Crouching C]
type = ChangeState
value = 430
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 100
trigger9 = stateno = 101

;-------------------------------------------------------------------------------
;しゃがみシールド
[State -1, Crouching shield]
type = ChangeState
value = 891
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 7
trigger3 = stateno = 200
trigger3 = time >= 7
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 100
trigger7 = stateno = 101
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;空中A
[State -1, Jump A]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 7
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 50
trigger6 = stateno = 51
trigger7 = stateno = 102

;---------------------------------------------------------------------------
;空中Ｂ
[State -1, Jump B]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 7
trigger3 = stateno = 50
trigger4 = stateno = 51
trigger5 = stateno = 102
;---------------------------------------------------------------------------
;空中Ｃ
[State -1, jump C]
type = ChangeState
value = 630
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 7
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 50
trigger5 = stateno = 51
trigger6 = stateno = 102
;---------------------------------------------------------------------------
;空中シールド
[State -1, Jump shield]
type = ChangeState
value = 892
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 7
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 50
trigger6 = stateno = 51
trigger7 = stateno = 102
