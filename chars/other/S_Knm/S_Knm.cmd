; Shin Kaname Ameri - Command File
;===========================================================================
; コマンド設定ファイルは、2つのパートから成り立っています。
; コマンドに使用する入力キーを指定する部分と、コマンドが実行される条件を指定する
; パートに別れます。
; 先に書かれた物ほど、優先順位が高くなるので注意してください。
;===========================================================================
;---------------------------------------------------------------------------
; 1. 入力キーの指定
;---------------------------------------------------------------------------
;
; 注意：　入力キーの指定や、コマンドの名前には大文字と小文字の区別が必要です。
;
; 方向キーの指定:
;   B, DB, D, DF, F, UF, U, UB     (全て大文字で)
;   それぞれ、 back, down-back, down, downforward, のようになっています。
; 6ボタン:
;   a, b, c, x, y, z               (全て小文字で)
;
; - コマンドの指定方法
;   方向キーとボタンはカンマ（ , ）で区切ります。
;   特殊文字を先に置くことにより、コマンドの指示ができます。
;
;   スラッシュ (/) - ボタンを押しっぱなしにする
;          例. command = /D       ;下方向に入力されたままの状態
;               command = /F, a    ;前方向を入力した状態でaボタンを押す
;
;   チルダ (~) - ボタンが放される
;          例. command = ~a       ;aボタンが離される
;               command = ~D, F, a ;下方向が離された後、前方向が入力されて、aボタン
;
;          数字を指定することで、入力時間を指定できます
;          例. command = ~30a     ;30フレームaボタンを押しっぱなしにした後で放す
;               command = ~30
;
;   ドル ($) - 複数方向指示
;          例. command = $D       ;D, DB または DF を含みます
;               command = $B       ; B, DB または UB を含みます
;
;   プラス (+) - ボタンの同時押し
;          例. command = a+b      ;ab同時押し
;               command = x+y+z    ;xyz同時押し
;
;   これらは、組み合わせて使用することも可能です
;     例. command = ~30$D, a+b     ;下方向（ D,DB,DFいずれか ）に30フレーム入力して
;                                  　　　　　　　放した後に、ab同時押し
;
; - time (オプション)
;   時間以内にコマンドを入力する必要のある時に使用します。
;
;==============================================================================
;-| 入力コマンドデフォルト設定 |-----------------------------------------------

; ここの設定はＬＩＮＵＸ版用です。
; ＬＩＮＵＸ版での旧キャラ使用時は下記の記述を追加した方がいいかも。

[Defaults]
command.time = 15        ;設定しない時のデフォルトのコマンド入力受付時間。絶対値で必ず１フレームから。
command.buffer.time = 1  ;設定しない時のデフォルトのコマンド緩衝記憶時間。入力したコマンドの持続時間なのかな？
                         ;最低1フレーム、最高30フレームです。
;=============================================================================
;-| ＣＰＵ判定用フラグ |------------------------------------------------------

[Command]
name = "KnmAI"
command = U,U,D,D,B,F,B,F,a,a
time = 1

[Command]
name = "KnmAI0"
command = U,U,D,D,B,F,B,F,b,b
time = 1

[Command]
name = "KnmAI1"
command = U,U,D,D,B,F,B,F,c,c
time = 1

[Command]
name = "KnmAI2"
command = U,U,D,D,B,F,B,F,x,x
time = 1

[Command]
name = "KnmAI3"
command = U,U,D,D,B,F,B,F,y,y
time = 1

[Command]
name = "KnmAI4"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI5"
command = U,U,D,D,B,F,B,F,s,s
time = 1

[Command]
name = "KnmAI6"
command = U,U,D,D,B,F,B,F,z,z,z
time = 1

[Command]
name = "KnmAI7"
command = U,U,D,D,B,F,B,F,z,z,z,z
time = 1

[Command]
name = "KnmAI8"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI9"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI10"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI11"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI12"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI13"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI14"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI15"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI16"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI17"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI18"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI19"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI20"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI21"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI22"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI23"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "KnmAI24"
command = U,D,B,F,U,D,B,F
time = 1

[Command]
name = "KnmAI25"
command = U,U,D,D,B,F,B,F
time = 1

[Command]
name = "KnmAI26"
command = U, D, B, F, U, D, B, F, s, s
time = 1

[Command]
name = "KnmAI27"
command = U, D, B, F, U, D, B, F, a, a
time = 1

[Command]
name = "KnmAI28"
command = U, D, B, F, U, D, B, F, b, b
time = 1

