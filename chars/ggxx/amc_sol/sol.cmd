;ボタン配置変更について
;下記の命令が、ボタンの入れ替えを可能とします。
;アーケード配置にする場合は『x=a z=c a=x b=z c=b』にします（他はそのままで）。
;判りやすいようにコメントアウトしておきました。削るだけでOKです。
[Remap]
x = x;a
y = y
z = z;c
a = a;x
b = b;z
c = c;b
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15

; maximum 30.
command.buffer.time = 1

;-| CPU |--------------------------------------------------------------
[Command]
name = "cpu01"
command = ~s, s, s, a
time = 0

[Command]
name = "cpu02"
command = ~s, s, s
time = 0

[Command]
name = "cpu03"
command = ~s, s, s
time = 0

[Command]
name = "cpu04"
command = ~s, s, s
time = 0

[Command]
name = "cpu05"
command = ~s, s, s
time = 0

[Command]
name = "cpu06"
command = ~s, s, s
time = 0

[Command]
name = "cpu07"
command = ~s, s, s
time = 0

[Command]
name = "cpu08"
command = ~s, s, s
time = 0

[Command]
name = "cpu09"
command = ~s, s, s
time = 0

[Command]
name = "cpu10"
command = ~s, s, s
time = 0

[Command]
name = "cpu11"
command = ~s, s, s
time = 0

[Command]
name = "cpu12"
command = ~s, s, s
time = 0

[Command]
name = "cpu13"
command = ~s, s, s
time = 0

[Command]
name = "cpu10"
command = ~s, s, s
time = 0

[Command]
name = "cpu14"
command = ~s, s, s
time = 0

[Command]
name = "cpu15"
command = ~s, s, s
time = 0

[Command]
name = "cpu16"
command = ~s, s, s
time = 0

;-| Super Motions |--------------------------------------------------------

[Command]
name = "632146b"
command = ~F, DF, D, DB, B, F, b
time = 24

[Command]
name = "632146b"
command = ~F, D, DB, B, F, b
time = 24

[Command]
name = "214214y"
command = ~D, DB, B, D, DB, B, y
time = 24

[Command]
name = "236236b"
command = ~D, DF, F, D, DF, F, b
time = 24

[Command]
name = "abxy"
command = a+b+x+y
time = 1

;-| Special Motions |------------------------------------------------------
[Command]
name = "236x"
command = ~D, DF, F, x

[Command]
name = "236a"
command = ~D, DF, F, a

[Command]
name = "623y"
command = ~F, D, DF, y

[Command]
name = "623b"
command = ~F, D, DF, b

[Command]
name = "623a"
command = ~F, D, DF, a
time = 12

[Command]
name = "214x"
command = ~D, DB, B, x

[Command]
name = "214a"
command = ~D, DB, B, a

[Command]
name = "214y"
command = ~D, DB, B, y

[Command]
name = "41236b"
command = ~B, DB, D, DF, F, b

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
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
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

[Command]
name = "roman"
command = x+y+a
time = 1
command.buffer.time = 1

[Command]
name = "roman"
command = x+y+b
time = 1
command.buffer.time = 1

[Command]
name = "roman"
command = x+a+b
time = 1
command.buffer.time = 1

[Command]
name = "roman"
command = y+a+b
time = 1
command.buffer.time = 1

[Command]
name = "roman"
command = c
time = 1
command.buffer.time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "6x"
command = /F,x
time = 1

[Command]
name = "6a"
command = /F,a
time = 1

[Command]
name = "6b"
command = /F,b
time = 1

[Command]
name = "6xa"
command = /F,a
time = 1

[Command]
name = "4xa"
command = /B,x+a
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
name = "s"
command = s
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "6"
command = F
time = 1

[Command]
name = "4"
command = B
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
name = "hold6"
command = /F
time = 1

[Command]
name = "hold4";
command = /B
time = 1

[Command]
name = "hold8"
command = /U
time = 1

[Command]
name = "hold2"
command = /D
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "28"
command = $D, $U
time = 8


;===========================================================================
[Statedef -1]

;ナパームデス
[State -1, *]
type = ChangeState
value = 3250
triggerall = command = "236236b" && Var(40) = 0
triggerall = var(29) = [1,3]
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]

