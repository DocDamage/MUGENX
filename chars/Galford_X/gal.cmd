; ガルフォード（修羅･羅刹） コマンド設定ファイル
;==[ボタン配置]==========================================================
;以下を変更することによりボタン配置を変更できます。
;------------------------------------------------------------------------
[Remap]
x = x	;A+B同時押し(避け、回り込み)
y = y	;C+D同時押し(連ね斬導入)
z = z	;蹴り(D)
a = a	;弱斬(A)
b = b	;中斬(B)
c = c	;強斬(C)
s = s	;スタート

;------------------------------------------------------------------------
;ここまで
;========================================================================
;=| AI |=================================================================
[Command]
name = "AI001"
command = U,U,F,B,F,B,D,D,a,b
time = 1

[Command]
name = "AI002"
command = U,U,F,B,F,B,D,D,b,c
time = 1

[Command]
name = "AI003"
command = U,U,F,B,F,B,D,D,c,x
time = 1

[Command]
name = "AI004"
command = U,U,F,B,F,B,D,D,x,y
time = 1

[Command]
name = "AI005"
command = U,U,F,B,F,B,D,D,y,z
time = 1

[Command]
name = "AI006"
command = U,U,F,B,F,B,D,D,z,s
time = 1

[Command]
name = "AI007"
command = U,U,D,D,B,F,B,F,s,s
time = 1

[Command]
name = "AI008"
command = U,U,D,D,B,F,B,F,a,a
time = 1

[Command]
name = "AI009"
command = U,U,D,D,B,F,B,F,b,b
time = 1

[Command]
name = "AI010"
command = U,U,D,D,B,F,B,F,c,c
time = 1

[Command]
name = "AI011"
command = U,U,D,D,B,F,B,F,x,x
time = 1

[Command]
name = "AI012"
command = U,U,D,D,B,F,B,F,y,y
time = 1

[Command]
name = "AI013"
command = U,D,U,D,B,F,U,F,z,z
time = 1

[Command]
name = "AI014"
command = U,D,U,D,B,F,D,U,z,z
time = 1

[Command]
name = "AI015"
command = U,U,D,D,B,F,D,F,z,z
time = 1

[Command]
name = "AI016"
command = U,D,F,B,F,U,D,D,z,s
time = 1

[Command]
name = "AI017"
command = U,F,F,U,U,U,B,F,s,s
time = 1

[Command]
name = "AI018"
command = U,U,B,B,F,U,U,D,a,a
time = 1

[Command]
name = "AI019"
command = U,U,D,B,U,U,U,F,b,b
time = 1

[Command]
name = "AI020"
command = U,U,D,U,B,U,F,U,c,c
time = 1

[Command]
name = "AI021"
command = U,U,D,D,U,U,B,F,x,x
time = 1

[Command]
name = "AI022"
command = U,U,D,D,B,F,U,U,y,y
time = 1

[Command]
name = "AI023"
command = U,D,U,D,D,B,U,U,z,z
time = 1

[Command]
name = "AI024"
command = U,D,U,D,B,F,U,U,z,z
time = 1

[Command]
name = "AI025"
command = U,U,D,B,B,F,U,U,z,z
time = 1

[Command]
name = "AI026"
command = D,D,U,B,F,U,U,U,z,s
time = 1

[Command]
name = "AI027"
command = D,F,B,U,U,U,B,F,s,s
time = 1

[Command]
name = "AI028"
command = D,U,U,B,F,U,U,D,a,a
time = 1

[Command]
name = "AI029"
command = D,U,D,U,B,U,U,F,b,b
time = 1

[Command]
name = "AI030"
command = D,U,U,U,B,U,F,U,c,c
time = 1

;==[一閃]===================================================
[Command]
name = "BCD"
command = b+c+z

[Command]
name = "BCD"
command = b+y


;==[怒り爆発]===================================================
[Command]
name = "ABC"
command = a+b+c

[Command]
name = "ABC"
command = c+x


;==[修羅･羅刹チェンジ]===================================================
[Command]
name = "sr_change"
command =~B, D, F, z


;==[武器飛ばし技]========================================================
[Command]
name = "right_s"
command = ~B, F, D, a      	;ライトニングストライク

[Command]
name = "right_s"
command = ~B, F, D, b      	;ライトニングストライク

[Command]
name = "dms_f"
command = ~B, F, D, a      	;ダブルメガストライクへッズ(前)

[Command]
name = "dms_b"
command = ~B, F, D, b      	;ダブルメガストライクへッズ(後)

