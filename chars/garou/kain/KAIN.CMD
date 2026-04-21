

;注意点としては、入力判定が設定順に行われるため、ファイルの上の方に書かれた
;コマンドほど優先順位が高くなるということがあります。必殺技などのコマンド系は
;、通常攻撃よりも上に書かないと、コマンドを入力した時に先に通常攻撃が出てし
;まうことになります。シングルボタンが下の方に書いてあるのはこういった事情が
;ある為です。
;入力コマンドの指定は以下のようになります。

;[ U ]　UP
;[ D ]　DOWN
;[ F ]　FORWARD
;[ B ]　BACK
;[ x ]　Xボタン
;[ y ]　Yボタン
;[ z ]　Zボタン
;[ a ]　Aボタン
;[ b ]　Bボタン
;[ c ]　Cボタン
;[ / ]　ボタンを押しっぱなしにする
;[ ~ ]　ボタンが放される（直後に数字を書くことで、コマンドの入力回数を指定できます）
;[ $ ]　複数方向指示（「$D」と書いた場合「D,DF,DB」が含まれる）
;[ + ]　ボタンの同時押し

;-| Super Motions |--------------------------------------------------------
;オリジナルＣ1 LEVEL2
[Command]
name = "OC1_a"
command = ~D, B, D, F, a
time = 40

;オリジナルＣ1 LEVEL2
[Command]
name = "OC1_b"
command = ~D, B, D, F, b
time = 40

;オリジナルＣ1 LEVEL2
[Command]
name = "OC1_c"
command = ~D, B, D, F, c
time = 40

;オリジナル１ LEVEL1
[Command]
name = "ORG_x"
command = ~D, B, D, B, x
;command = ~30$B, F, x
time = 30

;オリジナル１ LEVEL2
[Command]
name = "ORG_y"
command = ~D, B, D, B, y
;command = ~30$B, F, y
time = 30

;オリジナル１ LEVEL3
[Command]
name = "ORG_z"
command = ~D, B, D, B, z
;command = ~30$B, F, z
time = 30

;オリジナル２ LEVEL1
[Command]
name = "ORG_a"
command = ~D, B, D, B, a
;command = ~30$B, F, a
time = 30

;オリジナル２ LEVEL2
[Command]
name = "ORG_b"
command = ~D, B, D, B, b
;command = ~30$B, F, b
time = 30

;オリジナル２ LEVEL3
[Command]
name = "ORG_c"
command = ~D, B, D, B, c
;command = ~30$B, F, c
time = 30

;ヒムリッシュ・ゼーレ LEVEL1
[Command]
name = "ORO_a"
command = ~D, F, D, F, a
;command = x+a
time = 30

;ヒムリッシュ・ゼーレ LEVEL2
[Command]
name = "ORO_b"
command = ~D, F, D, F, b
;command = y+b
time = 30

;ヒムリッシュ・ゼーレ LEVEL3
[Command]
name = "ORO_c"
command = ~D, F, D, F, c
;command = z+c
time = 30

;ヒムリッシュ・アーテム  LEVEL1
[Command]
name = "CON_x"
command = ~D, F, D, F, x
time = 30

;ヒムリッシュ・アーテム  LEVEL2
[Command]
name = "CON_y"
command = ~D, F, D, F, y
time = 30

;ヒムリッシュ・アーテム  LEVEL3
[Command]
name = "CON_z"
command = ~D, F, D, F, z
time = 30

;-| Special Motions |------------------------------------------------------
;Ｑ 弱
[Command]
name = "Q_x"
command = /D, x

;Ｑ 中
[Command]
name = "Q_y"
command = /D, y

;Ｑ 強
[Command]
name = "Q_z"
command = /D, z

;シュワルツフレイム 弱 上段
[Command]
name = "SFU_x"
command = ~F, D, F, x

;シュワルツフレイム 中 上段
[Command]
name = "SFU_y"
command = ~F, D, F, y

;シュワルツフレイム 強 上段
[Command]
name = "SFU_z"
command = ~F, D, F, z

;シュワルツフレイム 弱 下段
[Command]
name = "SFD_x"
command = ~D, DF, F, x