;タイランレイブ ver.β
[State -1, *]
type = ChangeState
value = 3000
triggerall = command = "632146b"
triggerall = power >= 1000
triggerall = var(29) = 0
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;ドラゴンインストール
[State -1, *]
type = ChangeState
value = 3100
triggerall = command = "214214y" && Var(40) = 0
triggerall = power >= 1000
triggerall = var(29) = 0
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;一撃必殺技準備
[State -1, *]
type = ChangeState
value = 3200
triggerall = command = "abxy" && Var(40) = 0
triggerall = var(29) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]

;一撃必殺技準備
[State -1, *]
type = ChangeState
value = 3201
triggerall = command = "abxy" && Var(40) = 0
triggerall = var(29) = [1,3]
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]

;ぶっきらぼうに投げる
[State -1, *]
type = ChangeState
value = 1500
triggerall = command = "623a" && Var(40) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = [100,101]
trigger4 = stateno = 40 || stateno = 52
trigger5 = stateno = [200,499]
trigger5 = stateno != 250
trigger5 = MoveContact > 0

;ドラゴンインストール・地上Sヴォルカニックヴァイパー
[State -1, *]
type = ChangeState
value = 1160
triggerall = command = "623y" && Var(27) = 1
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = [100,101]
trigger4 = stateno = 40 || stateno = 52
trigger5 = stateno = [200,499]
trigger5 = stateno != 250
trigger5 = MoveContact > 0

;地上Sヴォルカニックヴァイパー
[State -1, *]
type = ChangeState
value = 1100
triggerall = command = "623y" && Var(27) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = [100,101]
trigger4 = stateno = 40 || stateno = 52
trigger5 = stateno = [200,499]
trigger5 = stateno != 250
trigger5 = MoveContact > 0

;ドラゴンインストール・地上HSヴォルカニックヴァイパー
[State -1, *]
type = ChangeState
value = 1170
triggerall = command = "623b" && Var(27) = 1
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = [100,101]
trigger4 = stateno = 40 || stateno = 52
trigger5 = stateno = [200,499]
trigger5 = stateno != 250
trigger5 = MoveContact > 0

;地上HSヴォルカニックヴァイパー
[State -1, *]
type = ChangeState
value = 1110
triggerall = command = "623b" && Var(27) = 0
trigger1 = statetype = S && ctrl
trigger2 = statetype = C && ctrl
trigger3 = stateno = [100,101]
trigger4 = stateno = 40 || stateno = 52
trigger5 = stateno = [200,499]
trigger5 = stateno != 250
trigger5 = MoveContact > 0

;ドラゴンインストール・空中ヴォルカニックヴァイパー
[State -1, *]








type = ChangeState
value = 1180
triggerall = command = "623y" || command = "623b"
triggerall = Var(27) = 1
trigger1 = statetype = A  && ctrl
trigger2 = stateno = [600,699]
trigger2 = MoveContact > 0
trigger3 = stateno = [110,115]

;空中Sヴォルカニックヴァイパー
[State -1, *]
type = ChangeState
value = 1130
triggerall = command = "623y" && Var(27) = 0
trigger1 = statetype = A  && ctrl
trigger2 = stateno = [600,699]
trigger2 = MoveContact > 0
trigger3 = stateno = [110,115]

;空中HSヴォルカニックヴァイパー
[State -1, *]
type = ChangeState
value = 1140
triggerall = command = "623b" && Var(27) = 0
trigger1 = statetype = A  && ctrl
trigger2 = stateno = [600,699]
trigger2 = MoveContact > 0
trigger3 = stateno = [110,115]

;叩き落し
[State -1, *]
type = varset
triggerall = command = "214a"
trigger1 = stateno = 1100 && Time >= 14
trigger2 = stateno = 1110 && Time >= 18
trigger3 = stateno = 1130 && Time >= 9
trigger4 = stateno = 1140 && Time >= 18
trigger5 = stateno = 1170 && Time = [46,74]
v = 20
value = 1

