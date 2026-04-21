[StateDef 2515] ;Bomb PLant
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 11211       ;plant bomb
sprpriority = 9

[State 2515, Bomb Sound]
type = playsnd
trigger1 = time = 8
value = 20,3

[State 2515, Fire Explode]
type = Explod
trigger1 = time = 8
anim = 5224
id = 5224
pos = 0, 5
postype = p1
sprpriority = 7
ontop = 1
ownpal = 1

[State 2515, Bomb]
type = Projectile
trigger1 = time = 8
projsprpriority = -2
projid = 2515
projanim = 2515
projremovetime = 250
projhitanim = 1616
postype = p1
offset = 0, 0
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 85, 20
animtype = Hard
air.animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0,15
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = s1313,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = 2,-9
air.velocity = 2,-9
air.juggle = 1
envshake.time = 30
envshake.freq = 150
envshake.ampl = 7
palfx.time = 90
palfx.mul = 251,173,23
palfx.add = 200,0,0
palfx.sinadd = 251,173,23,5
fall = 1
airfall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall.recover = 0

[State 2515, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 2515, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 88500]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 4000
sprpriority = 9

[State 88500, Blades]
type = playsnd
trigger1 = time = 18
value = S20,30

[State 88500, Blade 2]
type = Projectile
trigger1 = time = 18
projanim = 14442
postype = p1
projid = 14442
offset = 130, 0
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
ProjHits = 40
projmisstime = 7
attr = S, SP
damage    = 35, 3
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,15
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s1313,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
air.velocity = -1.5,-5
air.juggle = 3
;PalFX
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[state 88500, 1h]
type = Helper
trigger1 = AnimElem = 6  
trigger2 = AnimElem = 7  
trigger3 = AnimElem = 8  
triggerall = movehit = 1
stateno = 6040
name = "Roundhouse"
pos = 0,-92
postype = P2
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 0

[State 88500, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;Blades
[StateDef 8850]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 131305
sprpriority = 9

[State 8850, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 8850, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9999, 9999
poweradd = -2000

[State 8850, Blades]
type = playsnd
trigger1 = time = 14
trigger2 = time = 37
trigger3 = time = 60
value = S20,30

[State 8850, Blade 1]
type = Projectile
trigger1 = time = 12
projanim = 131302
projid = 131302
projhitanim = 909444
projremove = 0
postype = p1
offset = 70, 0
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
ProjHits = 40
projmisstime = 7
attr = S, SP
damage    = 35, 3
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s1313,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 8850, Blade 2]
type = Projectile
trigger1 = time = 35
projanim = 131302
projid = 131302
projhitanim = 909444
postype = p1
projremove = 0
offset = 130, 0
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
ProjHits = 40
projmisstime = 7
attr = S, SP
damage    = 35, 3
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s1313,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
air.velocity = -1.5,-5
air.juggle = 3
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 8850, Blade 3]
type = Projectile
trigger1 = time = 58
projanim = 131302
projhitanim = 909444
projid = 131302
postype = p1
projremove = 0
offset = 190, 0
ProjHits = 40
projmisstime = 7
attr = S, SP
damage    = 35, 3
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s1313,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
air.velocity = -1.5,-5
air.juggle = 3
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 8850, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;Super Ninja Star
[StateDef 8845]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 131308
sprpriority = 9

[State 8845, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 8845, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9999, 9999
poweradd = -2000

[State 8845, ZappySound]
type = PlaySnd
trigger1 = time = 8
value = s4,9

[State 8845, 7]
type = playsnd
trigger1 = time = 11
value = S26,26

[State 8845, BoltFat]
type = Projectile
trigger1 = time = 12
projanim = 131301
postype 
projid = 8845
offset = 70, -100
velocity = 6, 1
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 65, 3
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
air.velocity = -1.5,-5
air.juggle = 3
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 8845, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 8846

[StateDef 8846]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 131308
sprpriority = 9

[State 8846, ZappySound]
type = PlaySnd
trigger1 = time = 8
value = s4,10

[State 8846, 7]
type = playsnd
trigger1 = time = 11
value = S26,26

[State 8846, BoltFat]
type = Projectile
trigger1 = time = 12
projanim = 131301
postype 
projid = 8846
offset = 70, -100
velocity = 6, 0
remvelocity = 0, 0
attr = S, SP
damage    = 65, 3
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
air.velocity = -1.5,-5
air.juggle = 3
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)




[State 8846, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 8846, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 8847

[StateDef 8847]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 131304
sprpriority = 9

[State 8847, ZappySound]
type = PlaySnd
trigger1 = time = 8
value = s4,9

[State 8847, 7]
type = PlaySnd
trigger1 = time = 11
value = S26,26

[State 8847, BoltFat]
type = Projectile
trigger1 = time = 12
projanim = 131301
postype 
offset = 70, -100
projid = 8847
velocity = 6, -1
remvelocity = 0, 0
attr = S, SP
damage    = 65, 3
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
air.velocity = -1.5,-5
air.juggle = 3
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)



[State 8847, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 8847, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;Ninja Star
[StateDef 131304]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 131304
sprpriority = 9

[State 131304, ZappySound]
type = PlaySnd
trigger1 = time = 8
value = s4,9

[State 131304, 7]
type = playsnd
trigger1 = time = 11
value = S26,26

[State 131304, BoltFat]
type = Projectile
trigger1 = time = 20
projanim = 131301
postype 
projid = 131301
offset = 70, -100
velocity = 5.0, .4
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 65, 3
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
air.velocity = -1.5,-5
air.juggle = 3
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 131304, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 131304, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;Skull Storm
[StateDef 32101]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
sprpriority = 6
anim = 30000

[State 32101, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 32101, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 48, -90
sound = S20, 16 
poweradd = -2000

[State 32101, Skull Super] 
type = Explod
trigger1 = AnimElem = 1
anim = 4200
pos = 0, 0
sprpriority = -12
postype = right
bindtime = -1
supermove = 1
ownpal = 1
ontop = 0

[State 32101, sound]
type = Playsnd
trigger1 = time = 15
value = S31,38

[State 32101, Hit Sound]
type = playsnd
trigger1 = projhit(2000) = 1
value = 20,29

[State 32101, Skull 1]
type = Projectile
trigger1 = time = 15
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, -2
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 2]
type = Projectile
trigger1 = time = 20
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, -1
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 3]
type = Projectile
trigger1 = time = 25
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, 0
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 4]
type = Projectile
trigger1 = time = 30
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, 1
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 5]
type = Projectile
trigger1 = time = 35
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, 2
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 6]
type = Projectile
trigger1 = time = 40
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, 3
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 7]
type = Projectile
trigger1 = time = 45
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, 3
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 8]
type = Projectile
trigger1 = time = 50
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, 2
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 9]
type = Projectile
trigger1 = time = 55
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, 1
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 10]
type = Projectile
trigger1 = time = 60
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, 0
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 11]
type = Projectile
trigger1 = time = 65
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, -1
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, Skull 12]
type = Projectile
trigger1 = time = 70
time = 20
projanim = 51148
projhitanim = 1616
postype = p1
offset = 0, -80
velocity = 5.5, -2
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,5
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 20,29
guardsound = s0,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; Kombo
[Statedef 2080]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 120
ctrl = 0
anim = 2080
sprpriority = 1

[State 2080, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 2080, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9920, -99120
anim = 100
poweradd = -2888

[State 2080, 2]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
damage    = 25
getpower = 120,60
givepower = 120,60
animtype  = Medium
hitflag = HA-
guardflag = HA
postype = p1
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
sparkxy = -10,-55
hitsound   = s3,2
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 15
guard.velocity = 0
air.velocity = 0
numhits = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2080, 2.5]
type = HitDef
trigger1 = AnimElem = 20
attr = S, SA
damage    = 25
getpower = 120,60
givepower = 120,60
animtype  = Medium
hitflag = HA-
guardflag = HA
postype = p1
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
sparkxy = -10,-55
hitsound   = -1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 15
guard.velocity = 0
air.velocity = 0
p2stateno = 2081
numhits = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2080, 3]
type = ChangeState
trigger1 = AnimTime= 0
value = 3100
ctrl = 1

[Statedef 2081]
type    = S
movetype= I
physics = S
juggle  = 3
ctrl = 0
anim = 5300
sprpriority = 1

[State 2081, 1]
type = Changeanim2
trigger1 = statetype = S
trigger1 = !animexist(5300)
value = 0

[State 2081, 3]
type = Selfstate
trigger1 = time = 100
trigger1 = life != 0
value = 0
ctrl = 1


;============================================================
;Spear
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1222
ctrl = 0

[State 1200, PUNCH]
type = Varset
trigger1 = Var(19) != 1
V = 19
value = 1

[State 1200, 3.2]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1, 2

[State 1200, 3.3]
type = Playsnd
trigger1 = Var(11) = 1
trigger1 = time = 12
value = s20, 6

[State 1200, 3.4]
type = Playsnd
trigger1 = Var(11) = 2
trigger1 = time = 6
value = s20, 2

[State 1200, 3.5]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, 1]
type = Helper
trigger1 = time = 15 ;animelem = 4
stateno = 1010
name = "spear"
id = 1010
postype = p1
pos = 20, -105
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1200, 7]
type = ChangeState
triggerall = Time >= 55
trigger1 = p2stateno != 1020
trigger1 = p2stateno != 1021
value = 0
ctrl = 1

[State 1200, 8]
type = Changestate
trigger1 = p2stateno = 1020
trigger1 = time > 10
trigger2 = p2stateno = 1021
value = 1001
;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1004 ;tug it
ctrl = 0

[State 1001, 3.2]
type = VarRandom
trigger1 = time = 1
v = 11
range = 1, 2

[State 1001, 3.6]
type = Playsnd
trigger1 = Var(11) = 1
trigger1 = time = 1
value = 20, 1

[State 1001, 3.8]
type = Playsnd
trigger1 = Var(11) = 2
trigger1 = time = 1
value = 20, 10

[State 1001, 7]
type = ChangeState
trigger1 = p2stateno = 1021
trigger1 = time > 15 
value = 0
ctrl = 1

[State 1001, 8]
type = Changestate
trigger1 = time > 50
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; The flying spear
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 6.5,0
anim = 1200
ctrl = 0

[State 1010, 1]
type = Playsnd
trigger1 = time = 0
value = 2,4

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 1011
name = "Rope"
pos = -26, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 1.55]
type = Helper
trigger1 = timemod = 4,0
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
stateno = 1011
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 1
under = 1

[State 1010, 2]
type = HitDef
trigger1 = time > 1
trigger1 = Roundno != 1
attr = S, NA
damage    = 20,5
animtype  = Medium
postype = p1
priority  = 6
hitsound   = S1,3
guardsound = 6,0
kill = 0
guard.slidetime = 20
guard.ctrltime = 10 
p1stateno = 1030
p2stateno = 1020
forcestand = 1
p2facing = 1
;p1getp2facing = 1
ground.type = High

[State 1010, 2.1]
type = HitDef
trigger1 = time > 1
trigger1 = Roundno = 1
attr = S, NA
damage    = 50,5
animtype  = Medium
postype = p1
priority  = 6
hitsound   = S1,3
guardsound = 6,0
kill = 0
guard.slidetime = 20
guard.ctrltime = 10 
p1stateno = 1030
p2stateno = 1020
forcestand = 1
p2facing = 1
;p1getp2facing = 1
ground.type = High

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1013

[State 1010, DS]
type = destroyself
trigger1 = time = 50
;---------------------------------------------------------------------------
;The hidden Rope
[Statedef 1011]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1011, 1]
type = Changestate
trigger1 = p2stateno = 1020
value = 1012

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != [1000, 1001]
trigger1 = root, stateno != 1200

;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 1012]
type    = S
movetype= I
physics = N
anim = 1002
ctrl = 0

[State 1012, 1]
type = Destroyself
trigger1 = p2stateno = 1021
trigger2 = Parentdist X = [-3, 3]
trigger3 = stateno = 0
trigger4 = time = 40

;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 1013
Velset = 0,0
ctrl = 0

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; P2's hit by spear state
[Statedef 1020]
type    = S
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 1020, PosAdd]
Type = PosAdd
trigger1 = 1 ;time = 0
X = ifelse(P2Dist X > 0, 6, -6)

[State 1020, PosSet]
Type = PosSet
trigger1 = time = 0
Y = 0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 1854

[State 1020, .75]
type = PlayerPush
trigger1 = time >= 1
value = 0

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1020, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [-60, 60]
value = 1021

[State 1020, 3]
type = Selfstate
trigger1 = time = 50
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 1021, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 1021, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
value = 9010

[State 1021, 3]
type = Selfstate
trigger1 = time = 70
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Spear latching onto target
[Statedef 1030]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1003
Velset = 0, 0
ctrl = 0

[State 1030, 1.1]
type = Helper
trigger1 = time = 0
stateno = 6030
name = "HARPOON BLOOD"
pos = 20,15
helpertype = normal
sprpriority = 6
keyctrl = 0
ownpal = 1
ontop = 1

[State 1030, 1.01]
type = Velset
trigger1 = time = 80
X = -8

[State 1030, 1.1]
type = Velset
trigger1 = ParentDist X = [-60, 60]
X = 0

[State 1030, 1.2]
type = PosAdd
trigger1 = 1
x = P2Dist X - 25

[State 1030, 1.5]
type = Destroyself
trigger1 = p2stateno != 1020

;----------------------------------------------------------------
[Statedef 1003]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9998
ctrl = 0

[State 1003, GO BYE BYE]
type = DestroySelf
trigger1 = animtime = 0


;-----------------------------------------------
;-----------------------------------------------
;=-----------------Teleport (ground)------------
;-----------------------------------------------
;-----------------------------------------------
[StateDef 10000]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1040
Velset = 0, 0
ctrl = 0

[State 10000, Fire Explode]
type = Explod
trigger1 = time = 1
anim = 5116
id = 5116
pos = 0, 0
postype = p1
sprpriority = 7
ontop = 1
ownpal = 1

[State 10000, Fire]
type = Playsnd
trigger1 = Time = 1
value = 20,3

[State 10000, 0.5]
type = Playsnd
trigger1 = time = 0
value = S20,4

[State 10000, 55]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 1046
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 10000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 10000, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .63

[State 10000, 1]
type = turn
trigger1 = animelem = 3

[State 10000, 2]
type = Velset
trigger1 = animelem = 3
X = 8.3

[State 10000, 3]
type = Helper
triggerall = time > 9
trigger1 = FrontEdgedist = [0, 9]
trigger2 = BackEdgedist = [0, 9]
stateno = 1045
name = "image"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 10000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 200 ;140
value = 1050

[State 10000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -200 ;-140
value = 1050

[State 10000, 6.1]
type = Changestate
trigger1 = Pos Y > 0
value = 1055

[State 10000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 0
ctrl = 1

;-----------------------------------------------

;-----------------------------------------------
;=-----------------Teleport (air)------------
;-----------------------------------------------
;-----------------------------------------------
[StateDef 10001]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1040
Velset = 0, 0
ctrl = 0

[State 10001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 10001, 0.5]
type = Playsnd
trigger1 = time = 0
value = S20,4

[State 10001, 55]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 1046
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 10001, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 10001, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .10

[State 10001, 1]
type = turn
trigger1 = animelem = 3

[State 10001, 2]
type = Velset
trigger1 = animelem = 3
X = 8.3

[State 10001, 3]
type = Helper
triggerall = time > 9
trigger1 = FrontEdgedist = [0, 9]
trigger2 = BackEdgedist = [0, 9]
stateno = 1045
name = "image"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 10001, 4]
type = Changestate
trigger1 = time > 9
trigger1 = Pos X > 150
value = 1050

[State 10001, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -150
value = 1050

[State 10001, 6.1]
type = Changestate
trigger1 = Pos Y > 0
value = 1055

[State 10000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
; Disappear regular
[Statedef 1045]
type    = S
movetype= I
physics = N
anim = 1045
Velset = 0, 0
ctrl = 0

[State 1045, 1]
type = turn
trigger1 = time = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0
;------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------
; Dissappear (stand)
[Statedef 1046]
type    = S
movetype= I
physics = N
anim = 1046
Velset = 0, 0
ctrl = 0

[State 1046, 1]
type = Destroyself
trigger1 = animtime = 0
trigger2 = Parent, FrontEdgedist = [0, 9]
trigger3 = Parent, BackEdgedist = [0, 9]
;------------------------------------------------------------------------------------------
; Appear behind
[Statedef 1050] 
type = S
movetype= A
physics = N
juggle = 1
anim = 1050
Velset = 0, 0
ctrl = 0

[State 1040, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000] 
value = 0
movecamera = 0,0

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X > 140
trigger1 = Pos X != 150
X = -150

[State 1050, 2]
type = Posset
triggerall = Time = 1
trigger1 = Pos X < -140
trigger1 = Pos X != -150
X = 150

[State 1050, 3]
type = Changeanim
triggerall = time = 3
trigger1 = Pos X = 150
trigger2 = Pos X = -150
value = 1050

[State 1050, 3]
type = Velset
trigger1 = time = 4
X = 8.4

[State 1040, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .63

[State 1050, 4]
type = HitDef
trigger1 = time > 0
trigger1 = movecontact = 0
trigger1 = Var(9) = 1
attr = A, SA
damage = 50
animtype = Heavy
getpower = 0
givepower = 50
guardflag = HA
priority = 7
pausetime = 2, 5
sparkxy = -10,-58
hitsound = s28,29
guardsound = 6,0
ground.type = High
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -3 
air.velocity = -3.7,-9.3
guard.slidetime = 10 ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5 ;Time to regain control after guard (def: guard.slidetime)
kill = 0
p2facing = -1

[State 1050, 4.1]
type = HitDef
trigger1 = time > 0
trigger1 = movecontact = 0
trigger1 = Var(9) = 0
attr = A, SA
damage = 50
animtype = Heavy
getpower = 0
givepower = 50
guardflag = HA
priority = 7
pausetime = 0, 5
sparkxy = -10,-58
hitsound = s28,29
guardsound = 6,0
ground.type = High
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -3 
air.velocity = -3.7,-9.3
guard.slidetime = 10 ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5 ;Time to regain control after guard (def: guard.slidetime)
kill = 1
p2facing = 1

[State 1050, 5]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 6]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1055

[State 1050, 6.6]
type = Posset
trigger1 = movehit = 1
Y = 0

[State 1050]
type = VarSet
trigger1 = movehit = 1
v = 24
value = 1

[State 1050, 6.7]
type = Helper
trigger1 = movehit = 1
trigger1 = Pos Y = 0
trigger1 = Vel Y = 1
stateno = 6020
name = "DaPunch"
pos = 53, -70
postype = P1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 0
under = 1

[State 1050, 6.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1050, 6.6]
type = Posset
trigger1 = Pos Y > 0
trigger1 = time = 20
Y = 0

[State 1050] 
type = Posset
trigger1 = time > 10
trigger1 = Pos Y = [-10,10] 
Y = 0

[State 1050, 7]
type= Changestate
trigger1 = time > 10
trigger1 = Pos Y = 0
trigger2 = movehit = 1
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
; Blocked
[Statedef 1055]
type    = S
movetype= A
physics = N
anim = 1055
Velset = -.5, -2
ctrl = 0


[State 1055, 1]
type = Playsnd
trigger1 = time = 0
value = 1,0

[State 1055,2]
type = Veladd
trigger1 = time > 10
Y = .1

[State 1055,3]
type = Velset
trigger1 = POS Y > -20
Y = 0

[State 1055,4]
type = Posset
trigger1 = Pos Y != 0
trigger1 = Vel Y = 0
Y = 0

[State 1055,5]
type = Changestate
trigger1 = Pos Y = 0
trigger1 = Vel Y = 0
value = 0
ctrl = 1

;---------------------------------------
; Jump Away
[Statedef 2006]
type = S
movetype = I
physics = A
velset = -4.5,-8,0
anim = 43
ctrl = 0

[State 2006, 1]
type = Veladd
trigger1 = Pos Y < 0
Y = 10

;---------------------------------------------------------------------------
[Statedef 666]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 666, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 666, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 666, 2]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 666, 3]
type = ChangeState
trigger1 = p2bodydist X < 10
value = 430