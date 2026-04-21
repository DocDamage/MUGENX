; カンフーマンの入力コマンド定義ファイルです。
; コマンドの入力キーを設定するパートと、技を実行するための条件を設定するパートに分かれています。
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
; 後は実際に登録されているものを参照してください。
;==============================================================================

;-| ボタン配置 |-----------------------------------------------------
;各ボタンの配置を簡単に変更できます。
;このキャラクターのボタン配置を変えたいときなどに使います。
;x = x を x = a に変えれば、xがaに変わります。

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| 標準化 |-------------------------------------------------------
[Defaults]
; timeを記述しなかった場合、以下の値が参照されます。最小値は1です。
command.time = 15

; buffer.timeの値です。1～30まで設定できます。
; 普通は1です。
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| MAX超必殺技 |--------------------------------------------------------------

[Command]
name = "MAXアルティメットビースト"
command = ~D, DF, F, D, DF, F, a+b
time = 25

[Command]
name = "アルティメットイリュージョン"
command = ~x,a,y
time = 20

;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "弱アルティメットビースト"
command = ~D, DF, F, D, DF, F, a
time = 25

[Command]
name = "強アルティメットビースト"
command = ~D, DF, F, D, DF, F, b
time = 25

[Command]
name = "弱アルティメットキャノン"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "強アルティメットキャノン"
command = ~D, DF, F, D, DF, F, y
time = 25

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "バーニングクロー"
command = ~F, DF, D, DB, B, F, x
time = 25

[Command]
name = "バーニングクロー"
command = ~F, DF, D, DB, B, F, y
time = 25

[Command]
name = "フリージングクロー"
command = ~F, DF, D, DB, B, F, a
time = 25

[Command]
name = "フリージングクロー"
command = ~F, DF, D, DB, B, F, b
time = 25

[Command]
name = "無敵の鉄壁"
command = ~B, D, DB, x

[Command]
name = "無敵の鉄壁"
command = ~B, D, DB, y

[Command]
name = "弱サンダーブロー"
command = ~F, D, DF, x

[Command]
name = "強サンダーブロー"
command = ~F, D, DF, y

[Command]
name = "弱ローリングスマッシュ"    
command = ~F, D, DF, a

[Command]
name = "強ローリングスマッシュ"    
command = ~F, D, DF, b

[Command]
name = "弱憎き肉片"
command = ~D, DB, B, x

[Command]
name = "強憎き肉片"
command = ~D, DB, B, y

[Command]
name = "這い寄る敗北"
command = ~D, DB, B, a

[Command]
name = "這い寄る敗北"
command = ~D, DB, B, b

[Command]
name = "弱ソニックセイバー"
command = ~D, DF, F, x

[Command]
name = "強ソニックセイバー"
command = ~D, DF, F, y

[Command]
name = "弱グランドセイバー"
command = ~D, DF, F, a

[Command]
name = "強グランドセイバー"
command = ~D, DF, F, b

[Command]
name = "jump"    
command = D, $U
time = 12

[Command]
name = "recovery"
command = z
time = 1

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x+a
time = 1

[Command]
name = "投げ"
command = y+b
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
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

;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■AI(CPU)はどう動くのか
;MUGENの標準CPUは相手に近づき適当に攻撃を繰り出すだけなので、AIスイッチによる制御が必要なこともあります。
;
;■[Statedef -1]とは？
;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------

[Statedef -1];←この行は絶対に消さないでください。必須の項目です。

;==============================================================================
;MAXアルティメットビースト
[State -1, MAX U B]
type = ChangeState
value = 3500
triggerall = command = "MAXアルティメットビースト"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 410 && movecontact

;アルティメットイリュージョン
[State -1, U I]
type = ChangeState
value = 4000
triggerall = command = "アルティメットイリュージョン"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;強アルティメットビースト
[State -1, S U B]
type = ChangeState
value = 3100
triggerall = command = "強アルティメットビースト"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 410 && movecontact

;弱アルティメットビースト
[State -1, L U B]
type = ChangeState
value = 3000
triggerall = command = "弱アルティメットビースト"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;強アルティメットキャノン
[State -1, S U kanon]
type = ChangeState
value = 2100
triggerall = command = "強アルティメットキャノン"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 410 && movecontact

;弱アルティメットキャノン
[State -1, L U kanon]
type = ChangeState
value = 2000
triggerall = command = "弱アルティメットキャノン"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 410 && movecontact

;===========================================================================
;バーニングクロー
[State -1, B]
type = ChangeState
value = 1200
triggerall = command = "バーニングクロー"
trigger1 = statetype != A
trigger1 = ctrl