;ライオットスタンプ
[State -1, *]
type = ChangeState
value = 1400
triggerall = command = "214a"
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;グランドヴァイパー
[State -1, *]
type = ChangeState
value = 1200
triggerall = command = "214y"
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;ドラゴンインストール・ガンフレイム
[State -1, *]
type = ChangeState
value = 1060
triggerall = command = "236x" && Var(27) = 1
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;ガンフレイム
[State -1, *]
type = ChangeState
value = 1000
triggerall = command = "236x" && Var(27) = 0
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;ガンフレイム・フェイント
[State -1, *]
type = ChangeState
value = 1050
triggerall = command = "214x" && Var(40) = 0
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;ドラゴンインストール・バンディットリヴォルヴァー
[State -1, *]
type = ChangeState
value = 1370
triggerall = command = "236a" && Var(27) = 1
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;地上バンディットリヴォルヴァー
[State -1, *]
type = ChangeState
value = 1300
triggerall = command = "236a" && Var(27) = 0
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [200,499]
trigger4 = stateno != 250
trigger4 = MoveContact > 0

;空中バンディットリヴォルヴァー
[State -1, *]
type = ChangeState
value = 1320
triggerall = command = "236a"
trigger1 = statetype = A  && ctrl
trigger2 = stateno = [600,699]
trigger2 = MoveContact > 0
trigger3 = stateno = [110,115]

;ファフニール
[State -1, *]
type = ChangeState
value = 1600
triggerall = command = "41236b"
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 40 || stateno = 52

;敬意
[State -1, *]
type = ChangeState
value = 197
triggerall = command = "holdfwd" && command = "s" && Var(40) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]

;挑発
[State -1, *]
type = ChangeState
value = ifelse(random <= 500,195,196)
triggerall = command = "s" && Var(40) = 0
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]

;空中ダッシュ
[State -1, AirDash]
type = ChangeState
value = 110
triggerall = command = "FF" && statetype = A && ctrl
triggerall = var(5) = 2 || var(5) = 4 || var(5) = 11
trigger1 = vel y < 0 && Pos y < -48
trigger2 = vel y > 0 && Pos y < -8

;空中ダッシュ
[State -1, AirDash]
type = ChangeState
value = 110
triggerall = command = "FF" && statetype = A && ctrl && var(5) = 8
trigger1 = vel y < 0 && Pos y < -48
trigger2 = vel y > 0 && Pos y < -8

;空中バックダッシュ
[State -1, AirBackDash]
type = ChangeState
value = 115
triggerall = command = "BB" && statetype = A && ctrl
triggerall = var(5) = 2 || var(5) = 4 || var(5) = 11
trigger1 = vel y < 0 && Pos y < -48
trigger2 = vel y > 0

;空中バックダッシュ
[State -1, AirBackDash]
type = ChangeState
value = 115
triggerall = command = "BB" && statetype = A && ctrl && var(5) = 8
trigger1 = vel y < 0 && Pos y < -48
trigger2 = vel y > 0

;地上ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;地上バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;立D
[State -1, *]
type = ChangeState
value = 250
triggerall = command = "z" && command != "holddown" && Var(40) = 0
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430
trigger4 = MoveContact > 0


;前P：振り返りver.
[State -1, *]
type = ChangeState
value = 300
triggerall = command = "x" && command = "hold4" && p2Dist X < 0 && stateno != 3150
trigger1 = statetype = S  || stateno = [100,101]

;前P
[State -1, *]
type = ChangeState
value = 300
triggerall = command = "x" && command = "hold6" && p2Dist X > 0 && stateno != 3150
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 400 || stateno = 410 || stateno = 420
trigger4 = MoveContact > 0

;投げ
[State -1, *]
type = ChangeState
value = 800
triggerall = command = "b" && command = "hold6"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = p2bodydist X = [-1,30]
trigger1 = p2statetype != A && p2movetype != H

;逆投げ
[State -1, *]
type = ChangeState
value = 800
triggerall = command = "b" && command = "hold4"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = p2bodydist X = [-1,30]


;前HS：振り返りver.
[State -1, *]
type = ChangeState
value = 320
triggerall = command = "b" && command = "hold4" && p2Dist X < 0 && stateno != 3150
trigger1 = statetype = S  || stateno = [100,101]

;前HS
[State -1, *]
type = ChangeState
value = 320
triggerall = command = "b" && command = "hold6" && p2Dist X > 0 && stateno != 3150
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 300
trigger4 = MoveContact > 0

