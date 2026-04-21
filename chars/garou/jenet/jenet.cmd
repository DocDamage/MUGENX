; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = "some_name"
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted



;-| 超必殺技 |-------------------------------------------------------------
;アンニュイマドモアゼル
[Command]
name = "ennui"
command = a, b, x
time = 10

;アンニュイマドモアゼル Easyコマンド
[Command]
name = "ennui_ez"
command = D, D, x+y
time = 20

;オーロラ d
[Command]
name = "aurora_d"
command = ~D, DF, F, D, DF, F, y
time = 30

;オーロラ b
[Command]
name = "aurora_b"
command = ~D, DF, F, D, DF, F, b
time = 30

;メニメニトーピードゥ c
[Command]
name = "menimeni_c"
command = ~D, DF, F, D, DF, F, x
time = 30

;メニメニトーピードゥ a
[Command]
name = "menimeni_a"
command = ~D, DF, F, D, DF, F, a
time = 30

;-| 必殺技 |---------------------------------------------------------------
;ディ・ハインド d
[Command]
name = "dehind_d"
command = ~D, DF, F, y
time = 15

;ディ・ハインド b
[Command]
name = "dehind_b"
command = ~D, DF, F, b
time = 15

;クレイジーイワン c
[Command]
name = "crazy_c"
command = ~D, DB, B, x
time = 15

;クレイジーイワン a
[Command]
name = "crazy_a"
command = ~D, DB, B, a
time = 15

;ハリア・ビー d
[Command]
name = "harrier_d"
command = /D, y
time = 1

;ハリア・ビー b
[Command]
name = "harrier_b"
command = /D, b
time = 1

;バッフルズ a
[Command]
name = "buffles_a"
command = ~D, DF, F, a
time = 12

;バッフルズ c
[Command]
name = "buffles_c"
command = ~D, DF, F, x
time = 12

;ガルフトマホーク d
[Command]
name = "tomahawk_d"
command = ~D, DB, B, y
time = 15

;ガルフトマホーク b
[Command]
name = "tomahawk_b"
command = ~D, DB, B, b
time = 15

;スーパージャンプ
[Command]
name = "superjump"
command = D,U
time = 10

;スーパージャンプ
[Command]
name = "superjump"
command = DB,U
time = 10

;スーパージャンプ
[Command]
name = "superjump"
command = DB,UF
time = 10

;スーパージャンプ
[Command]
name = "superjump"
command = D,UF
time = 10

;スーパージャンプ
[Command]
name = "superjump"
command = DF,UB
time = 10

;スーパージャンプ
[Command]
name = "superjump"
command = D,UB
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = z+c
time = 1

;避け攻撃;ブレーキング
[Command]
name = "ab"
command = a+b
time = 1

;TOPアタック
[Command]
name = "top"
command = x+y
time = 1

;-| 方向ボタン + 攻撃ボタン |----------------------------------------------
;バイバイプー（投げ）
[Command]
name = "byebye_F"
command = /F, x
time = 1

[Command]
name = "byebye_B"
command = /B, x
time = 1

;フォーリンクラッシュ(空中投げ)
[Command]
name = "fall_F"
command = /F, x
time = 1

[Command]
name = "fall_B"
command = /B, x
time = 1

[Command]
name = "fall_D"
command = /$D, x
time = 1

;フェイント技
[Command]
name = "feint_a"
command = F, a+x
time = 5

[Command]
name = "feint_b"
command = D, a+x
time = 5

;-| 通常攻撃 |-------------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================
;超必殺技
;===========================================================================
;---------------------------------------------------------------------------
;アンニュイマドモアゼル
[State -1]
type = ChangeState
value = 3500
triggerall = power >= 2000
trigger1 = command = "ennui"
trigger1 = statetype = S
trigger1 = anim = 9901
trigger2 = command = "ennui"
trigger2 = statetype = C
trigger2 = anim = 9902

;---------------------------------------------------------------------------
;アンニュイマドモアゼル
[State -1]
type = ChangeState
value = 3500
triggerall = power >= 2000
triggerall = ctrl = 1
trigger1 = command = "ennui_ez"
trigger1 = statetype = S
trigger2 = command = "ennui_ez"
trigger2 = statetype = C

