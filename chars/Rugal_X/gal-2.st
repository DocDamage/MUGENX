;============================================================================
;풓XeCg֘A
;============================================================================
[Statedef -2]
;============================================================================
;ps[ݒ
[state -2, 1]
type = helper
trigger1 = RoundState >= 2
trigger1 = var(50) = 0
trigger1 = NumHelper(6000) = 0
ID = 6000
pos = -120, 0
postype = p1
stateno = 6000
helpertype = normal
name = "papy"
keyctrl = 0
ownpal = 1

;===========================================================================
;U͂̕ω
;---------------------------------------------------------------------------
;ʏ펞̍U␳(ʏ펞)
[State -2, 43]
type = AttackMulSet
trigger1 = var(25) = 0 || var(25) = 3
value = 0.89

;{̍U␳({莞)
[State -2, 43]
type = AttackMulSet
trigger1 = var(25) = 1
trigger1 = var(26) > 0
value = 1.00

;{̍U␳({蔚)
[State -2, 43]
type = AttackMulSet
trigger1 = var(25) = 2
trigger1 = var(36) > 0
value = 1.20

;===========================================================================
;Uqbg̉ʑŜ̐ԐF
;---------------------------------------------------------------------------
;[State -2, 5] 
;type = explod
;triggerall = Movehit = 1
;triggerall = var(24) = 1
;trigger1 = (stateno >= 300) && (stateno <= 310)
;trigger2 = (stateno >= 400) && (stateno <= 410)
;trigger3 = (stateno >= 600) && (stateno <= 610)
;ID = 201
;anim = 10009
;persistent = 0
;pos = 0,0
;postype = left
;sprpriority = 6
;bindtime = 1
;ontop = 1
;scale = 1000,1000
;ignorehitpause = 0
;PauseMoveTime = 99999999999

;[State -2, 6] 
;type = removeexplod
;triggerall = Movehit > 1
;trigger1 = (stateno >= 300) && (stateno <= 310)
;trigger2 = (stateno >= 400) && (stateno <= 410)
;trigger3 = (stateno >= 600) && (stateno <= 610)
;ID = 201
;ignorehitpause = 1
;PauseMoveTime = 99999999999

;===========================================================================
;ɂUeꂽƂ̏
;---------------------------------------------------------------------------
;eiAj
[State -2, ]
type = ChangeState
triggerall = MoveGuarded = 2
trigger1 = stateno >= 200 && stateno <= 215
value = 800

;eiAj
[State -2, ]
type = ChangeState
triggerall = MoveGuarded = 2
trigger1 = stateno >= 220 && stateno <= 225
trigger2 = stateno = 300
value = 801

;eiႪ݁Aj
[State -2, ]
type = ChangeState
triggerall = MoveGuarded = 2
trigger1 = stateno = 400 || stateno = 410
trigger2 = stateno = 310
value = 810

;eiႪ݁Aj
[State -2, ]
type = ChangeState
triggerall = MoveGuarded = 2
trigger1 = stateno = 420
value = 811


;===========================================================================
;炢
;---------------------------------------------------------------------------
[State -2, 1]
type = VarSet
triggerall = time = 1
trigger1 = stateno = 5000
trigger2 = stateno = 5010
trigger3 = stateno = 5020
v = 30 
value = 1

[State -2, 2]
type = VarAdd
trigger1 = var(30) = 1
v = 31
value = 1

[State -2, 3]
type = VarSet
trigger1 = time = 2
trigger1 = var(31) = 6
v = 31 
value = 0 

[State -2, 4]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 1
value = 2,0

[State -2, 5]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 2
value = 2,1

[State -2, 6]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 3
value = 2,2

[State -2, 7]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 4
value = 2,3

[State -2, 8]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 5
value = 2,4

[State -2, 9]
type = PlaySnd
trigger1 = var(30) = 1
trigger1 = var(31) = 6
value = 2,5

[State -2, 10]
type = VarSet
trigger1 = var(30) = 1
v = 30
value =0 ; var00ɖ߂܂i]vĐȂ悤Ɂj

;===========================================================================
;1P2P
;---------------------------------------------------------------------------
;X^[g_AǂH
[State -2, 13]
type = varset
trigger1 = RoundState <= 1
trigger1 = facing = 1
v =10
value = 1

;X^[g_AǂH
[State -2, 14]
type = varset
trigger1 = RoundState <= 1
trigger1 = facing = -1
v =10
value = 0

;===========================================================================
;C\
;---------------------------------------------------------------------------
;1,2P
;---------------------------------------------------------------------------
[state -2, syurar] ;Cright
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9020) < 1
trigger1 = var(50) = 0 || var(50) = 2
trigger1 = var(10) = 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9020
ID = 9020
sprpriority = 1
postype = right
pos = -20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, syural] ;Cleft
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9020) < 1
trigger1 = var(50) = 0 || var(50) = 2
trigger1 = var(10) = 1
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9020
ID = 9020
sprpriority = 1
postype = left
pos = 20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, rasetur] ;right
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9021) < 1
trigger1 = var(50) = 1 || var(50) = 3
trigger1 = var(10) = 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9021
ID = 9021
sprpriority = 1
postype = right
pos = -20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, rasetul] ;left
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9021) < 1
trigger1 = var(50) = 1 || var(50) = 3
trigger1 = var(10) = 1
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9021
ID = 9021
sprpriority = 1
postype = left
pos = 20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, haikeir] ;Cright
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9022) < 1
trigger1 = var(50) = 0 || var(50) = 2
trigger1 = var(10) = 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9022
ID = 9022
sprpriority = 0
postype = right
pos = -20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, haikeil] ;Cleft
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9022) < 1
trigger1 = var(50) = 0 || var(50) = 2
trigger1 = var(10) = 1
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9022
ID = 9022
sprpriority = 0
postype = left
pos = 20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, rasetur] ;right
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9023) < 1
trigger1 = var(50) = 1 || var(50) = 3
trigger1 = var(10) = 0
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9023
ID = 9023
sprpriority = 0
postype = right
pos = -20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, rasetul] ;left
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9023) < 1
trigger1 = var(50) = 1 || var(50) = 3
trigger1 = var(10) = 1
trigger1 = p1name = "galford" || p3name = "galford"
anim = 9023
ID = 9023
sprpriority = 0
postype = left
pos = 20,65
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

;---------------------------------------------------------------------------
;3,4P
;---------------------------------------------------------------------------
[state -2, syurar] ;Cright
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9024) < 1
trigger1 = var(50) = 0 || var(50) = 1
trigger1 = var(10) = 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9024
ID = 9024
sprpriority = 1
postype = right
pos = -20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, syural] ;Cleft
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9024) < 1
trigger1 = var(50) = 0 || var(50) = 1
trigger1 = var(10) = 1
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9024
ID = 9024
sprpriority = 1
postype = left
pos = 20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, rasetur] ;right
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9025) < 1
trigger1 = var(50) = 2 || var(50) = 3
trigger1 = var(10) = 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9025
ID = 9025
sprpriority = 1
postype = right
pos = -20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, rasetul] ;left
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9025) < 1
trigger1 = var(50) = 2 || var(50) = 3
trigger1 = var(10) = 1
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9025
ID = 9025
sprpriority = 1
postype = left
pos = 20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, haikeir] ;Cright
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9026) < 1
trigger1 = var(50) = 0 || var(50) = 1
trigger1 = var(10) = 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9026
ID = 9026
sprpriority = 0
postype = right
pos = -20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, haikeil] ;Cleft
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9026) < 1
trigger1 = var(50) = 0 || var(50) = 1
trigger1 = var(10) = 1
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9026
ID = 9026
sprpriority = 0
postype = left
pos = 20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, rasetur] ;right
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9027) < 1
trigger1 = var(50) = 2 || var(50) = 3
trigger1 = var(10) = 0
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9027
ID = 9027
sprpriority = 0
postype = right
pos = -20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

[state -2, rasetul] ;left
type = explod
trigger1 = RoundState >= 2
trigger1 = NumExplod(9027) < 1
trigger1 = var(50) = 2 || var(50) = 3
trigger1 = var(10) = 1
trigger1 = p1name = "galford" && p3name = "galford"
anim = 9027
ID = 9027
sprpriority = 0
postype = left
pos = 20,85
ownpal = 1
bindtime = -1
ignorehitpause = 1
pausemovetime = 99999

