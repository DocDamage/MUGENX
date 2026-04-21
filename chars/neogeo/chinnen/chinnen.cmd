;====================================== && 
;chinnen by wara
;======================================

;-| Super Motions |--------------------------------------------------------

[Command]
name = "禁じ手"
command = ~$B, $DF, $UF, $DB, $UB, $F, b
time = 50;40

[Command]
name = "禁じ手2"
command =  ~D, DF, F, D, DF, F, y+b
time = 25

[Command]
name = "禁じ手3"
command =  ~D, DF, F, D, DF, F, c
time = 25

[Command]
name = "一発奥義"
command = ~D, DF, $F, $D, $B, a
time = 20

[Command]
name = "ストレスシュート"
command = x, a, y
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "呪縛符"
command = ~$B, $D, $F, x+y

[Command]
name = "煉獄霊波 弱"
command = ~$F, $D, $B, x

[Command]
name = "煉獄霊波 強"
command = ~$F, $D, $B, y

[Command]
name = "閃光烈脚 弱"
command = ~$B, $D, $F, a

[Command]
name = "閃光烈脚 強"
command = ~$B, $D, $F, b

[Command]
name = "裂光拳 弱"
command = F, B, F, x
time = 25

[Command]
name = "裂光拳 強"
command = F, B, F, y
time = 25

;※※※※※※※※※※※※※※※※※※※※ハイジャンプコマンド
;下をちょっと押して上を押す、と言う意味。
[Command]
name = "jump"    
command = D,$U
time = 20

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
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "down";Required (do not remove)
command = D
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
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
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
;-------------------------
;[Statedef -1]
;意味：
;	コマンド入力が可能ならば常時実行されるstate
[Statedef -1] ;この一行は削除しないで下さい
;---------------------------------------------------------------------------
; ガードキャンセル
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 310
trigger1 = command = "y"
trigger1 = command = "b"
trigger1 = Power >= 1000
trigger1 = StateNo = [150,153]
trigger2 = command = "c"
trigger2 = Power >= 1000
trigger2 = StateNo = [150,153]

;---------------------------------------------------------------------------
;禁じ手（ゲージレベル３）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3100
trigger1 = command = "禁じ手"
trigger2 = command = "禁じ手2"
trigger3 = command = "禁じ手3"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = roundstate = 2
;trigger1 = ctrl
triggerall = StateNo = 900; && animtime = 0

;===========================================================================
;---------------------------------------------------------------------------
;ストレスシュート（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = command = "ストレスシュート"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact

trigger10 = StateNo = 233 && var(16) = [1,30];movecontact
trigger11 = StateNo = 435 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

trigger18 = StateNo = 202 && var(16) = [1,30];movecontact
trigger19 = StateNo = 232 && var(16) = [1,30];movecontact

trigger20 = StateNo = 200 && animtime
trigger21 = StateNo = 210 && animtime
trigger22 = StateNo = 230 && animtime
trigger23 = StateNo = 240 && animtime
trigger24 = StateNo = 205 && animtime
trigger25 = StateNo = 235 && animtime
trigger26 = StateNo = 215 && animtime
trigger27 = StateNo = 245 && animtime

trigger28 = StateNo = 233 && animtime
trigger29 = StateNo = 435 && animtime

trigger30 = StateNo = 400 && animtime
trigger31 = StateNo = 410 && animtime
trigger32 = StateNo = 430 && animtime
trigger33 = StateNo = 440 && animtime

trigger34 = StateNo = 300 && animtime
trigger35 = StateNo = 500 && animtime

trigger36 = StateNo = 202 && animtime
trigger37 = StateNo = 232 && animtime

;triggerall = numhelper(1101)=0
;triggerall = NumProjID(1180)=0
triggerall = numhelper(1111)=0
triggerall = NumProjID(1210)=0
triggerall = numhelper(1151)=0
triggerall = numhelper(1152)=0
triggerall = numhelper(1153)=0
triggerall = NumProjID(1211)=0
triggerall = numhelper(1161)=0
triggerall = numhelper(1162)=0
triggerall = numhelper(1163)=0
triggerall = NumProjID(1212)=0
triggerall = numhelper(1301)=0
triggerall = NumProjID(1311)=0
triggerall = numhelper(3051)=0
triggerall = numhelper(3053)=0
triggerall = numhelper(3060)=0
triggerall = numhelper(3061)=0
triggerall = numhelper(3062)=0
triggerall = numhelper(3063)=0
triggerall = numhelper(3064)=0
triggerall = numhelper(3065)=0
triggerall = numhelper(3066)=0
triggerall = numhelper(3067)=0

