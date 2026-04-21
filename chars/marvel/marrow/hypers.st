; States file for Marrow -- Hypers
;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Bone Buster: QCB + PP (air)
;   State 4000 (ground), 4000 (air)
;   Marrow "launches" a bunch of bones that act like homing Bones.
;   Standing, it takes ~1 sec. In the air, it happens right away.
;   Drawback, though: It will leave her UNMOVABLE and VUNERABLE until she lands on the ground again.
;
; Stinger Bones: QCF + PP
;   State 3000
;   Sarah really outdoes herself and launches whole strings of razor sharp
;   vertebrae at her opponent. A solid way to finish a combo.
;
;---------------------------------------------------------------------------
; Stinger Bones
[StateDef 3000]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3000
;velset = 0,0
;poweradd = -1000

[State 3000]
type = helper 
stateno = 3070; helper 
trigger1 = roundstate= 3 && numhelper(3070)=0
pos = 160,120
postype = left
bindtime = -1
ID=3070
ownpal = 1 
name = "SuperFX"
ignorehitpause=1

[State 3000, 1]; virar 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 1200, 3] 
type = Explod 
trigger1 = time =0 && statetype!=A
anim = 7020
id=7020
pos = 0,0
postype = p1 
sprpriority = 2
bindtime = 1
removeongethit=1
removetime=-2 
supermovetime = 56

[State 3000, hraaaa!]
type = PlaySnd
trigger1 = anim = 3000
trigger1 = AnimElem = 4
value = 9,4
channel=0
volume=255

[State 3000, 2];spark
type = PlaySnd 
trigger1 = anim = 3000 && time = 11
value = 3000, 0 
channel = 1
VOLUME=160

[State 3000, 2] ;super pausa
type = SuperPause 
trigger1 = anim = 3000 && time=11;0
time = 60
movetime = 59;12
Anim = -1 
poweradd=-1000
unhittable = 1

[State 620, 3] 
type = ScreenBound 
;triggerall = numhelper(3020)=1 
trigger1 = movehit;helper, 
trigger1 = time > 120
value = 0;1
movecamera = 0,0

[State 3000, 6] ;Brilho do especial
type = Explod 
trigger1 = anim = 3000 && animelem = 4;6;2
pos = 0, Const(size.head.pos.y) - 50
postype = p1 
bindtime = 1 
supermovetime = 56
sprpriority = 5 
anim = F102 
ownpal = 1
scale= const(size.xscale),const(size.yscale)

[State 3000, 9] ;Zoom Portrait
type        = Explod 
trigger1    = Time = [11,21] 
anim = 10000 
postype = back 
ID = 10000 
sprpriority = -3
supermovetime = 1 
removetime = 1 
scale = 3 -((time-11) * 0.15), 3 -((time-11) * 0.15) 
pos = 0,60-(time-11) * 5 
ownpal = 1

[State 3000, 9] ;Portrait fixo
type        = Explod 
trigger1    = Time = 22;(14 + 12)
anim = 10000 
postype = back 
ID = 10000 
vel = -1,0 
sprpriority = -3
supermovetime = 1 
removetime = 2;12;69;2 
pos = 0,0 
ownpal = 1

;[State 3000, 1]
;type = RemoveExplod
;trigger1 = Time =  

[State 3000, 9] ;Sem fundo e frente
type        = AssertSpecial 
trigger1 = anim = 3000
trigger1 = time > 10
flag = noBG 
flag2 = noFG 
ignorehitpause = 1

[State 4000];super fundo helper
type = helper 
trigger1 = anim = 3000
stateno = 3007; helper 
trigger1 = time > 69 && numhelper(3007)=0
pos = 0,0
postype = left
ID=3007
ownpal = 1
name = "super-fundo"
sprpriority = -3

[State 3000, falling back bones]
type = Explod
trigger1 = anim = 3000
trigger1 = AnimElem = 5
anim = 3010
pos = 0,0
postype = p1
supermove = 50