[Command]
name = "KnmAI29"
command = U, D, B, F, U, D, B, F, c, c
time = 1

[Command]
name = "KnmAI30"
command = U, D, B, F, U, D, B, F, x, x
time = 1

[Command]
name = "KnmAI31"
command = U, D, B, F, U, D, B, F, y, y
time = 1

[Command]
name = "KnmAI32"
command = U, D, B, F, U, D, B, F, z, z
time = 1

;===================================
[Command]
name = "KnmAI33"
command = a, a
time = 0

[Command]
name = "KnmAI34"
command = b, b
time = 0

[Command]
name = "KnmAI35"
command = c, c
time = 0

[Command]
name = "KnmAI36"
command = x, x
time = 0

[Command]
name = "KnmAI37"
command = y, y
time = 0

[Command]
name = "KnmAI38"
command = z, z
time = 0

[Command]
name = "KnmAITaunt"
command = s, s
time = 0

;==================
[Command]
name = "KnmAI39"
command = U, U
time = 0

[Command]
name = "KnmAI40"
command = UF, UF
time = 0

[Command]
name = "KnmAI41"
command = F, F
time = 0

[Command]
name = "KnmAI42"
command = DF, DF
time = 0

[Command]
name = "KnmAI43"
command = D, D
time = 0

[Command]
name = "KnmAI44"
command = DB, DB
time = 0

[Command]
name = "KnmAI45"
command = B, B
time = 0

[Command]
name = "KnmAI46"
command = UB, UB
time = 0

;======================
[Command]
name = "KnmAI47"
command = U, D
time = 0

[Command]
name = "KnmAI48"
command = UF, DB
time = 0

[Command]
name = "KnmAI49"
command = F, B
time = 0

[Command]
name = "KnmAI50"
command = DF, UB
time = 0

[Command]
name = "KnmAI51"
command = D, U
time = 0

[Command]
name = "KnmAI52"
command = DB, UF
time = 0

[Command]
name = "KnmAI53"
command = B, F
time = 0

[Command]
name = "KnmAI54"
command = UB, DF
time = 0

;***********************************
;カスタムＡＩ手動発動

[Command]
name = "CustomAI"
command = a+s
time = 15

;============================================================================
;-| ハイパーコンボ |---------------------------------------------------------

;ハイパーコンボ１
[Command]
name = "hyper_1"
command = ~D,DF,F,z
time = 12

[Command]
name = "hyper_1"
command = ~D,DF,F,D,DF,F,x
time = 20

[Command]
name = "hyper_1"
command = ~D,DF,F,D,DF,F,y
time = 20

;***********************************
;ハイパーコンボ２
[Command]
name = "hyper_2"
command = ~D,DB,B,z
time = 12

[Command]
name = "hyper_2"
command = ~D,DB,B,D,DB,B,x
time = 20

[Command]
name = "hyper_2"
command = ~D,DB,B,D,DB,B,y
time = 20

;***********************************
;ハイパーコンボ３
[Command]
name = "hyper_3"
command = ~D,DF,F,c
time = 12

[Command]
name = "hyper_3"
command = ~D,DF,F,D,DF,F,a
time = 20

[Command]
name = "hyper_3"
command = ~D,DF,F,D,DF,F,b
time = 20

;***********************************
;ハイパーコンボ４
[Command]
name = "hyper_4"
command = ~D,DB,B,c
time = 12

[Command]
name = "hyper_4"
command = ~D,DB,B,D,DB,B,a
time = 20

[Command]
name = "hyper_4"
command = ~D,DB,B,D,DB,B,b
time = 20

;============================================================================
;-| 必殺技 |-----------------------------------------------------------------

;必殺技１
[Command]
name = "sp_1_low"
command = ~D,DF,F,x
time = 12

[Command]
name = "sp_1_high"
command = ~D,DF,F,y
time = 12

;***********************************
;必殺技２
[Command]
name = "sp_2_low"
command = ~D,DB,B,x
time = 12

[Command]
name = "sp_2_high"
command = ~D,DB,B,y
time = 12

;***********************************
;必殺技３
[Command]
name = "sp_3_low"
command = ~D,DF,F,a
time = 12

[Command]
name = "sp_3_high"
command = ~D,DF,F,b
time = 12

;***********************************
;必殺技４
[Command]
name = "sp_4_low"
command = ~D,DB,B,a
time = 12

[Command]
name = "sp_4_high"
command = ~D,DB,B,b
time = 12

;============================================================================
;-| 特殊技 |-----------------------------------------------------------------

;クイックスタンディング
[Command]
name = "quick"
command = D
time = 1