;---------------------------------------------------------------------------
;一発奥義（ゲージレベル２）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "一発奥義"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) >= 1;movecontact
trigger3 = StateNo = 210 && var(16) >= 1;movecontact
trigger4 = StateNo = 230 && var(16) >= 1;movecontact
trigger5 = StateNo = 240 && var(16) >= 1;movecontact
trigger6 = StateNo = 205 && var(16) >= 1;movecontact
trigger7 = StateNo = 235 && var(16) >= 1;movecontact
trigger8 = StateNo = 215 && var(16) >= 1;movecontact
trigger9 = StateNo = 245 && var(16) >= 1;movecontact

trigger10 = StateNo = 233 && var(16) >= 1;movecontact
trigger11 = StateNo = 435 && var(16) >= 1;movecontact

trigger12 = StateNo = 400 && var(16) >= 1;movecontact
trigger13 = StateNo = 410 && var(16) >= 1;movecontact
trigger14 = StateNo = 430 && var(16) >= 1;movecontact
trigger15 = StateNo = 440 && var(16) >= 1;movecontact

trigger16 = StateNo = 300 && var(16) >= 1;movecontact
trigger17 = StateNo = 500 && var(16) >= 1;movecontact

trigger18 = StateNo = 202 && var(16) >= 1;movecontact
trigger19 = StateNo = 232 && var(16) >= 1;movecontact

;===========================================================================

;---------------------------------------------------------------------------
;呪縛符
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1300
triggerall = command = "呪縛符"
triggerall = NumProjID(1311) = 0
triggerall = Numhelper(1302) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact

trigger10 = StateNo = 233 && var(16) = [1,30];movecontact
trigger11 = StateNo = 435 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

trigger18 = StateNo = 202 && var(16) = [1,30];movecontact
trigger19 = StateNo = 232 && var(16) = [1,30];movecontact

;triggerall = numhelper(1101)=0
;triggerall = NumProjID(1180)=0
triggerall = numhelper(1111)=0
triggerall = NumProjID(1210)=0
triggerall = numhelper(1151)=0
triggerall = numhelper(1152)=0
triggerall = numhelper(1153)=0
triggerall = NumProjID(1211)=0
triggerall = numhelper(1161)=0
triggerall = numhelper(1162)=0
triggerall = numhelper(1163)=0
triggerall = NumProjID(1212)=0
triggerall = numhelper(1301)=0
triggerall = NumProjID(1311)=0
triggerall = numhelper(3051)=0
triggerall = numhelper(3053)=0
triggerall = numhelper(3060)=0
triggerall = numhelper(3061)=0
triggerall = numhelper(3062)=0
triggerall = numhelper(3063)=0
triggerall = numhelper(3064)=0
triggerall = numhelper(3065)=0
triggerall = numhelper(3066)=0
triggerall = numhelper(3067)=0

;---------------------------------------------------------------------------
;地上 煉獄霊波 弱
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1150
triggerall = command = "煉獄霊波 弱"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact

trigger10 = StateNo = 233 && var(16) = [1,30];movecontact
trigger11 = StateNo = 435 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

trigger18 = StateNo = 202 && var(16) = [1,30];movecontact
trigger19 = StateNo = 232 && var(16) = [1,30];movecontact

;triggerall = numhelper(1101)=0
;triggerall = NumProjID(1180)=0
triggerall = numhelper(1111)=0
triggerall = NumProjID(1210)=0
triggerall = numhelper(1151)=0
triggerall = numhelper(1152)=0
triggerall = numhelper(1153)=0
triggerall = NumProjID(1211)=0
triggerall = numhelper(1161)=0
triggerall = numhelper(1162)=0
triggerall = numhelper(1163)=0
triggerall = NumProjID(1212)=0
triggerall = numhelper(1301)=0
triggerall = NumProjID(1311)=0
triggerall = numhelper(3051)=0
triggerall = numhelper(3053)=0
triggerall = numhelper(3060)=0
triggerall = numhelper(3061)=0
triggerall = numhelper(3062)=0
triggerall = numhelper(3063)=0
triggerall = numhelper(3064)=0
triggerall = numhelper(3065)=0
triggerall = numhelper(3066)=0
triggerall = numhelper(3067)=0

;---------------------------------------------------------------------------
;地上 煉獄霊波 強
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1160
triggerall = command = "煉獄霊波 強"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact

trigger10 = StateNo = 233 && var(16) = [1,30];movecontact
trigger11 = StateNo = 435 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

trigger18 = StateNo = 202 && var(16) = [1,30];movecontact
trigger19 = StateNo = 232 && var(16) = [1,30];movecontact

;triggerall = numhelper(1101)=0
;triggerall = NumProjID(1180)=0
triggerall = numhelper(1111)=0
triggerall = NumProjID(1210)=0
triggerall = numhelper(1151)=0
triggerall = numhelper(1152)=0
triggerall = numhelper(1153)=0
triggerall = NumProjID(1211)=0
triggerall = numhelper(1161)=0
triggerall = numhelper(1162)=0
triggerall = numhelper(1163)=0
triggerall = NumProjID(1212)=0
triggerall = numhelper(1301)=0
triggerall = NumProjID(1311)=0
triggerall = numhelper(3051)=0
triggerall = numhelper(3053)=0
triggerall = numhelper(3060)=0
triggerall = numhelper(3061)=0
triggerall = numhelper(3062)=0
triggerall = numhelper(3063)=0
triggerall = numhelper(3064)=0
triggerall = numhelper(3065)=0
triggerall = numhelper(3066)=0
triggerall = numhelper(3067)=0

;---------------------------------------------------------------------------
;空中 煉獄霊波 弱
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = command = "煉獄霊波 弱"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && var(16) = [1,30];movecontact
trigger3 = StateNo = 610 && var(16) = [1,30];movecontact
trigger4 = StateNo = 630 && var(16) = [1,30];movecontact
trigger5 = StateNo = 640 && var(16) = [1,30];movecontact
trigger6 = StateNo = 615 && var(16) = [1,30];movecontact
trigger7 = StateNo = 645 && var(16) = [1,30];movecontact

;triggerall = numhelper(1101)=0
;triggerall = NumProjID(1180)=0
triggerall = numhelper(1111)=0
triggerall = NumProjID(1210)=0
triggerall = numhelper(1151)=0
triggerall = numhelper(1152)=0
triggerall = numhelper(1153)=0
triggerall = NumProjID(1211)=0
triggerall = numhelper(1161)=0
triggerall = numhelper(1162)=0
triggerall = numhelper(1163)=0
triggerall = NumProjID(1212)=0
triggerall = numhelper(1301)=0
triggerall = NumProjID(1311)=0
triggerall = numhelper(3051)=0
triggerall = numhelper(3053)=0
triggerall = numhelper(3060)=0
triggerall = numhelper(3061)=0
triggerall = numhelper(3062)=0
triggerall = numhelper(3063)=0
triggerall = numhelper(3064)=0
triggerall = numhelper(3065)=0
triggerall = numhelper(3066)=0
triggerall = numhelper(3067)=0

;---------------------------------------------------------------------------
;空中 煉獄霊波 強
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = command = "煉獄霊波 強"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && var(16) = [1,30];movecontact
trigger3 = StateNo = 610 && var(16) = [1,30];movecontact
trigger4 = StateNo = 630 && var(16) = [1,30];movecontact
trigger5 = StateNo = 640 && var(16) = [1,30];movecontact
trigger6 = StateNo = 615 && var(16) = [1,30];movecontact
trigger7 = StateNo = 645 && var(16) = [1,30];movecontact

;triggerall = numhelper(1101)=0
;triggerall = NumProjID(1180)=0
triggerall = numhelper(1111)=0
triggerall = NumProjID(1210)=0
triggerall = numhelper(1151)=0
triggerall = numhelper(1152)=0
triggerall = numhelper(1153)=0
triggerall = NumProjID(1211)=0
triggerall = numhelper(1161)=0
triggerall = numhelper(1162)=0
triggerall = numhelper(1163)=0
triggerall = NumProjID(1212)=0
triggerall = numhelper(1301)=0
triggerall = NumProjID(1311)=0
triggerall = numhelper(3051)=0
triggerall = numhelper(3053)=0
triggerall = numhelper(3060)=0
triggerall = numhelper(3061)=0
triggerall = numhelper(3062)=0
triggerall = numhelper(3063)=0
triggerall = numhelper(3064)=0
triggerall = numhelper(3065)=0
triggerall = numhelper(3066)=0
triggerall = numhelper(3067)=0

;---------------------------------------------------------------------------
;ダッシュ 閃光烈脚 弱
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1070
triggerall = command = "閃光烈脚 弱"
triggerall = statetype != A
;triggerall = ctrl
trigger1 = StateNo = 100
trigger2 = StateNo = 53
trigger3 = StateNo = 202 && var(16) = [1,30];movecontact
trigger4 = StateNo = 232 && var(16) = [1,30];movecontact