[State 3000, falling back bones];blood?
type = Explod
trigger1 = anim = 3000
trigger1 = time=76;AnimElem = 6
;trigger2 = time=80;AnimElem = 6
anim = 3030
pos = 0,0
postype = p1
supermove = 50
removetime = -2
sprpriority = 3

[State 3020, hitdef1]
type = HitDef
;trigger1 = hitcount < 6 && (time%10)=0
trigger1 = animelem = 17;9
trigger2 = animelem = 15;7
trigger3 = animelem = 16;8
trigger4 = animelem = 14;8
attr = S,HA
hitflag = MAF
guardflag = MA 
animtype = DiagUp
guard.sparkno=S910
sparkno= S900
damage = 40,0
pausetime = 10,5
getpower  = 0,0
sparkxy = 0,-60
hitsound = S2,2
guardsound = S3,0
ground.velocity = -10 * (animelem = 17),-8 * (animelem = 17)
air.velocity = -10 * (animelem = 17),-8 * (animelem = 17)
sprpriority = 0;
fall=1;
fall.recover = 0

[State 3020, hitdef1]
type = HitDef
trigger1 = hitcount < 7 && (time%8)=0 && time < 108
;trigger1 = AnimElem = 10;2     ;(subsequent hitdefs on elem 3, 4, etc)
;trigger11 = animelem = 12;4
;trigger2 = animelem = 13;5
;trigger3 = animelem = 14;6
;trigger4 = animelem = 15;7
;trigger5 = animelem = 16;8
;trigger6 = animelem = 17;9
;trigger7 = animelem = 18;10
;trigger8 = animelem = 19;11
;trigger9 = animelem = 20;12
;trigger10 = animelem = 21;13
attr = S,HA
hitflag = MAF
guardflag = MA 
animtype = Hard
guard.sparkno=S910
sparkno= S900
damage = 40,0
getpower  = 0,0
pausetime = 1,10
sparkxy = 0,-60
hitsound = S2,2
guardsound = S3,0
ground.velocity = 0,0;-20 * (time>120),-8 * (time>120)
air.velocity = 0,0;-20 * (time>120),-8* (time>120)
sprpriority = 0;

[State 1000, 4]
type = Projectile
trigger1 = anim = 3000
trigger1 = animelem = 9;4;2
trigger2 = animelem = 10;4;2
projanim = 3040
ProjID = 3040
velocity = 3, 0;- var(2);0;5.5
accel = 0, 0
; HitDef part of projectile info
projpriority = 6
attr = S, HP
damage    = 20,0
animtype  = hard;Medium
getpower  = 0,0
givepower = 40,20
guardflag = MA 
guard.sparkno=S910
sparkno= S900
damage = 20,0
pausetime = 5,10
sparkxy = 10,-80
hitsound = S2,2
projremovetime = 20
ground.velocity = -4

[State 182, 4]
type = EnvShake
trigger1 = anim = 3000
trigger1 = animelem = 17 && movecontact
time = 30
freq = 75;25
ampl = 10
ignorehitpause=1

[State 1027, osso]
type = Explod
trigger1 = anim = 3000
trigger1 = time > 75
id=3050
anim = 3050 + (animelemno(0)-8)
pos = 0,0
postype = p1
removetime = 1
bindtime = -1
sprpriority = 1
scale= const(size.xscale),const(size.yscale)
shadow = -1,0,0
ignorehitpause=1
ownpal = 0

[State 4000, 5] 
type = Changeanim
trigger1 = anim = 3000 && AnimTime = 0 
trigger1 = p2bodydist x > 320;numhelper(4110)!=0
value = 100;0

[State 4000, 5] 
type = VelSet
trigger1 = anim = 100
x = const(velocity.run.fwd.x)

[State 100, woosh]
type = PlaySnd
trigger1 = animelemtime(1) > 5 && anim = 100;
trigger1 = (time % 8) = 0 && p2bodydist x < 350
;persistent = 0
value = 8,1
volume=190

[State 1005, 8]
type = StateTypeSet
;trigger1 = statetype = S
trigger1 = anim=100
physics = N