;フリージングクロー
[State -1, F]
type = ChangeState
value = 1300
triggerall = command = "フリージングクロー"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;無敵の鉄壁
[State -1, Muteki]
type = ChangeState
value = 1500
triggerall = command = "無敵の鉄壁"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;弱ローリングスマッシュ
[State -1, L L S]
type = ChangeState
value = 1400
triggerall = command = "弱ローリングスマッシュ"
trigger1 = statetype != A
trigger1 = ctrl

;強ローリングスマッシュ
[State -1, S L S]
type = ChangeState
value = 1410
triggerall = command = "強ローリングスマッシュ"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;弱サンダーブロー
[State -1, L Thunder]
type = ChangeState
value = 1100
triggerall = command = "弱サンダーブロー"
triggerall = statetype != A
trigger1 = ctrl

;強サンダーブロー
[State -1, S Thunder]
type = ChangeState
value = 1110
triggerall = command = "強サンダーブロー"
triggerall = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;弱憎き肉片
[State -1, L Nikuhen]
type = ChangeState
value = 1600
triggerall = command = "弱憎き肉片"
triggerall = numprojID(1600) = 0
triggerall = numprojID(1610) = 0
triggerall = numprojID(1620) = 0
triggerall = numprojID(1630) = 0
trigger1 = statetype != A
trigger1 = ctrl

;強憎き肉片
[State -1, S Nikuhen]
type = ChangeState
value = 1650
triggerall = command = "強憎き肉片"
triggerall = numprojID(1600) = 0
triggerall = numprojID(1610) = 0
triggerall = numprojID(1620) = 0
triggerall = numprojID(1630) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;這い寄る敗北
[State -1, Haiyoru]
type = ChangeState
value = 1800
triggerall = command = "這い寄る敗北"
triggerall = numhelper(1800) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;弱グランドセイバー
[State -1, L G S]
type = ChangeState
value = 1020
triggerall = command = "弱グランドセイバー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact

;強グランドセイバー
[State -1, S G S]
type = ChangeState
value = 1030
triggerall = command = "強グランドセイバー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;弱ソニックセイバー
[State -1, L S S]
type = ChangeState
value = 1000
triggerall = command = "弱ソニックセイバー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact

;強ソニックセイバー
[State -1, S S S]
type = ChangeState
value = 1010
triggerall = command = "強ソニックセイバー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;弱メテオスマッシュ
[State -1, L G S]
type = ChangeState
value = 1700
triggerall = command = "弱グランドセイバー"
triggerall = statetype = A
trigger1 = ctrl

;強メテオスマッシュ
[State -1, S G S]
type = ChangeState
value = 1710
triggerall = command = "強グランドセイバー"
triggerall = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;露骨な肋骨
[State -1, rokotu]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact

;強スライディング
[State -1, kick]
type = ChangeState
value = 270
triggerall = command = "a+b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact

;中スライディング
[State -1, kick]
type = ChangeState
value = 265
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact

;弱スライディング
[State -1, kick]
type = ChangeState
value = 260
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact

;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;GCフロントステップ
[State -1, T S]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;タクティカルステップ
[State -1, T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ガードキャンセルタクティカルステップ
[State -1, GC T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ACタクティカルステップ
[State -1, AC T S]
type = ChangeState
value = 700
triggerall = command = "recovery"
triggerall = power >= 1000
trigger1 = stateno = [200,246]

;------------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "投げ"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
;受身
[State -1, UKEMI]
type = ChangeState
value = 52000
triggerall = command = "recovery"
trigger1 = stateno = 5050
trigger1 = pos y > -45

;---------------------------------------------------------------------------
;ガードキャンセルふっとばし
[State -1, GC H]
type = ChangeState
value = 750
triggerall = command = "c"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;==============================================================================
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 25
trigger1 = ctrl
trigger2 = stateno = 700

;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700

;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 30
trigger1 = ctrl
trigger2 = stateno = 700

;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700

;------------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 25
trigger1 = ctrl
trigger2 = stateno = 700

;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700

;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X < 30
trigger1 = ctrl
trigger2 = stateno = 700

;遠距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact

;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;------------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = stateno != 105  ;バックステップ中は禁止
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜めジャンプ弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = command = "x"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;垂直空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "y"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜め空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜めジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "a"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;垂直ジャンプ強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;斜めジャンプ強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
triggerall = stateno != 105
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;三角飛び
[State -1]
type = ChangeState
value = 48
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger1 = stateno != 60
trigger1 = backedgebodydist < 4
trigger1 = pos y < -15

[State -1]
type = ChangeState
value = 49
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = statetype = A
trigger1 = stateno = 50
trigger1 = stateno != 60
trigger1 = frontedgebodydist < 4
trigger1 = pos y < -15