;立P
[State -1, *]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52 && Var(40) = 0
trigger4 = stateno = 200 && MoveContact > 0 && Var(40) = 0
trigger5 = stateno = 200 && AnimElem = 5,>= 0 && Var(40) = 0

;立K
[State -1, *]
type = ChangeState
value = 210
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 400
trigger4 = MoveContact > 0

;近S
[State -1, *]
type = ChangeState
value = 220
triggerall = command = "y" && command != "holddown" && p2BodyDist X = [-44,44]
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 210 || stateno = 300 || stateno = 400 || stateno = 410
trigger4 = MoveContact > 0

;遠S
[State -1, *]
type = ChangeState
value = 230
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 300 || stateno = 400 || stateno = 410
trigger4 = MoveContact > 0

;立HS
[State -1, *]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 420
trigger4 = MoveContact > 0

;屈D
[State -1, *]
type = ChangeState
value = 440
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430
trigger4 = MoveContact > 0

;屈P
[State -1, *]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 && MoveContact > 0
trigger5 = stateno = 400 && MoveContact > 0
trigger6 = stateno = 400 && AnimElem = 3,> 0

;屈K
[State -1, *]
type = ChangeState
value = 410
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 400
trigger4 = MoveContact > 0

;屈S
[State -1, *]
type = ChangeState
value = 420
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 300 || stateno = 400 || stateno = 410
trigger4 = MoveContact > 0

;屈HS
[State -1, *]
type = ChangeState
value = 430
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C  && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 52
trigger4 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 420
trigger4 = MoveContact > 0


;空中ジャンプキャンセル
[State -1, *]
type = ChangeState
value = 45
triggerall = stateno = 620 || stateno = 640
trigger1 = command = "holdup" && MoveContact > 0
trigger1 = var(5) = 2 || var(5) = 8 || var(5) = 11

;空中ジャンプ
[State -1, *]
type = ChangeState
value = 45
triggerall = command = "holdup" 
trigger1 = stateno = 50 && vel y < 0 && Pos y < -24 && var(5) = 2
trigger2 = stateno = 50 && vel y >= 0 && var(5) = 2
trigger3 = stateno = 50 && vel y < 0 && Pos y < -24 && var(5) = 11
trigger4 = stateno = 50 && vel y >= 0 && var(5) = 11

;空D
[State -1, *]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A  && ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = MoveContact > 0
trigger3 = stateno = [110,115]

;空中投げ
[State -1, *]
type = ChangeState
value = 850
triggerall = command = "b" && command = "hold6"
triggerall = statetype = A && ctrl
trigger1 = p2bodydist X = [-1,30]
;trigger1 = p2bodydist y = [-20,-100]
trigger1 = p2movetype != H

;空中逆投げ
[State -1, *]
type = ChangeState
value = 855
triggerall = command = "b" && command = "hold4"
triggerall = statetype = A && ctrl
trigger1 = p2bodydist X = [-1,30]
;trigger1 = p2bodydist y = [-20,-100]
trigger1 = p2movetype != H

;空P
[State -1, *]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A  && ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = MoveContact > 0
trigger3 = stateno = 600 && AnimElem = 4,>= 0
trigger4 = time > 3
trigger4 = stateno = [110,115]

;空K
[State -1, *]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A  && ctrl
trigger2 = stateno = 600 || stateno = 620
trigger2 = MoveContact > 0
trigger3 = time > 3
trigger3 = stateno = [110,115]
trigger4 = stateno = 610 && AnimElem = 6,>= 4 && var(27) = 1 && MoveContact = 0

;空S
[State -1, *]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A  && ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = MoveContact > 0
trigger3 = stateno = [110,115]
trigger4 = var(27) = 1 && stateno = 620 && AnimElem = 6,>= 0

;空HS
[State -1, *]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A  && ctrl
trigger2 = stateno = 600 || stateno = 620
trigger2 = MoveContact > 0
trigger3 = stateno = [110,115]

;地上ジャンプキャンセル
[State -1, *]
type = ChangeState
value = 40
trigger1 = command = "holdup" && MoveContact > 0
trigger1 = stateno = 220 || stateno = 240 || stateno = 430
trigger2 = stateno = 200 || stateno = 210
trigger2 = command = "holdup" && MoveContact > 0 && var(27) = 0
trigger3 = command = "holdup" && stateno = 100

