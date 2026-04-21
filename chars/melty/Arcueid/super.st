; Arcueid Brunestud - cns file No.5
;===========================================================================
; ＥＸ必殺技：シュナイデン・エンデ
;===========================================================================
;---------------------------------------------------------------------------
; ツーエスト
[Statedef 3000]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1000
;velset   = 0,0

[State 3000, Power]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 3000, Anten]
type = SuperPause
trigger1 = Time = 5
pos = 18,-84
anim = s3120;102
sound = s2,2
time = 40
darken = 1

[State 3000, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 13

[State 3000, Cut-In]
type = Helper
trigger1 = Time = 5
name = "Cut-In"
stateno = 960
ID = 960
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

;***********************************
[State 3000, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 3000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(7) = 0
x = 4

[State 3000, VelSet]
type = VelSet
trigger1 = ((AnimElemTime(5) >= 0) && (AnimElemTime(8) < 0))
x = 3

[State 3000, Width]
type = Width
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(15) < 0))
value = 17,0

[State 3000, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3000, Effect]
type = Helper
trigger1 = AnimElemTime(5) = 0
name = "jama-1"
stateno = 2000
ID = 1000
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 3000, HitSpark]
type = Helper
trigger1 = ProjHit3000 = 1
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-50-Random/30,-50+Random/30));-50
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

[State 3000, GuardSpark]
type = Helper
trigger1 = ProjGuarded3000 = 1
name = "GuardSpark"
stateno = 952
ID = 952
pos = 0,ceil(ifelse(Random<500,-50-Random/30,-50+Random/30));-50
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

;***********************************
[State 3000, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 5
value = s7,3

[State 3000, SE]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s0,2

;***********************************
[State 3000, Force]
type = Projectile
trigger1 = AnimElem = 6
attr             = S, HP
offset           = 10,-50
velocity         = 1.1,0
damage           = 25,2
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 3000
projanim         = 1004
projhitanim      = 1004
projremanim      = 1004
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 4
projmisstime     = 6
projpriority     = 4
projremovetime   = 19
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s20010
sparkxy          = 0,0
guard.sparkno    = s20010
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -6,0
air.velocity     = -3,-4
air.animtype     = Back
air.juggle       = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

;***********************************
[State 3000, Change]
type = ChangeState
trigger1 = AnimElemTime(11) > 0
value = 3001

[State 3000, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ツヴァイマール
[Statedef 3001]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1001
;velset   = 0,0

[State 3001, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 3001, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
x = 4

[State 3001, VelSet]
type = VelSet
trigger1 = ((AnimElemTime(3) >= 0) && (AnimElemTime(6) < 0))
x = 2.25

[State 3001, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(11) < 0))
value = 17,0

[State 3001, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3001, Effect]
type = Helper
trigger1 = AnimElemTime(3) = 0
name = "jama-2"
stateno = 2001
ID = 1001
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 3001, HitSpark]
type = Helper
trigger1 = ProjHit3001 = 1
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-50-Random/30,-50+Random/30));-50
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

[State 3001, GuardSpark]
type = Helper
trigger1 = ProjGuarded3001 = 1
name = "GuardSpark"
stateno = 952
ID = 952
pos = 0,ceil(ifelse(Random<500,-50-Random/30,-50+Random/30));-50
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

;***********************************
[State 3001, SE]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,2

;***********************************
[State 3001, Force]
type = Projectile
trigger1 = AnimElem = 4
attr             = S, HP
offset           = 10,-50
velocity         = 1.1,0
damage           = 25,2
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 3001
projanim         = 1004
projhitanim      = 1004
projremanim      = 1004
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 6
projmisstime     = 6
projpriority     = 4
projremovetime   = 32;24
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s20010
sparkxy          = 0,0
guard.sparkno    = s20010
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -6,0
air.velocity     = -3,-4
air.animtype     = Back
air.juggle       = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

;***********************************
[State 3001, Change]
type = ChangeState
triggerall = command = "jama_high"
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(11) < 0))
value = 3002

[State 3001, Change]
type = ChangeState
triggerall = command = "jama_middle"
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(11) < 0))
value = 3004

[State 3001, Change]
type = ChangeState
triggerall = command = "jama_low"
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(11) < 0))
value = 3005

[State 3001, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; ツーレスト（下段・吹っ飛ばし有り）
[Statedef 3002]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1002
velset   = 0,0

[State 3002, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 3002, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(14) < 0))
value = 17,0

[State 3002, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3002, Effect]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "jama-3-1"
stateno = 2002
ID = 1002
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 3002, Huttobashi Helper]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Huttobashi"
stateno = 3003
ID = 3002
pos = 10,-50
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

[State 3002, HitSpark]
type = Helper
trigger1 = ProjHit3002 = 1
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-10
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

[State 3002, GuardSpark]
type = Helper
trigger1 = ProjGuarded3002 = 1
name = "GuardSpark"
stateno = 952
ID = 952
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-10
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

;***********************************
[State 3002, SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,2

;***********************************
[State 3002, Force]
type = Projectile
trigger1 = AnimElem = 5
attr             = S, HP
offset           = 10,-50
velocity         = 0.8,0
damage           = 30,3
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 3002
projanim         = 1004
projhitanim      = 1004
projremanim      = 1004
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 1
projmisstime     = 11
projpriority     = 4
projremovetime   = 8;24
;-----------------------------------
guardflag        = LA
priority         = 3
sparkno          = s20010
sparkxy          = 0,0
guard.sparkno    = s20010
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -1,-5
air.velocity     = -1,-5
yaccel = 0.8
air.animtype     = Back
air.juggle       = 1
fall = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

[State 3002, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ツーレスト（下段）用ワイヤーダメージヒットヘルパー
[Statedef 3003] 
type     = A
movetype = A
physics  = N
ctrl     = 0
juggle   = 0
poweradd = 0
anim     = 1004
SprPriority = -1

[State 3003, VelSet]
type = VelSet
trigger1 = 1
x = 0.8

[State 3003, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-10
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

[State 3003, GuardSpark]
type = Helper
trigger1 = MoveGuarded
name = "GuardSpark"
stateno = 952
ID = 952
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-10
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

;***********************************
[State 3003, Hit]
type = HitDef
trigger1 = time = 0
attr             = A, HP
animtype         = Back
damage           = 30,3
getpower         = 0,0
guardflag        = LA
priority         = 3
pausetime        = 0,11
sparkno          = s20010
sparkxy          = 0,0
guard.sparkno    = s20010
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -2,-2
air.velocity     = -2,-2
fall = 1
fall.recover = 0
P2StateNo = 11010
p2facing = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

;***********************************
[State 3003, Change]
type = DestroySelf
trigger1 = Root,MoveType = H
trigger2 = MoveHit
trigger3 = Time = 10

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; ツーレスト（中段）
[Statedef 3004]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1003
velset   = 0,0

[State 3004, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 3004, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(14) < 0))
value = 17,0

[State 3004, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3004, Effect]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "jama-3-2"
stateno = 2003
ID = 1003
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 3004, HitSpark]
type = Helper
trigger1 = ProjHit3004 = 1
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-10
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

[State 3004, GuardSpark]
type = Helper
trigger1 = ProjGuarded3004 = 1
name = "GuardSpark"
stateno = 952
ID = 952
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-10
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

;***********************************
[State 3004, SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,2

;***********************************
[State 3004, Force]
type = Projectile
trigger1 = AnimElem = 8
attr             = S, HP
offset           = 10,-30
velocity         = 0.8,0
damage           = 30,3
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 3004
projanim         = 1004
projhitanim      = 1004
projremanim      = 1004
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 2
projmisstime     = 8
projpriority     = 4
projremovetime   = 19
;-----------------------------------
guardflag        = HA
priority         = 3
sparkno          = s20010
sparkxy          = 0,0
guard.sparkno    = s20010
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -2.5,-5.5
air.velocity     = -3,-5.5
yaccel = 0.8
air.animtype     = Back
air.juggle       = 1
air.fall = 1
fall = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

[State 3004, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; ツーレスト（下段・吹っ飛ばし無し）
[Statedef 3005]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1002
velset   = 0,0

[State 3005, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 3005, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(14) < 0))
value = 17,0

[State 3005, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3005, Effect]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "jama-3-1"
stateno = 2002
ID = 1002
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 3005, HitSpark]
type = Helper
trigger1 = ProjHit3002 = 1
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-10
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

[State 3005, GuardSpark]
type = Helper
trigger1 = ProjGuarded3002 = 1
name = "GuardSpark"
stateno = 952
ID = 952
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-10
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

;***********************************
[State 3005, SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,2

;***********************************
[State 3005, Force]
type = Projectile
trigger1 = AnimElem = 5
attr             = S, HP
offset           = 10,-50
velocity         = 0.8,0
damage           = 30,3
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 3002
projanim         = 1004
projhitanim      = 1004
projremanim      = 1004
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 2
projmisstime     = 11
projpriority     = 4
projremovetime   = 19
;-----------------------------------
guardflag        = LA
priority         = 3
sparkno          = s20010
sparkxy          = 0,0
guard.sparkno    = s20010
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -1,-5
air.velocity     = -1,-5
yaccel = 0.8
air.animtype     = Back
air.juggle       = 1
fall = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

[State 3005, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; ＥＸ必殺技：シュテルベン・エンデ
;===========================================================================
;---------------------------------------------------------------------------
;１回目根元
[Statedef 3010]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1010
;velset   = 0,0

[State 3010, Power]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 3010, Anten]
type = SuperPause
trigger1 = Time = 5
pos = -8,-50
anim = s3120;102
sound = s2,2
time = 40
darken = 1

[State 3010, Cut-In]
type = Helper
trigger1 = Time = 5
name = "Cut-In"
stateno = 960
ID = 960
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

;***********************************
[State 3010, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 30

[State 3010, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 3010, VelSet]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
x = 1

[State 3010, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3010, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 5
value = s7,1

;***********************************
[State 3010, Hit]
type = HitDef
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
attr             = S, HA
animtype         = Back
damage           = 50,5
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,20
sparkno          = s20010
sparkxy          = -10,-60
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = Low
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -3
air.velocity     = -3,-4
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3010, HitSpark]
type = Helper
trigger1 = ((HitCount = 1) && (MoveHit))
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-60-Random/70,-60+Random/70));-60
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3010, HitSpark]
type = Helper
trigger1 = ((HitCount = 2) && (MoveHit))
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-60-Random/70,-60+Random/70));-60
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3010, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 3011

;---------------------------------------------------------------------------
;１回目上昇
[Statedef 3011]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1011

;***********************************
[State 3011, Pos]
type = PosAdd
trigger1 = time = 0
x = 5

[State 3011, VelSet]
type = VelSet
trigger1 = time = 0
x = 0.5
y = -5

[State 3011, VelSet]
type = VelAdd
trigger1 = time >= 4
y = 0.15

[State 3011, Width]
type = Width
trigger1 = 1
value = 17,0

;***********************************
[State 3011, Effect]
type = Helper
trigger1 = AnimElemTime(1) = 1
name = "urusai-1"
stateno = 2004
ID = 1100
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 3011, SE]
type = PlaySnd
trigger1 = Time = 2
value = s0,2

;***********************************
[State 3011, Hit]
type = HitDef
trigger1 = time = 3
trigger2 = time = 6
attr             = A, HA
animtype         = Up
damage           = 50,5
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,20
sparkno          = s20010
sparkxy          = -10,-60
guard.sparkno    = s3112
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -1,-8
air.velocity     = -1,-8
fall = 1
fall.recover = 0
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3011, HitSpark]
type = Helper
trigger1 = ((HitCount = 1) && (MoveHit))
name = "HitSpark"
stateno = 950
ID = 950
pos = -10,ceil(ifelse(Random<500,-80-Random/70,-80+Random/70));-80
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3011, HitSpark]
type = Helper
trigger1 = ((HitCount = 2) && (MoveHit))
name = "HitSpark"
stateno = 950
ID = 950
pos = -10,ceil(ifelse(Random<500,-80-Random/70,-80+Random/70));-80
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3011, Change]
type = ChangeState
trigger1 = Time >= 16
value = 3012

;---------------------------------------------------------------------------
;中継点
[Statedef 3012]
type     = A
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 1012

[State 3012, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 3012, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 70 ;45
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3012, Change]
type = ChangeState
trigger1 = AnimElemTime(7) > 0
value = 3013

;---------------------------------------------------------------------------
;２回目
[Statedef 3013]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1011

;***********************************
[State 3013, Pos]
type = PosAdd
trigger1 = time = 0
x = 5

[State 3013, VelSet]
type = VelSet
trigger1 = time = 0
x = 0.25
y = -3

[State 3013, VelSet]
type = VelAdd
trigger1 = time >= 4
y = 0.1

[State 3013, Width]
type = Width
trigger1 = 1
value = 17,0

;***********************************
[State 3013, Effect]
type = Helper
trigger1 = AnimElemTime(1) = 1
name = "urusai-1"
stateno = 2004
ID = 1100
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 3013, SE]
type = PlaySnd
trigger1 = Time = 2
value = s0,2

;***********************************
[State 3013, Hit]
type = HitDef
trigger1 = time = 3
trigger2 = time = 6
attr             = A, HA
animtype         = Up
damage           = 55,5
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,20
sparkno          = s20010
sparkxy          = -10,-60
guard.sparkno    = s3112
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = ifelse(var(6)=1,-0.2,-2),-8 ;-2,-8
air.velocity     = ifelse(var(6)=1,-0.2,-2),-8 ;-2,-8
fall = 1
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3013, HitSpark]
type = Helper
trigger1 = ((HitCount = 1) && (MoveHit))
name = "HitSpark"
stateno = 950
ID = 950
pos = -10,ceil(ifelse(Random<500,-80-Random/70,-80+Random/70));-80
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3013, HitSpark]
type = Helper
trigger1 = ((HitCount = 2) && (MoveHit))
name = "HitSpark"
stateno = 950
ID = 950
pos = -10,ceil(ifelse(Random<500,-80-Random/70,-80+Random/70));-80
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3013, Change]
type = ChangeState
trigger1 = Time >= 14
value = 3016 ;1102

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ＥＸツヴァイカルト
[Statedef 3014]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1013

[State 3014, Power]
type = PowerAdd
trigger1 = Time = 0
value = -500

[State 3014, Anten]
type = SuperPause
trigger1 = Time = 4
pos = 20,-75
anim = s3120;102
sound = s2,2
time = 40
darken = 1

[State 3014, Cut-In]
type = Helper
trigger1 = Time = 4
name = "Cut-In"
stateno = 960
ID = 960
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

;***********************************
[State 3014, VelSet]
type = VelSet
trigger1 = time = 0
x = (Vel X)
y = -1.5

[State 3014, VelAdd]
type = VelAdd
trigger1 = time = [13,26]
y = 0.1

[State 3014, VelAdd]
type = VelAdd
trigger1 = time >= 27
y = 0.3

[State 3014, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3014, Effect]
type = Helper
trigger1 = AnimElemTime(3) = 1
name = "urusai-2"
stateno = 2005
ID = 1101
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 3014, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 9
value = s3,9

[State 3014, SE]
type = PlaySnd
trigger1 = Time = 10
value = s0,2

;***********************************
[State 3014, Hit]
type = HitDef
trigger1 = AnimElem = 6
attr             = A, HA
animtype         = Back
damage           = 100,10
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,16
sparkno          = s20010
sparkxy          = -10,-70
guard.sparkno    = s3112
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -2,-2
air.velocity     = -2,-2
fall = 1
P2StateNo = 11010
p2facing = 1
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3014, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 950
ID = 950
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3014, Change]
type = ChangeState
triggerall = ((command = "oshimai_low") || (command = "oshimai_middle"))
trigger1 = ((!MoveContact) && (AnimElemTime(6) > 6) && (AnimElemTime(10) < 0))
trigger2 = MoveContact
value = 1121

[State 3014, Change]
type = ChangeState
triggerall = ((command = "oshimai_high") && (Power >= 500))
trigger1 = ((!MoveContact) && (AnimElemTime(6) > 6) && (AnimElemTime(10) < 0))
trigger2 = MoveContact
value = 3015

;***********************************
[State 3014, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ＥＸドライライゼ
[Statedef 3015]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1014

[State 3015, Power]
type = PowerAdd
trigger1 = Time = 0
value = -500

[State 3015, Anten]
type = SuperPause
trigger1 = Time = 4
pos = 35,-70
anim = s3120;102
sound = s2,2
time = 40
darken = 1

[State 3015, Cut-In]
type = Helper
trigger1 = Time = 4
name = "Cut-In"
stateno = 960
ID = 960
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

;***********************************
[State 3015, VelSet]
type = VelSet
trigger1 = time = 0
x = (Vel X)
y = -1.5

[State 3015, VelAdd]
type = VelAdd
trigger1 = time = [14,26]
y = 0.1

[State 3015, VelAdd]
type = VelAdd
trigger1 = time >= 27
y = 0.3

[State 3015, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3015, Effect]
type = Helper
trigger1 = AnimElemTime(3) = 1
name = "urusai-3"
stateno = 2006
ID = 1102
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 3015, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 9
value = s3,3

[State 3015, SE]
type = PlaySnd
trigger1 = Time = 10
value = s0,2

;***********************************
[State 3015, Hit]
type = HitDef
trigger1 = AnimElem = 5
attr             = A, HA
animtype         = Up
damage           = 70,7
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,20
sparkno          = s20010
sparkxy          = -10,-70
guard.sparkno    = s3112
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -4,-5
air.velocity     = -4,-5
fall = 1
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3015, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 950
ID = 950
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3015, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;シュテルベン・エンデ：下降
[Statedef 3016]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 1012

[State 3016, Type]
type = StateTypeSet
triggerall = var(6) = 1
trigger1 = time = [0,10]
MoveType = A

[State 3016, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 3016, VelSet]
type = VelSet
trigger1 = time >= 34
x = 0

[State 3016, Change]
type = ChangeState
triggerall = var(6) = 1
trigger1 = AnimElemTime(2) = 1
value = 3017

[State 3016, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;シュテルベン・エンデ：アレンジモード用ツヴァイカルト
[Statedef 3017]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1013

[State 3017, VelSet]
type = VelSet
trigger1 = time = 0
x = (Vel X)
y = -1.5

[State 3017, VelAdd]
type = VelAdd
trigger1 = time = [13,26]
y = 0.1

[State 3017, VelAdd]
type = VelAdd
trigger1 = time >= 27
y = 0.3

[State 3017, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3017, Effect]
type = Helper
trigger1 = AnimElemTime(3) = 1
name = "urusai-2"
stateno = 2005
ID = 1101
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 3017, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 9
value = s3,9

[State 3017, SE]
type = PlaySnd
trigger1 = Time = 10
value = s0,2

;***********************************
[State 3017, Hit]
type = HitDef
trigger1 = AnimElem = 6
attr             = A, HA
animtype         = Back
damage           = 20,2
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,20
sparkno          = s20010
sparkxy          = -10,-70
guard.sparkno    = s3112
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -1,-4
air.velocity     = -1,-4
fall = 1
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3017, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 950
ID = 950
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3017, Change]
type = ChangeState
trigger1 = AnimElemTime(7) >= 0
trigger2 = MoveContact
value = 3018

;***********************************
[State 3017, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;シュテルベン・エンデ：アレンジモード用ドライライゼ
[Statedef 3018]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1014

[State 3018, VelSet]
type = VelSet
trigger1 = time = 0
x = (Vel X)
y = -1.5

[State 3018, VelAdd]
type = VelAdd
trigger1 = time = [14,26]
y = 0.1

[State 3018, VelAdd]
type = VelAdd
trigger1 = time >= 27
y = 0.3

[State 3018, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3018, Effect]
type = Helper
trigger1 = AnimElemTime(3) = 1
name = "urusai-3"
stateno = 2006
ID = 1102
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 3018, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 9
value = s3,3

[State 3018, SE]
type = PlaySnd
trigger1 = Time = 10
value = s0,2

;***********************************
[State 3018, Hit]
type = HitDef
trigger1 = AnimElem = 5
attr             = A, HA
animtype         = Up
damage           = 20,2
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,20
sparkno          = s20010
sparkxy          = -10,-70
guard.sparkno    = s3112
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -4,-5
air.velocity     = -4,-5
fall = 1
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3018, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 950
ID = 950
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3018, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; ＥＸ必殺技：アトモスファリシュス・エンデ
;===========================================================================
;---------------------------------------------------------------------------
;
[Statedef 3020]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1020

[State 3020, Power]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 3020, Anten]
type = SuperPause
trigger1 = Time = 5
pos = -5,-85
anim = s3120
sound = s2,2
time = 40
darken = 1

[State 3020, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 10

[State 3020, Cut-In]
type = Helper
trigger1 = Time = 5
name = "Cut-In"
stateno = 960
ID = 960
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

;***********************************
[State 3020, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3020, VelSet]
type = VelSet
trigger1 = time = 11
x = 4
y = -2

[State 3020, VelAdd]
type = VelAdd
trigger1 = time > 11
y = 0.3

;***********************************
[State 3020, Effect]
type = Helper
trigger1 = AnimElemTime(5) = 0
name = "jama-1"
stateno = 2007
ID = 1300
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 3020, HitSpark]
type = Helper
trigger1 = ProjHit3020 = 1
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-70-Random/30,-70+Random/30))
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

[State 3020, GuardSpark]
type = Helper
trigger1 = ProjGuarded3020 = 1
name = "GuardSpark"
stateno = 952
ID = 952
pos = 0,ceil(ifelse(Random<500,-70-Random/30,-70+Random/30))
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

;***********************************
[State 3020, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 5
value = s6,2

[State 3020, SE]
type = PlaySnd
trigger1 = Time = 11
value = s0,2

;***********************************
[State 3020, Force]
type = Projectile
trigger1 = AnimElem = 6
attr             = A, HP
offset           = 0,0
velocity         = 1.1,0
damage           = 75,5
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 3020
projanim         = 1021
projhitanim      = 1021
projremanim      = 1021
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 4
projmisstime     = 6
projpriority     = 4
projremovetime   = 19
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s20010
sparkxy          = 0,0
guard.sparkno    = s20010
hitsound         = s1,0
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -5,-3
air.velocity     = -5,-3
air.animtype     = Back
air.juggle       = 1
fall = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

;***********************************
[State 3020, Change]
type = ChangeState
trigger1 = ((Time > 6) && (Pos Y >= 0))
value = 52

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; ＥＸ専用必殺技：メテオスマッシュ
;===========================================================================
;---------------------------------------------------------------------------
;シュヴァイゼン・開始
[Statedef 3100]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2000
velset   = 0,0

[State 3100, Power]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 3100, Anten]
type = SuperPause
trigger1 = Time = 4
pos = -18,-60
anim = s3120;102
sound = s2,2
time = 40
darken = 1
p2defmul = ifelse(var(6)=1,1,0)

[State 3100, Cut-In]
type = Helper
trigger1 = Time = 4
name = "Cut-In"
stateno = 960
ID = 960
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