;***********************************
;スーパージャンプ
[Command]
name = "super_jump"
command = D,$U
time = 7

;============================================================================
;-| 2度押し |----------------------------------------------------------------

[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;============================================================================
;-| ボタン同時押し |---------------------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

;============================================================================
;-| 方向キー＋ボタン(消しちゃダメ) |------------------------------------------

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

;============================================================================
;-| ボタン(消しちゃダメ) |---------------------------------------------------

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

;============================================================================
;-| 方向キー(消しちゃダメ) |-------------------------------------------------

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

;============================================================================
;---------------------------------------------------------------------------
; 2. コマンド実行条件
;---------------------------------------------------------------------------
;
; 基本的な書き方:
;
;   [State -1]                  ;変えないでください
;   type = ChangeState          ;変えないでください
;   value = new_state_number  ;コマンドが入力された時に実行されるステイト番号
;   trigger1 = command = "command_name";入力キーの指定で設定したコマンドの名前
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
;
;===========================================================================
;---------------------------------------------------------------------------
;※次の一行は消さないでください。（CMDの必須です）

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;眠れる獅子
[State -1, Sleeping Leo]
type = ChangeState
value = 3000
triggerall = command = "hyper_1"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = NumHelper(4000) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = [1000,1010]) && (MoveContact))
trigger4 = ((StateNo = [1100,1110]) && (Time = [7,30]))
trigger5 = ((StateNo = [1200,1201]) && (MoveContact))
trigger6 = ((StateNo = 800) && (MoveContact))

;眠れる獅子（空中）
[State -1, Sleeping Leo (Air)]
type = ChangeState
value = 3010
triggerall = command = "hyper_1"
triggerall = power >= 3000
triggerall = statetype != S
triggerall = statetype != C
triggerall = NumHelper(4000) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))
trigger3 = ((StateNo = [1020,1050]) && (MoveContact))
trigger4 = ((StateNo = [1120,1130]) && (Time = [7,30]))
trigger5 = ((StateNo = 1302) && (MoveContact))

;---------------------------------------------------------------------------
;撃滅鋼皇牙拳（空中斜め版）
[State -1, Air Gekimetsu Kou-ou-ga-ken (Fall-Type)]
type = ChangeState
value = 3020
triggerall = command = "hyper_2"
triggerall = power >= 1000
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))
trigger3 = ((StateNo = [1020,1050]) && (MoveContact))
trigger4 = ((StateNo = [1120,1130]) && (Time = [7,30]))
trigger5 = ((StateNo = 1302) && (MoveContact))

;---------------------------------------------------------------------------
;裂鬼衝破
[State -1, Rekki Shouha]
type = ChangeState
value = 3100
triggerall = command = "hyper_3"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumHelper(4010) = 0
triggerall = NumProjID(3100) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = [1000,1010]) && (MoveContact))
trigger4 = ((StateNo = [1100,1110]) && (Time = [7,30]))
trigger5 = ((StateNo = [1200,1201]) && (MoveContact))
trigger6 = ((StateNo = 800) && (MoveContact))

;裂鬼衝破（空中）
[State -1, Air Rekki Shouha]
type = ChangeState
value = 3110
triggerall = command = "hyper_3"
triggerall = power >= 1000
triggerall = statetype != S
triggerall = statetype != C
triggerall = NumHelper(4010) = 0
triggerall = NumProjID(3100) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))
trigger3 = ((StateNo = [1020,1050]) && (MoveContact))
trigger4 = ((StateNo = [1120,1130]) && (Time = [7,30]))
trigger5 = ((StateNo = 1302) && (MoveContact))

;---------------------------------------------------------------------------
;影遊び
[State -1, Shadow Play]
type = ChangeState
value = 3200
triggerall = command = "hyper_2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = [1000,1010]) && (MoveContact))
trigger4 = ((StateNo = [1100,1110]) && (Time = [7,30]))
trigger5 = ((StateNo = [1200,1201]) && (MoveContact))
trigger6 = ((StateNo = 800) && (MoveContact))

;===========================================================================
;---------------------------------------------------------------------------
;鋼皇牙拳：弱
[State -1, L.Kou-ou-ga-ken]
type = ChangeState
value = 1000
triggerall = command = "sp_1_low"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))

;鋼皇牙拳：強
[State -1, H.Kou-ou-ga-ken]
type = ChangeState
value = 1010
triggerall = command = "sp_1_high"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))

;---------------------------------------------------------------------------
;空中鋼皇牙拳：弱
[State -1, Air L.Kou-ou-ga-ken]
type = ChangeState
value = 1020
triggerall = command = "sp_1_low"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))

;空中鋼皇牙拳：強
[State -1, Air H.Kou-ou-ga-ken]
type = ChangeState
value = 1030
triggerall = command = "sp_1_high"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))

;---------------------------------------------------------------------------
;空中斜め鋼皇牙拳：弱
[State -1, Air L.Kou-ou-ga-ken (Fall-Type)]
type = ChangeState
value = 1040
triggerall = command = "sp_2_low"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))

;空中斜め鋼皇牙拳：強
[State -1, Air H.Kou-ou-ga-ken (Fall-Type)]
type = ChangeState
value = 1050
triggerall = command = "sp_2_high"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;衝破風拳：弱
[State -1, L.Shouha-Huuken]
type = ChangeState
value = 1100
triggerall = command = "sp_3_low"
triggerall = statetype != A
triggerall = NumProjID(1100) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))

;衝破風拳：強
[State -1, H.Shouha-Huuken]
type = ChangeState
value = 1110
triggerall = command = "sp_3_high"
triggerall = statetype != A
triggerall = NumProjID(1100) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))

;---------------------------------------------------------------------------
;空中衝破飃拳：弱
[State -1, Air L.Shouha-Huuken]
type = ChangeState
value = 1120
triggerall = command = "sp_3_low"
triggerall = statetype != S
triggerall = statetype != C
triggerall = NumProjID(1120) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))

;空中衝破飃拳：強
[State -1, Air H.Shouha-Huuken]
type = ChangeState
value = 1130
triggerall = command = "sp_3_high"
triggerall = statetype != S
triggerall = statetype != C
triggerall = NumProjID(1120) = 0
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,699]) && (MoveContact))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;撃砕連邪
[State -1, Gekisai-Renja]
type = ChangeState
value = 1200
triggerall = ((command = "sp_2_low") || (command = "sp_2_high"))
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 810) && (MoveContact))

;---------------------------------------------------------------------------
;堕空刃
[State -1, Dakuu-jin]
type = ChangeState
value = 1300
triggerall = ((command = "sp_4_low") || (command = "sp_4_high"))
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))
trigger3 = ((StateNo = 810) && (MoveContact))

;===========================================================================
;---------------------------------------------------------------------------
;ディフェンシヴホールド
[State -1, Defensive Hold]
type = ChangeState
value = 700
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 701) && (time >= 6))

;---------------------------------------------------------------------------
;下段ディフェンシヴホールド
[State -1, Crouch Defensive Hold]
type = ChangeState
value = 702
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 703) && (time >= 6))

;---------------------------------------------------------------------------
;空中ディフェンシヴホールド
[State -1, Air Defensive Hold]
type = ChangeState
value = 704
triggerall = command = "c"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 705) && (time >= 6))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;クイックスタンディング
[State -1, Quick Standing]
type = ChangeState
value = 708
triggerall = command = "quick"
triggerall = Alive = 1
trigger1 = ((StateNo = 5030) && (Movetype = H) && (Pos Y >= -20))
trigger2 = ((StateNo = 5035) && (Movetype = H) && (Pos Y >= -20))
trigger3 = ((StateNo = 5050) && (Movetype = H) && (Pos Y >= -20))
trigger4 = ((StateNo = 5071) && (Movetype = H) && (Pos Y >= -20))

;---------------------------------------------------------------------------
;ガードキャンセル
[State -1, GuardCancel]
type = ChangeState
value = 711
triggerall = ((command = "a") || (command = "b") || (command = "x") || (command = "y"))
triggerall = statetype != A
trigger1 = StateNo = [150,153]

[State -1, GuardCancel]
type = ChangeState
value = 712
triggerall = ((command = "a") || (command = "b") || (command = "x") || (command = "y"))
triggerall = statetype != S
triggerall = statetype != C
trigger1 = StateNo = [154,155]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;スペリオルダッシュ
[State -1, Superior Dash]
type = ChangeState
value = 720
triggerall = ((command = "b") && (command = "y"))
triggerall = statetype != A
trigger1 = ctrl = 1

;空中スペリオルダッシュ
[State -1, Air Superior Dash]
type = ChangeState
value = 721
triggerall = ((command = "b") && (command = "y"))
triggerall = statetype != S
triggerall = statetype != C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;鐘馗の陣・応脚
;[State -1, Oh-Kyaku]
;type = ChangeState
;value = 800
;triggerall = PalNo > 6
;triggerall = command = "back_b"
;triggerall = statetype != A
;trigger1 = ctrl = 1
;trigger2 = ((StateNo = [200,499]) && (MoveContact))