;シュワルツフレイム 中 下段
[Command]
name = "SFD_y"
command = ~D, DF, F, y

;シュワルツフレイム 強 下段
[Command]
name = "SFD_z"
command = ~D, DF, F, z

;シュワルツランツェ 弱
[Command]
name = "TWR_x"
command = ~D, DB, B, x

;シュワルツランツェ中
[Command]
name = "TWR_y"
command = ~D, DB, B, y

;シュワルツランツェ 強
[Command]
name = "TWR_z"
command = ~D, DB, B, z

;シュワルツパンツァー 弱
[Command]
name = "SRP_a"
command = ~D, DB, B, a

;シュワルツパンツァー 中
[Command]
name = "SRP_b"
command = ~D, DB, B, b

;シュワルツパンツァー 強
[Command]
name = "SRP_c"
command = ~D, DB, B, c

; ディーハインド 弱
[Command]
name = "DYE_a"
command = ~D, DF, F, a

; ディーハインド 中
[Command]
name = "DYE_b"
command = ~D, DF, F, b

; ディーハインド 強
[Command]
name = "DYE_c"
command = ~D, DF, F, c

;フォーリンクラッシュ
[Command]
name = "FLC_1"
command = /$F,z
time = 1

;フォーリンクラッシュ
[Command]
name = "FLC_2"
command = /$D,z
time = 1

;フォーリンクラッシュ
[Command]
name = "FLC_3"
command = /$B,z
time = 1

;ロングジャンプ
[Command]
name = "longjump"
command = D, $U
time = 18

;ロングジャンプ
[Command]
name = "longjump2"
command = D, U
time = 18

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "xx";Required (do not remove)
command = x, x
time = 18

[Command]
name = "yy";Required (do not remove)
command = y, y
time = 18

[Command]
name = "zz";Required (do not remove)
command = z, z
time = 18

[Command]
name = "aa";Required (do not remove)
command = a, a
time = 15

[Command]
name = "bb";Required (do not remove)
command = b, b
time = 15

[Command]
name = "cc";Required (do not remove)
command = c, c
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

;アンニュイ・マドモアゼル
[Command]
name = "ab"
command = a+b
time = 1

;フェイント ヒムリッシュ・アーテム 
[Command]
name = "FM"
command = x+y
time = 1

;フェイント シュワルツパンツァー
[Command]
name = "FO"
command = /F,a
time = 1

;-| Dir + Button |---------------------------------------------------------
;ハリア.ビー 弱
[Command]
name = "dwd_a"
command = /$D,a
time = 1

;ハリア.ビー 中
[Command]
name = "dwd_b"
command = /$D,b
time = 1

;ハリア.ビー 強
[Command]
name = "dwd_c"
command = /$D,c
time = 1

;右レバー入れ中パンチ
[Command]
name = "fwd_y"
command = /F,y
time = 1

;右レバー入れ中パンチ
[Command]
name = "fwd_z"
command = /F,z
time = 1

;右レバー入れ強キック
[Command]
name = "fwd_c"
command = /F,c
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
name = "nagef"
command = /F,z
time = 1

[Command]
name = "nageb"
command = /B,z
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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

;挑発
[Command]
name = "s"
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;ジャストデフェンス
[Command]
name = "JAS_j"
command = B
time = 0

;ジャストデフェンス
[Command]
name = "JAS_g"
command = DB
time = 0

;---------------------------------------------------------------------------
; 2. State entry

[Statedef -1]

;===========================================================================
;技
;===========================================================================

;---------------------------------------------------------------------------
;オリジナル２ LEVEL1 TOP OFF
[State -1]
type = ChangeState
value = 3320
triggerall = command = "ORG_a"
triggerall = power >= 3000 
triggerall = WinKO != 1
triggerall = Var(20) != 1
triggerall = palno = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;オリジナル２ LEVEL1
[State -1]
type = ChangeState
value = 3320
triggerall = command = "ORG_b"
triggerall = power >= 3000 
triggerall = WinKO != 1
triggerall = Var(20) != 1
triggerall = palno = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;オリジナル２ LEVEL1
[State -1]
type = ChangeState
value = 3320
triggerall = command = "ORG_c"
triggerall = power >= 3000 
triggerall = WinKO != 1
triggerall = Var(20) != 1
triggerall = palno = 1
trigger1 = statetype = S
trigger1 = ctrl = 1