[State 4000, 5] 
type = ChangeState 
trigger2 = p2bodydist x < 320 && anim = 100 && animtime=0
trigger1 = anim = 3000 && AnimTime = 0 
trigger1 = p2bodydist x <= 320 
value = 0
ctrl = 1;(anim!=100)

;---------------------------------------------------------
; super-fundo
[Statedef 3007]
physics = N
anim = 4102
sprpriority = -3

[State 3300, 5] 
type = VarSet 
trigger1 = Time = 0 
var(2) = root, ID 

[State 3000, 9] ;Efeito de fundo azul
type     = PalFx
trigger1 = (time%30)=0
time = 30
add = 0,64*(var(2)=33||var(2)=35),64*(var(2)=32||var(2)=34) 
sinadd = 0,100*(var(2)=33||var(2)=35),100*(var(2)=32||var(2)=34),50

[State 3000, 9] ;animação de fundo
type        = Explod 
;trigger1 = (time%80)=0;
trigger1 = numexplod(4100)=0
anim = 4100 
postype = left
ID = 4100 
sprpriority = -3
supermovetime = 1 
removetime = -2;12 
pos = 1,0;1,120 
scale= const(size.xscale),const(size.yscale)*1.5;2
bindtime = -1

[State 3000, 9] ;animação de fundo
type        = Explod 
;trigger1 = (time%80)=0;
trigger1 = numexplod(4101)=0
anim = 4101
postype = right
ID = 4101 
sprpriority = -3
supermovetime = 1 
removetime = -2;12 
pos = 0,0 
scale= const(size.xscale),const(size.yscale)*1.5;/2;*2.01
bindtime = -1
facing=-1

[State 3000, 9] ;animação de fundo
type        = Explod 
;trigger1 = (time%80)=0;
trigger1 = numexplod(4102)=0
anim = 4101 
postype = left
ID = 4102
sprpriority = -3
supermovetime = 1 
removetime = -2;12 
pos = 1,239;120 
scale= const(size.xscale),const(size.yscale)/2
bindtime = -1
vfacing=-1

[State 3000, 9] ;animação de fundo
type        = Explod 
;trigger1 = (time%80)=0;
trigger1 = numexplod(4103)=0
anim = 4100
postype = right
ID = 4103 
sprpriority = -3
supermovetime = 1 
removetime = -2;200;12
pos = 0,239;120 
scale= const(size.xscale),const(size.yscale)/2;*2.01
bindtime = -1
facing=-1
vfacing=-1

[State 3610, 7] 
Type = RemoveExplod 
trigger1 = root, stateno!=3000
trigger1 = root, stateno!=4000
trigger2 = root, anim!=3000
trigger2 = root, stateno=3000
;trigger1 = root, stateno!=4500
trigger3 = root, Numhelper(3070)!=0

[State 3610, 7] 
Type = destroyself 
trigger1 = root, stateno!=3000
trigger1 = root, stateno!=4000
trigger2 = root, anim!=3000
trigger2 = root, stateno=3000
;trigger1 = root, stateno!=3500
;trigger1 = root, stateno!=4500

;---------------------------------------------------------
; Super KO FX
; (THANKS TO: Splode´s Rogue)
[Statedef 3070]
type = A
movetype = I
physics = N
anim = 3002

[State 9070, 1]
type = AssertSpecial
trigger1 = 1;(time%2)=0;roundstate=3;1
flag3 = NoBG
flag2 = NoFG
flag = nobardisplay;nokoslow;nomusic;nokosnd;
;flag4 = nomusic
;flag5 = nokosnd
persistent=0;ignorehitpause=1

[State 3000, hraaaa!]
type = PlaySnd
trigger1 = time = 4
trigger2 = time = 3
trigger3 = time = 2
value = 3070,0
;channel=0
volume=255

[State 9070, 2]
type = Explod
trigger1 = numexplod(222)< 3
trigger1 = time < 30
ID = 222
anim = 3001
postype = left
pos = 160, 120
bindtime = -1
removetime = 12;-2;6
ownpal = 1
sprpriority = -2
scale= (time+7)/7,(time+7)/7;6;numexplod(222)
ignorehitpause=1