;---------------------------------------------------------------------------
;オーロラ b
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = command = "aurora_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger14 = anim = 9902

;---------------------------------------------------------------------------
;オーロラ d
[State -1]
type = ChangeState
value = 2010
triggerall = power >= 2000
triggerall = command = "aurora_d"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger14 = anim = 9902

;---------------------------------------------------------------------------
;メニメニトーピードゥ a
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "menimeni_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger14 = anim = 9902

;---------------------------------------------------------------------------
;メニメニトーピードゥ c
[State -1]
type = ChangeState
value = 3010
triggerall = power >= 2000
triggerall = command = "menimeni_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger14 = anim = 9902

;===========================================================================
;必殺技
;===========================================================================
;---------------------------------------------------------------------------
;ディ・ハインド d
[State -1]
type = ChangeState
value = 1410
triggerall = command = "dehind_d"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;---------------------------------------------------------------------------
;ディ・ハインド b
[State -1]
type = ChangeState
value = 1400
triggerall = command = "dehind_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;---------------------------------------------------------------------------
;ガルフトマホーク d
[State -1]
type = ChangeState
value = 1110
triggerall = command = "tomahawk_d"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;---------------------------------------------------------------------------
;ガルフトマホーク b
[State -1]
type = ChangeState
value = 1100
triggerall = command = "tomahawk_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;---------------------------------------------------------------------------
;クレイジーイワン c
[State -1]
type = ChangeState
value = 1310
triggerall = command = "crazy_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;---------------------------------------------------------------------------
;クレイジーイワン a
[State -1]
type = ChangeState
value = 1300
triggerall = command = "crazy_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;---------------------------------------------------------------------------
;ハリア・ビー d
[State -1]
type = ChangeState
value = 1210
triggerall = command = "harrier_d"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = time < 17
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = time < 17
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = time < 20
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = time < 20
trigger5 = movecontact
trigger6 = stateno = 510
trigger6 = time < 20
trigger7 = stateno = 105
trigger8 = anim = 9903
trigger8 = stateno = 154

;---------------------------------------------------------------------------
;ハリア・ビー b
[State -1]
type = ChangeState
value = 1200
triggerall = command = "harrier_b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = time < 17
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = time < 17
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = time < 20
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = time < 20
trigger5 = movecontact
trigger6 = stateno = 510
trigger6 = time < 20
trigger7 = stateno = 105
trigger8 = anim = 9903
trigger8 = stateno = 154

;---------------------------------------------------------------------------
;バッフルズ c
[State -1]
type = ChangeState
value = 1010
triggerall = command = "buffles_c"
triggerall = NumHelper(1001) = 0
triggerall = NumHelper(1011) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;---------------------------------------------------------------------------
;バッフルズ a
[State -1]
type = ChangeState
value = 1000
triggerall = command = "buffles_a"
triggerall = NumHelper(1001) = 0
triggerall = NumHelper(1011) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;===========================================================================
;特殊移動
;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100

;---------------------------------------------------------------------------
;バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;スーパージャンプ
[State -1]
type = ChangeState
value = 9010
trigger1 = command = "superjump"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ダウン回避 前転 小
[State -1]
type = VarSet
v = 13
value = 1
triggerall = command = "a"
triggerall = Pos Y < 8
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;---------------------------------------------------------------------------
;ダウン回避 後転 小
[State -1]
type = VarSet
v = 13
value = 2
triggerall = command = "b"
triggerall = Pos Y < 8
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;---------------------------------------------------------------------------
;ダウン回避 前転 大
[State -1]
type = VarSet
v = 13
value = 3
triggerall = command = "x"
triggerall = Pos Y < 8
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;---------------------------------------------------------------------------
;ダウン回避 後転 大
[State -1]
type = VarSet
v = 13
value = 4
triggerall = command = "y"
triggerall = Pos Y < 8
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;===========================================================================
;TOPアタック
;===========================================================================
;---------------------------------------------------------------------------
;ローリングサンダー
[State -1]
type = ChangeState
value = 800
triggerall = Var(20) = 1
triggerall = command = "top"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152