;---------------------------------------------------------------------------
;震空の陣・昇踵（エリアルレイヴ開始技）
[State -1, Heel Upper Kick]
type = ChangeState
value = 810
triggerall = command = "fwd_b"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,499]) && (MoveContact))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;震空の陣・降魔襲 "零式"
[State -1, Stand Throw]
type = ChangeState
value = 900
triggerall = stateno != 100
triggerall = command = "z"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ゲージ溜め
[State -1, PowerAdd]
type = ChangeState
value = 920
triggerall = var(5) = 0
triggerall = stateno != 100
triggerall = ((command = "a") && (command = "x"))
triggerall = power <= 3000
triggerall = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = ((StateNo != 100) && (StateNo != 101) && (StateNo != 105) && (StateNo != 106))
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックダッシュ
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = ((StateNo != 100) && (StateNo != 101) && (StateNo != 105) && (StateNo != 106))
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;スーパージャンプ
[State -1, Super Jump]
type = ChangeState
value = 10012
trigger1 = command = "super_jump"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;弱パンチ
[State -1, L.Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 0) || (StateNo = 200 && AnimElemTime(3) >= 0 && MoveContact)
trigger3 = (StateNo = 400 && AnimElemTime(3) >= 0) || (StateNo = 400 && AnimElemTime(3) >= 0 && MoveContact)
trigger4 = (StateNo = 430 && AnimElemTime(2) >= 0) || (StateNo = 430 && AnimElemTime(2) >= 0 && MoveContact)

;---------------------------------------------------------------------------
;強パンチ
[State -1, H.Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (MoveContact))
trigger3 = ((StateNo = 230) && (MoveContact))
trigger4 = ((StateNo = 400) && (MoveContact))
trigger5 = ((StateNo = 430) && (MoveContact))

;===========================================================================
;---------------------------------------------------------------------------
;弱キック
[State -1, L.Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (MoveContact))
trigger3 = ((StateNo = 400) && (MoveContact))
trigger4 = ((StateNo = 430) && (MoveContact))

;---------------------------------------------------------------------------
;強キック
[State -1, H.Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (MoveContact))
trigger3 = ((StateNo = 210) && (MoveContact))
trigger4 = ((StateNo = 230) && (MoveContact))
trigger5 = ((StateNo = 400) && (MoveContact))
trigger6 = ((StateNo = 410) && (MoveContact))
trigger7 = ((StateNo = 430) && (MoveContact))

;===========================================================================
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouch L.punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (StateNo = 200 && AnimElemTime(3) >= 0) || (StateNo = 200 && AnimElemTime(3) >= 0 && MoveContact)
trigger3 = (StateNo = 400 && AnimElemTime(3) >= 0) || (StateNo = 400 && AnimElemTime(3) >= 0 && MoveContact)
trigger4 = (StateNo = 430 && AnimElemTime(2) >= 0) || (StateNo = 430 && AnimElemTime(2) >= 0 && MoveContact)

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouch H.punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (MoveContact))
trigger3 = ((StateNo = 230) && (MoveContact))
trigger4 = ((StateNo = 400) && (MoveContact))
trigger5 = ((StateNo = 430) && (MoveContact))

;===========================================================================
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouch L.kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (MoveContact))
trigger3 = ((StateNo = 400) && (MoveContact))
trigger4 = (StateNo = 430 && AnimElemTime(2) >= 0) || (StateNo = 430 && AnimElemTime(2) >= 0 && MoveContact)

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouch H.kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200 && MoveContact))
trigger3 = ((StateNo = 210 && MoveContact))
trigger4 = ((StateNo = 230 && MoveContact))
trigger5 = ((StateNo = 400 && MoveContact))
trigger6 = ((StateNo = 410 && MoveContact))
trigger7 = ((StateNo = 430 && MoveContact))

;===========================================================================
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, Air L.punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (StateNo = 600 && AnimElemTime(3) >= 0) || (StateNo = 600 && MoveContact)

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, Air H.punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (MoveContact))
trigger3 = ((StateNo = 630) && (MoveContact))

;===========================================================================
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, Air L.kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (MoveContact))

;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1, Air H.kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (MoveContact))
trigger3 = ((StateNo = 610) && (MoveContact))
trigger4 = ((StateNo = 630) && (MoveContact))

;===========================================================================
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 10000
trigger1 = statetype != A
trigger1 = command = "s"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
