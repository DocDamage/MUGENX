; _____________________________________
;| Shin Gouki by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<NORMAL STATES>==========================================
;================================================================================================

;===========<Stand Light Punch>==========
[Statedef 200]
type=S
movetype=A
physics=S
juggle=5
anim=ifelse(p2bodydist x<25,201,200)
velset=0,0
poweradd=7*!var(20)
sprpriority=1
ctrl=0

[State 200, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,9)
channel=0
[State 200, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 200, hit]
type=hitdef
trigger1=anim=200&&animelem=2
attr=S,NA
damage=20,0
animtype=Light
guardflag=MA
hitflag=MAF
priority=3,Hit
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-84
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=ifelse((prevstateno=200&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200&&!var(20)),-9,-6)
air.type=Low
air.velocity=-2,-2
getpower=60*!var(20)
envshake.time=9
envshake.ampl=1

[State 200, hit]
type=hitdef
trigger1=anim=201&&animelem=2
attr=S,NA
damage=23,0 
animtype=Light
guardflag=MA
hitflag=MAF
priority=3,Hit
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-20,-92
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=ifelse((prevstateno=200&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200&&!var(20)),-9,-6)
air.type=Low
air.velocity=-2,-2
getpower=69*!var(20)
envshake.time=9
envshake.ampl=1

[State 200, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Medium Punch>==========
[Statedef 205]
type=S
movetype=A
physics=S
juggle=5
anim=ifelse(p2bodydist x<25,206,205)
velset=0,0
poweradd=14*!var(20)
sprpriority=1
ctrl=0 

[State 205, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,9,11)
channel=0
[State 205, snd]
type=playsnd
trigger1=animelem=3
value=1,2

[State 205, hit]
type=hitdef
trigger1=animelem=3&&anim=205
attr=S,NA
damage=43,0 
animtype=Medium 
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-81
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=129*!var(20)
envshake.time=9
envshake.ampl=2

[State 205, hit]
type=hitdef
trigger1=animelem=3&&anim=206
attr=S,NA
damage=40,0 
animtype=Medium 
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1) 
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-20,-60
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=11
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.ampl=2