;オリジナル２ LEVEL1 TOP IN
[State -1]
type = ChangeState
value = 3300
triggerall = command = "ORG_a"
triggerall = power >= 3000 
triggerall = WinKO != 1
triggerall = Var(20) = 1
triggerall = palno = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;オリジナル２ LEVEL1
[State -1]
type = ChangeState
value = 3300
triggerall = command = "ORG_b"
triggerall = power >= 3000 
triggerall = WinKO != 1
triggerall = Var(20) = 1
triggerall = palno = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;オリジナル２ LEVEL1
[State -1]
type = ChangeState
value = 3300
triggerall = command = "ORG_c"
triggerall = power >= 3000 
triggerall = WinKO != 1
triggerall = Var(20) = 1
triggerall = palno = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;オリジナル１ LEVEL1
[State -1]
type = ChangeState
value = 3200
triggerall = command = "ORG_x"
triggerall = power >= 3000 
triggerall = WinKO != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;オリジナル１ LEVEL1
[State -1]
type = ChangeState
value = 3210
triggerall = command = "ORG_y"
triggerall = power >= 3000 
triggerall = WinKO != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;オリジナル１ LEVEL1
[State -1]
type = ChangeState
value = 3220
triggerall = command = "ORG_z"
triggerall = power >= 3000 
triggerall = WinKO != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
;ヒムリッシュ・アーテム  LEVEL1
[State -1]
type = ChangeState
value = 3000
triggerall = command = "CON_x"
triggerall = power >= 1000 
triggerall = WinKO != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;ヒムリッシュ・アーテム  LEVEL2
[State -1]
type = ChangeState
value = 3010
triggerall = command = "CON_y"
triggerall = power >= 2000 
triggerall = WinKO != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;ヒムリッシュ・アーテム  LEVEL3
[State -1]
type = ChangeState
value = 3020
triggerall = command = "CON_z"
triggerall = power >= 3000 
triggerall = WinKO != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
;ヒムリッシュ・ゼーレ LEVEL1
[State -1]
type = ChangeState
value = 3100
triggerall = command = "ORO_a"
triggerall = power >= 1000 
triggerall = WinKO != 1
triggerall = Numhelper(7900) = 0
triggerall = Numhelper(7910) = 0
triggerall = Numhelper(7920) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;ヒムリッシュ・ゼーレ LEVEL2
[State -1]
type = ChangeState
value = 3110
triggerall = command = "ORO_b"
triggerall = power >= 2000 
triggerall = WinKO != 1
triggerall = Numhelper(7900) = 0
triggerall = Numhelper(7910) = 0
triggerall = Numhelper(7920) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;ヒムリッシュ・ゼーレ LEVEL3
[State -1]
type = ChangeState
value = 3120
triggerall = command = "ORO_c"
triggerall = power >= 3000 
triggerall = WinKO != 1
triggerall = Numhelper(7900) = 0
triggerall = Numhelper(7910) = 0
triggerall = Numhelper(7920) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
;弱
;[State -1]
;type = ChangeState
;value = 1001
;triggerall = command = "Q_x"
;triggerall = BackEdgeBodyDist < 20
;trigger1 = statetype = A
;trigger1 = ctrl = 1
;trigger2 = stateno = 600
;trigger3 = stateno = 610
;trigger4 = stateno = 620
;trigger5 = stateno = 630
;trigger6 = stateno = 640
;trigger7 = stateno = 650

;中
;[State -1]
;type = ChangeState
;value = 1011
;triggerall = command = "Q_y"
;triggerall = BackEdgeBodyDist < 20
;trigger1 = statetype = A
;trigger1 = ctrl = 1
;trigger2 = stateno = 600
;trigger3 = stateno = 610
;trigger4 = stateno = 620
;trigger5 = stateno = 630
;trigger6 = stateno = 640
;trigger7 = stateno = 650

;強
;[State -1]
;type = ChangeState
;value = 1021
;triggerall = command = "Q_z"
;triggerall = BackEdgeBodyDist < 20
;trigger1 = statetype = A
;trigger1 = ctrl = 1
;trigger2 = stateno = 600
;trigger3 = stateno = 610
;trigger4 = stateno = 620
;trigger5 = stateno = 630
;trigger6 = stateno = 640
;trigger7 = stateno = 650

;---------------------------------------------------------------------------
;ＴＯＰアッタック シュワルツ・シュトゥース 弱
[State -1]
type = ChangeState
value = 1150
triggerall = command = "DYE_a"
triggerall = Var(20) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;ＴＯＰアッタック シュワルツ・シュトゥース 中
[State -1]
type = ChangeState
value = 1160
triggerall = command = "DYE_b"
triggerall = Var(20) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;ＴＯＰアッタック シュワルツ・シュトゥース 強
[State -1]
type = ChangeState
value = 1170
triggerall = command = "DYE_c"
triggerall = Var(20) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
;シュワルツランツェ 弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "TWR_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;シュワルツランツェ 中
[State -1]
type = ChangeState
value = 1010
triggerall = command = "TWR_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;シュワルツランツェ 強
[State -1]
type = ChangeState
value = 1020
triggerall = command = "TWR_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
;シュワルツフレイム 弱 上段
[State -1]
type = ChangeState
value = 1300
triggerall = command = "SFU_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;シュワルツフレイム 中 上段
[State -1]
type = ChangeState
value = 1310
triggerall = command = "SFU_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;シュワルツフレイム 強 上段
[State -1]
type = ChangeState
value = 1320
triggerall = command = "SFU_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
;シュワルツフレイム 弱 下段 空中
;[State -1]
;type = ChangeState
;value = 1401
;triggerall = command = "SFD_x"
;trigger1 = statetype = A
;trigger1 = ctrl = 1


;シュワルツフレイム 中 下段
;[State -1]
;type = ChangeState
;value = 1400
;triggerall = command = "SFD_y"
;trigger1 = statetype = A
;trigger1 = ctrl = 1


;シュワルツフレイム 強 下段
;[State -1]
;type = ChangeState
;value = 1400
;triggerall = command = "SFD_z"
;trigger1 = statetype = A
;trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;シュワルツフレイム 弱 下段
[State -1]
type = ChangeState
value = 1100
triggerall = command = "SFD_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;シュワルツフレイム 中 下段
[State -1]
type = ChangeState
value = 1110
triggerall = command = "SFD_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;シュワルツフレイム 強 下段
[State -1]
type = ChangeState
value = 1120
triggerall = command = "SFD_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
;シュワルツパンツァー 弱
[State -1]
type = ChangeState
value = 1050
triggerall = command = "SRP_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;シュワルツパンツァー 中
[State -1]
type = ChangeState
value = 1060
triggerall = command = "SRP_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;シュワルツパンツァー強
[State -1]
type = ChangeState
value = 1070
triggerall = command = "SRP_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;シュワルツモーント 
[State -1]
type = ChangeState
value = 900
triggerall = P2bodydist X <= 5
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = p2movetype != H
triggerall = p2statetype != A
trigger1 = command = "nagef"
trigger1 = statetype = S
;trigger2 = command = "nageb"
;trigger2 = statetype = S

;---------------------------------------------------------------------------
;フェイント ヒムリッシュ・アーテム 
[State -1]
type = ChangeState
triggerall = command = "FM"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
value = 1410

;フェイント シュワルツパンツァー
[State -1]
type = ChangeState
triggerall = command = "ab";FO
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact	
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
value = 1420

;---------------------------------------------------------------------------
;挑発 前 夢を見過ぎた
[State -1]
type = ChangeState
value = 197
trigger1 = command = "s"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1

;挑発 後 ぶざまだ！
[State -1]
type = ChangeState
value = 198
trigger1 = command = "s"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

;挑発１
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;立ち 強パンチ（近距離）
[State -1]
type = ChangeState
value = 222
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 15;10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 231
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact	
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact

;---------------------------------------------------------------------------
;立ち 弱パンチ
[State -1]
type = ChangeState
value = 200			
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230		
trigger2 = movecontact
trigger2 = time >= 5
trigger3 = stateno = 400
trigger3 = movecontact
trigger3 = time >= 5
trigger4 = stateno = 430
trigger4 = movecontact
trigger4 = time >= 5

;-------------------------
;立ち 中パンチ
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
;trigger6 = stateno = 201
;trigger6 = movecontact
;trigger7 = stateno = 231
;trigger7 = movecontact
;trigger8 = stateno = 410
;trigger8 = movecontact
;trigger9 = stateno = 440
;trigger9 = movecontact
;trigger10 = stateno = 240
;trigger10 = movecontact

;-------------------------
;立ち 強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 231
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact	
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
;trigger13 = stateno = 222
;trigger13 = movecontact

;-------------------------
;立ち 弱キック
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = time >= 5	
trigger3 = stateno = 400
trigger3 = movecontact
trigger3 = time >= 5
trigger4 = stateno = 430
trigger4 = movecontact
trigger4 = time >= 5

;-------------------------
;立ち 中キック
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
;trigger6 = stateno = 201
;trigger6 = movecontact
;trigger7 = stateno = 231
;trigger7 = movecontact
;trigger8 = stateno = 410
;trigger8 = movecontact
;trigger9 = stateno = 440
;trigger9 = movecontact
;trigger10 = stateno = 210
;trigger10 = movecontact

;-------------------------
;立ち 強キック
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 231
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact	
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
;trigger13 = stateno = 222
;trigger13 = movecontact

;---------------------------------------------------------------------------
;しゃがみ 弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = time >= 5
trigger3 = stateno = 230
trigger3 = movecontact
trigger3 = time >= 5
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = time >= 5
trigger5 = stateno = 430
trigger5 = movecontact
trigger5 = time >= 5

;-------------------------
;しゃがみ 中パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;-------------------------
;しゃがみ 強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 231
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact	
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
;trigger13 = stateno = 221
;trigger13 = movecontact

;-------------------------
;しゃがみ 弱キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = time >= 5
trigger3 = stateno = 230
trigger3 = movecontact
trigger3 = time >= 5
trigger4 = stateno = 400
trigger4 = movecontact
trigger4 = time >= 5
trigger5 = stateno = 430
trigger5 = movecontact
trigger5 = time >= 5

;-------------------------
;しゃがみ 中キック
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;-------------------------
;しゃがみ 強キック
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 211
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 231
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact	
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 221
trigger13 = movecontact
trigger14 = stateno = 441
trigger14 = movecontact

;---------------------------------------------------------------------------
;ジャンプ 弱パンチ
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-------------------------
;ジャンプ 中パンチ
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-------------------------
;ジャンプ 強パンチ
[State -1]
type = ChangeState
value = 620
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-------------------------
;ジャンプ 弱キック
[State -1]
type = ChangeState
value = 630
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-------------------------
;ジャンプ 中キック
[State -1]
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-------------------------
;ジャンプ 強キック
[State -1]
type = ChangeState
value = 650
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ジャストデフェンス （上段）
[State -1] 
type = ChangeState 
value = 1200 
triggerall = command = "JAS_j"
trigger1 = p2movetype = A
trigger1 = statetype = S
trigger1 = ctrl = 1 

;ジャストデフェンス （下段）
[State -1] 
type = ChangeState 
value = 1210 
triggerall = command = "JAS_g"
triggerall = p2movetype = A
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = statetype = C
trigger2 = ctrl = 1 

ジャストデフェンス （空中）
[State -1] 
type = ChangeState 
value = 1220 
triggerall = command = "JAS_j"
trigger1 = statetype = A
trigger1 = p2movetype = A
trigger1 = ctrl = 1 

;---------------------------------------------------------------------------
;起き上がり（後方）
[State -1]
type = ChangeState
triggerall = command = "a"
trigger1 = stateno = 5110
trigger1 = time <= 7
value = 700

;起き上がり（その場）
[State -1]
type = ChangeState
triggerall = command = "b"
trigger1 = stateno = 5110
trigger1 = time <= 7
value = 710

;起き上がり３（前方）
[State -1]
type = ChangeState
triggerall = command = "c"
trigger1 = stateno = 5110
trigger1 = time <= 7
value = 720



