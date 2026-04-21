; Overrides states file for Lobo
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: for Mr. Hook (0: missed, 1=hit)
;   2: for "levelup" sounds
;   5: Frag ammo counter
;  10: for Main Men (clone timer)
;  20: for RotGut special states (1: super armor; 2: attack power up; 3: ...)
; Helpers:
;   0: superjump opponent position indicator
;   5: Frag ammo display
;  10: "Main Men" clone #1
;  11: "Main Men" clone #2
; Explods:
;  10: "Main Men" clone #1 timer bar
;  11: "Main Men" clone #2 timer bar
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[State 0, make clone solid]
type = PlayerPush
trigger1 = IsHelper
value = 1

[State 0, Turn clones to face opponent]
type = Turn
trigger1 = IsHelper
trigger1 = P2Dist X < 0

;[State 0, clone gethit handler]
;type = HitOverride
;trigger1 = IsHelper
;attr = SCA, NA, SA, HA, NP, SP, HP 
;slot = 0
;stateno = 3110  ;3120
;time = -1

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]   ; regular
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = !ishelper
x = const(velocity.walk.fwd.x)

[State 20, 1]   ; "Abbott" clone
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = ishelper(10)
x = const(velocity.walk.fwd.x) + 0.75

[State 20, 1]   ; "Costello" clone
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = ishelper(11)
x = const(velocity.walk.fwd.x) - 0.75

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = !ishelper
x = const(velocity.walk.back.x)

[State 20, 2]   ; "Abbott" clone
type = VelSet
trigger1 = command = "holdback"
trigger1 = ishelper(10)
x = const(velocity.walk.back.x) - 0.75

[State 20, 2]   ; "Costello" clone
type = VelSet
trigger1 = command = "holdback"
trigger1 = ishelper(11)
x = const(velocity.walk.back.x) + 0.75

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 20, make clone solid]
type = PlayerPush
trigger1 = IsHelper
value = 1


;---------------------------------------------------------------------------
; Jump fall (after an attack)
[Statedef 48]
type    = A
physics = A

[State 48, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 48
;elem = 
;ignorehitpause = 0
;persistent = 1


;---------------------------------------------------------------------------
; Hop forward (overrides run)
[Statedef 100]
type    = A
physics = A
anim = 100
sprpriority = 1

[State 100, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.fwd.x)
y = const(velocity.run.fwd.y)


;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)   -- customized to implement recovery roll
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050: Null]
type = Null
trigger1 = (!Time)
trigger1 = (Var(0) := 0)
trigger2 = (Vel Y > -1) && (Alive) && (Command = "recovery roll")
trigger2 = (Var(0) := 1)

[State 5050: ChangeState]
type = ChangeState
trigger1 = (Vel Y > 0) && (Pos Y >= IfElse((Anim = [5051,5059]) || (Anim = [5061,5069]),0,25))
value = IfElse(Var(0) = 1,800,5100)


;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)  -- customized to implement recovery roll
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071: Null]
type = Null
trigger1 = (!Time)
trigger1 = (Var(0) := 0)
trigger2 = (Vel Y > -1) && (Alive) && (Command = "recovery roll")
trigger2 = (Var(0) := 1)

[State 5071: ChangeState]
type = ChangeState
trigger1 = (Vel Y > 0) && (Pos Y >= 15)
value = IfElse(Var(0) = 1,800,5110)




;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, dizzy stars]
type = Explod
trigger1 = (Anim = 5300) && (NumExplod(5301) = 0)
anim = 5301
ID = 5301
bindtime = -1
removetime = -1
sprpriority = 4
ownpal = 0

[State -2, nodizzy]
type = RemoveExplod
trigger1 = (Anim != 5300) && (NumExplod(5301) > 0)
ID = 5301