[State 205, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Zugai Hasatsu>==========
[Statedef 207]
type=S
movetype=A
physics=S
juggle=5
anim=207
velset=0,0
poweradd=17*!var(20)
sprpriority=1
ctrl=0 

[State 207, width]
type=width
trigger1=1
value=20,0

[State 207, snd]
type=playsnd
trigger1=animelem=4
value=1,3
[State 207, snd]
type=playsnd
trigger1=animelem=4
value=3,8
channel=0

[State 207, hit]
type=hitdef
trigger1=animelem=5
attr=S,NA
damage=25,0 
animtype=Medium
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-85
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
getpower=75*!var(20)
envshake.time=11
envshake.ampl=2

[State 207, hit2]
type=hitdef
trigger1=animelem=6
attr=S,NA
damage=25,0 
animtype=Medium
guardflag=H
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-44
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=75*!var(20)
envshake.time=11
envshake.ampl=2

[State 207, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;===========<Stand Hard Punch>==========
[Statedef 210]
type=S
movetype=A
physics=S
juggle=5
anim=ifelse((prevstateno=710||p2bodydist x>=25),210,211)
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,9,11)
channel=0
[State 210, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 210, hit]
type=hitdef
trigger1=animelem=4&&anim=210&&prevstateno!=710
attr=S,NA
damage=65,0 
animtype=Hard
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-68
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=16
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=195*!var(20)
envshake.time=12
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=animelem=4&&anim=210&&prevstateno=710
attr=S,NA
damage=65,0 
animtype=Hard
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-68
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=16
ground.velocity=-6,-3
air.type=Low
air.velocity=-6,-3
getpower=195*!var(20)
envshake.time=12
envshake.ampl=3
fall=1

[State 210, hit]
type=hitdef
trigger1=animelem=3&&anim=211
attr=S,NA
damage=60,0 
animtype=Hard
guardflag=M 
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-75
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=16
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=animelem=5&&anim=211&&!movecontact
attr=S,NA
damage=60,0 
animtype=Hard
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-105
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3

[State 210, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Light Kick>==========
[Statedef 215]
type=S
movetype=A
physics=S
juggle=5
anim=215
velset=0,0
poweradd=7*!var(20)
sprpriority=1
ctrl=0 

[State 215, snd]
type=playsnd
trigger1=animelem=3&&random<200
value=3,ifelse(random<500,1,9)
channel=0
[State 215, snd]
type=playsnd
trigger1=animelem=3
value=1,4

[State 215, hit]
type=hitdef
trigger1=animelem=3
attr=S,NA
damage=20,0 
animtype=Light
guardflag=M
hitflag=MAF
priority=3,Hit
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1) 
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-35
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=9
ground.hittime=12
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
getpower=60*!var(20)
envshake.time=9
envshake.ampl=1

[State 215, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Medium Kick>==========
[Statedef 220]
type=S
movetype=A
physics=S
juggle=5
anim=ifelse((prevstateno=710||p2bodydist x<25),221,220)
velset=0,0
poweradd=14*!var(20)
sprpriority=1
ctrl=0 

[State 220, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,9,11)
channel=0
[State 220, snd]
type=playsnd
trigger1=animelem=3
value=1,5

[State 220, hit]
type=hitdef
trigger1=animelem=3&&anim=220
attr=S,NA
damage=40,0 
animtype=Medium
guardflag=MA 
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1) 
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-91
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
getpower=120*!var(20)
envshake.time=9
envshake.ampl=2

[State 220, hit]
type=hitdef
trigger1=animelem=3&&anim=221
attr=S,NA
damage=40,0 
animtype=Medium
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-20,-74
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=11
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.ampl=2

[State 220, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<SENPUU KYAKU>==========
[Statedef 222]
type=A
movetype=A
physics=N
juggle=5
anim=222
velset=vel x,0
poweradd=17*!var(20)
sprpriority=1
ctrl=0 

[State 222, snd]
type=playsnd
trigger1=animelem=1
value=0,40
[State 222, snd]
type=playsnd
trigger1=animelem=5
value=1,6
[State 222, snd]
type=playsnd
trigger1=animelem=3
value=3,11
channel=0

[State 222, dust]
type=explod
trigger1=animelem=1
anim=6052
ID=6052
sprpriority=3
postype=p1
pos=0,0
vel=.33,-.5
ownpal=1
scale=.66,.66

[State 222, vel]
type=velset
trigger1=animelem=2
x=ifelse(prevstateno=100,5,3)
y=-4.5
[State 222, grav]
type=gravity
trigger1=animelemtime(2)>0

[State 222, hit]
type=hitdef
trigger1=animelem=6
attr=S,NA
damage=50,0 
animtype=Medium
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-65
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=150*!var(20)
envshake.time=11
envshake.ampl=2

[State 222, end]
type=changestate
trigger1=pos y>10&&vel y>0
value=52
ctrl=1


;===========<Stand Hard Kick>==========
[Statedef 225]
type=S
movetype=A
physics=S
juggle=5
anim=ifelse(p2bodydist x<25,226,225)
velset=0,0
poweradd=20*!var(20)
sprpriority=ifelse(p2bodydist x<25,1,-1)
ctrl=0

[State 225, snd]
type=playsnd
trigger1=animelem=4&&random<500
value=3,ifelse(random<500,9,11)
channel=0
[State 225, snd]
type=playsnd
trigger1=anim=225&&animelem=4
trigger2=anim=226&&animelem=5
value=1,6

[State 225, hit]
type=hitdef
trigger1=animelem=5&&anim=225
attr=S,NA
damage=60,0 
animtype=Hard
guardflag=MA
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-87
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3
sprpriority=-1

[State 225, hit]
type=hitdef
trigger1=animelem=3&&anim=226
attr=S,NA
damage=33,0 
animtype=Hard
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-97
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=100*!var(20)
envshake.time=12
envshake.ampl=3

[State 225, hit]
type=hitdef
trigger1=animelem=5&&anim=226
attr=S,NA
damage=33,0 
animtype=Hard
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-69
hitsound=s2,6
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=12
ground.velocity=-10
air.type=Low
air.velocity=-6,6
air.fall=1
getpower=100*!var(20)
envshake.time=12
envshake.ampl=3

[State 225, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Crouch Light Punch>==========
[Statedef 230]
type=C
movetype=A
physics=C
juggle=5
anim=230
velset=0,0
poweradd=7*!var(20)
sprpriority=1
ctrl=0 

[State 230, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,9)
channel=0
[State 230, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 230, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA
damage=20,0 
animtype=Light
guardflag=M
hitflag=MAF
priority=3,Hit
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-50
hitsound=s2,1
guardsound=s2,0
ground.type=Low
ground.slidetime=9
ground.hittime=12
ground.velocity=ifelse((prevstateno=230&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=230&&!var(20)),-9,-6)
air.type=Low
air.velocity=-2,-2
getpower=60*!var(20)
envshake.time=9
envshake.ampl=1

[State 230, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Medium Punch>==========
[Statedef 235]
type=C
movetype=A
physics=C
juggle=5
anim=235
velset=0,0
poweradd=14*!var(20)
sprpriority=1
ctrl=0 

[State 235, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,9,11)
channel=0
[State 235, snd]
type=playsnd
trigger1=animelem=3
value=1,2

[State 235, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA
damage=40,0 
animtype=Medium 
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-46
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=11
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.ampl=2

[State 235, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Hard Punch>==========
[Statedef 240]
type=C
movetype=A
physics=C
juggle=5
anim=240
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 240, snd]
type=playsnd
trigger1=animelem=4&&random<500
value=3,ifelse(random<500,9,11)
channel=0
[State 240, snd]
type=playsnd
trigger1=animelem=4
value=1,3

[State 240, hit]
type=hitdef
trigger1=animelem=4
attr=C,NA
damage=60,0 
animtype=Hard
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1) 
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-73
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=16
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3

[State 240, hit]
type=hitdef
trigger1=animelem=5&&!movecontact
attr=S,NA
damage=60,0 
animtype=Hard
guardflag=M 
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-118
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=180*!var(20)
envshake.time=8
envshake.ampl=3

[State 240, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1

;===========<Crouch Light Kick>==========
[Statedef 245]
type=C
movetype=A
physics=C
juggle=5
anim=245
velset=0,0
poweradd=7*!var(20)
sprpriority=1
ctrl=0 

[State 245, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,9)
channel=0
[State 245, snd]
type=playsnd
trigger1=animelem=2
value=1,4

[State 245, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA
damage=20,0 
animtype=Light
guardflag=L
hitflag=MAFD
priority=3,Hit
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-4
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=9
ground.hittime=12
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
down.velocity=-2,-2
getpower=60*!var(20)
envshake.time=9
envshake.ampl=1

[State 245, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1

;===========<Crouch Medium Kick>==========
[Statedef 250]
type=C
movetype=A
physics=C
juggle=5
anim=250
velset=0,0
poweradd=14*!var(20)
sprpriority=1
ctrl=0 

[State 250, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,9,11)
channel=0
[State 250, snd]
type=playsnd
trigger1=animelem=3
value=1,5

[State 250, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA
damage=40,0 
animtype=Medium
guardflag=L
hitflag=MAFD
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-6
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=11
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
down.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.ampl=2

[State 250, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Hard Kick>==========
[Statedef 255]
type=C
movetype=A
physics=C
juggle=5
anim=255
velset=0,0
poweradd=60*!var(20)*prevstateno!=750
sprpriority=1
ctrl=0

[State 255, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,9,11)
channel=0
[State 255, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 255, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA
damage=60,0 
animtype=Hard
guardflag=L
hitflag=MAFD
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-6
hitsound=s2,6
guardsound=s2,0
ground.type=Trip
ground.slidetime=12
ground.hittime=16
ground.velocity=-3,-2
air.type=Trip
air.velocity=-3,-2
down.velocity=-4,-4
getpower=180*!var(20)*(prevstateno!=750)
envshake.time=12
envshake.ampl=3
fall=1
fall.recover=0

[State 255, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1

;===========<Air Light Punch>==========
[Statedef 260]
type=A
movetype=A
physics=A
juggle=5
anim=260
poweradd=7*!var(20)
sprpriority=1
ctrl=0 

[State 260, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,9)
channel=0
[State 260, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 260, hit]
type=hitdef
trigger1=animelem=2
attr=A,NA
damage=25,0 
animtype=Light
guardflag=HA
hitflag=MAF
priority=3,Hit
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-58
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity=-2,-5
getpower=75*!var(20)
envshake.time=9
envshake.ampl=1


;===========<Air Medium Punch>==========
[Statedef 265]
type=A
movetype=A
physics=A
juggle=5
anim=265
poweradd=14*!var(20)
sprpriority=1
ctrl=0 

[State 265, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,9,11)
channel=0
[State 265, snd]
type=playsnd
trigger1=animelem=3
value=1,2

[State 265, hit]
type=hitdef
trigger1=animelem=4
attr=A,NA
damage=40,0 
animtype=Medium 
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-61
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity=-4,-4
getpower=120*!var(20)
envshake.time=9
envshake.ampl=2


;===========<Air Hard Punch>==========
[Statedef 270]
type=A
movetype=A
physics=A
juggle=5
anim=270
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 270, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,9,11)
channel=0
[State 270, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 270, hit]
type=hitdef
trigger1=animelem=4
attr=A,NA
damage=60,0 
animtype=Hard
guardflag=HA
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-61
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=Low
air.velocity=-6,-3
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3


;===========<Air Light Kick>==========
[Statedef 275]
type=A
movetype=A
physics=A
juggle=5
anim=ifelse(vel x,275,276)
poweradd=7*!var(20)
sprpriority=1
ctrl=0 

[State 275, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,9)
channel=0
[State 275, snd]
type=playsnd
trigger1=animelem=2
value=1,4

[State 275, hit]
type=hitdef
trigger1=animelem=2&&anim=275
attr=A,NA
damage=25,0 
animtype=Light
guardflag=HA
hitflag=MAF
priority=3,Hit
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-41
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity=-2,-5
getpower=75*!var(20)
envshake.time=9
envshake.ampl=1

[State 275, hit]
type=hitdef
trigger1=animelem=3&&anim=276
attr=A,NA
damage=25,0 
animtype=Light
guardflag=HA
hitflag=MAF
priority=3,Hit
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-101
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-4
air.type=High
air.velocity=-2,-5
getpower=75*!var(20)
envshake.time=9
envshake.ampl=1


;===========<Air Medium Kick>==========
[Statedef 280]
type=A
movetype=A
physics=A
juggle=5
anim=ifelse(vel x,280,281)
poweradd=14*!var(20)
sprpriority=1
ctrl=0 

[State 280, snd]
type=playsnd
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,9,11)
channel=0
[State 280, snd]
type=playsnd
trigger1=anim=280&&animelem=3
trigger2=anim=281&&animelem=2
value=1,5

[State 280, hit]
type=hitdef
trigger1=anim=280&&animelem=3
attr=A,NA
damage=40,0 
animtype=Medium 
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-50
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity=-2.5,-5
getpower=120*!var(20)
envshake.time=9
envshake.ampl=2

[State 280, hit]
type=hitdef
trigger1=anim=281&&animelem=3
attr=A,NA
damage=40,0 
animtype=Medium 
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-105
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=High
air.velocity=-2.5,-5
getpower=120*!var(20)
envshake.time=9
envshake.ampl=2


;========================<TENMA KUUJIN KYAKU>=============================
[Statedef 282]
type=A
physics=N
movetype=A
anim=282
velset=.3*vel x,.3*vel y
ctrl=0
poweradd=60*!var(20)
sprpriority=-1


[State 282, snd]
type=playsnd
trigger1=animelem=3
value=1,6
[State 282, snd]
type=playsnd
trigger1=animelem=1
value=3,9
channel=0

[State 282, vel]
type=velset
trigger1=animelemtime(3)>0
x=8.4
y=9.6

[State 282, hit]
type=hitdef
trigger1=animelem=4
persistent=0
attr=A,NA
damage=60,0 
animtype=Hard
guardflag=HA
hitflag=MAFD
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-15
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=Low
air.velocity=-5,6
down.hittime=24
down.velocity=0,0
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3


[State 282, end]
type=changestate
trigger1=pos y>=0
value=52


;===========<Air Hard Kick>==========
[Statedef 285]
type=A
movetype=A
physics=A
juggle=5
anim=ifelse(vel x,285,286)
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 285, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,9,11)
channel=0
[State 285, snd]
type=playsnd
trigger1=anim=285&&animelem=3
trigger2=anim=286&&animelem=4
value=1,6

[State 285, hit]
type=hitdef
trigger1=anim=285&&animelem=3
attr=A,NA
damage=60,0 
animtype=Hard
guardflag=HA
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-50
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=Low
air.velocity=-6,-3
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3

[State 285, hit]
type=hitdef
trigger1=anim=286&&animelem=3
attr=A,NA
damage=60,0 
animtype=Hard
guardflag=HA
hitflag=MAF
priority=5,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-66
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=Low
air.velocity=-4,-5
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3


;===========================================================================
;=================================<THROWS>==================================
;===========================================================================
;==========<THROW CONTROLLER>==========
[Statedef 800]
type=S
movetype=A
physics=S
juggle=15
velset=0,0
ctrl=0
anim=800
sprpriority=1

[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="c",4,ifelse(command="a",3,ifelse(command="z",2,1)))
[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ceil(random/250)

[State 800, hit]
type=hitdef
trigger1=animelem=3
attr=S, NT
hitflag=M- 
priority=1,Miss 
sparkno=-1
p1facing=ifelse(command="holdfwd",-1,1)
p2facing=1
p1stateno=ifelse(command="holdfwd",803,801) 
p2stateno=ifelse(command="holdfwd",804,802)
guard.dist=0
fall=1

[State 800, misssnd]
type=playsnd
trigger1=animelem=4
value=5000,2
channel=0

[State 800, end]
type=changestate
trigger1=!Animtime
value=0
ctrl=1

;---PLAYER---
[Statedef 801]
type=S
movetype=A
physics=S
anim=801
ctrl=0
sprpriority=1

[State 801, grab snd]
type=playsnd
trigger1=!time
value=0,800

[State 801, bind 1]
type=targetbind
trigger1=1
pos=45,0

[State 801, end]
type=changestate
trigger1=!animtime
value=ifelse(var(10)=1||var(10)=2,805,ifelse(var(10)=3,810,815))
ctrl=0

;---PLAYER TURNS---
[Statedef 803]
type=S
movetype=A
physics=S
anim=803
ctrl=0
sprpriority=1

[State 803, grab snd]
type=playsnd
trigger1=!time
value=0,800

[State 803, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=-45,0
[State 803, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=-25,0
[State 803, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=0,0
[State 803, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
pos=22,0
[State 803, bind 5]
type=targetbind
trigger1=animelemtime(5)>=0
pos=45,0

[State 803, spr]
type=sprpriority
trigger1=1
value=1-2*(animelemtime(2)>=0&&animelemtime(5)<0)

[State 803, end]
type=changestate
trigger1=!animtime
value=ifelse(var(10)=1||var(10)=2,805,ifelse(var(10)=3,810,815))
ctrl=0

;---TARGET---
[Statedef 802]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 802, anim]
type=changeanim2
trigger1=!time
value=802

[Statedef 804]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 804, anim]
type=changeanim2
trigger1=!time
value=804


;==========<SEOI NAGE>==========
;---PLAYER---
[Statedef 805]
type=S
movetype=A
physics=S
anim=805
poweradd=80*!var(20)
ctrl=0

[State 805, throw]
type=targetstate
trigger1=!time
value=ifelse(var(10)=2,806,808)

[State 805, width]
type=width
trigger1=animelemtime(3)>0&&animtime
edge=0,30

[State 805, throwsnd]
type=playsnd
trigger1=animelem=2
value=3,3
channel=0

[State 805, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=15,-76
[State 805, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=-11,-105
[State 805, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=-40,-80
[State 805, bind 4]
type=targetbind
trigger1=animelem=4&&var(10)=1
pos=-70,-45

[State 805, snd]
type=playsnd
trigger1=animelemtime(4)=5&&var(10)=1
value=5,4
volume=-100
persistent=0
[State 805, dust]
type=explod
trigger1=animelemtime(4)=5&&var(10)=1
anim=1338
ID=1338
sprpriority=-2
postype=p2
pos=0,0
vel=0,0
ownpal=1
scale=.5,.5
[State 805, shake]
type=envshake
trigger1=animelemtime(4)=5&&var(10)=1
time=12
freq=120
ampl=6
persistent=0

[State 805, hurt]
type=targetlifeadd
trigger1=animelem=4&&var(10)=2
value=-80
[State 805, throw]
type=targetstate
trigger1=animelem=4
value=ifelse(var(10)=2,807,809)

[State 805, pos]
type=posadd
trigger1=!animtime
x=3
[State 805, turn]
type=turn
trigger1=!animtime
[State 805, end]
type=changestate
trigger1=!animtime
value=0 
ctrl=1

;---TARGET---
[Statedef 806]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 806, anim]
type=changeanim2
trigger1=!time
value=806
[State 806, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[Statedef 807]
type=A
movetype=H
physics=N
velset=6,-5
poweradd=40
[State 807, grav]
type=gravity
trigger1=1
[State 807, recover]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)
[State 807, hitground]
type=selfstate
trigger1=vel y>0
trigger1=pos y>=0
value=5100

[Statedef 808]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 808, anim]
type=changeanim2
trigger1=!time
value=808
[State 808, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[Statedef 809]
type=A
movetype=H
physics=N
velset=2,10
poweradd=40
[State 809, grav]
type=gravity
trigger1=1
[State 809, hurt]
type=lifeadd
trigger1=vel y>0
trigger1=pos y>=-9
value=-90
persistent=0
[State 809, hitground]
type=selfstate
trigger1=vel y>0
trigger1=pos y>=-9
value=5110


;==========<TOMOE NAGE>==========
;---PLAYER---
[Statedef 810]
type=S
movetype=A
physics=S
anim=810
poweradd=80*!var(20)
ctrl=0

[State 810, throw]
type=targetstate
trigger1=!time
value=811

[State 810, width]
type=width
trigger1=animelemtime(3)>0&&animtime
edge=0,55

[State 810, throwsnd]
type=playsnd
trigger1=animelem=2
value=3,11
channel=0

[State 810, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=18,0
[State 810, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=12,-62
[State 810, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=-7,-54
[State 810, bind 4]
type=targetbind
trigger1=animelem=4
pos=-74,-57

[State 810, hurt]
type=targetlifeadd
trigger1=animelem=4
value=-85

[State 810, throw]
type=targetstate
trigger1=animelem=4
value=812

[State 810, pos]
type=posadd
trigger1=animelem=1||animelem=2||animelem=3||animelem=4||animelem=5
x=ifelse((animelem=1),-17,ifelse((animelem=2),-15,ifelse((animelem=3),-5,ifelse((animelem=4),-14,-3))))
[State 810, pos]
type=posadd
trigger1=!animtime
x=4

[State 810, turn]
type=turn
trigger1=!animtime
[State 810, end]
type=changestate
trigger1=!animtime
value=0 
ctrl=1

;---TARGET---
[Statedef 811]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 811, anim]
type=changeanim2
trigger1=!time
value=811
[State 811, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[Statedef 812]
type=A
movetype=H
physics=N
velset=5,-9
poweradd=40
[State 812, grav]
type=gravity
trigger1=1
[State 812, recover]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)
[State 812, hitground]
type=selfstate
trigger1=vel y>0
trigger1=pos y>=0
value=5100


;==========<JIGOKU GURUMA>==========
;---PLAYER---
[Statedef 815]
type=S
movetype=A
physics=C
anim=815
velset=0,0
poweradd=80*!var(20)
ctrl=0

[State 815, throw]
type=targetstate
trigger1=!time
value=816

[State 815, width]
type=width
trigger1=animelemtime(11)>=0&&animtime
edge=0,55

[State 815, throwsnd]
type=playsnd
trigger1=animelem=12
value=3,3
channel=0
[State 815, spinsnd]
type=playsnd
trigger1=animelem=4||animelem=8||animelem=12
value=1,ifelse((animelem=12),6,5)

[State 815, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=18,0
[State 815, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=12,-62
[State 815, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
trigger2=animelemtime(7)>=0&&animelemtime(8)<0
pos=2,-55
[State 815, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
trigger2=animelemtime(8)>=0&&animelemtime(9)<0
pos=-14,-36
[State 815, bind 5]
type=targetbind
trigger1=animelemtime(5)>=0&&animelemtime(6)<0
trigger2=animelemtime(9)>=0&&animelemtime(10)<0
pos=9,0
[State 815, bind 6]
type=targetbind
trigger1=animelemtime(6)>=0&&animelemtime(7)<0
trigger2=animelemtime(10)>=0&&animelemtime(11)<0
pos=20,-52
[State 815, bind 11]
type=targetbind
trigger1=animelemtime(11)>=0&&animelemtime(12)<0
pos=-7,-54
[State 815, bind 12]
type=targetbind
trigger1=animelem=12
pos=-74,-57

[State 815, hurt]
type=targetlifeadd
trigger1=animelem=12
value=-100

[State 815, throw]
type=targetstate
trigger1=animelem=12
value=817

[State 815, pos]
type=posset
trigger1=1
y=0
[State 815, vel]
type=velset
trigger1=animelemtime(3)>=0&&animelemtime(10)<0
x=-3

[State 815, pos]
type=posadd
trigger1=animelem=1||animelem=2||animelem=3
x=ifelse((animelem=1),-17,ifelse((animelem=2),-15,-24))

[State 815, dust]
type=explod
trigger1=animelemtime(3)>=0&&animelemtime(10)<0&&!(animelemtime(3)%5)
anim=7103
ID=7103
sprpriority=3
postype=p1
vel=1,0
ownpal=1

[State 815, turn]
type=turn
trigger1=!animtime
[State 815, end]
type=changestate
trigger1=!animtime
value=0 
ctrl=1

;---TARGET---
[Statedef 816]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 816, anim]
type=changeanim2
trigger1=!time
value=816
[State 816, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[Statedef 817]
type=A
movetype=H
physics=N
velset=5,-9
poweradd=40
[State 817, grav]
type=gravity
trigger1=1
[State 817, recover]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)
[State 817, hitground]
type=selfstate
trigger1=vel y>0
trigger1=pos y>=0
value=5100


;==========<JIGOKU FUUSHA>==========
[Statedef 850]
type=A
movetype=A
physics=A
juggle=0
ctrl=0
anim=850
sprpriority=1
[State 850, hit]
type=hitdef
trigger1=!time
attr=A,NT         
hitflag=A-          
priority=1,Miss    
sparkno=-1          
p1facing=1
p2facing=1
p1stateno=860     
p2stateno=865     
guard.dist=0        
fall=1
ID=850
[State 850, misssnd]
type=playsnd
trigger1=animelem=3
value=5000,2
channel=0


;---PLAYER---
[Statedef 860]
type=A
movetype=A
physics=N
anim=860
velset=ifelse(!vel x,-1.2,vel x),vel y-4
poweradd=80*!var(20)
ctrl=0

[State 860, turn]
type=turn
trigger1=!time&&vel x>0
[State 860, grab snd]
type=playsnd
trigger1=!time
value=0,800

[State 860, throw]
type=targetstate
trigger1=!time
value=865
[State 860, throw]
type=targetfacing
trigger1=!time
value=-1
[State 860, width]
type=width
trigger1=animelemtime(7)>=0&&animtime
edge=0,55

[State 860, grav]
type=gravity
trigger1=anim=860

[State 860, throwsnd]
type=playsnd
trigger1=animelem=2
value=3,5
channel=0
[State 860, throwsnd]
type=playsnd
trigger1=animelem=8
value=3,11
channel=0
[State 860, spinsnd]
type=playsnd
trigger1=animelem=4||animelem=8
value=1,ifelse((animelem=8),6,5)

[State 860, vel]
type=changeanim
trigger1=pos y<-5&&animelemtime(7)>=0
value=860
elem=3
[State 815, throw]
type=targetstate
trigger1=animelem=3
value=866

[State 865, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=18,0
[State 865, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=12,-62
[State 865, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=2,-55
[State 865, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
pos=-14,-36
[State 865, bind 5]
type=targetbind
trigger1=animelemtime(5)>=0&&animelemtime(6)<0
pos=9,0
[State 865, bind 6]
type=targetbind
trigger1=animelemtime(6)>=0&&animelemtime(7)<0
pos=20,-52
[State 865, bind 7]
type=targetbind
trigger1=animelemtime(7)>=0&&animelemtime(8)<0
pos=-7,-54
[State 865, bind 8]
type=targetbind
trigger1=animelem=8
pos=-74,-57

[State 865, hurt]
type=targetlifeadd
trigger1=animelem=8
value=-110
persistent=0
[State 865, throw]
type=targetstate
trigger1=animelem=8
value=867
persistent=0

[State 860, pos]
type=posset
trigger1=vel y>0&&pos y>=-5
y=0
[State 860, vel]
type=velset
trigger1=pos y>=-5
y=0
[State 860, vel]
type=velset
trigger1=!pos y&&animelemtime(7)<0
x=-4
[State 860, statetype]
type=statetypeset
trigger1=pos y>=-5
statetype=C
physics=C

[State 860, snd]
type=playsnd
trigger1=!pos y
value=5,17
persistent=0
[State 860, dust]
type=explod
trigger1=!pos y
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.75,.75
ownpal=1
persistent=0

[State 860, dust]
type=explod
trigger1=!pos y&&animelemtime(7)<0&&!(animelemtime(1)%5)
anim=7103
ID=7103
sprpriority=3
postype=p1
vel=1,0
ownpal=1

[State 860, turn]
type=turn
trigger1=!animtime
[State 860, end]
type=changestate
trigger1=!animtime
value=0 
ctrl=1


;---TARGET---
[Statedef 865]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 865, anim]
type=changeanim2
trigger1=!time
value=865
[State 865, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[Statedef 866]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 866, anim]
type=changeanim2
trigger1=!time
value=866
[State 866, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[Statedef 867]
type=A
movetype=H
physics=N
velset=6,-9
poweradd=40
[State 867, grav]
type=gravity
trigger1=1
[State 867, hitground]
type=selfstate
trigger1=vel y>0
trigger1=pos y>=0
value=5100