;閃光烈脚 弱
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1050
triggerall = command = "閃光烈脚 弱"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact
trigger10 = StateNo = 202 && var(16) = [1,30];movecontact
trigger11 = StateNo = 232 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

trigger18 = StateNo = 233 && var(16) = [1,30];movecontact
trigger19 = StateNo = 435 && var(16) = [1,30];movecontact

;---------------------------------------------------------------------------
;ダッシュ 閃光烈脚 強
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1070
triggerall = command = "閃光烈脚 強"
triggerall = statetype != A
;triggerall = ctrl
trigger1 = StateNo = 100
trigger2 = StateNo = 53
trigger3 = StateNo = 202 && var(16) = [1,30];movecontact
trigger4 = StateNo = 232 && var(16) = [1,30];movecontact

;閃光烈脚 強
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1060
triggerall = command = "閃光烈脚 強"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact

trigger10 = StateNo = 233 && var(16) = [1,30];movecontact
trigger11 = StateNo = 435 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

;---------------------------------------------------------------------------
;ダッシュ 裂光拳 弱
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = command = "裂光拳 弱"
triggerall = statetype != A
;triggerall = ctrl
trigger1 = StateNo = 100
trigger2 = StateNo = 53
trigger3 = StateNo = 202 && var(16) = [1,30];movecontact
trigger4 = StateNo = 232 && var(16) = [1,30];movecontact

;裂光拳 弱
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "裂光拳 弱"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact

trigger10 = StateNo = 233 && var(16) = [1,30];movecontact
trigger11 = StateNo = 435 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

;---------------------------------------------------------------------------

;ダッシュ 裂光拳 強
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = command = "裂光拳 強"
triggerall = statetype != A
;triggerall = ctrl
trigger1 = StateNo = 100
trigger2 = StateNo = 53
trigger3 = StateNo = 202 && var(16) = [1,30];movecontact
trigger4 = StateNo = 232 && var(16) = [1,30];movecontact

;裂光拳 強
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "裂光拳 強"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact

trigger10 = StateNo = 233 && var(16) = [1,30];movecontact
trigger11 = StateNo = 435 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; 2段ジャンプ
[State -1]
type = ChangeState
value = 45
triggerall = command = "up";"holdup"
triggerall = var(2) = 1
trigger1 = StateType = A && ctrl
trigger2 = StateNo = 600 && AnimElem = 3,> 0 && HitPauseTime = 0 && var(11) >= 3 ;movecontact && HitPauseTime = 0 && var(11) >= 3
trigger3 = StateNo = 610 && AnimElem = 4,> 0 && HitPauseTime = 0 && var(11) >= 2 ;movecontact && HitPauseTime = 0 && var(11) >= 2
trigger4 = StateNo = 630 && AnimElem = 3,> 0 && HitPauseTime = 0 && var(11) >= 3 ;movecontact && HitPauseTime = 0 && var(11) >= 3
trigger5 = StateNo = 640 && AnimElem = 5,> 0 && HitPauseTime = 0 && var(11) >= 2 ;movecontact && HitPauseTime = 0 && var(11) >= 2
trigger6 = StateNo = 615 && AnimElem = 5,> 0 && HitPauseTime = 0 && var(11) >= 2 ;movecontact && HitPauseTime = 0 && var(11) >= 2
trigger7 = StateNo = 645 && AnimElem = 5,> 0 && HitPauseTime = 0 && var(11) >= 2 ;movecontact && HitPauseTime = 0 && var(11) >= 2

;---------------------------------------------------------------------------
;地上投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;空中投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = A); || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;後転動作

[State -1, Taunt]
type = ChangeState
value = 111
trigger1 = command = "x"
trigger1 = command = "a"
trigger1 = command = "holdback"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = command = "holdback"
trigger2 = command != "holddown"
trigger2 = statetype = S
trigger2 = ctrl

;前転動作

[State -1, Taunt]
type = ChangeState
value = 110
trigger1 = command = "x"
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = command != "holddown"
trigger2 = statetype = S
trigger2 = ctrl

;---------------------------------------------------------------------------
; 手合わせ合図
[State -1]
type = ChangeState
value = 195
triggerall = command = "start" && command != "holddown"
trigger1 = StateType = S && ctrl

;---------------------------------------------------------------------------
;黒子呼び出し