[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = Alive
;trigger1 = IsHelper 
text = "Fall:%d, HitFall:%d"
params = gethitvar(fall), hitfall

[State -2, SetCloneTimer]
type = VarAdd
triggerall = (IsHelper) && (StateNo != 3110) && (RoundState = 2)
trigger1 = Var(10) = [0,300]    ;< 300
trigger2 = (GameTime % 1) = 0
v = 10
value = 1

[State -2, Clone timeout]
type = ChangeState
triggerall = IsHelper
trigger1 = numhelper(10) > 2
trigger2 = (Var(10) >= 300) && (StateType != A)
;trigger3 = roundstate > 2
value = 3110

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = alive && (Time = 1)
triggerall = random < 300
trigger1 = stateno = [5000,5022] ; standing hard hit high
trigger2 = stateno = 5030   ; air hit
trigger3 = stateno = 5070   ; tripped
channel = 1
value = 4,0

[State -2, "feetal's gizzard!"]          ; custom electrocuted sound
type = PlaySnd
triggerall = alive && (time = 1)
trigger1 = anim = 7696
;trigger1 = AnimTime = -15
persistent = 1
channel = 1
value = 4,10

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1


;---------------------------------------------------------------------------
; Initialize (at the start of the round) - overridden to reset ammo count each round
[Statedef 5900]
type = S

[State 5900, 1a] ;Clear all int variables under var(5)
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0
first = 0
last = 4

[State 5900, 1b]
type = VarSet
trigger1 = Alive
v = 5
value = 6

[State 5900, 1c] ;Clear all int variables past var(5)
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0
first = 6
last = 59

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0

[State 5900, 3] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
value = 190



;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch 
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 1


;-------------------------
; clone timer bar
; adapted from FlowaGirl's meterbar tutorial: http://blargh.i-xcell.com
[State -3: clone timer bar]
type = Explod
trigger1 = (IsHelper(10) || IsHelper(11)) && (RoundState = 2) ; && Alive
trigger1 = Var(10) = [0,300]    ;< 300
anim = 3230 - (Var(10) / 10)
pos = -40,-130
postype = p1
bindtime = -1
removetime = 1
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1


; Force clones into winpose if roundstate > 2 and we won
[State -3: clone winpose]
type = ChangeState
triggerall = IsHelper(10) || IsHelper(11)
;trigger1 = (RoundState = 4) & (StateNo != 189) & Win
trigger1 = (RoundState = 4) & (StateNo = 0) & Win
value = 189

; Force clones into lose pose if roundstate > 2 and we lost / were KO'ed
[State -3: clone losepose]
type = ChangeState
triggerall = IsHelper(10) || IsHelper(11)
trigger1 = (RoundState = 4) && (StateNo = 0) && (DrawGame || Lose)
value = 179

;-------------------------
; Frag ammo counter OSD
;
; Adapted from code by FlowaGirl
;flowergirl@cutey.com
;http://blargh.i-xcell.com

[State -2, bullet counter]
type = Explod
trigger1 = RoundState = 2
anim = 1010 + var(5)
pos = ifelse(TeamSide = 1, 1, 319), 196
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1


;--------------------------------------------------
; Level-up sounds (uses Var(2))
[State -2, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -2, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
value = 12,0

[State -2, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  2
value = 1

[State -2, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
value = 12,1

[State -2, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  2
value = 2

[State -2, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
value = 12,2

[State -2, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  2
value = 3


;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char
[State -3, Finish Hit Explod - Helper] 
type = Helper
triggerall = NumHelper(8920) < 1
triggerall = (WinKO) && (NumHelper(8900) = 0) ;&& (StateNo != 1210)
trigger1 = (StateNo = [200,2999]) && (Time >= 0) 
trigger2 = NumHelper(1205) = 1 || NumHelper(1206) = 1 || NumHelper(1207) = 1
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, 0
postype = p1
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;--------------------------------
;Author: FlowaGirl
;flowergirl@cutey.com
;http://blargh.i-xcell.com
;and Ethan Lives triggers.
; taken with permission from McCready's Guido char
;[State -3, Super Finish BG - Helper] 
;type = Helper
;triggerall = NumHelper(8900) < 1
;triggerall = (WinKO) && (NumHelper(8920) = 0) 
;trigger1 = (StateNo = [3000,4999]) && (Time >= 0)
;helpertype = Normal
;name = "Super Finish BG"
;id = 8920
;pos = 0, 0
;postype = p1
;facing = 0
;stateno = 8920
;keyctrl = 0
;ownpal = 1
;supermovetime = 1000
;pausemovetime = 1000
;ignorehitpause = 1

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