;===========================================================================
;C\(I)
;---------------------------------------------------------------------------
;vZ
;---------------------------------------------------------------------------
;KtH[hoQIe
[State -2, 1]
type = varadd
triggerall = stateno = 190 | stateno = 191 | stateno = 192
triggerall = var(49) = 0
trigger1 = command = "F"
var(51) = 1

[State -2, 1]
type = varadd
triggerall = stateno = 190 | stateno = 191 | stateno = 192
triggerall = var(49) = 0
trigger1 = command = "B"
var(51) = -1

[State -2, 1]
type = varset
trigger1 = var(51) < 0
var(51) = 5

[State -2, 1]
type = varset
trigger1 = var(51) > 5
var(51) = 0

[State -2, C]
type = varset
trigger1 = var(51) = 0 || var(51) = 2 || var(51) = 4
var(50) = 0

[State -2, ]
type = varset
trigger1 = var(51) = 1 || var(51) = 3 || var(51) = 5
var(50) = 1

[State -2, 3]
type = varset
triggerall = stateno = 190 | stateno = 191 | stateno = 192
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
var(49) = 1

;---------------------------------------------------------------------------
;\
;---------------------------------------------------------------------------
[State -2, 4]
type = explod
triggerall = stateno = 190 | stateno = 191 | stateno = 192
triggerall = var(49) = 0
trigger1 = var(50) = 0
anim = 10011
ID = 10011
sprpriority = 1
postype = p1
pos = -40,-70
facing = ifelse(var(10)=0,-1,1)
ownpal = 1
bindtime = 1
ignorehitpause = 1
pausemovetime = 99999999


[State -2, 4_]
type = explod
triggerall = stateno = 190 | stateno = 191 | stateno = 192
triggerall = var(49) = 0
trigger1 = var(50) = 0
anim = 10012
ID = 10017
sprpriority = -1
postype = p1
pos = -58,-58
facing = ifelse(var(10)=0,-1,1)
ownpal = 1
bindtime = 1
ignorehitpause = 1
pausemovetime = 99999999
scale = 0.6,0.6

[State -2, 5]
type = explod
triggerall = stateno = 190 | stateno = 191 | stateno = 192
trigger1 = var(49) = 0
trigger1 = var(50) = 1
anim = 10012
ID = 10012
sprpriority = 1
postype = p1
pos = -40,-70
facing = ifelse(var(10)=0,-1,1)
ownpal = 1
bindtime = 1
ignorehitpause = 1
pausemovetime = 99999999


[State -2, 5_]
type = explod
triggerall = stateno = 190 | stateno = 191 | stateno = 192
trigger1 = var(49) = 0
trigger1 = var(50) = 1
anim = 10011
ID = 10016
sprpriority = -1
postype = p1
pos = -58,-58
facing = ifelse(var(10)=0,-1,1)
ownpal = 1
bindtime = 1
ignorehitpause = 1
pausemovetime = 99999999
scale = 0.6,0.6

;===========================================================================
;{֘A
;---------------------------------------------------------------------------
;{܂(e)
;---------------------------------------------------------------------------
;{Q[WlvZ
[State -2, 20]
type = varAdd
trigger1 = time = 0
trigger1 = var(25) = 0
trigger1 = (StateNo >= 5000) && (StateNo <= 5080)
v = 27
value = GetHitVar(damage)/6.0

{邩ǂ
[State -2, 21]
type = varadd
trigger1 = var(25) = 0
trigger1 = var(26) <= 0
trigger1 = var(27) >= 65
v =25
value = 1

;---------------------------------------------------------------------------
;{(e)
;---------------------------------------------------------------------------
;{莞Ԑݒ
[State -2, 22]
type = varadd
trigger1 = var(25) = 1
trigger1 = var(26) <= 0
var(26) = 500

[State -2, 22]
type = varset
trigger1 = var(25) = 1
var(27) = 0

;{莞Ԃ炵Ă
[State -2, 23]
type = varadd
trigger1 = RoundState = 2
trigger1 = Movetype = I
trigger1 = var(25) = 1
trigger1 = var(26) > 0
var(26) = -1

;{I
[State -2, 24]
type = varadd
trigger1 = var(25) = 1
trigger1 = var(26) <= 0
var(25) = -1

;{ԃKtH[hJ[ύX
[State -2, 40]
type = PalFX
trigger1 = var(25) = 1
add = 40,14,14
sinadd = 40, 10, 10, 10
time = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

;===========================================================================
;---------------------------------------------------------------------------
;{Q[Wʏo(ʏԁ`{)
;---------------------------------------------------------------------------
;1PTCh
;---------------------------------------------------------------------------
[State -2, Explod]
type = RemoveExplod
triggerall = Var(10) = 1
trigger1 = var(25) = 0
trigger1 = numexplod(11010) > 0
trigger1 = roundstate >= 2
trigger2 = var(25) = 2
id = 11010
ignorehitpause = 1
PauseMoveTime = 2147483647

;1P({)
[state -2, Explod]
type = explod
trigger1 = var(10) = 1
trigger1 = var(25) = 1
trigger1 = numexplod(11010) = 0
trigger1 = roundstate >= 2
anim = 11010
ID = 11010
sprpriority = 15
postype = left
pos = var(16),var(17)
ontop = 1
ownpal = 1
bindtime = -1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 1
trigger1 = var(25) = 0
trigger1 = numexplod(11000) > 0
trigger1 = roundstate >= 2
trigger2 = var(25) = 1
trigger3 = var(25) = 2
id = 11000
ignorehitpause = 1
PauseMoveTime = 2147483647

;1P(ʏԌ)
[state -2, Explod]
type = explod
trigger1 = var(10) = 1
trigger1 = var(25) = 0
trigger1 = numexplod(11000) = 0
trigger1 = roundstate >= 2
anim = 11000
ID = 11000
sprpriority = 10
postype = left
pos = var(16),var(17)
ontop = 1
ownpal = 1
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

;1P(ʏԃQ[WZ_܂͏)
[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 1
trigger1 = var(25) = 0
trigger1 = (StateNo = 5000) || (StateNo = 5010) || (StateNo = 5020) || (StateNo = 5070) || (StateNo = 5080)
trigger1 = numexplod(11005) > 0
trigger1 = roundstate >= 2
trigger2 = Var(10) = 0
trigger2 = var(25) = 1
trigger3 = var(25) = 2
id = 11005
ignorehitpause = 1
PauseMoveTime = 2147483647

;1P(ʏԃQ[WZ_ɕ\)
[state -2, Explod]
type = explod
triggerall = var(10) = 1
triggerall = var(25) = 0
triggerall = numexplod(11005) = 0
trigger1 = roundstate >= 2
anim = 11005
ID = 11005
facing = -1
sprpriority = 12
postype = left
pos = var(16)+64,var(17)
ontop = 1
ownpal = 1
bindtime = -1
scale = var(27)/65.0, 1
ignorehitpause = 1
PauseMoveTime = 2147483647


;---------------------------------------------------------------------------
;2PTCh
;---------------------------------------------------------------------------
[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 0
trigger1 = var(25) = 0
trigger1 = numexplod(11011) > 0
trigger1 = roundstate >= 2
trigger2 = var(25) = 2
id = 11011
ignorehitpause = 1
PauseMoveTime = 2147483647

;2P({)
[state -2, Explod]
type = explod
trigger1 = var(10) = 0
trigger1 = var(25) = 1
trigger1 = numexplod(11011) = 0
trigger1 = roundstate >= 2
anim = 11011
ID = 11011
sprpriority = 15
postype = right
pos = var(16)*-1,var(17)
ontop = 1
ownpal = 1
bindtime = -1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 0
trigger1 = var(25) = 0
trigger1 = numexplod(11001) > 0
trigger1 = roundstate >= 2
trigger2 = var(25) = 1
trigger3 = var(25) = 2
id = 11001
ignorehitpause = 1
PauseMoveTime = 2147483647

;2P(ʏԌ)
[state -2, Explod]
type = explod
trigger1 = var(10) = 0
trigger1 = var(25) = 0
trigger1 = numexplod(11001) = 0
trigger1 = roundstate >= 2
anim = 11001
ID = 11001
sprpriority = 15
postype = right
pos = var(16)*-1,var(17)
ontop = 1
ownpal = 1
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

;2P(ʏԃQ[WZ_܂͏)
[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 0
trigger1 = var(25) = 0
trigger1 = (StateNo = 5000) || (StateNo = 5010) || (StateNo = 5020) || (StateNo = 5070) || (StateNo = 5080)
trigger1 = numexplod(11006) > 0
trigger1 = roundstate >= 2
trigger2 = Var(10) = 1
trigger2 = var(25) = 1
trigger3 = var(25) = 2
id = 11006
ignorehitpause = 1
PauseMoveTime = 2147483647

;2P(ʏԃQ[WZ_ɕ\)
[state -2, Explod]
type = explod
triggerall = var(10) = 0
triggerall = var(25) = 0
triggerall = numexplod(11006) = 0
trigger1 = roundstate >= 2
anim = 11006
ID = 11006
sprpriority = 16
postype = right
pos = (var(16)*-1)-64,var(17)
ontop = 1
ownpal = 1
bindtime = -1
ignorehitpause = 1
PauseMoveTime = 2147483647
scale = var(27)/65.0, 1

;===========================================================================
;{蔚֘A
;---------------------------------------------------------------------------
;{蔚O({蔚Ԑݒ)
;---------------------------------------------------------------------------
;JEg
[State -2, JEg]
type = VarSet
trigger1 = Lose = 1
v = 47
value = 1
ignorehitpause = 1

;LIFEL^
[State -2, LIFEJEg]
type = VarSet
trigger1 = 1
v = 48
value = LIFE
ignorehitpause = 1
PauseMoveTime = 2147483647

;---------------------------------------------------------------------------
;{蔚Ԑݒ()
[State -2, ]
type = VarSet
trigger1 = var(47) = 0
v = 37
value = 80
ignorehitpause = 1

;{蔚Ԑݒ(11)
[State -2, ]
type = VarSet
trigger1 = var(47) = 1
trigger1 = var(48) >= 800
v = 37
value = 160
ignorehitpause = 1

;{蔚Ԑݒ(12)
[State -2, ]
type = VarSet
trigger1 = var(47) = 1
trigger1 = var(48) >= 600 && var(48) < 800
v = 37
value = 320
ignorehitpause = 1

;{蔚Ԑݒ(13)
[State -2, ]
type = VarSet
trigger1 = var(47) = 1
trigger1 = var(48) >= 400 && var(48) < 600
v = 37
value = 480
ignorehitpause = 1

;{蔚Ԑݒ(14)
[State -2, ]
type = VarSet
trigger1 = var(47) = 1
trigger1 = var(48) < 400
v = 37
value = 800
ignorehitpause = 1

;---------------------------------------------------------------------------
;{蔚(e)
;---------------------------------------------------------------------------
;{蔚Ԑݒ
[State -2, 22]
type = varadd
trigger1 = stateno != 3500
trigger1 = var(25) = 2
trigger1 = var(36) <= 0
var(36) = var(37)
ignorehitpause = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

;{蔚Ԃ炵Ă
[State -2, 23]
type = varadd
trigger1 = stateno != 3500
trigger1 = RoundState = 2
trigger1 = Movetype != H
trigger1 = var(25) = 2
trigger1 = var(36) > 0
var(36) = -1
ignorehitpause = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

;{蔚I
[State -2, 24]
type = varadd
triggerall = var(25) = 2
trigger1 = stateno != 3500
trigger1 = var(36) <= 0
trigger2 = win = 1 || lose = 1
trigger3 = stateno = 4500
var(25) = 1
ignorehitpause = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

;{蔚ԃKtH[hJ[ύX
[State -2, 40]
type = PalFX
trigger1 = var(25) = 2
add = 60,20,20
sinadd = 40, 10, 10, 10
time = 1
ignorehitpause = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

;---------------------------------------------------------------------------
;{蔚(o)
;---------------------------------------------------------------------------
;1P
;---------------------------------------------------------------------------
;1P({蔚Q[W_܂͏)
[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 1
trigger1 = var(25) = 2
trigger1 = numexplod(3521) >= 1
id = 3521
ignorehitpause = 1
PauseMoveTime = 2147483647

;1P({蔚Q[W_ɕ\)
[state -2, Explod]
type = explod
trigger1 = stateno != 3500
trigger1 = var(10) = 1
trigger1 = var(25) = 2
trigger1 = numexplod(3521) = 0
anim = 3521
ID = 3521
facing = 1
sprpriority = 10
postype = left
pos = var(16)+53,var(17)
ontop = 1
ownpal = 1
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

;1P({蔚Q[W_܂͏)
[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 1
trigger1 = var(25) = 2
trigger1 = numexplod(3520) >= 1
id = 3520
ignorehitpause = 1
PauseMoveTime = 2147483647

;1P({蔚Q[W_ɕ\)
[state -2, Explod]
type = explod
trigger1 = stateno != 3500
trigger1 = var(10) = 1
trigger1 = var(25) = 2
trigger1 = numexplod(3520) = 0
anim = 3520
ID = 3520
facing = 1
sprpriority = 12
postype = left
pos = var(16)+53,var(17)
ontop = 1
ownpal = 1
bindtime = 1
scale = var(36)/800.0, 1
ignorehitpause = 1
PauseMoveTime = 2147483647

;---------------------------------------------------------------------------
;2P
;---------------------------------------------------------------------------
;2P({蔚Q[W_܂͏)
[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 0
trigger1 = var(25) = 2
trigger1 = numexplod(3521) >= 1
id = 3521
ignorehitpause = 1
PauseMoveTime = 2147483647

;2P({蔚Q[W_ɕ\)
[state -2, Explod]
type = explod
trigger1 = stateno != 3500
trigger1 = var(10) = 0
trigger1 = var(25) = 2
trigger1 = numexplod(3521) = 0
anim = 3521
ID = 3521
facing = -1
sprpriority = 10
postype = right
pos = (var(16)*-1)-53,var(17)
ontop = 1
ownpal = 1
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

;2P({蔚Q[W_܂͏)
[State -2, Explod]
type = RemoveExplod
trigger1 = Var(10) = 0
trigger1 = var(25) = 2
trigger1 = numexplod(3520) >= 1
id = 3520
ignorehitpause = 1
PauseMoveTime = 2147483647

;2P({蔚Q[W_ɕ\)
[state -2, Explod]
type = explod
trigger1 = stateno != 3500
trigger1 = var(10) = 0
trigger1 = var(25) = 2
trigger1 = numexplod(3520) = 0
anim = 3520
ID = 3520
facing = -1
sprpriority = 12
postype = right
pos = (var(16)*-1)-53,var(17)
ontop = 1
ownpal = 1
bindtime = 1
scale = var(36)/800.0, 1
ignorehitpause = 1
PauseMoveTime = 2147483647

;===========================================================================
;M֘A
;---------------------------------------------------------------------------
;MU͌vZ
;---------------------------------------------------------------------------
;U͋L^
[State -2, _[W]
type = VarSet
trigger1 = 1
v = 45
value =var(48) - 980
ignorehitpause = 1
PauseMoveTime = 2147483647


;===========================================================================
;===========================================================================
;AI֘A
;===========================================================================
;===========================================================================
;AIݒ
;---------------------------------------------------------------------------
[State -2, AI_sIprandom_var]
type = varrandom
triggerall = time = 0
trigger1 = (StateNo >= 200) && (StateNo <= 4000)
v = 15
range = 1000


;===========================================================================
;AI̓
;===========================================================================
;---------------------------------------------------------------------------
;AI{蔚
;---------------------------------------------------------------------------
;AI{蔚
[State -2, ikari_hassei]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(25) < 2
triggerall = Life > 0
triggerall = stateno != 3500
triggerall = roundno = 2 && var(47) >= 1 || roundno = 3
trigger1 = (win = 0) || (lose = 0) || (DrawGame = 0)
trigger1 = var(15) = [50,300]
trigger1 = statetype != A
trigger1 = MoveType = I
trigger1 = life < 450
trigger1 = p2life > 100
value = 3500

;---------------------------------------------------------------------------
;AIM
;---------------------------------------------------------------------------
;`ߋňM
[State -2, mustnear_C_syou-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(25) = 2
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [50,150]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = stateno != 4500
trigger1 = p2bodydist X = [0, 50]
value = 4500

;===========================================================================
;AIC̗
;===========================================================================
;ߐ
;---------------------------------------------------------------------------
;łႪݏa
[State -2, mustnear_C_syou-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [0,60]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 400

;---------------------------------------------------------------------------
;ŏ
[State -2, mustnear_c_kick]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [101,170]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 430

;---------------------------------------------------------------------------
;ŗR
[State -2, mustnear_S_Downkick]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [171,250]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 240

;---------------------------------------------------------------------------
;ŉ荞
[State -2, mustnear_mawarikomi]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [251,500]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 730

;---------------------------------------------------------------------------
;œ(˂)
[State -2, mustnear_nage]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType = S
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [501,800]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 900

;---------------------------------------------------------------------------
;ŃobNXebv
[State -2, mustnear_backstep]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [801,950]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 105

;===========================================================================
;ߋ
;---------------------------------------------------------------------------
;ߋłႪݒa
[State -2, near_C_tyuu-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [50,200]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 410

;---------------------------------------------------------------------------
;ߋŗߏa
[State -2, near_S_syo-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [201,250]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 205

;---------------------------------------------------------------------------
;ߋłႪݑa
[State -2, near_C_dai-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [251,400]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 420

;---------------------------------------------------------------------------
;ߋŃvY}u[h
[State -2, near_pbread]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = numproj = 0
trigger1 = var(15) = [401,550]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 1020

;---------------------------------------------------------------------------
;ߋŃobNXebv
[State -2, near_backstep]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [651,850]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 105

;---------------------------------------------------------------------------
;ߋŃvJhbO
[State -2, near_repricadog]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
trigger1 = var(15) = [851,900]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 6070
;===========================================================================
;
;---------------------------------------------------------------------------
;ߋŗa
[State -2, mid_ST_syo-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [81,200]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 200

;---------------------------------------------------------------------------
;ߋŗa
[State -2, mid_ST_dai-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [201,250]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 220

;---------------------------------------------------------------------------
;ߋłႪݑa
[State -2, mid_C_dai-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [251,350]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 420

;---------------------------------------------------------------------------
;őO
[State -2, mid_Fdash]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [351,800]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 100

;---------------------------------------------------------------------------
;ŃvY}u[h
[State -2, mid_pbread]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = numproj = 0
trigger1 = var(15) = [801,840]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 1020

;---------------------------------------------------------------------------
;ŃvJhbO
[State -2, mid_repricadog]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
trigger1 = var(15) = [841,880]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 6070

;===========================================================================
;
;---------------------------------------------------------------------------
;ŃvY}u[h
[State -2, far_pbread]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = numproj = 0
trigger1 = var(15) = [0,100]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [120, 250]
value = 1020

;---------------------------------------------------------------------------
;ŃvY}u[h2
[State -2, far_pbread]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = numproj = 0
trigger1 = var(15) = [101,250]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [120, 250]
value = 1000

;---------------------------------------------------------------------------
;ŃvJhbO
[State -2, far_repricadog]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
trigger1 = var(15) = [251,300]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [120, 250]
value = 6070

;---------------------------------------------------------------------------
;ŃbVhbO
[State -2, far_repricadog]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
trigger1 = var(15) = [301,350]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [120, 250]
value = 6050

;---------------------------------------------------------------------------
;œ{()̂̎A_uKXgCNwbYF
[State -2, far_repricadog]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = var(25) = [1,2]
triggerall = StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
trigger1 = var(15) = [351,425]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [120, 250]
value = 3200

;---------------------------------------------------------------------------
;œ{()̂̎A_uKXgCNwbYB
[State -2, far_repricadog]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = var(25) = [1,2]
triggerall = StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
trigger1 = var(15) = [426,500]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [120, 250]
value = 3300

;---------------------------------------------------------------------------
;őO
[State -2, far_Fdash]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [501,900]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [120, 250]
value = 100

;===========================================================================
;蒆
;---------------------------------------------------------------------------
;蒆ɑ菬a
[State -2, dash_ST_syo-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [0,100]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [20, 50]
value = 300

;---------------------------------------------------------------------------
;蒆ɑ蒆a
[State -2, dash_ST_syo-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [101,200]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [20, 50]
value = 310

;---------------------------------------------------------------------------
;蒆ɏ
[State -2, dash_c_kick]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [251,350]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [0, 10]
value = 430


;---------------------------------------------------------------------------
;蒆ɓ(˂)
[State -2, dash_nage]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [351,650]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [1, 5]
value = 900

;---------------------------------------------------------------------------
;蒆ɑa
[State -2, dash_ST_dai-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [651,700]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [20, 50]
value = 320

;---------------------------------------------------------------------------
;蒆ɃobNXebv
[State -2, dash_backstep]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [701,900]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [20, 50]
value = 105

;===========================================================================
;΋
;---------------------------------------------------------------------------
;`ő΋󃌃vJhbO
[State -2, mid_repricadog]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType = A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
triggerall = helper,stateno = 6000 || helper,stateno = 6020
triggerall = facing = 1 && helper , facing = 1 ||  facing = -1 && helper , facing = -1
trigger1 = var(15) = [0,300]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2stateno != 105
trigger1 = p2bodydist X = [60, 300]
value = 6070

;===========================================================================
;肪_E
;---------------------------------------------------------------------------
;肪_Eɏǂ
[State -2, oiuti_syo]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType = L
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [101,400]
trigger1 = p2bodydist X = [0, 14]
value = 770

;---------------------------------------------------------------------------
;肪_Eɑǂ
[State -2, oiuti_dai]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 0
triggerall = StateType != A
triggerall = p2StateType = L
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [401,550]
trigger1 = p2bodydist X = [0, 14]
value = 780

;===========================================================================
;AI̗
;===========================================================================
;ߐ
;---------------------------------------------------------------------------
;łႪݏa
[State -2, mustnear_C_syou-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [0,60]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 400

;---------------------------------------------------------------------------
;ŏ
[State -2, mustnear_c_kick]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [101,170]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 430

;---------------------------------------------------------------------------
;ŗR
[State -2, mustnear_S_Downkick]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [171,200]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 240

;---------------------------------------------------------------------------
;ŉ荞
[State -2, mustnear_mawarikomi]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [201,400]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 730

;---------------------------------------------------------------------------
;œ(˂)
[State -2, mustnear_nage]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType = S
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [401,600]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 900

;---------------------------------------------------------------------------
;ŃXgCNwbY
[State -2, mustnear_strikeheads]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType = S
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [601,800]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 1700

;---------------------------------------------------------------------------
;ŃobNXebv
[State -2, mustnear_backstep]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [801,920]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 105

;---------------------------------------------------------------------------
;ŃvY}uCN
[State -2, mustnear_backstep]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [921,980]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [0, 5]
value = 1600

;===========================================================================
;ߋ
;---------------------------------------------------------------------------
;ߋłႪݒa
[State -2, near_C_tyuu-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [0,150]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 410

;---------------------------------------------------------------------------
;ߋŗߏa
[State -2, near_S_syo-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [151,200]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 205

;---------------------------------------------------------------------------
;ߋłႪݑa
[State -2, near_C_dai-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [201,380]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 420


;---------------------------------------------------------------------------
;ߋőO
[State -2, near_Fdash]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [401,600]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 100

;---------------------------------------------------------------------------
;ߋŃobNXebv
[State -2, near_backstep]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [601,700]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 105

;---------------------------------------------------------------------------
;ߋŃvY}t@N^[
[State -2, near_pfact]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [701,750]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 1500

;---------------------------------------------------------------------------
;ߋŃCgjOXbV
[State -2, near_rslash]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [751,800]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 1800

;---------------------------------------------------------------------------
;ߋœ{()ɃCgjOXgCNX[
[State -2, near_rslash]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = var(25) = [1,2]
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [801,950]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [6, 30]
value = 1800

;===========================================================================
;
;---------------------------------------------------------------------------
;ߋŗa
[State -2, mid_ST_syo-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [0,150]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 200

;---------------------------------------------------------------------------
;ߋŗa
[State -2, mid_ST_dai-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [151,250]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 220

;---------------------------------------------------------------------------
;ߋłႪݑa
[State -2, mid_C_dai-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [251,350]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 420

;---------------------------------------------------------------------------
;őO
[State -2, mid_Fdash]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [401,950]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [40, 110]
value = 100


;===========================================================================
;
;---------------------------------------------------------------------------
;őO
[State -2, far_Fdash]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [0,800]
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger1 = p2bodydist X = [120, 250]
value = 100

;===========================================================================
;蒆
;---------------------------------------------------------------------------
;蒆ɑ菬a
[State -2, dash_ST_syo-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [0,250]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [20, 50]
value = 300

;---------------------------------------------------------------------------
;蒆ɑ蒆a
[State -2, dash_ST_syo-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [251,400]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [20, 50]
value = 310

;---------------------------------------------------------------------------
;蒆ɏ
[State -2, dash_c_kick]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [401,450]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [0, 10]
value = 430


;---------------------------------------------------------------------------
;蒆ɓ(˂)
[State -2, dash_nage]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [451,700]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [1, 5]
value = 900

;---------------------------------------------------------------------------
;蒆ɑa
[State -2, dash_ST_dai-zan]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [701,800]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [20, 50]
value = 320

;---------------------------------------------------------------------------
;蒆ɃobNXebv
[State -2, dash_backstep]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = Life > 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = var(15) = [801,850]
trigger1 = stateno = 100
trigger1 = p2bodydist X = [20, 50]
value = 105

;===========================================================================
;肪_E
;---------------------------------------------------------------------------
;肪_Eɏǂ
[State -2, oiuti_syo]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType = L
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [101,300]
trigger1 = p2bodydist X = [0, 14]
value = 770

;---------------------------------------------------------------------------
;肪_Eɑǂ
[State -2, oiuti_dai]
type = ChangeState
triggerall = var(40) = 1
triggerall = var(50) = 1
triggerall = StateType != A
triggerall = p2StateType = L
triggerall = Life > 0
triggerall = P2Life > 0
trigger1 = var(15) = [301,600]
trigger1 = p2bodydist X = [0, 14]
value = 780