[State 9070, 2]
type = Explod
trigger1 = numexplod(222)< 3
trigger1 = time = [30,60]
ID = 222
anim = 3001
postype = left
pos = 160, 120
bindtime = -1
removetime = 10;-2;6
ownpal = 1
sprpriority = -2
scale= (time-23)/7,(time-23)/7;6;numexplod(222)
ignorehitpause=1

[State 9070, 2]
type = Explod
trigger1 = numexplod(222)< 3
trigger1 = time > 60
ID = 222
anim = 3001
postype = left
pos = 160, 120
bindtime = -1
removetime = 8;-2;6
ownpal = 1
sprpriority = -2
scale= (time-53)/7,(time-53)/7;6;numexplod(222)
ignorehitpause=1

[State 3610, 7] 
Type = destroyself 
trigger1 = roundstate!=3
;trigger2 = time=30;= 20;25

;---------------------------------------------------------
; COUNTER (stand) 
; (THANKS TO: Charlzn64's Ryu Turbo)
[Statedef 3300] 
type    = S 
movetype= H 
physics = N 
velset = 0,0 
anim = 1000 + 2000 * (anim=2000)
poweradd= -1000 * (var(9)=0)

[State 1000, 1]; virar 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 3000, 1]
type = RemoveExplod
trigger1 = Time = 0 

[State 3300, 1] 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 3300, 1] 
type = NotHitBy 
trigger1 = AnimElem = 1
value = SCA
time = 30 

[State 3300, 2] 
type = SuperPause 
trigger1 = Time = 0 
pos = 7, -49
time = 20 
unhittable = 1

[State 3300, 2] 
type = SuperPause 
trigger1 = Time = 1 
time = 10 
movetime = 10 
Anim = -1 
darken = 0 
unhittable = 1

[State 3300, 4] 
type = ReversalDef 
trigger1 = Anim = 160 
reversal.attr = SCA, AA, AP, AT, NA, NP, NT, SA, SP, ST, HA, HP, HT 
pausetime = 20,0 
sparkxy = 26,-45
hitflag = MA
priority = 1 
sparkno = -1 
p2facing = 1 
p2getp1state = 1 

[State 3300, 5] 
type = VarSet 
trigger1 = Time = 0 
var(2) = 1 + 3 * ((var(20)=1 && p2bodydist x > 55)||anim = 2000)

[State 3300, 5] 
type = ChangeState 
trigger1 = var(20)=1 && p2bodydist x > 55
triggerall = time = 1 
trigger2 = var(20)=0 && anim = 2000
value = 2000

[State 3300, 5] 
type = ChangeState 
trigger1 = time = 1 
value = 1500

; Counter 2
[Statedef 3310] 
type = U 
ctrl = 0 

[State 1010, 1] 
type = ChangeAnim
trigger1 = 1 
value = 2000 

[State 1010, 1] 
type = ChangeState 
trigger1 = 1 
value = 3300 


;---------------------------------------------------------------------------
; Bone Buster (ground)
[StateDef 4000]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 4000
velset = 0,-1

[State 3000]
type = helper 
stateno = 3070; helper 
trigger1 = roundstate= 3 && numhelper(3070)=0
pos = 160,120
postype = left
bindtime = -1
ID=3070
ownpal = 1 
name = "SuperFX"
ignorehitpause=1

[State 3000, 1]; virar 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 852, 0]
type = PlaySnd
trigger1 = Time = 60;5
persistent = 0
value = 9,3
channel=0
volume=255

[State 1200, 3] 
type = Explod 
trigger1 = time =0 && statetype!=A
anim = 7020
id=7020
pos = 0,0
postype = p1 
sprpriority = 2
bindtime = 1
removeongethit=1
removetime=-2 
supermovetime = 56

[State 3000, 2];spark
type = PlaySnd 
trigger1 = anim = 4000 && time=11;0
value = 3000, 0 
channel = 1
VOLUME=160

[State 3000, 2] ;super pausa
type = SuperPause 
trigger1 = anim = 4000 && time=11;0
time = 50
movetime = 49;12
Anim = -1 
poweradd=-1000
unhittable = 1

[State 3000, 6] ;Brilho do especial
type = Explod 
trigger1 = anim = 3000 && animelem = 6;2
pos = 0, Const(size.head.pos.y) - 50
postype = p1 
bindtime = 1 
supermovetime = 56
sprpriority = 5 
anim = F102 
ownpal = 1
scale= const(size.xscale),const(size.yscale)

[State 3000, 9] ;Zoom Portrait
type        = Explod 
trigger1    = Time = [11,21] 
anim = 10000 
postype = back 
ID = 10000 
sprpriority = -3
supermovetime = 1 
removetime = 1 
scale = 3 -((time-11) * 0.15), 3 -((time-11) * 0.15) 
pos = 0,60-(time-11) * 5 
ownpal = 1

[State 3000, 9] ;Portrait fixo
type        = Explod 
trigger1    = Time = 22;(14 + 12)
anim = 10000 
postype = back 
ID = 10000 
vel = -1,0 
sprpriority = -3
supermovetime = 1 
removetime = 2;12;69;2 
pos = 0,0 
ownpal = 1

;[State 3000, 1]
;type = RemoveExplod
;trigger1 = Time =  

[State 3000, 9] ;Sem fundo e frente
type        = AssertSpecial 
trigger1 = time > 10
flag = noBG 
flag2 = noFG 
ignorehitpause = 1

[State 4000];super fundo helper
type = helper 
stateno = 3007; helper 
trigger1 = time > 59 && numhelper(3007)=0
pos = 0,0
postype = left
ID=3007
ownpal = 1
name = "super-fundo"
sprpriority = -3

;---------------------------------------------------------------------------
[State 4000, NotHitBy]
Type = NotHitBy
trigger1 = time = [50,75];AnimElem = 4;3, = 1
Value = SCA
Time = 1;50

[State 4000, Fire]
type = Velset
trigger1 = Time = 30;65
x = 0
y = 0

[State 4000, Bone1]
type = Helper
trigger1 = AnimElem = 11;4
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone2]
type = Helper
trigger1 = AnimElem = 11;4
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone3]
type = Helper
trigger1 = AnimElem = 11;4
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone4]
type = Helper
trigger1 = AnimElem = 12;6
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone5]
type = Helper
trigger1 = AnimElem = 12;6
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone6]
type = Helper
trigger1 = AnimElem = 12;6
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone7]
type = Helper
trigger1 = AnimElem = 13;8
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone8]
type = Helper
trigger1 = AnimElem = 13;8
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone9]
type = Helper
trigger1 = AnimElem = 13;8
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone10]
type = Helper
trigger1 = AnimElem = 14;10
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone11]
type = Helper
trigger1 = AnimElem = 14;10
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone12]
type = Helper
trigger1 = AnimElem = 14;10
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone13]
type = Helper
trigger1 = AnimElem = 13;12
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone14]
type = Helper
trigger1 = AnimElem = 13;12
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone15]
type = Helper
trigger1 = AnimElem = 13;12
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 4000, Bone16]
type = Helper
trigger1 = AnimElem = 13;12
name = "Seeking Bone"
ID = 4201
pos = 33,-68
postype = p1
stateno = 4201
helpertype = normal
keyctrl = 0
ownpal = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 10
size.air.front = 10

[State 1010, 1] 
type = ChangeState 
trigger1 = animtime=0 
value = 50 
ctrl=0

; Seeking Bone helper
[Statedef 4201]
type = A
movetype = A
physics = N
anim = 4201
sprpriority = 2

[State 4201, Select 1]
type = VarSet
trigger1 = (time % 10) = 0
trigger2 = time = 0
fvar(4) = P2Dist x

[State 4201, Select 1]
type = Varset
trigger1 = (time % 10) = 0
trigger2 = time = 0
fvar(5) = P2Dist y

[State 4201, Select 1]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,16

[State 4201, Select 2]
type = VarRandom
trigger1 = time = 0
v = 3
range = 0,16

[State 4201, Start Vel]
type = VelSet
trigger1 = time = 0
x = (var(2) - 8)
y = (var(3) - 8)