[Command]
name = "pb_s"
command = ~B, F, D, c      	;プラズマブレード激

;==[必殺技]=============================================================
;--[ストライクヘッズ]---------------------------------------------------
[Command]
name = "sh"
command =~F, D, DF, a

[Command]
name = "sh"
command =~F, D, DF, b

[Command]
name = "sh"
command =~F, D, DF, c


;--[プラズマブレード]---------------------------------------------------
[Command]
name = "pb_a"
command = ~D, F, a	;（弱)

[Command]
name = "pb_b"
command = ~D, F, b	;（中） 

[Command]
name = "pb_c"
command = ~D, F, c	;（強）


;--[プラズマブレイク]---------------------------------------------------
[Command]
name = "pbreak"       ;Required (do not remove)
command = a,a
time = 12

[Command]
name = "pbreak"       ;Required (do not remove)
command = b,b
time = 12

[Command]
name = "pbreak"       ;Required (do not remove)
command = c,c
time = 12

;--[プラズマファクター]-------------------------------------------------
[Command]
name = "spf"
command =~D, F, a		;上段プラズマファクター

[Command]
name = "cpf"
command =~D, F, b		;下段プラズマファクター


;--[ライトニングスラッシュ]---------------------------------------------------
[Command]
name = "rs"
command =~D, F, c


;--[ラッシュドッグ]---------------------------------------------------
[Command]
name = "rd_a"
command = ~D, B, a


;--[マシンガンドッグ]---------------------------------------------------
[Command]
name = "rd_b"
command = ~D, B, b


;--[レプリカドッグ]---------------------------------------------------
[Command]
name = "rd_c"
command = ~D, B, c


;--[オーバーヘッドクラッシュ]---------------------------------------------------
[Command]
name = "rd_d"
command = ~D, B, z


;==[簡易コマンド]=============================================================
[Command]
name = "AB+"
command = /F,x			;避け
time = 1

[Command]
name = "AB"
command = /B,x			;避け
time = 1

[Command]
name = "CD"
command = y			;連斬導入
time = 1

;==[特殊コマンド]=============================================================
[Command]
name = "CD"
command = c+z			;連斬導入
time = 1

[Command]
name = "CD"
command = /F,c+z		;連斬導入
time = 1

[Command]
name = "fwd_z"
command = /F,z			;スライディングキック
time = 1

[Command]
name = "downfwd_z"
command = /DF,z			;ダウンキック
time = 1

[Command]
name = "BC"
command = /B,b+c		;バックBCアタック
time = 1

[Command]
name = "BC"
command = /F,b+c		;BCアタック
time = 1

[Command]
name = "AB+"
command = /F,a+b		;避け
time = 1

[Command]
name = "AB"
command = /B,a+b		;避け
time = 1


;==[2度押し]=============================================================
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "yy"       ;Required (do not remove)
command = y, y
time = 1

[Command]
name = "zz"       ;Required (do not remove)
command = z, z
time = 1

;==[ボタン同時押し]=============================================================
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

;[Command]
;name = "ab"
;command = a+b
;time = 1

;==[方向キー+ボタン]=============================================================
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
name = "up_a"
command = /U,a
time = 5

[Command]
name = "up_b"
command = /U,b
time = 5

[Command]
name = "up_c"
command = /U,c
time = 5

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

;[Command]
;name = "fwd_ab"
;command = /F, a+b
;time = 1

;[Command]
;name = "back_ab"
;command = /B, a+b
;time = 1