;===========================================================================
;避け攻撃
;===========================================================================
;---------------------------------------------------------------------------
;上段避け攻撃
[State -1]
type = ChangeState
value = 500
triggerall = command = "ab"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 2
trigger3 = stateno = 910
trigger3 = Time >= 2

;---------------------------------------------------------------------------
;下段避け攻撃
[State -1]
type = ChangeState
value = 510
triggerall = command = "ab"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 2
trigger3 = stateno = 910
trigger3 = Time >= 2

;===========================================================================
;フェイント技
;===========================================================================
;---------------------------------------------------------------------------
;フェイント メニメニトーピードゥ
[State -1]
type = ChangeState
value = 900
triggerall = command = "feint_a"
triggerall = stateno != 900
triggerall = stateno != 910
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact

;---------------------------------------------------------------------------
;フェイント オーロラ
[State -1]
type = ChangeState
value = 910
triggerall = command = "feint_b"
triggerall = stateno != 910
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time < 16
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = time < 16
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = time < 16
trigger4 = movecontact
trigger5 = stateno = 221
trigger5 = time < 15
trigger5 = movecontact
trigger6 = stateno = 231
trigger6 = time < 6
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = time < 19
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = time < 15
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = time < 15
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = time < 17
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = time < 17
trigger11 = movecontact
trigger12 = stateno = 500
trigger12 = time < 15
trigger12 = movecontact
trigger13 = anim = 9901
trigger13 = stateno = 150
trigger14 = anim = 9902
trigger14 = stateno = 152
trigger15 = stateno = 10
trigger15 = stateno != 900

;===========================================================================
;投げ技
;===========================================================================
;---------------------------------------------------------------------------
;バイバイプー
[State -1]
type = ChangeState
value = 1500
triggerall = P2BodyDist X < 5
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "byebye_F"
trigger1 = stateno != 100

;---------------------------------------------------------------------------
;バイバイプー
[State -1]
type = ChangeState
value = 1520
triggerall = P2BodyDist X < 5
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "byebye_B"

;---------------------------------------------------------------------------
;バイバイプー
[State -1]
type = ChangeState
value = 1600
triggerall = P2BodyDist X < 5
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "fall_F"
trigger2 = command = "fall_B"
trigger3 = command = "fall_D"

;===========================================================================
;通常攻撃
;===========================================================================
;---------------------------------------------------------------------------
;攻撃 立ち 近 A
[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 4
trigger3 = stateno = 910
trigger3 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 立ち 近 B
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 16
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 4
trigger3 = stateno = 910
trigger3 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 立ち 近 C
[State -1]
type = ChangeState
value = 221
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 25
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 4
trigger3 = stateno = 910
trigger3 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 立ち 近 D
[State -1]
type = ChangeState
value = 231
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 4
trigger3 = stateno = 910
trigger3 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 立ち 遠 A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 4
trigger3 = stateno = 910
trigger3 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 立ち 遠 B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 4
trigger3 = stateno = 910
trigger3 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 立ち 遠 C
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 4
trigger3 = stateno = 910
trigger3 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 立ち 遠 D
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger2 = Time >= 4
trigger3 = stateno = 910
trigger3 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 しゃがみ A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 910
trigger2 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 しゃがみ B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 910
trigger2 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 しゃがみ C
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 910
trigger2 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 しゃがみ D
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 910
trigger2 = Time >= 4

;---------------------------------------------------------------------------
;攻撃 ジャンプ A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;攻撃 ジャンプ B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;攻撃 ジャンプ C
[State -1]
type = ChangeState
value = 620
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;攻撃 ジャンプ D
[State -1]
type = ChangeState
value = 630
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===========================================================================
;挑発
;===========================================================================
;---------------------------------------------------------------------------
;挑発　勝利時　１
[State -1]
type = ChangeState
value = 196
trigger1 = command = "holdfwd"
trigger1 = command = "s"
trigger1 = Win = 1
trigger1 = P2life = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;挑発　勝利時　２
[State -1]
type = ChangeState
value = 197
trigger1 = command = "holdback"
trigger1 = command = "s"
trigger1 = Win = 1
trigger1 = P2life = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = stateno != 195
trigger1 = ctrl = 1