;***********************************
[State 3100, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 3100, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 0
x = 1

[State 3100, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3100, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 4
value = s5,2

;***********************************
[State 3100, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101

;---------------------------------------------------------------------------
;シュヴァイゼン・突撃
[Statedef 3101]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 2001

[State 3101, VarSet]
type = VarSet
trigger1 = ((command = "oshimai_high") && (Enemy,MoveType = H) && (MoveHit))
v = 10
value = 1
ignorehitpause = 1
Persistent = 1

[State 3101, Muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 6

[State 3101, VelSet]
type = VelSet
trigger1 = time = 0
x = 7
y = -3

[State 3101, VelAdd]
type = VelAdd
trigger1 = time > 0
y = 0.4

;***********************************
[State 3101, SE]
type = PlaySnd
trigger1 = Time = 4
value = s0,2

;***********************************
[State 3101, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr             = A, HA
animtype         = Back
damage           = 90,9
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,16
sparkno          = s20010
sparkxy          = -10,-70
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -4,-6
air.velocity     = -4,-5
fall.yvelocity = -2.5
fall = 1
fall.recover = 0
envshake.time = 5
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
P2StateNo = 11020
p2facing = 1

[State 3101, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3101, Change]
type = ChangeState
trigger1 = ((Time > 6) && (Pos Y >= 0))
value = 3102

;---------------------------------------------------------------------------
;シュヴァイゼン・着地（分岐点）
[Statedef 3102]
type     = S
movetype = A
physics  = S
ctrl     = 0
anim     = 2002

[State 3102, VarSet]
type = VarSet
triggerall = ((PrevStateNo = 3101) && (var(10) = 1))
trigger1 = 1
v = 10
value = 2
IgnoreHitPause = 1
Persistent = 1

[State 3102, Type]
type = StateTypeSet
triggerall = ((PrevStateNo = 3101) && (var(10) = 0))
trigger1 = 1
MoveType = I
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 3102, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3102, VelSet]
type = VelSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 3102, Shibuki]
type = Explod
trigger1 = Time = 0
anim = 3118 ;f61
postype = p1
pos = 0,0
scale = 1,1
sprpriority = -1
ownpal = 1

[State 3102, SE]
type = PlaySnd
trigger1 = Time = 0
value = s1,6

;***********************************
[State 3102, Change]
type = ChangeState
triggerall = var(10) = 2
trigger1 = Time >= 3
value = 3104

[State 3102, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 3103

;---------------------------------------------------------------------------
;シュヴァイゼン・終了
[Statedef 3103]
type     = S
movetype = I
physics  = S
anim     = 101
ctrl     = 0

[State 3103, No Walk & No Turn]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2= NoAutoTurn
ignorehitpause = 1

[State 3103, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3103, SE]
type = PlaySnd
trigger1 = Time = 6
value = s1,8

[State 3103, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;デュルスティヒ・開始ダッシュ
[Statedef 3104]
type     = S
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2003

[State 3104, VarSet]
type = VarSet
triggerall = ((PrevStateNo = 3102) && (var(10) = 2))
trigger1 = 1
v = 10
value = 3
IgnoreHitPause = 1
Persistent = 1

[State 3104, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3104, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 3104, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

;***********************************
[State 3104, VelSet]
type = VelSet
trigger1 = time = 4
x = 50
y = 0

[State 3104, VelAdd]
type = VelAdd
trigger1 = time > 4
x = 0.25

;***********************************
[State 3104, Change]
type = ChangeState
trigger1 = Time >= 14
trigger2 = ((Time >= 9) && (P2BodyDist X <= -10))
trigger3 = FrontEdgeDist <= 5
value = 3105

;---------------------------------------------------------------------------
;デュルスティヒ・ダッシュストップ
[Statedef 3105]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2004

[State 3105, VarSet]
type = VarSet
triggerall = ((PrevStateNo = 3104) && (var(10) = 3))
trigger1 = 1
v = 10
value = 4
IgnoreHitPause = 1
Persistent = 1

[State 3105, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3105, Turn]
type = Turn
trigger1 = ((P2BodyDist X <= -20) && (Time = 0))

[State 3105, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 3105, VelSet]
type = VelSet
trigger1 = time >= 3
x = 0
y = 0

[State 3105, Change]
type = ChangeState
trigger1 = Time > 15
trigger2 = ((P2BodyDist X <= 60) && (Time > 6))
value = 3106

;---------------------------------------------------------------------------
;デュルスティヒ
[Statedef 3106]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 2005
velset   = 0,0

[State 3106, VarSet]
type = VarSet
triggerall = ((PrevStateNo = 3105) && (var(10) = 4))
trigger1 = ((command = "c") && (Enemy,MoveType = H) && (MoveHit))
v = 10
value = 5
IgnoreHitPause = 1
Persistent = 1

[State 3106, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3106, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

;***********************************
[State 3106, Arcueid Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s5,9

[State 3106, SE]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = s0,2

;***********************************
[State 3106, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr             = S, HA
animtype         = Up
damage           = 90,9
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,20
sparkno          = s20010
sparkxy          = -10,-80
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -1,-1 ;-1,-9
air.velocity     = -1,-1 ;-1,-9
fall = 1
fall.recover = 0
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
P2StateNo = 11025
P2Facing = 1

[State 3106, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3106, Change]
type = ChangeState
triggerall = var(10) = 5
trigger1 = AnimElemTime(3) >= 0
value = 3107

[State 3106, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;シュネルエーゲル・開始ジャンプ
[Statedef 3107]
type     = A
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2006

[State 3107, VarSet]
type = VarSet
triggerall = ((PrevStateNo = 3106) && (var(10) = 5))
trigger1 = 1
v = 10
value = 6
IgnoreHitPause = 1
Persistent = 1

[State 3107, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3107, Pos]
type = PosSet
trigger1 = time = [0,1]
y = 0

[State 3107, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

;***********************************
[State 3107, VelSet]
type = VelSet
trigger1 = time = 4
x = 5
y = -18

[State 3107, VelAdd]
type = VelAdd
trigger1 = time > 4
y = 0.25

;***********************************
[State 3107, Change]
type = ChangeState
trigger1 = Time >= 9
trigger2 = ((Time >= 7) && (P2BodyDist X <= 15) && (P2BodyDist Y = [-25,20]))
value = 3108

;---------------------------------------------------------------------------
;シュネルエーゲル
[Statedef 3108]
type     = A
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2007

[State 3108, VarSet]
type = VarSet
triggerall = ((PrevStateNo = 3107) && (var(10) = 6))
trigger1 = ((command = "tobe_high") && (Enemy,MoveType = H) && (MoveHit))
v = 10
value = 7
IgnoreHitPause = 1
Persistent = 1

[State 3108, VarSet]
type = VarSet
trigger1 = AnimElemTime(8) >= 0
v = 10
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 3108, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3108, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 3108, Turn]
type = Turn
trigger1 = ((P2BodyDist X <= -20) && (Time = 0))

;***********************************
[State 3108, VelSet]
type = VelSet
trigger1 = ((P2BodyDist X > 0) && (time = [0,3]))
x = 7

[State 3108, VelSet]
type = VelSet
trigger1 = ((P2BodyDist X < 0) && (time = [0,3]))
x = -7

[State 3108, VelSet]
type = VelSet
trigger1 = ((P2BodyDist X = 0) && (time = [0,3]))
x = 0.1

;...................................
[State 3108, VelSet]
type = VelSet
trigger1 = ((P2BodyDist Y > 0) && (time = [0,3]))
y = -6

[State 3108, VelSet]
type = VelSet
trigger1 = ((P2BodyDist Y <= 0) && (time = [0,3]))
y = -3

;...................................
[State 3108, VelSet]
type = VelSet
trigger1 = time = [4,17]
x = 0
y = 0

[State 3108, VelAdd]
type = VelAdd
trigger1 = time >= 18
y = 0.45

;***********************************
[State 3108, Arcueid Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s6,6

[State 3108, SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,2

;***********************************
[State 3108, Hit]
type = HitDef
trigger1 = AnimElem = 5
attr             = A, HA
animtype         = Back
damage           = 90,9
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 16,20
sparkno          = s20010
sparkxy          = -10,-80
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -1,-1 ;-1,-9
air.velocity     = -1,-1 ;-1,-9
fall = 1
fall.recover = 0
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
P2StateNo = 11025
P2Facing = 1

[State 3108, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3108, Change]
type = ChangeState
triggerall = var(10) = 7
trigger1 = ((AnimElemTime(6) > 1) && (AnimElemTime(8) < 0))
value = 3109

[State 3108, Change]
type = ChangeState
trigger1 = ((Time > 6) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;グリュンデッヒ・開始ジャンプ
[Statedef 3109]
type     = A
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2008

[State 3109, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3109, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

;***********************************
[State 3109, VelSet]
type = VelSet
trigger1 = time = 4
x = 5
y = -12

[State 3109, VelAdd]
type = VelAdd
trigger1 = time > 4
y = 0.25

;***********************************
[State 3109, Change]
type = ChangeState
trigger1 = Time >= 9
trigger2 = ((Time >= 7) && (P2BodyDist X <= 15) && (P2BodyDist Y = [-25,20]))
value = 3110

;---------------------------------------------------------------------------
;グリュンデッヒ
[Statedef 3110]
type     = A
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2009

[State 3110, VarSet]
type = VarSet
triggerall = var(10) = 7
trigger1 = P2BodyDist X <= 5
v = 10
value = 8
IgnoreHitPause = 1
Persistent = 1

[State 3110, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3110, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 3110, Turn]
type = Turn
trigger1 = ((P2BodyDist X <= -20) && (Time = 0))

[State 3110, Bind]
type = TargetBind
triggerall = var(10) = 8
trigger1 = ((AnimElemTime(4) >= 0) && (AnimElemTime(6) < 2))
pos = 42,5
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 3110, VelSet]
type = VelSet
trigger1 = ((P2BodyDist X > 0) && (time = [0,3]))
x = 7

[State 3110, VelSet]
type = VelSet
trigger1 = ((P2BodyDist X < 0) && (time = [0,3]))
x = -7

[State 3110, VelSet]
type = VelSet
trigger1 = ((P2BodyDist X = 0) && (time = [0,3]))
x = 0.1

;...................................
[State 3110, VelSet]
type = VelSet
trigger1 = ((P2BodyDist Y > 0) && (time = [0,3]))
y = -6

[State 3110, VelSet]
type = VelSet
trigger1 = ((P2BodyDist Y <= 0) && (time = [0,3]))
y = -3

;...................................
[State 3110, VelSet]
type = VelSet
trigger1 = time = 4
x = 0
y = -2

[State 3110, VelAdd]
type = VelAdd
trigger1 = time = [5,19]
y = 0.1

[State 3110, VelAdd]
type = VelAdd
trigger1 = time >= 20
y = 0.45

;***********************************
[State 3110, Arcueid Voice]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s7,1

[State 3110, SE]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s0,2

;***********************************
[State 3110, Hit]
type = HitDef
trigger1 = AnimElem = 6
attr             = A, HA
animtype         = Back
damage           = 90,9
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 20,26
sparkno          = s20010
sparkxy          = -10,-40
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -1,-1 ;-1,-9
air.velocity     = -1,-1 ;-1,-9
fall = 1
fall.recover = 0
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
P1Facing = 1
P2StateNo = 11027
P2Facing = 1

[State 3110, MeteorSpark]
type = Helper
trigger1 = MoveHit
name = "MeteorSpark"
stateno = 2100
ID = 3110
pos = -10,ceil(ifelse(Random<500,-40-Random/70,-40+Random/70));-40
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3110, Change]
type = ChangeState
trigger1 = ((AnimElemTime(7) >= 0) && (MoveHit))
value = 3111

[State 3110, Change]
type = ChangeState
trigger1 = ((Time > 6) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;グリュンデッヒ・ヒット後のバックジャンプ
[Statedef 3111]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 46

[State 3111, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -2

[State 3111, VelAdd]
type = VelAdd
trigger1 = time >= 22
y = 0.3

[State 3111, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;※鎖攻撃はダウン(StateType = L)している相手には当たらない
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; ゲージＭＡＸ技：マーヴルファンタズム
;===========================================================================
;---------------------------------------------------------------------------
;最初
[Statedef 3500]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2100
velset   = 0,0

[State 3500, Power]
type = PowerAdd
trigger1 = Time = 0
value = -2900

[State 3500, Anten]
type = SuperPause
trigger1 = Time = 18
pos = 0,-70
anim = s3120
sound = s2,2
time = 40
darken = 1
p2defmul = ifelse(var(6)=1,1,0)

[State 3500, Cut-In]
type = Helper
trigger1 = Time = 18
name = "Cut-In"
stateno = 961
ID = 961
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

;***********************************
[State 3500, Muteki]
type = NotHitBy
trigger1 = Time = 18
value = SCA
time = 50

[State 3500, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3500, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 120
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3500, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 8
value = s7,4

;***********************************
[State 3500, Hit]
type = HitDef
trigger1 = ((P2StateType != L) && (Time = 26))
attr             = S, HA
animtype         = back
damage           = 40,4
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 1,1
sparkno          = s20010
sparkxy          = -10,-70
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = 0,-2
air.velocity     = 0,-2
fall = 1
fall.recover = 0
kill = 0
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
P1StateNo = 3502
P1Facing = 1
P2StateNo = 11029
P2Facing = 1

;***********************************
[State 3500, Change]
type = ChangeState
trigger1 = Time = 100
value = 3501

;---------------------------------------------------------------------------
;最初・終了
[Statedef 3501]
type     = S
movetype = I
physics  = S
anim     = 2101
ctrl     = 0

[State 3501, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 3501, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;持続
[Statedef 3502]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2102
velset   = 0,0

[State 3502, Flag]
type = VarSet
triggerall = Time >= 180
trigger1 = ((command = "todome") && (Power >= 100))
v = 11
value = 1
IgnoreHitPause = 1
Persistent = 1

[State 3502, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3502, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3502, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 300
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

;***********************************
[State 3502, TargetBind]
type = TargetBind
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
pos = (P2Dist X),(-10-(statetime/2))

[State 3502, TargetBind]
type = TargetBind
trigger1 = Time = 175
pos = (P2Dist X),-80

;***********************************
[State 3502, SE]
type = PlaySnd
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
value = s0,9

[State 3502, SE]
type = PlaySnd
trigger1 = Time = 175
value = s1,1

;***********************************
[State 3502, HitCount Add]
type = HitAdd
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
value = 1
IgnoreHitPause = 1
Persistent = 1

[State 3502, Damage]
type = TargetLifeAdd
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
value = -40
kill = 0

[State 3502, Display Shake]
type = EnvShake
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 75
trigger4 = Time = 100
trigger5 = Time = 125
trigger6 = Time = 150
trigger7 = Time = 175
time  = 6
ampl  = 6
freq  = 100
phase = 100
Persistent = 1

;***********************************
[State 3502, HitSpark]
type = Helper
trigger1 = Time = 2
trigger2 = Time = 25
trigger3 = Time = 50
trigger4 = Time = 75
trigger5 = Time = 100
trigger6 = Time = 125
trigger7 = Time = 150
name = "HitSpark"
stateno = 951
ID = 951
pos = 0,ceil(ifelse(Random<500,-70-Random/30,-70+Random/30));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
IgnoreHitPause = 1
persistent = 1

[State 3502, Chain-Start]
type = Helper
trigger1 = time = 2
name = "Chain-Main"
stateno = 4000
ID = 4000
pos = 0,0
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 3502, Target Change]
type = TargetState
trigger1 = time = 175
value = 11030

;***********************************
[State 3502, Change]
type = ChangeState
triggerall = var(11) = 1
trigger1 = Time >= 250
value = 3504

[State 3502, Change]
type = ChangeState
trigger1 = Time = 280
value = 3503

;---------------------------------------------------------------------------
;持続・終了
[Statedef 3503]
type     = S
movetype = A
physics  = S
ctrl     = 0
juggle   = 0
poweradd = 0
anim     = 2103

[State 3503, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3503, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3503, Finish BG Color]
type = BGPalFX ;AllPalFX
trigger1 = Time = 12
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;***********************************
[State 3503, SE]
type = PlaySnd
trigger1 = Time = 12
value = s1,0

;***********************************
[State 3503, HitCount Add]
type = HitAdd
trigger1 = Time = 12
value = 1
IgnoreHitPause = 1
Persistent = 1

[State 3503, Damage]
type = TargetLifeAdd
trigger1 = Time = 12
value = -40

;***********************************
[State 3503, Target Change]
type = TargetState
trigger1 = time = 12
value = 11031

[State 3503, HitSpark]
type = Helper
trigger1 = Time = 12
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-70-Random/30,-70+Random/30));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
IgnoreHitPause = 1
persistent = 0

;***********************************
[State 3503, Change]
type = ChangeState
trigger1 = Time = 120
value = 3501

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;とどめ
[Statedef 3504]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = -100
ctrl     = 0
anim     = 2104
velset   = 0,0

[State 3504, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3504, Effect]
type = Explod
trigger1 = time = 4
anim = 3120
postype = p1
pos = -15,-50
scale = 1,1
sprpriority = 7
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ontop = 1

[State 3504, Flag]
type = AssertSpecial
trigger1 = ((AnimElemTime(2) >= 0) && (AnimElemTime(3) < 0))
flag = TimerFreeze
flag2= NoBG
flag3= NoFG
ignorehitpause = 1
persistent = 1

[State 3504, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 180
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 4

[State 3504, Finish BG Color]
type = BGPalFX ;AllPalFX
trigger1 = Time = 100
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;***********************************
[State 3504, Effect]
type = Helper
trigger1 = AnimElemTime(6) = 0
name = "todome"
stateno = 2110
ID = 2110
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 3504, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 4
value = s7,2

[State 3504, SE]
type = PlaySnd
trigger1 = Time = 4
value = s2,2

[State 3504, SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,2

[State 3504, SE]
type = PlaySnd
trigger1 = Time = 60
trigger2 = Time = 65
trigger3 = Time = 70
trigger4 = Time = 75
trigger5 = Time = 80
trigger6 = Time = 85
trigger7 = Time = 90
trigger8 = Time = 95
value = s1,0

;***********************************
[State 3504, HitCount Add]
type = HitAdd
trigger1 = Time = 60
trigger2 = Time = 65
trigger3 = Time = 70
trigger4 = Time = 75
trigger5 = Time = 80
trigger6 = Time = 85
trigger7 = Time = 90
trigger8 = Time = 95
value = 1
IgnoreHitPause = 1
Persistent = 1

[State 3504, Damage]
type = TargetLifeAdd
trigger1 = Time = 60
trigger2 = Time = 65
trigger3 = Time = 70
trigger4 = Time = 75
trigger5 = Time = 80
trigger6 = Time = 85
trigger7 = Time = 90
trigger8 = Time = 95
value = -40

[State 3504, Display Shake]
type = EnvShake
trigger1 = Time = 60
trigger2 = Time = 65
trigger3 = Time = 70
trigger4 = Time = 75
trigger5 = Time = 80
trigger6 = Time = 85
trigger7 = Time = 90
trigger8 = Time = 95
time  = 6
ampl  = 6
freq  = 100
phase = 100
Persistent = 1

;***********************************
[State 3504, HitSpark]
type = Helper
trigger1 = Time = 60
trigger2 = Time = 65
trigger3 = Time = 70
trigger4 = Time = 75
trigger5 = Time = 80
trigger6 = Time = 85
trigger7 = Time = 90
trigger8 = Time = 95
name = "HitSpark"
stateno = 950
ID = 950
pos = 0,ceil(ifelse(Random<500,-70-Random/30,-70+Random/30));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
IgnoreHitPause = 1
persistent = 1

;***********************************
[State 3504, Target Change]
type = TargetState
trigger1 = time = 60
value = 11029

[State 3504, Target Change]
type = TargetState
trigger1 = time = 100
value = 11031

;***********************************
[State 3504, Change]
type = ChangeState
trigger1 = Time = 160
value = 3505

;---------------------------------------------------------------------------
;とどめ・終了
[Statedef 3505]
type     = S
movetype = I
physics  = S
anim     = 2105
ctrl     = 0

[State 3505, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 3505, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; 隠しゲージＭＡＸ技：ここでは原作のネタを使用したオリ技を入れる予定だぞ
;===========================================================================
;---------------------------------------------------------------------------
;
;[Statedef 3550]
;type     = S
;movetype = A
;physics  = S
;juggle   = 0
;poweradd = 0
;ctrl     = 0
;anim     = 2200
;velset   = 0,0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
; マーヴルファンタズム・鎖中心
[Statedef 4000] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20010
SprPriority = -1

[State 4000, Pos]
type = PosSet
trigger1 = 1
y = 0

[State 4000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 4000, Chain-1]
type = Helper
trigger1 = time = 1
name = "Chain-1"
stateno = 4001
ID = 4001
pos = -15,30
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.7
size.yscale = 0.7

[State 4000, Chain-2]
type = Helper
trigger1 = time = 4
name = "Chain-2"
stateno = 4001
ID = 4002
pos = 12,30
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.7
size.yscale = 0.7

[State 4000, Chain-3]
type = Helper
trigger1 = time = 7
name = "Chain-3"
stateno = 4001
ID = 4003
pos = 0,30
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.4
size.yscale = 0.7

;...................................
[State 4000, Chain-4]
type = Helper
trigger1 = time = 10
name = "Chain-4"
stateno = 4003
ID = 4004
pos = -20,30
keyctrl = 0
postype = p1
facing = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.5
size.yscale = 0.5

[State 4000, Chain-5]
type = Helper
trigger1 = time = 13
name = "Chain-5"
stateno = 4003
ID = 4005
pos = 22,30
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.55
size.yscale = 0.55

;...................................
[State 4000, Chain-6]
type = Helper
trigger1 = time = 16
name = "Chain-6"
stateno = 4005
ID = 4006
pos = -20,30
keyctrl = 0
postype = p1
facing = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.4
size.yscale = 0.6

[State 4000, Chain-7]
type = Helper
trigger1 = time = 19
name = "Chain-7"
stateno = 4005
ID = 4007
pos = 25,30
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.35
size.yscale = 0.6

;...................................
[State 4000, Chain-8]
type = Helper
trigger1 = time = 22
name = "Chain-6"
stateno = 4007
ID = 4008
pos = -27,30
keyctrl = 0
postype = p1
facing = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.3
size.yscale = 0.6

[State 4000, Chain-9]
type = Helper
trigger1 = time = 25
name = "Chain-7"
stateno = 4007
ID = 4009
pos = 31,30
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0
size.xscale = 0.25
size.yscale = 0.6

[State 4000, SE]
type = PlaySnd
trigger1 = Time = 30
value = s2,4

;***********************************
[State 4000, Change]
type = DestroySelf
trigger1 = Root,MoveType != A

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 鎖（垂直）
[Statedef 4001] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3028
SprPriority = 6

[State 4001, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4001, VelSet]
type = VelSet
triggerall = Pos Y > 0
trigger1 = time = 0
y = -0.2

[State 4001, VelSet]
type = VelSet
trigger1 = Pos Y <= 0
y = 0

[State 4001, Effect]
type = Explod
trigger1 = time = 0
anim = 3027
postype = p1
pos = 0,0
scale = 1,1
sprpriority = 5
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
removetime = 6

[State 4001, Change]
type = ChangeState
trigger1 = Root,MoveType != A
trigger2 = ((Root,StateNo = 3503) && (Root,time = 12))
trigger3 = ((Root,StateNo = 3504) && (Root,AnimElemTime(10)=1))
value = 4002

;***********************************
; 鎖（垂直）終了
[Statedef 4002] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3029
SprPriority = 6

[State 4002, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4002, SE]
type = PlaySnd
trigger1 = Time = 1
value = s2,5

[State 4002, Change]
type = DestroySelf
trigger1 = time = 4

;---------------------------------------------------------------------------
; 鎖（鋭角）
[Statedef 4003] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3031
SprPriority = 5

[State 4003, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4003, VelSet]
type = VelSet
triggerall = Pos Y > 0
trigger1 = time = 0
x = -0.05
y = -0.2

[State 4003, VelSet]
type = VelSet
trigger1 = Pos Y <= 0
x = 0
y = 0

[State 4003, Effect]
type = Explod
trigger1 = time = 0
anim = 3030
postype = p1
pos = 0,0
scale = 0.55,0.55
sprpriority = 5
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
removetime = 6

[State 4003, Change]
type = ChangeState
trigger1 = Root,MoveType != A
trigger2 = ((Root,StateNo = 3503) && (Root,time = 12))
trigger3 = ((Root,StateNo = 3504) && (Root,AnimElemTime(10)=1))
value = 4004

;***********************************
; 鎖（鋭角）終了
[Statedef 4004] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3032
SprPriority = 5

[State 4004, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4004, Change]
type = DestroySelf
trigger1 = time = 8

;---------------------------------------------------------------------------
; 鎖（６０度）
[Statedef 4005] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3034
SprPriority = 5

[State 4005, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4005, VelSet]
type = VelSet
triggerall = Pos Y > 0
trigger1 = time = 0
x = -0.1
y = -0.2

[State 4005, VelSet]
type = VelSet
trigger1 = Pos Y <= 0
x = 0
y = 0

[State 4005, Effect]
type = Explod
trigger1 = time = 0
anim = 3033
postype = p1
pos = 0,0
scale = 0.42,0.6
sprpriority = 5
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
removetime = 6

[State 4005, Change]
type = ChangeState
trigger1 = Root,MoveType != A
trigger2 = ((Root,StateNo = 3503) && (Root,time = 12))
trigger3 = ((Root,StateNo = 3504) && (Root,AnimElemTime(10)=1))
value = 4006

;***********************************
; 鎖（６０度）終了
[Statedef 4006] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3035
SprPriority = 5

[State 4006, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4006, Change]
type = DestroySelf
trigger1 = time = 12

;---------------------------------------------------------------------------
; 鎖（４５度）
[Statedef 4007] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3037
SprPriority = 5

[State 4007, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4007, VelSet]
type = VelSet
triggerall = Pos Y > 0
trigger1 = time = 0
x = -0.2
y = -0.2

[State 4007, VelSet]
type = VelSet
trigger1 = Pos Y <= 0
x = 0
y = 0

[State 4007, Effect]
type = Explod
trigger1 = time = 0
anim = 3036
postype = p1
pos = 0,0
scale = 0.28,0.6
sprpriority = 5
bindtime = -1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
removetime = 6

[State 4007, Change]
type = ChangeState
trigger1 = Root,MoveType != A
trigger2 = ((Root,StateNo = 3503) && (Root,time = 12))
trigger3 = ((Root,StateNo = 3504) && (Root,AnimElemTime(10)=1))
value = 4008

;***********************************
; 鎖（４５度）終了
[Statedef 4008] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3038
SprPriority = 5

[State 4008, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4008, Change]
type = DestroySelf
trigger1 = time = 16

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