;---------------------------------------------
;追い討ち用
;---------------------------------------------
[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "downfwd_c"
command = /DF,c
time = 1

;==[ボタン]=============================================================
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

;==[方向キー]=============================================================
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

;---------------------------------------------------------------------------
; 2. コマンド実行条件
;---------------------------------------------------------------------------
;
; 基本的な書き方:
;
;   [State -1]                  ;変えないでください
;   type = ChangeState          ;変えないでください
;   value = new_state_number  ;コマンドが入力された時に実行されるステイト番号
;   trigger1 = command = command_name ;入力キーの指定で設定したコマンドの名前
;   . . .  (追加で条件を指定できます)
;
; - 以下のトリガーを知っておくと便利でしょう。
;
;   - statetype
;       S, C or A : プレイヤーがどの状態か (立ち状態, しゃがみ, 空中)
;   - ctrl
;       0 or 1 : 1 なら、プレイヤーにコントロールがある時だけ実行されます
;   - stateno
;      プレイヤーのステイト番号
;   - movecontact
;       0 or 1 : 1 なら、相手に攻撃が当たっている時にだけ実行されます
;
; トリガーのリファレンスはCNSの公式ドキュメントを参照してください。

; ※次の一行は消さないでください。（CMDの必須です）
[Statedef -1]

;===========================================================================
;AI設定
;---------------------------------------------------------------------------
[State -1, AI]
type = VarSet
triggerall = var(40) = 0
triggerall = RoundState != 3
trigger1 = command = "AI001"
trigger2 = command = "AI002"
trigger3 = command = "AI003"
trigger4 = command = "AI004"
trigger5 = command = "AI005"
trigger6 = command = "AI006"
trigger7 = command = "AI007"
trigger8 = command = "AI008"
trigger9 = command = "AI009"
trigger10 = command = "AI010"
trigger11 = command = "AI011"
trigger12 = command = "AI012"
trigger13 = command = "AI013"
trigger14 = command = "AI014"
trigger15 = command = "AI015"
trigger16 = command = "AI016"
trigger17 = command = "AI017"
trigger18 = command = "AI018"
trigger19 = command = "AI019"
trigger20 = command = "AI020"
trigger21 = command = "AI021"
trigger22 = command = "AI022"
trigger23 = command = "AI023"
trigger24 = command = "AI024"
trigger25 = command = "AI025"
trigger26 = command = "AI026"
trigger27 = command = "AI027"
trigger28 = command = "AI028"
trigger29 = command = "AI029"
trigger30 = command = "AI030"
var(40) = 1

;===========================================================================
;怒り爆発
[State -1]
type = ChangeState
value = 3500
triggerall = command = "ABC"
trigger1 = roundstate = 2
trigger1 = var(25) = 0 || var(25) = 1
trigger1 = var(40) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;一閃
[State -1]
type = ChangeState
value = 4500
triggerall = command = "BCD"
triggerall = var(25) = 2
triggerall = var(40) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;[属性チェンジ]===========================================================================
;修羅･羅刹チェンジ
[State -1]
type = ChangeState
value = 2900
triggerall = command = "sr_change"
triggerall = var(59) = 1
triggerall = var(40) = 0
trigger1= statetype != A
trigger1 = ctrl = 1

;[超必殺技]===========================================================================
;ライトニングストライクスリー
[State -1]
type = ChangeState
value = 3100
triggerall = command = "right_s"
triggerall = var(25) = 1 || var(25) = 2
triggerall = var(50) = 1
;triggerall = power >= 1000
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;ダブルメガストライクへッズ(前)
[State -1]
type = ChangeState
value = 3200
triggerall = command = "dms_f"
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
triggerall = stateno != 47
triggerall = var(25) = 1 || var(25) = 2
triggerall = var(50) = 0
;triggerall = power >= 1000
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;ダブルメガストライクへッズ(後)
[State -1]
type = ChangeState
value = 3300
triggerall = command = "dms_b"
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
triggerall = stateno != 47
triggerall = var(25) = 1 || var(25) = 2
triggerall = var(50) = 0
;triggerall = power >= 1000
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;プラズマブレード激
[State -1]
type = ChangeState
value = 3000
triggerall = command = "pb_s"
triggerall = var(25) = 1 || var(25) = 2
triggerall = numproj = 0
;triggerall = power >= 1000
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;[必殺技]===========================================================================
;ストライクへッズ
[State -1]
type = ChangeState
value = 1700
triggerall = command = "sh"
triggerall = var(50) = 1
triggerall = statetype != A 
triggerall = p2bodydist X < 6 ;　　相手との距離が 6ドット以内である事
triggerall = p2statetype != A ;　　　相手が空中でない時
triggerall = p2movetype != H ;　　相手が攻撃を受けていない事（ガード含む）
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;プラズマブレード(弱)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "pb_a"
triggerall = var(50) = 0
triggerall = numproj = 0
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;プラズマブレード(中)
[State -1]
type = ChangeState
value = 1001
triggerall = command = "pb_b"
triggerall = var(50) = 0
triggerall = numproj = 0
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;プラズマブレード(強)
[State -1]
type = ChangeState
value = 1002
triggerall = command = "pb_c"
triggerall = var(50) = 0
triggerall = numproj = 0
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;上段プラズマファクター
[State -1]
type = ChangeState
value = 1500
triggerall = command = "spf"
triggerall = var(50) = 1
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;下段プラズマファクター
[State -1]
type = ChangeState
value = 1550
triggerall = command = "cpf"
triggerall = var(50) = 1
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;プラズマブレイク
[State -1]
type = ChangeState
value = 1600
triggerall = command = "pbreak"
triggerall = command ="holdfwd"
triggerall = var(50) = 1
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261
trigger3 = movecontact
trigger4 = stateno >= 400
trigger4 = stateno <= 410
trigger4 = movecontact


;---------------------------------------------------------------------------
;ライトニングスラッシュ
[State -1]
type = ChangeState
value = 1800
triggerall = command = "rs"
triggerall = var(50) = 1
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;ラッシュドッグ
[State -1]
type = ChangeState
value = 6050
triggerall = command = "rd_a"
triggerall = var(50) = 0
triggerall = NumHelper(6000) = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6021
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;マシンガンドッグ
[State -1]
type = ChangeState
value = 6060
triggerall = command = "rd_b"
triggerall = var(50) = 0
triggerall = NumHelper(6000) = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6021
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;レプリカドッグ
[State -1]
type = ChangeState
value = 6070
triggerall = command = "rd_c"
triggerall = var(50) = 0
triggerall = NumHelper(6000) = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6021
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;---------------------------------------------------------------------------
;オーバーヘッドクラッシュ
[State -1]
type = ChangeState
value = 6080
triggerall = command = "rd_d"
triggerall = var(50) = 0
triggerall = NumHelper(6000) = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6021
trigger1= statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 205
trigger2 = movecontact
trigger3 = stateno = 215 || stateno = 230 || stateno = 250 || stateno = 261 || stateno = [265,266]
trigger3 = movecontact
trigger4 = stateno >= 280
trigger4 = stateno <= 281
trigger4 = movecontact
trigger5 = stateno >= 400
trigger5 = stateno <= 410
trigger5 = movecontact
trigger6 = stateno = [278,280]
trigger6 = movecontact

;===========================================================================
;特殊&基本技
;===========================================================================
;踏み込み
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;飛びのき
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;連斬導入
[State -1]
type = ChangeState
value = 250
triggerall = command = "CD"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;BCアタック
[State -1]
type = ChangeState
value = 650
triggerall = command = "BC"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;起き上がり前転
[State -1]
type = ChangeState
value = 700
triggerall = Life > 0 && Time > 8
trigger1 = command = "holdfwd"
trigger1 = stateno = 5110

;---------------------------------------------------------------------------
;起き上がり後転
[State -1]
type = ChangeState
value = 710
triggerall = Life > 0 && Time > 8
trigger1 = command = "holdback"
trigger1 = stateno = 5110

;---------------------------------------------------------------------------
;クイック起き上がり
[State -1]
type = ChangeState
value = 720
triggerall = Life > 0 && Time > 7
trigger1 = command = "holdup"
trigger1 = stateno = 5110


;---------------------------------------------------------------------------
;投げ(押し)
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 10
trigger1 = command = "fwd_c"  ;Command
trigger3 = command = "fwd_c"   ;Near, p2 stand
trigger3 = stateno != 100    ;Not running
trigger3 = p2bodydist X < 1
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "fwd_c"   ;Near, p2 crouch
trigger4 = stateno != 100    ;Not running
trigger4 = p2bodydist X < 1
trigger4 = p2statetype = C
trigger4 = p2movetype != H
trigger5 = command = "fwd_c"  ;Near, p2 stand
trigger5 = p2bodydist X < 2
trigger5 = p2statetype = S
trigger5 = p2movetype != H
trigger6 = command = "fwd_c"  ;Near, p2 crouch
trigger6 = p2bodydist X < 2
trigger6 = p2statetype = C
trigger6 = p2movetype != H


;---------------------------------------------------------------------------
;投げ(引き)
[State -1]
type = ChangeState
value = 920
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 10
trigger1 = command = "back_c"  ;Command
trigger3 = command = "back_c"   ;Near, p2 stand
trigger3 = stateno != 100    ;Not running
trigger3 = p2bodydist X < 1
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_c"   ;Near, p2 crouch
trigger4 = stateno != 100    ;Not running
trigger4 = p2bodydist X < 1
trigger4 = p2statetype = C
trigger4 = p2movetype != H
trigger5 = command = "back_c"  ;Near, p2 stand
trigger5 = p2bodydist X < 2
trigger5 = p2statetype = S
trigger5 = p2movetype != H
trigger6 = command = "back_c"  ;Near, p2 crouch
trigger6 = p2bodydist X < 2
trigger6 = p2statetype = C
trigger6 = p2movetype != H

;---------------------------------------------------------------------------
;回り込み(前AB）
[State -1]
type = ChangeState
value = 670
triggerall = command = "AB+"
triggerall = statetype = S ;　　通常状態である事が条件
triggerall = ctrl = 1 ;　　　　　　コントロール可能である事が条件
trigger1 = stateno != 100 ;　　　　走っていない事が条件
trigger1 = p2bodydist X < 8 ;　　相手との距離が 8ドット以内である事
trigger1 = p2statetype = S ;　　　相手が立っている事
trigger1 = p2movetype != H ;　　相手が攻撃を受けていない事（ガード含む）

;---------------------------------------------------------------------------
;避け(前AB）
[State -1]
type = ChangeState
value = 660
triggerall = command = "AB+"
triggerall = statetype = S ;　　通常状態である事が条件
triggerall = ctrl = 1 ;　　　　　　コントロール可能である事が条件
trigger1 = stateno != 100 ;　　　　走っていない事が条件
trigger1 = p2bodydist X > 9 ;　　相手との距離が 8ドット以上である事

;---------------------------------------------------------------------------
;避け(後ろAB）
[State -1]
type = ChangeState
value = 660
triggerall = command = "AB"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;追い討ち・小
[State -1]
type = ChangeState
value = 770
triggerall = statetype != A
triggerall = command = "downfwd_a" || command = "downfwd_b" || command = "downfwd_c"
trigger1 = p2statetype = L
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;追い討ち・大
[State -1]
type = ChangeState
value = 780
triggerall = command = "up_a" || command = "up_b" || command = "up_c"
trigger1 = pos Y > -40 && pos Y < 0
trigger1 = p2statetype = L
trigger1 = ctrl = 1
trigger2 = stateno = [40,45]
trigger2 = p2statetype = L

;===========================================================================
;走り攻撃
;---------------------------------------------------------------------------
;走り弱斬
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno = 100
triggerall = ctrl = 1
trigger1 = statetype = S


;---------------------------------------------------------------------------
;走り中斬
[State -1]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno = 100
triggerall = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------
;走り大斬
[State -1]
type = ChangeState
value = 320
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno = 100
triggerall = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------
;走り蹴り
[State -1]
type = ChangeState
value = 330
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = stateno = 100
triggerall = ctrl = 1
trigger1 = statetype = S

;===========================================================================
;近距離攻撃
;---------------------------------------------------------------------------
;近距離弱斬り
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = statetype = S ;　　通常状態である事が条件
triggerall = ctrl = 1 ;　　　　　　コントロール可能である事が条件
trigger1 = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = p2bodydist X < 50 ;　　
;trigger1 = p2statetype = S ;　　　相手が立っている事
;trigger1 = p2movetype != H ;　　相手が攻撃を受けていない事（ガード含む）

;---------------------------------------------------------------------------
;近距離中斬り
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = statetype = S ;　　通常状態である事が条件
triggerall = ctrl = 1 ;　　　　　　コントロール可能である事が条件
trigger1 = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = p2bodydist X < 60 ;　　
;trigger1 = p2statetype = S ;　　　相手が立っている事
;trigger1 = p2movetype != H ;　　相手が攻撃を受けていない事（ガード含む）

;---------------------------------------------------------------------------
;近距離大斬り
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = statetype = S ;　　通常状態である事が条件
triggerall = ctrl = 1 ;　　　　　　コントロール可能である事が条件
trigger1 = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = p2bodydist X < 60 ;　　
;trigger1 = p2statetype = S ;　　　相手が立っている事
;trigger1 = p2movetype != H ;　　相手が攻撃を受けていない事（ガード含む）

;===========================================================================
;特殊蹴り
;---------------------------------------------------------------------------
;立ちこかし蹴り
[State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_z"
triggerall = command != "holddown"
triggerall = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;屈ふっとばし蹴り
[State -1]
type = ChangeState
value = 440
triggerall = command = "downfwd_z"
triggerall = command = "holddown"
triggerall = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = statetype = C
trigger1 = ctrl = 1


;===========================================================================
;基本動作
;===========================================================================
;弱斬
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;中斬
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;強斬
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;弱蹴り
[State -1]
type = ChangeState
value = 230
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = stateno != [100,101] ;　　　　走っていない事が条件
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;屈弱斬
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 440 ;しゃがみダウンキック
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;屈中斬
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;屈強斬
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;屈弱蹴り
[State -1]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;飛び弱斬
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;飛び中斬
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;飛び強斬
[State -1]
type = ChangeState
value = 620
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;飛び弱蹴り
[State -1]
type = ChangeState
value = 630
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 10000
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

