; Specials states file for Lobo
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
;  10: "Main Men" clone #1
;  11: "Main Men" clone #2
; Explods:
;  10: "Main Men" clone #1 timer bar
;  11: "Main Men" clone #2 timer bar
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States in this file:
; 
; Frag: 1000
; Frag (air): 1100
; Mr. Hook: 1200-1240
; Rot Gut: 2000-2003
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


;---------------------------------------------------------------------------
; Special Attacks
; 
; Frag! (D,DF,F + P)
;   Gunshot move
; Mr. Hook (D,DB,DB + P)
;   Something like MK Scorpion's "get over here!" move
; Rot Gut (D,DB,B + K)
;   Lobo takes a swig from a bottle, gains a random powerup for a few seconds:
;     super-armor, speed, health, etc.
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Frag! (ground, weak)
[StateDef 1000]
anim = 1000
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 15

[State 1000, "frag!"]
type = PlaySnd
trigger1 = Time = 5
value = 9,0

[State 1000, blam!]
type = PlaySnd
trigger1 = Time = 7
channel = 1
value = 9, ifelse(var(5) > 0, 1, 3)

[State 1000, shell]
type = Explod
triggerall = var(5) > 0
trigger1 = Time = 7
anim = 1001
pos = 84,-100
postype = p1

[State 1000, spendBullet]
type = VarAdd
triggerall = var(5) > 0
trigger1 = Time = 8
v = 5
value = -1

[State 1000, muzzleflash]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 3
anim = 1002
pos = 116,-93
bindtime = 100
sprpriority = 4

[State 1000, hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
hitflag = MAF
guardflag = MA
sparkxy = -140,-90
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
pausetime = 15,1
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
ground.velocity = -4, -2
damage = 10,5

[State 1000, bullet]
type = Projectile
triggerall = var(5) > 0
trigger1 = AnimElem = 3
projanim = 1003
velocity = 50,0
projsprpriority = 3
offset = 74,-92
attr = S,SP
hitflag = MAF
guardflag = MA
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 12
ground.slidetime = 13
guard.slidetime = 9
ground.velocity = -2, 0
damage = 50,10

[State 1000, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Frag! (ground, medium)
[StateDef 1001]
anim = 1006
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 1000, "frag!"]
type = PlaySnd
trigger1 = Time = 5
value = 9,0

[State 1001, blam!]
type = PlaySnd
trigger1 = Time = 7
trigger2 = Time = 27
channel = 1
value = 9, ifelse(var(5) > 0, 1, 3)

[State 1001, shell]
type = Explod
triggerall = var(5) > 0
trigger1 = Time = 7
trigger2 = Time = 27
anim = 1001
pos = 84,-100
postype = p1

[State 1001, spendBullets]
type = VarAdd
triggerall = var(5) > 0
trigger1 = Time = 8
trigger2 = Time = 28
v = 5
value = -1

[State 1001, muzzleflash]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
anim = 1002
pos = 116,-93
bindtime = 100
sprpriority = 4

[State 1001, hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
hitflag = MAF
guardflag = MA
sparkxy = -140,-90
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
pausetime = 15,1
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
ground.velocity = -4, -2
damage = 10,5

[State 1001, bullet]
type = Projectile
triggerall = var(5) > 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
projanim = 1003
velocity = 50,0
projsprpriority = 3
offset = 74,-92
attr = S,SP
hitflag = MAF
guardflag = MA
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 12
ground.slidetime = 13
guard.slidetime = 9
ground.velocity = -2, 0
damage = 50,10

[State 1001, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Frag! (ground, strong)
[StateDef 1002]
anim = 1007
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 45

[State 1002, "frag!"]
type = PlaySnd
trigger1 = Time = 5
value = 9,0

[State 1002, sfx]
type = PlaySnd
trigger1 = Time = 7
trigger2 = Time = 27
trigger3 = Time = 47
channel = 1
value = 9, ifelse(var(5) > 0, 1, 3)

[State 1002, shell]
type = Explod
triggerall = var(5) > 0
trigger1 = Time = 7
trigger2 = Time = 27
trigger3 = Time = 47
anim = 1001
pos = 84,-100
postype = p1

[State 1002, spendBullets]
type = VarAdd
triggerall = var(5) > 0
trigger1 = Time = 8
trigger2 = Time = 28
trigger3 = Time = 48
v = 5
value = -1

[State 1002, muzzleflash]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
anim = 1002
pos = 116,-93
bindtime = 100
sprpriority = 4

[State 1002, hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
hitflag = MAF
guardflag = MA
sparkxy = -140,-90
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
pausetime = 15,1
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
ground.velocity = -4, -2
damage = 10,5

[State 1002, bullet]
type = Projectile
triggerall = var(5) > 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
projanim = 1003
velocity = 50,0
projsprpriority = 3
offset = 74,-92
attr = S,SP
hitflag = MAF
guardflag = MA
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 12
ground.slidetime = 13
guard.slidetime = 9
ground.velocity = -2, 0
damage = 50,10

[State 1002, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Frag! (air)
[StateDef 1100]
anim = 1100
ctrl = 0
type = S
movetype = A
physics = A
poweradd = 40

[State 1100, "frag!"]
type = PlaySnd
trigger1 = Time = 5
value = 9,0

[State 1100, blam!]
type = PlaySnd
trigger1 = AnimElem = 2
channel = 1
value = 9, ifelse(var(5) > 0, 1, 3)

[State 1100, shell]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 2
anim = 1001
pos = 80,-65
postype = p1

[State 1100, spendBullets]
type = VarAdd
triggerall = var(5) > 0
trigger1 = Time = 8
v = 5
value = -1

[State 1100, muzzleflash]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 2
anim = 1102
scale = .5, .5
pos = 83,-45
bindtime = 10
sprpriority = 4

[State 1000, bullet]
type = Projectile
triggerall = var(5) > 0
trigger1 = AnimElem = 2
projanim = 1103
velocity = 10, 5
projsprpriority = 3
offset = 67,-40
attr = S,SP
hitflag = MAF
guardflag = MA
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 12
ground.slidetime = 13
guard.slidetime = 9
ground.velocity = -2, 0
damage = 50,10

[State 1100, veladd1]
type = VelAdd
triggerall = var(5) > 0
trigger1 = AnimElem = 2,5
x = -2
y = -12

[State 1100, drop back to ground]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 1100, back to ground]
type = ChangeState
trigger1 = Anim = 44
value = 51
ctrl = 1


;---------------------------------------------------------------------------
; Mr. Hook

; chain throw
[StateDef 1200]
anim = 1200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 50

;[State 1200, grunt]
;type = PlaySnd
;trigger1 = Time = 1
;value = 1,2

[State 1200, chain kaching]
type = PlaySnd
trigger1 = Time = 1
channel = 1
value = 9,10

;[State 1200, chain helper]
;type = Helper
;trigger1 = AnimElem = 4
;helpertype = normal
;name = "mr.hook"
;pos = 103,-75
;postype = p1
;stateno = 1201
;size.xscale = 
;size.yscale = 
;size.ground.back = 
;size.ground.front = 
;size.air.back = 
;size.air.front = 
;size.height = 
;size.proj.doscale = 
;size.head.pos = 
;size.mid.pos = 
;size.shadowoffset = 

[State 1200, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MA
guardflag = MA
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
priority = 6,Hit
damage = 50,10
;sparkno = 
;guard.sparkno = 
sparkxy = -65,-75
hitsound = S9,10
guardsound = S9,10
p1stateno = 1210
p2stateno = 1220

; if hook missed or was blocked
[State 1200, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 1240
ctrl = 1


; chain helper
[StateDef 1201]
anim = 1201
ctrl = 0
type = A
movetype = A
physics = N

[State 1201, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MA
guardflag = D;MA
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
priority = 6,Hit
damage = 50,10
;sparkno = 
;guard.sparkno = 
sparkxy = -65,-75
hitsound = S9,10
guardsound = S9,10
p1stateno = 1202    ;10
p2stateno = 1220

[State 1201, destroyself]
type = DestroySelf
trigger1 = AnimTime = 0


; got the opponent hooked, about to yank him in
[StateDef 1210]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 50

[State 1200, flag hook as hit]
type = VarSet
trigger1 = Time = 0
v =  1
value = AnimElemNo(0)

[State 1210, hooked!]
type = ChangeAnim
trigger1 = (Time = 0) && (P2Life > 50)
value = 1210 + var(1)

[State 1210, hook fragged him... return to normal]
type = ChangeState
trigger1 = (Time = 0) && (P2Life <= 50)
value = 1240

[State 1210, chain kaching]
type = PlaySnd
trigger1 = Time = 1
channel = 1
value = 9,10

[State 1210, gotcha!]
type = PlaySnd
trigger1 = Time = 0
channel = 0
value = 9,11

[State 1210, reset var1 to reflect target binding]
type = VarSet
trigger1 = Time = 0
v = 1
value = (50*(var(1)-3))

[State 1210, okay, begin yanking anim]
type = ChangeAnim
trigger1 = (Time = 20) && (P2Life > 0)
value = Anim + 10

[State 1210, let go & smack the daylights out of him!]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Time > 21
value = 1230


; opponent hooked (custom p2 gethit state)
[StateDef 1220]
type    = U
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1220, KOed by hook]
type = SelfState
trigger1 = !Alive
value = 5050

;[State 1220, reel em in]
;Type = PosAdd
;trigger1 = (Time > 20) && (P2Dist X > 10)
;X = 7

[State 1220, flyin thru da air]
type = VelSet
trigger1 = Time > 20
x = 10
;y = -2

[State 1220, to ground if airborne]
type = PosAdd
trigger1 = Pos Y < 0
y = 1

[State 1220, reel em in]
Type = VelSet
trigger1 = (Time > 20) && (Pos Y > 0)
Y = -2

[State 1220, get hooked anim]
type = ChangeAnim2
trigger1 = Alive && (Time = 0)
value = 1220

[State 1220, dragged & dazed]
type = ChangeState
trigger1 = Alive && (Time > 50)
trigger2 = Alive && (P2Dist X <= 100)
value = 1221


; opponent dizzy (custom p2 gethit state)
[StateDef 1221]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1221, feet on the ground]
type = PosSet
trigger1 = Pos Y <= 0
y = 0

[State 1221, dizzy anim]
type = ChangeAnim
trigger1 = (Time = 0) && SelfAnimExist(5300)
value = 5300

[State 1221, custom dizzy anim]
type = ChangeAnim2
trigger1 = (Time = 0) && !(SelfAnimExist(5300))
value = 5310

[State 1221, back to normal]
type = SelfState
trigger1 = (Time > 100) && (Alive = 1)
value = 0
ctrl = 1


;--------------------
[StateDef 1230]
anim = 1230
ctrl = 0
type = S
movetype = A
physics = S

; let Lobo kick/punch/whatever the fragger once he's yanked his chain
[State 1230, regain control]
type = CtrlSet
trigger1 = Time = 3    ;10
value = 1

[State 1230, targetdrop]
type = TargetDrop
trigger1 = Time = 20

[State 1230, reset hook hitflag]
type = VarSet
trigger1 = Time = 0
v =  1
value = 0

[State 1230, back to normal]
type = SelfState
trigger1 = Time = 30
value = 0
ctrl = 1


; Hook missed, or was blocked, or killed opponent before they could get yanked
[Statedef 1240]
anim = 1240
ctrl = 0
type = S
movetype = I
physics = S

;[State 1240, playsnd]
;type = PlaySnd
;trigger1 = Time = 15
;value = 7,0

[State 1240, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; RotGut
[StateDef 2000]
anim = 2000
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 2000, gulp sound]
type = PlaySnd
trigger1 = (Time%25)= 5 && (Time < 60)
value = 9,20

[State 2000, random effect]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001 + ((Random * 3) / 1000)     ; (Random * x): x == number of target states


; rotgut effect #1: health up
[StateDef 2001]
;anim = 2000
;ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 2001, lifeup]
type = LifeAdd
trigger1 = Time = 0
value = (Random / 6) + 100
absolute = 1

[State 2001, explod]
type = Explod
trigger1 = Time = 0
anim = 2011
facing = Facing
pos = 0,-130
postype = p1
bindtime = -1

[State 2001, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = Time = 0
time = 5
add = 0,0,0
mul = 256,512,256
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 2001, burp]
type = PlaySnd
trigger1 = Time = 0
value = 9,23

[State 2001, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


; rotgut effect #2: poison
[StateDef 2002]
;anim = 2000
;ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 2002, lifedown]
type = LifeAdd
trigger1 = Time = 0
value = (Random / -6) - 100
kill = 0
absolute = 1

[State 2002, explod]
type = Explod
trigger1 = Time = 0
anim = 2012
facing = Facing
pos = 0,-130
postype = p1
bindtime = -1

[State 2002, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = Time = 0
time = 5
add = 0,0,0
mul = 512,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 2002, ugh sound]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 2002, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


; rotgut effect #3: power up
[StateDef 2003]
;anim = 2000
;ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 2003, powerup]
type = PowerAdd
trigger1 = Time = 0
value = 1000

[State 2003, explod]
type = Explod
trigger1 = Time = 0
anim = 2013
facing = Facing
pos = 0,-130
postype = p1
bindtime = -1

[State 2003, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = Time = 0
time = 5
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 2003, "yeah" sound]
type = PlaySnd
trigger1 = Time = 0
value = 9,22

[State 2003, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


; rotgut effect #4: super armor
[StateDef 2004]
type = S
movetype = I
physics = S
velset = 0,0

[State 2004, armor on]
type = VarSet
trigger1 = Time = 0
v = 20
value = 1

[State 2004, explod]
type = Explod
trigger1 = Time = 0
anim = 2014
facing = Facing
pos = 0,-130
postype = p1
bindtime = -1

[State 2004, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = Time = 0
time = 5
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 256


[State 2004, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 600
length = 20
palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 120,120,220
;palpostbright = 0,0,0
;paladd = 10,10,25
;palmul = .65,.65,.75
timegap = 1
framegap = 4
;trans = 

[State 2004, "yeah" sound]
type = PlaySnd
trigger1 = Time = 0
value = 9,22

[State 2004, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = AnimTime = 0