;[State 4201, Nothitby]
;type = NotHitBy
;trigger1 = Time = 0
;value = , AA, AT
;time = -1

[State 4201, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AT, AP
stateno = 4258
time = -1

[State 4201, Seek 1]
type = VelAdd
trigger1 = (fvar(4)+time) < 0
trigger1 = Time >= 10
x = -.6

[State 4201, Seek 2]
type = VelAdd
trigger1 = (fvar(4)+time) > 0
trigger1 = Time >= 10
x = .6

[State 4201, Seek 3]
type = VelAdd
trigger1 = (fvar(5)+time) < 50
trigger1 = Time >= 10
y = -.6

[State 4201, Seek 4]
type = VelAdd
trigger1 = (fvar(5)+time) > 50
trigger1 = Time >= 10
y = .6

[State 4201, Limit 1]
type = VelSet
trigger1 = vel X > 6;8
x = 6;8

[State 4201, Limit 2]
type = VelSet
trigger1 = vel X < -6;8
x = -6;8

[State 4201, Limit 3]
type = VelSet
trigger1 = vel Y > 6;8
y = 6;8

[State 4201, Limit 4]
type = VelSet
trigger1 = vel Y < -6;8
y = -6;8

;ângulo (-90)
[State 4201, 1]
type = AngleSet
trigger1 = Vel X = [-1.5, 1.5]
trigger1 = Vel Y < -1.5
value = -90

[State 4201, 1]
type = AngleSet
trigger1 = Vel X > 1.5
trigger1 = Vel Y < -1.5
value = -45;45

[State 4201, 1]
type = AngleSet
trigger1 = Vel X > 1.5
trigger1 = Vel Y = [-1.5, 1.5]
value = 0

[State 4201, 1]
type = AngleSet
trigger1 = Vel X > 1.5
trigger1 = Vel Y > 1.5
value = -315;315

[State 4201, 1]
type = AngleSet
trigger1 = Vel X = [-1.5, 1.5]
trigger1 = Vel Y > 1.5
value = -270;270

[State 4201, 1]
type = AngleSet
trigger1 = Vel X < -1.5
trigger1 = Vel Y > 1.5
value = -225;225

[State 4201, 1]
type = AngleSet
trigger1 = Vel X < -1.5
trigger1 = Vel Y = [-1.5, 1.5]
value = -180;180

[State 4201, 1]
type = AngleSet
trigger1 = Vel X < -1.5
trigger1 = Vel Y < -1.5
value = -135;135

[State 4201, Facing]
type = AngleDraw
trigger1 = 1

[State 4201, Attack]
type = HitDef
trigger1 = 1
attr = A, HP
damage    = 23,4
animtype = up;Back
getpower  = 0
hitflag = MAFD
guardflag = MA
priority = 3
guard.sparkno=S910
sparkno= S900
hitsound   = S2,2 
guardsound = 6,0 
getpower  = 0,0
sparkxy = 0,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -0.5,-6
air.type = low
air.velocity = -0.5,-6
down.velocity = -1.5,-6
air.fall = 1
fall = 1
fall.recover = 0

[State 3000]
type = helper 
stateno = 3070; helper 
trigger1 = roundstate= 3 && numhelper(3070)=0
trigger2 = p2life=0 && movehit
pos = 160,120
postype = left
bindtime = -1
ID=3070
ownpal = 1 
name = "SuperFX"
ignorehitpause=1

[State 4201, Blow-up]
type = Changeanim
trigger1 = Time = 50 && !movecontact
value = 4202

[State 4201, Blow-up]
type = Changeanim
trigger1 = movecontact && anim=4201
value = 900

[State 4201, Limit 2]
type = VelSet
trigger1 = ANIM = 900
x = 0
y = 0

[State 4258, Done]
type = DestroySelf
trigger1 = AnimTime = 0
trigger1 = anim = 4202
trigger2 = ANIM = 900

; Seeking Bone destroyed
[Statedef 4258]
type = A
movetype = I
physics = N
anim = 4202
velset=0,0

[State 4258, Done]
type = DestroySelf
trigger1 = AnimTime = 0