[State -1, Taunt]
type = ChangeState
value = 196
trigger1 = command = "y"
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = command = "start"
;trigger2 = command != "holddown"
;trigger2 = statetype = S
;trigger2 = ctrl

;---------------------------------------------------------------------------
;前下押ししゃがみキック
[State -1, Crouching Light Kick]
type = ChangeState
value = 435
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact
trigger10 = StateNo = 202 && var(16) = [1,30];movecontact
trigger11 = StateNo = 232 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

;前押し立ちキック

[State -1, Stand Light Kick]
type = ChangeState
value = 233
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && var(16) = [1,30];movecontact
trigger3 = StateNo = 210 && var(16) = [1,30];movecontact
trigger4 = StateNo = 230 && var(16) = [1,30];movecontact
trigger5 = StateNo = 240 && var(16) = [1,30];movecontact
trigger6 = StateNo = 205 && var(16) = [1,30];movecontact
trigger7 = StateNo = 235 && var(16) = [1,30];movecontact
trigger8 = StateNo = 215 && var(16) = [1,30];movecontact
trigger9 = StateNo = 245 && var(16) = [1,30];movecontact
trigger10 = StateNo = 202 && var(16) = [1,30];movecontact
trigger11 = StateNo = 232 && var(16) = [1,30];movecontact

trigger12 = StateNo = 400 && var(16) = [1,30];movecontact
trigger13 = StateNo = 410 && var(16) = [1,30];movecontact
trigger14 = StateNo = 430 && var(16) = [1,30];movecontact
trigger15 = StateNo = 440 && var(16) = [1,30];movecontact

trigger16 = StateNo = 300 && var(16) = [1,30];movecontact
trigger17 = StateNo = 500 && var(16) = [1,30];movecontact

;---------------------------------------------------------------------------
;立ちごっつい攻撃

[State -1, Stand Light Punch]
type = ChangeState
value = 300
triggerall = command != "holddown"
trigger1 = command = "y"
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = statetype = S
trigger2 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 6

;しゃがみごっつい攻撃

[State -1, Stand Light Punch]
type = ChangeState
value = 500
triggerall = command = "holddown"
trigger1 = command = "y"
trigger1 = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = statetype = C
trigger2 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 6

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ立ちパンチ

[State -1, Stand Light Punch]
type = ChangeState
value = 202
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = command = "x" || command = "y"
trigger1 = stateno = 53
trigger2 = stateno = 100
;trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 6

;立ち弱パンチ　近

[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = P2BodyDist X <= 25
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && animelem = 3,>= 3 
trigger3 = (stateno = 205) && animelem = 3,>= 3 
trigger4 = (stateno = 200) && animelem = 4,>= 0 && var(16) = [1,30];movecontact
trigger5 = (stateno = 205) && animelem = 4,>= 0 && var(16) = [1,30];movecontact

;立ち弱パンチ　遠

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && animelem = 3,>= 3 
trigger3 = (stateno = 205) && animelem = 3,>= 3 
trigger4 = (stateno = 200) && animelem = 4,>= 0 && var(16) = [1,30];movecontact
trigger5 = (stateno = 205) && animelem = 4,>= 0 && var(16) = [1,30];movecontact

;---------------------------------------------------------------------------
;立ち強パンチ　近

[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = P2BodyDist X <= 25
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;立ち強パンチ　遠

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;ダッシュ立ちキック

[State -1, Stand Light Punch]
type = ChangeState
value = 232
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = command = "a" || command = "b"
trigger1 = stateno = 53
trigger2 = stateno = 100
;trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 6

;立ち弱キック　近

[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = P2BodyDist X <= 25
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 7
;trigger3 = (stateno = 230) && time > 9

;立ち弱キック　遠

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205) && animelem = 4,<= 0 && var(16) = [1,30];movecontact
;trigger2 = (stateno = 200) && time > 7
;trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;立ち強キック　近

[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = P2BodyDist X <= 10
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;立ち強キック　遠

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 215) && animelem = 5,<= 0 && var(16) = [1,30];movecontact
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && animelem = 3,>= 3 
trigger3 = (stateno = 400) && animelem = 4,>= 0  && var(16) = [1,30];movecontact

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && animelem = 5,>= 0 
trigger3 = (stateno = 430) && animelem = 4,>= 0  && var(16) = [1,30];movecontact

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;空中強パンチ　垂直
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = Vel X = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact

;空中強パンチ　前後

[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック　垂直
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = Vel X = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact

;空中強キック　前後
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact
