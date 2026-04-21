; Arcueid Brunestud - cns file No.4
;===========================================================================
; 必殺技
;===========================================================================
;---------------------------------------------------------------------------
;アルトシューレ：弱・１回目
[Statedef 1000]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1000
;velset   = 0,0

[State 1000, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(7) = 0
x = 4

[State 1000, VelSet]
type = VelSet
trigger1 = ((AnimElemTime(5) >= 0) && (AnimElemTime(8) < 0))
x = 2.25

[State 1000, Width]
type = Width
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(15) < 0))
value = 17,0

;***********************************
[State 1000, Effect]
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
size.xscale = 0.82 ;1
size.yscale = 0.82 ;1

[State 1000, HitSpark]
type = Helper
trigger1 = ProjHit1000 = 1
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

[State 1000, GuardSpark]
type = Helper
trigger1 = ProjGuarded1000 = 1
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
[State 1000, SE]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s0,2

;***********************************
[State 1000, Force]
type = Projectile
trigger1 = AnimElem = 6
attr             = S, SP
offset           = 10,-50
velocity         = 1.1,0
damage           = 15,1
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1000
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
[State 1000, Change]
type = ChangeState
triggerall = command = "jama_low"
trigger1 = ((AnimElemTime(8) > 0) && (AnimElemTime(15) < 0))
value = 1001

[State 1000, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;アルトシューレ：弱・２回目
[Statedef 1001]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1001
;velset   = 0,0

[State 1001, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 1001, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
x = 4

[State 1001, VelSet]
type = VelSet
trigger1 = ((AnimElemTime(3) >= 0) && (AnimElemTime(6) < 0))
x = 2

[State 1001, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(11) < 0))
value = 17,0

;***********************************
[State 1001, Effect]
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
size.xscale = 0.82 ;1
size.yscale = 0.82 ;1

[State 1001, HitSpark]
type = Helper
trigger1 = ProjHit1001 = 1
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

[State 1001, GuardSpark]
type = Helper
trigger1 = ProjGuarded1001 = 1
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
[State 1001, SE]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,2

;***********************************
[State 1001, Force]
type = Projectile
trigger1 = AnimElem = 4
attr             = S, SP
offset           = 10,-50
velocity         = 1.1,0
damage           = 15,1
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1001
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
[State 1001, Change]
type = ChangeState
triggerall = command = "jama_low"
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(10) < 0))
value = 1002

[State 1001, Change]
type = ChangeState
triggerall = command = "jama_middle"
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(10) < 0))
value = 1012

[State 1001, Change]
type = ChangeState
triggerall = ((var(6) = 1) && (command = "jama_high"))
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(10) < 0))
value = 1400

[State 1001, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;アルトシューレ：弱・３回目
[Statedef 1002]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1002
velset   = 0,0

[State 1002, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 1002, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(14) < 0))
value = 17,0

;***********************************
[State 1002, Effect]
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
size.xscale = 0.82 ;1
size.yscale = 0.82 ;1

[State 1002, HitSpark]
type = Helper
trigger1 = ProjHit1002 = 1
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

[State 1002, GuardSpark]
type = Helper
trigger1 = ProjGuarded1002 = 1
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
[State 1002, Arcueid Voice]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s3,2

[State 1002, SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,2

;***********************************
[State 1002, Force]
type = Projectile
trigger1 = AnimElem = 5
attr             = S, SP
offset           = 10,-50
velocity         = 0.8,0
damage           = 30,3
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1002
projanim         = 1004
projhitanim      = 1004
projremanim      = 1004
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 1
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
ground.type      = Trip
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

;***********************************
[State 1002, Force]
type = Projectile
trigger1 = AnimElem = 7
attr             = S, SP
offset           = -5,-30
velocity         = 0.8,0
damage           = 30,3
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1002
projanim         = 1004
projhitanim      = 1004
projremanim      = 1004
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 1
projmisstime     = 11
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
ground.velocity  = -2.5,-4.5
air.velocity     = -3,-4.5
yaccel = 0.8
air.animtype     = Back
air.juggle       = 1
air.fall = 1
fall = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

[State 1002, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;アルトシューレ：中・１回目
[Statedef 1010]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1000
;velset   = 0,0

[State 1010, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 1010, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(7) = 0
x = 4

[State 1010, VelSet]
type = VelSet
trigger1 = ((AnimElemTime(5) >= 0) && (AnimElemTime(8) < 0))
x = 4

[State 1010, Width]
type = Width
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(15) < 0))
value = 17,0

;***********************************
[State 1010, Effect]
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
size.xscale = 0.82 ;1
size.yscale = 0.82 ;1

[State 1010, HitSpark]
type = Helper
trigger1 = ProjHit1000 = 1
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

[State 1010, GuardSpark]
type = Helper
trigger1 = ProjGuarded1000 = 1
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
[State 1010, SE]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s0,2

;***********************************
[State 1010, Force]
type = Projectile
trigger1 = AnimElem = 6
attr             = S, SP
offset           = 10,-50
velocity         = 1.1,0
damage           = 20,2
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1000
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
[State 1010, Change]
type = ChangeState
triggerall = command = "jama_middle"
trigger1 = ((AnimElemTime(8) > 0) && (AnimElemTime(15) < 0))
value = 1011

[State 1010, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;アルトシューレ：中・２回目
[Statedef 1011]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1001
;velset   = 0,0

[State 1011, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 1011, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
x = 4

[State 1011, VelSet]
type = VelSet
trigger1 = ((AnimElemTime(3) >= 0) && (AnimElemTime(6) < 0))
x = 3

[State 1011, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(11) < 0))
value = 17,0

;***********************************
[State 1011, Effect]
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
size.xscale = 0.82 ;1
size.yscale = 0.82 ;1

[State 1011, HitSpark]
type = Helper
trigger1 = ProjHit1001 = 1
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

[State 1011, GuardSpark]
type = Helper
trigger1 = ProjGuarded1001 = 1
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
[State 1011, SE]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s0,2

;***********************************
[State 1011, Force]
type = Projectile
trigger1 = AnimElem = 4
attr             = S, SP
offset           = 10,-50
velocity         = 1.1,0
damage           = 20,2
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1001
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
[State 1011, Change]
type = ChangeState
triggerall = command = "jama_low"
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(10) < 0))
value = 1002

[State 1011, Change]
type = ChangeState
triggerall = command = "jama_middle"
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(10) < 0))
value = 1012

[State 1011, Change]
type = ChangeState
triggerall = ((var(6) = 1) && (command = "jama_high"))
trigger1 = ((AnimElemTime(6) > 0) && (AnimElemTime(10) < 0))
value = 1400

[State 1011, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;アルトシューレ：中・３回目
[Statedef 1012]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1003
velset   = 0,0

[State 1012, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 1002, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(14) < 0))
value = 17,0

;***********************************
[State 1012, Effect]
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
size.xscale = 0.82 ;1
size.yscale = 0.82 ;1

[State 1012, HitSpark]
type = Helper
trigger1 = ProjHit1003 = 1
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

[State 1012, GuardSpark]
type = Helper
trigger1 = ProjGuarded1003 = 1
name = "GuardSpark"
stateno = 952
ID = 952
pos = 0,ceil(ifelse(Random<500,-10-Random/30,-10+Random/80));-50
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 1

;***********************************
[State 1012, Arcueid Voice]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s3,3

[State 1012, SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s0,2

;***********************************
[State 1012, Force]
type = Projectile
trigger1 = AnimElem = 7 ;6
attr             = S, SP
offset           = 10,-30
velocity         = 0.8,0
damage           = 30,3
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1003
projanim         = 1004
projhitanim      = 1004
projremanim      = 1004
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 1
projmisstime     = 11
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
ground.velocity  = -2.5,-4.5
air.velocity     = -3,-4.5
yaccel = 0.8
air.animtype     = Back
air.juggle       = 1
air.fall = 1
fall = 1
envshake.time = 4
envshake.ampl = 6
envshake.freq = 100

[State 1012, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; アルトネーゲル
;===========================================================================
;---------------------------------------------------------------------------
;アインハンス・弱根元
[Statedef 1100]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1010
;velset   = 0,0

[State 1100, Urusai! - Flag]
type = VarSet
trigger1 = command = "kiero_low"
trigger2 = command = "kiero_middle"
v = 9
value = 1
IgnoreHitPause = 1

[State 1100, Urusai! - Flag]
type = VarSet
triggerall = Power >= 500
trigger1 = command = "kiero_high"
v = 9
value = 2
IgnoreHitPause = 1

;***********************************
[State 1100, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1100, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 1100, VelSet]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
x = 1

;***********************************
[State 1100, Hit]
type = HitDef
trigger1 = AnimElem = 6
attr             = S, SA
animtype         = Back
damage           = 70,7
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

[State 1100, HitSpark]
type = Helper
trigger1 = MoveHit
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
[State 1100, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101

;---------------------------------------------------------------------------
;アインハンス・弱上昇
[Statedef 1101]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1011

[State 1101, Urusai! - Flag]
type = VarSet
triggerall = time = [0,10]
trigger1 = command = "kiero_low"
trigger2 = command = "kiero_middle"
v = 9
value = 1
IgnoreHitPause = 1

[State 1101, Urusai! - Flag]
type = VarSet
triggerall = MoveContact
trigger1 = command = "kiero_low"
trigger2 = command = "kiero_middle"
v = 9
value = 1
IgnoreHitPause = 1

[State 1101, Urusai! - Flag]
type = VarSet
triggerall = ((time = [0,3]) && (Power >= 500))
trigger1 = command = "kiero_high"
v = 9
value = 2
IgnoreHitPause = 1

[State 1101, Urusai! - Flag]
type = VarSet
triggerall = ((MoveContact) && (Power >= 500))
trigger1 = command = "kiero_high"
v = 9
value = 2
IgnoreHitPause = 1

;***********************************
[State 1101, Pos]
type = PosAdd
trigger1 = time = 0
x = 5

[State 1101, VelSet]
type = VelSet
trigger1 = time = 0
x = 0.5
y = -4

[State 1101, VelSet]
type = VelAdd
trigger1 = time >= 4
y = 0.1

[State 1101, Width]
type = Width
trigger1 = 1
value = 17,0

;***********************************
[State 1101, Effect]
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
[State 1101, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 1
value = s3,1

[State 1101, SE]
type = PlaySnd
trigger1 = Time = 2
value = s0,2

;***********************************
[State 1101, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr             = A, SA
animtype         = Up
damage           = 30,3
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
ground.velocity  = -1,-7
air.velocity     = -1,-7
fall = 1
fall.recover = ifelse(var(9)=1,0,1)
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 1101, HitSpark]
type = Helper
trigger1 = MoveHit
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
[State 1101, Change]
type = ChangeState
trigger1 = Time >= 14
value = 1102

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;アインハンス・下降
[Statedef 1102]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 1012

[State 1102, Type]
type = StateTypeSet
triggerall = var(9) != 0
trigger1 = 1
MoveType = A

[State 1102, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 1102, VelSet]
type = VelSet
trigger1 = time >= 34
x = 0

;***********************************
[State 1102, Change]
type = ChangeState
triggerall = var(9) = 1
trigger1 = AnimElemTime(2) = 1
value = 1120

[State 1102, Change]
type = ChangeState
triggerall = var(9) = 2
trigger1 = AnimElemTime(2) = 1
value = 3014

[State 1102, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;===========================================================================
;---------------------------------------------------------------------------
;アインハンス・中根元
[Statedef 1110]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1010
;velset   = 0,0

[State 1110, Urusai! - Flag]
type = VarSet
trigger1 = command = "kiero_low"
trigger2 = command = "kiero_middle"
v = 9
value = 1
IgnoreHitPause = 1

[State 1110, Urusai! - Flag]
type = VarSet
triggerall = Power >= 500
trigger1 = command = "kiero_high"
v = 9
value = 2
IgnoreHitPause = 1

;***********************************
[State 1110, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 25

[State 1110, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 1110, VelSet]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
x = 1

;***********************************
[State 1110, Hit]
type = HitDef
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
attr             = S, SA
animtype         = Back
damage           = 30,3
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

[State 1110, HitSpark]
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

[State 1110, HitSpark]
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
[State 1110, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 1111

;---------------------------------------------------------------------------
;アインハンス・中上昇
[Statedef 1111]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1011

[State 1111, Urusai! - Flag]
type = VarSet
triggerall = time = [0,10]
trigger1 = command = "kiero_low"
trigger2 = command = "kiero_middle"
v = 9
value = 1
IgnoreHitPause = 1

[State 1111, Urusai! - Flag]
type = VarSet
triggerall = MoveContact
trigger1 = command = "kiero_low"
trigger2 = command = "kiero_middle"
v = 9
value = 1
IgnoreHitPause = 1

[State 1111, Urusai! - Flag]
type = VarSet
triggerall = ((time = [0,3]) && (Power >= 500))
trigger1 = command = "kiero_high"
v = 9
value = 2
IgnoreHitPause = 1

[State 1111, Urusai! - Flag]
type = VarSet
triggerall = ((MoveContact) && (Power >= 500))
trigger1 = command = "kiero_high"
v = 9
value = 2
IgnoreHitPause = 1

;***********************************
[State 1111, Pos]
type = PosAdd
trigger1 = time = 0
x = 5

[State 1111, VelSet]
type = VelSet
trigger1 = time = 0
x = 0.5
y = -6

[State 1111, VelSet]
type = VelAdd
trigger1 = time >= 4
y = 0.15

[State 1111, Width]
type = Width
trigger1 = 1
value = 17,0

;***********************************
[State 1111, Effect]
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
[State 1111, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 1
value = s3,1

[State 1111, SE]
type = PlaySnd
trigger1 = Time = 2
value = s0,2

;***********************************
[State 1111, Hit]
type = HitDef
trigger1 = time = 3
trigger2 = time = 6
attr             = A, SA
animtype         = Up
damage           = 30,3
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
fall.recover = ifelse(var(9)=1,0,1)
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 1111, HitSpark]
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

[State 1111, HitSpark]
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
[State 1111, Change]
type = ChangeState
trigger1 = Time >= 18
value = 1102

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ツヴァイカルト
[Statedef 1120]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1013

[State 1120, VelSet]
type = VelSet
trigger1 = time = 0
x = (Vel X)
y = -1.5

[State 1120, VelAdd]
type = VelAdd
trigger1 = time = [13,26]
y = 0.1

[State 1120, VelAdd]
type = VelAdd
trigger1 = time >= 27
y = 0.3

;***********************************
[State 1120, Effect]
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
[State 1120, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 9
value = s3,9

[State 1120, SE]
type = PlaySnd
trigger1 = Time = 10
value = s0,2

;***********************************
[State 1120, Hit]
type = HitDef
trigger1 = AnimElem = 6
attr             = A, SA
animtype         = Back
damage           = 30,3
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
ground.velocity  = -2,-6
air.velocity     = -2,-6
fall = 1
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 1120, HitSpark]
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
[State 1120, Change]
type = ChangeState
triggerall = ((command = "oshimai_low") || (command = "oshimai_middle"))
trigger1 = ((!MoveContact) && (AnimElemTime(6) > 6) && (AnimElemTime(10) < 0))
trigger2 = MoveContact
value = 1121

[State 1120, Change]
type = ChangeState
triggerall = ((command = "oshimai_high") && (Power >= 500))
trigger1 = ((!MoveContact) && (AnimElemTime(6) > 6) && (AnimElemTime(10) < 0))
trigger2 = MoveContact
value = 3015

;***********************************
[State 1120, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ドライライゼ
[Statedef 1121]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1014

[State 1121, VelSet]
type = VelSet
trigger1 = time = 0
x = (Vel X)
y = -1.5

[State 1121, VelAdd]
type = VelAdd
trigger1 = time = [14,26]
y = 0.1

[State 1121, VelAdd]
type = VelAdd
trigger1 = time >= 27
y = 0.3

;***********************************
[State 1121, Effect]
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
[State 1121, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 9
value = s3,3

[State 1121, SE]
type = PlaySnd
trigger1 = Time = 10
value = s0,2

;***********************************
[State 1121, Hit]
type = HitDef
trigger1 = AnimElem = 5
attr             = A, SA
animtype         = Up
damage           = 30,3
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

[State 1121, HitSpark]
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
[State 1121, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; アレンジモード用必殺技：アルト・シュヴァイゼン
;===========================================================================
;---------------------------------------------------------------------------
; 弱開始
[Statedef 1200]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 30
ctrl     = 0
anim     = 2000
velset   = 0,0

[State 1200, Muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 5

[State 1200, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 0
x = 1

;***********************************
[State 1200, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 4
value = s3,9

;***********************************
[State 1200, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201

;---------------------------------------------------------------------------
; 弱突撃
[Statedef 1201]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 2001

[State 1201, VelSet]
type = VelSet
trigger1 = time = 0
x = 5
y = -3

[State 1201, VelAdd]
type = VelAdd
trigger1 = time > 0
y = 0.4

;***********************************
[State 1201, SE]
type = PlaySnd
trigger1 = Time = 4
value = s0,2

;***********************************
[State 1201, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr             = A, SA
animtype         = Back
damage           = 70,7
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 12,12
sparkno          = s20010
sparkxy          = -10,-70
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = Low ;High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -5,-4
air.velocity     = -5,-3.5
;fall.yvelocity = -2.5
fall = 1
envshake.time = 5
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2facing = 1

[State 1201, HitSpark]
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
[State 1201, Change]
type = ChangeState
trigger1 = ((Time > 6) && (Pos Y >= 0))
value = 1202

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 着地
[Statedef 1202]
type     = S
movetype = I
physics  = S
ctrl     = 0
anim     = 2002

[State 1202, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1202, VelSet]
type = VelSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 1202, Shibuki]
type = Explod
trigger1 = Time = 0
anim = 3118
postype = p1
pos = 0,0
scale = 1,1
sprpriority = -1
ownpal = 1

[State 1202, SE]
type = PlaySnd
trigger1 = Time = 0
value = s1,6

;***********************************
[State 1202, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 3103

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 中開始
[Statedef 1210]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 30
ctrl     = 0
anim     = 2000
velset   = 0,0

[State 1210, Muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 8

[State 1210, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 0
x = 1

;***********************************
[State 1210, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 4
value = s3,9

;***********************************
[State 1210, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 1211

;---------------------------------------------------------------------------
; 中突撃
[Statedef 1211]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 2001

[State 1211, VelSet]
type = VelSet
trigger1 = time = 0
x = 8
y = -3

[State 1211, VelAdd]
type = VelAdd
trigger1 = time > 0
y = 0.4

;***********************************
[State 1211, SE]
type = PlaySnd
trigger1 = Time = 4
value = s0,2

;***********************************
[State 1211, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr             = A, SA
animtype         = Back
damage           = 80,8
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 12,12
sparkno          = s20010
sparkxy          = -10,-70
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = Low ;High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -5,-4
air.velocity     = -5,-3.5
;fall.yvelocity = -2.5
fall = 1
envshake.time = 5
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2facing = 1

[State 1211, HitSpark]
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
[State 1211, Change]
type = ChangeState
trigger1 = ((Time > 6) && (Pos Y >= 0))
value = 1202

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; アレンジモード用必殺技：ルフト・シュルブロック
;===========================================================================
;---------------------------------------------------------------------------
; 弱
[Statedef 1300]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1020

[State 1300, VelSet]
type = VelSet
trigger1 = time = 0
y = -0.1

[State 1300, VelSet]
type = VelSet
trigger1 = time = 11
x = 1.5
y = -2

[State 1300, VelAdd]
type = VelAdd
trigger1 = time > 11
y = 0.3

;***********************************
[State 1300, Effect]
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
size.xscale = 0.82 ;1
size.yscale = 0.82 ;1

[State 1300, HitSpark]
type = Helper
trigger1 = ProjHit1300 = 1
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

[State 1300, GuardSpark]
type = Helper
trigger1 = ProjGuarded1300 = 1
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
[State 1300, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 11
value = s3,4

[State 1300, SE]
type = PlaySnd
trigger1 = Time = 11
value = s0,2

;***********************************
[State 1300, Force]
type = Projectile
trigger1 = AnimElem = 6
attr             = A, SP
offset           = 0,0
velocity         = 1.1,0
damage           = 18,2
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1300
projanim         = 1021
projhitanim      = 1021
projremanim      = 1021
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 3
projmisstime     = 8
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
[State 1300, Change]
type = ChangeState
trigger1 = ((Time > 6) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
; 中
[Statedef 1310]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1020

[State 1310, VelSet]
type = VelSet
trigger1 = time = 0
y = -0.1

[State 1310, VelSet]
type = VelSet
trigger1 = time = 11
x = 3
y = -2

[State 1310, VelAdd]
type = VelAdd
trigger1 = time > 11
y = 0.3

;***********************************
[State 1310, Effect]
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
size.xscale = 0.82 ;1
size.yscale = 0.82 ;1

[State 1310, HitSpark]
type = Helper
trigger1 = ProjHit1300 = 1
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

[State 1310, GuardSpark]
type = Helper
trigger1 = ProjGuarded1300 = 1
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
[State 1310, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 11
value = s3,4

[State 1310, SE]
type = PlaySnd
trigger1 = Time = 11
value = s0,2

;***********************************
[State 1310, Force]
type = Projectile
trigger1 = AnimElem = 6
attr             = A, SP
offset           = 0,0
velocity         = 1.1,0
damage           = 20,2
getpower         = 30,10
animtype         = Hard
pausetime        = 0,11
;-----------------------------------
projID           = 1300
projanim         = 1021
projhitanim      = 1021
projremanim      = 1021
projscale        = 1,1
projshadow       = 0,0,0
projhits         = 3
projmisstime     = 8
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
[State 1310, Change]
type = ChangeState
trigger1 = ((Time > 6) && (Pos Y >= 0))
value = 52

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; アレンジモード用必殺技：その他
;===========================================================================
;---------------------------------------------------------------------------
;アルトシューレ：強・３回目（アレンジモードのみ・地上ドライライゼ）
[Statedef 1400]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 1005
velset   = 0,0

[State 1400, Pos]
type = PosSet
trigger1 = 1
y = 0

;***********************************
[State 1400, Effect]
type = Helper
trigger1 = AnimElemTime(10) = 0
name = "jama-3-2"
stateno = 2006
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

;***********************************
[State 1400, Arcueid Voice]
type = PlaySnd
trigger1 = AnimElemTime(11) = 0
value = s3,9

[State 1400, SE]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = s0,2

;***********************************
[State 1400, Hit]
type = HitDef
trigger1 = AnimElem = 13
attr             = S, SA
animtype         = Up
damage           = 30,3
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
ground.velocity  = -1.3,-25
guard.velocity = -1
air.velocity     = -1.3,-25
airguard.velocity = -1,-6
fall = 1
fall.recover = 0
fall.damage = 10
p2facing = 1
envshake.time = 6
envshake.ampl = 6
envshake.freq = 100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
mindist = 50,-100
maxdist = 100,-10
yaccel = .8

[State 1400, HitSpark]
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

[State 1400, Change]
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
; エフェクト類・その他
;===========================================================================
;---------------------------------------------------------------------------
;アルトシューレ＆シュナイデン・エンデ：１回目エフェクト
[Statedef 2000] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3020
SprPriority = 4

[State 2000, Pos]
type = PosSet
trigger1 = 1
y = 0

;***********************************
[State 2000, Bind]
type = BindToRoot
trigger1 = time = [0,10]
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2000, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;---------------------------------------------------------------------------
;アルトシューレ＆シュナイデン・エンデ：２回目エフェクト
[Statedef 2001] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3021
SprPriority = 5

[State 2001, Pos]
type = PosSet
trigger1 = 1
y = 0

;***********************************
[State 2001, Bind]
type = BindToRoot
trigger1 = time = [0,12]
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2001, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2001, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;---------------------------------------------------------------------------
;アルトシューレ＆シュナイデン・エンデ：３回目弱エフェクト
[Statedef 2002] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3022
;SprPriority = 6

[State 2002, SprPriority]
type = SprPriority
trigger1 = 1
value = ifelse(time<7,-1,6)

[State 2002, Pos]
type = PosSet
trigger1 = 1
y = 0

;***********************************
[State 2002, Bind]
type = BindToRoot
trigger1 = time = [0,12]
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2002, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2002, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;---------------------------------------------------------------------------
;アルトシューレ＆シュナイデン・エンデ：３回目中エフェクト
[Statedef 2003] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3023
SprPriority = 6

[State 2003, Pos]
type = PosSet
trigger1 = 1
y = 0

;***********************************
[State 2003, Bind]
type = BindToRoot
trigger1 = time = [0,12]
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2003, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2003, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;アルトネーゲル＆シュテルベン・エンデ：１回目エフェクト
[Statedef 2004] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3024
SprPriority = 4

[State 2004, Pos]
type = PosSet
trigger1 = 1
y = 0

;*********************************
[State 2004, Bind]
type = BindToRoot
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2004, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2004, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;---------------------------------------------------------------------------
;アルトネーゲル：２回目エフェクト
[Statedef 2005] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3025
SprPriority = -1

[State 2005, Pos]
type = PosSet
trigger1 = 1
y = 0

;*********************************
[State 2005, Bind]
type = BindToRoot
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2005, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2005, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;---------------------------------------------------------------------------
;アルトネーゲル：３回目エフェクト
[Statedef 2006] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3026
SprPriority = 5

[State 2006, Pos]
type = PosSet
trigger1 = 1
y = 0

;*********************************
[State 2006, Bind]
type = BindToRoot
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2006, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2006, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;===========================================================================
;---------------------------------------------------------------------------
;ルフト・シュルブロック：エフェクト
[Statedef 2007] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3039
SprPriority = 5

;*********************************
[State 2007, Bind]
type = BindToRoot
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2007, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2007, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;メテオスパーク
[Statedef 2100] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3113
SprPriority = 7

[State 2100, VarSet]
type = VarSet
trigger1 = StateNo != 2100
fv = 34
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 2100, VarAdd]
type = VarAdd
trigger1 = time >= 5
fv = 34
value = 0.01
IgnoreHitPause = 1
Persistent = 1

[State 2100, Color Gradation]
type = Palfx
trigger1 = time >= 5
add = ceil(-fvar(34)*200),ceil(-fvar(34)*200),ceil(-fvar(34)*200)
time = 1
IgnoreHitPause = 1
Persistent = 1

[State 2100, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2100, Effect]
type = Explod
trigger1 = 1
anim = 3114
postype = p1
pos = 0,0
scale = 0.2,0.2
sprpriority = -1
supermovetime = 99999999
pausemovetime = 99999999
ID = 2100

[State 2100, Effect]
type = Explod
trigger1 = 1
anim = 3115
postype = p1
pos = 0,0
scale = 0.2,0.2
sprpriority = 2
supermovetime = 99999999
pausemovetime = 99999999
ID = 2100

[State 2100, Effect]
type = Explod
trigger1 = 1
anim = 3116
postype = p1
pos = 0,0
scale = 0.2,0.2
sprpriority = 4
supermovetime = 99999999
pausemovetime = 99999999
ID = 2100

[State 2100, Modify]
type = ModifyExplod
trigger1 = 1
scale = 0.2+(fvar(34)*2),0.2+(fvar(34)*2)
supermovetime = 99999999
pausemovetime = 99999999
ID = 2100

[State 2100, Remove]
type = RemoveExplod
trigger1 = Time >= 129
ID = 2100

;***********************************
[State 2100, Change]
type = DestroySelf
trigger1 = Time > 130

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;マーヴルファンタズム・とどめエフェクト
[Statedef 2110] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3040
SprPriority = 7

[State 2110, Pos]
type = PosSet
trigger1 = 1
y = 0

;*********************************
[State 2110, Bind]
type = BindToRoot
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 2110, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 2110, Change]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

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
