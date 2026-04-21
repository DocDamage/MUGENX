; _________________________________
;| Sakura by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<NORMAL STATES>==========================================
;================================================================================================

;===========<Stand Light Punch>==========
[Statedef 200]
type=S  
movetype=A  
physics=S  
juggle=5
anim=200
velset=0,0
poweradd=7*!var(20)
sprpriority=1
ctrl=0

[State 200, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 200, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 200, hit]
type=hitdef
trigger1=animelem=2
attr=S,NA
damage=20,0
animtype=Light
guardflag=MA
hitflag=MAF
priority=2,Hit
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-71
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.hittime=10
ground.slidetime=10
ground.velocity=ifelse(((prevstateno=200||prevstateno=230)&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse(((prevstateno=200||prevstateno=230)&&!var(20)),-9,-6)
air.type=Low
air.velocity=ifelse(((prevstateno=200||prevstateno=230)&&!var(20)),-4,-2),-2
getpower=60*!var(20)
envshake.time=8
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
value=3,ifelse(random<500,2,6)
channel=0
[State 205, snd]
type=playsnd
trigger1=animelem=3
value=1,2

[State 205, hit]
type=hitdef
trigger1=animelem=3&&anim=205
attr=S,NA
damage=40,0 
animtype=Medium 
guardflag=MA 
hitflag=MAF 
priority=3,Hit
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-69
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=10
envshake.ampl=2

[State 205, hit]
type=hitdef
trigger1=animelem=3&&anim=206
attr=S,NA
damage=40,0 
animtype=Medium 
guardflag=M
hitflag=MAF 
priority=3,Hit
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-66
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=10
envshake.ampl=2

[State 205, end]
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
anim=ifelse((prevstateno=710||p2bodydist x<25),211,210)
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 210, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 210, hit]
type=hitdef
trigger1=animelem=3&&anim=210
attr=S,NA
damage=60,0 
animtype=Hard  
guardflag=MA 
hitflag=MAF 
priority=4,Hit
pausetime=12,12 
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-65
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=animelem=3&&anim=211
attr=S,NA
damage=64,0 
animtype=Hard  
guardflag=M
hitflag=MAF 
priority=4,Hit
pausetime=12,12 
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-58
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=animelem=4&&anim=211&&!movecontact
attr=S,NA
damage=60,0 
animtype=Hard  
guardflag=M
hitflag=MAF 
priority=4,Hit
pausetime=12,12 
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-101
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
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
anim=ifelse(p2bodydist x<25,216,215)
velset=0,0
poweradd=7*!var(20)
sprpriority=1
ctrl=0  

[State 215, snd]
type=playsnd
trigger1=animelem=3&&random<200
value=3,ifelse(random<500,1,2)
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
priority=2,Hit
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,ifelse((anim=216),-39,-54)
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.hittime=10
ground.slidetime=10
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
getpower=20*!var(20)
envshake.time=9
envshake.freq=60
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
anim=220
velset=0,0
poweradd=14*!var(20)
sprpriority=1
ctrl=0  

[State 220, snd]
type=playsnd
trigger1=animelem=4&&random<350
value=3,ifelse(random<500,2,6)
channel=0
[State 220, snd]
type=playsnd
trigger1=animelem=4
value=1,5

[State 220, hit]
type=hitdef
trigger1=animelem=4
attr=S,NA
damage=40,0 
animtype=Medium  
guardflag=MA
hitflag=MAF 
priority=3,Hit
pausetime=10,10  
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-64
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 220, hit]
type=hitdef
trigger1=animelem=4&&prevstateno=710
attr=S,NA
damage=40,0 
animtype=Medium  
guardflag=MA
hitflag=MAF 
priority=3,Hit
pausetime=10,10  
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-64
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-6,-3
air.type=Low
air.velocity=-6,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2
fall=1

[State 220, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Flower Kick>==========
[Statedef 222]
type=S  
movetype=A  
physics=S  
juggle=5 
anim=222
velset=0,0
poweradd=14*!var(20)
sprpriority=1
ctrl=0  

[State 222, vel]
type=velset
trigger1=animelem=4
x=3

[State 222, snd]
type=playsnd
trigger1=animelem=5&&random<350
value=3,ifelse(random<500,2,6)
channel=0
[State 222, snd]
type=playsnd
trigger1=animelem=5
value=1,5

[State 222, hit]
type=hitdef
trigger1=animelem=5
attr=S,NA
damage=50,0 
animtype=Medium  
guardflag=HA
hitflag=MAF 
priority=3,Hit
pausetime=10,10  
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-84
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 222, hit]
type=hitdef
trigger1=animelem=6&&!movecontact
attr=S,NA
damage=50,0 
animtype=Medium  
guardflag=H
hitflag=MAF 
priority=3,Hit
pausetime=10,10  
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-34
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 222, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Hard Kick>==========
[Statedef 225]
type=S
movetype=A
physics=S
juggle=5
anim=ifelse((prevstateno=710||p2bodydist x<25),226,225)
velset=0,0
poweradd=20*!var(20)
sprpriority=ifelse(p2bodydist x<25,1,-1)
ctrl=0

[State 225, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 225, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 225, hit]
type=hitdef
trigger1=animelem=3&&anim=225
attr=S,NA
damage=60,0 
animtype=Hard  
guardflag=MA 
hitflag=MAF 
priority=4,Hit
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-72
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3
sprpriority=-1

[State 225, hit]
type=hitdef
trigger1=animelem=3&&anim=226
attr=S,NA
damage=64,0 
animtype=Hard  
guardflag=M
hitflag=MAF 
priority=4,Hit
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-90
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
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
value=3,ifelse(random<500,1,2)
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
priority=2,Hit
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-36
hitsound=s2,1
guardsound=s2,0
ground.type=Low
ground.hittime=10
ground.slidetime=10
ground.velocity=ifelse(((prevstateno=200||prevstateno=230)&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse(((prevstateno=200||prevstateno=230)&&!var(20)),-9,-6)
air.type=Low
air.velocity=ifelse(((prevstateno=200||prevstateno=230)&&!var(20)),-4,-2),-2
getpower=60*!var(20)
envshake.time=9
envshake.freq=60
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
value=3,ifelse(random<500,2,6)
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
guardflag=L
hitflag=MAF
priority=3,Hit
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-56
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 235, hit]
type=hitdef
trigger1=animelem=4&&!movecontact
attr=C,NA
damage=40,0 
animtype=Medium 
guardflag=L
hitflag=MAFD 
priority=3,Hit
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-5
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
down.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
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
trigger1=animelem=2&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 240, snd]
type=playsnd
trigger1=animelem=2
value=1,3

[State 240, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA
damage=60,0 
animtype=Hard  
guardflag=M  
hitflag=MAF 
priority=4,Hit
pausetime=12,12  
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-35
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 240, hit]
type=hitdef
trigger1=animelem=3&&!movecontact
attr=C,NA
damage=60,0 
animtype=Hard  
guardflag=M  
hitflag=MAF 
priority=4,Hit
pausetime=12,12  
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-86
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
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
value=3,ifelse(random<500,1,2)
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
priority=2,Hit
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-5
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.hittime=10
ground.slidetime=10
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
down.velocity=-2,-2
getpower=20*!var(20)
envshake.time=9
envshake.freq=60
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
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,6)
channel=0
[State 250, snd]
type=playsnd
trigger1=animelem=2
value=1,5

[State 250, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA
damage=40,0 
animtype=Medium  
guardflag=L 
hitflag=MAF
priority=3,Hit
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-38
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7,0
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
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
poweradd=20*(!var(20)*prevstateno!=750)
sprpriority=1
ctrl=0

[State 255, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,2,5)
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
priority=4,Hit
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-10
hitsound=s2,6
guardsound=s2,0
ground.type=Trip
ground.hittime=18
ground.slidetime=18
ground.velocity=-2,-2
air.type=Trip
air.velocity=-4.5,-2
down.velocity=-4,-4
getpower=180*(!var(20)*prevstateno!=750)
envshake.time=12
envshake.freq=60
envshake.ampl=3
fall=1

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
value=3,ifelse(random<500,1,2)
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
priority=2,Hit
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-42
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.hittime=10
ground.slidetime=10
ground.velocity=-4
air.type=Low
air.velocity=-2,-4
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1

[State 260, sts]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I


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
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,6)
channel=0
[State 265, snd]
type=playsnd
trigger1=animelem=2
value=1,2

[State 265, hit]
type=hitdef
trigger1=animelem=2
attr=A,NA
damage=40,0 
animtype=Medium 
guardflag=HA 
hitflag=MAF 
priority=3,Hit
pausetime=10,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-85
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-5
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 265, sts]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I


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
value=3,ifelse(random<500,2,5)
channel=0
[State 270, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 270, hit]
type=hitdef
trigger1=animelem=3
attr=A,NA
damage=60,0 
animtype=Hard  
guardflag=HA 
hitflag=MAF 
priority=4,Hit
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-64
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=High
air.velocity=-4,-6
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 270, hit]
type=hitdef
trigger1=animelem=4&&!movecontact
attr=A,NA
damage=60,0 
animtype=Hard  
guardflag=HA 
hitflag=MAF 
priority=4,Hit
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-32
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-6
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 270, sts]
type=statetypeset
trigger1=animelemtime(8)>=0
movetype=I


;===========<Air Light Kick>==========
[Statedef 275]
type=A  
movetype=A  
physics=A  
juggle=5 
anim=275
poweradd=7*!var(20)
sprpriority=1
ctrl=0  

[State 275, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 275, snd]
type=playsnd
trigger1=animelem=2
value=1,4

[State 275, hit]
type=hitdef
trigger1=animelem=2
attr=A,NA
damage=25,0 
animtype=Light  
guardflag=HA 
hitflag=MAF 
priority=2,Hit
pausetime=8,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-52
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.hittime=10
ground.slidetime=10
ground.velocity=-4
air.type=High
air.velocity=-2,-4
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1

[State 275, sts]
type=statetypeset
trigger1=animelemtime(6)>=0
movetype=I


;===========<Air Medium Kick>==========
[Statedef 280]
type=A  
movetype=A  
physics=A  
juggle=5 
anim=280
poweradd=14*!var(20)
sprpriority=1
ctrl=0  

[State 280, snd]
type=playsnd
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,6)
channel=0
[State 280, snd]
type=playsnd
trigger1=animelem=2
value=1,5

[State 280, hit]
type=hitdef
trigger1=animelem=2
attr=A,NA
damage=40,0 
animtype=Medium 
guardflag=HA 
hitflag=MAF 
priority=3,Hit
pausetime=10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-34
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity=-3
air.type=Low
air.velocity=-2.5,-5
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 280, sts]
type=statetypeset
trigger1=animelemtime(7)>=0
movetype=I


;===========<Air Hard Kick>==========
[Statedef 285]
type=A
movetype=A
physics=A
juggle=5
anim=285
poweradd=60*!var(20)
sprpriority=1
ctrl=0

[State 285, snd]
type=playsnd
trigger1=animelem=4&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 285, snd]
type=playsnd
trigger1=animelem=4
value=1,6

[State 285, hit]
type=hitdef
trigger1=animelem=4
attr=A,NA
damage=60,0 
animtype=Hard  
guardflag=HA 
hitflag=MAF 
priority=4,Hit
pausetime=12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-20
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-5
air.type=Low
air.velocity=-5,0
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 285, sts]
type=statetypeset
trigger1=animelemtime(8)>=0
movetype=I


;===========================================================================
;=================================<THROWS>==================================
;===========================================================================
;==========<GROUND THROW CONTROLLER>==========
[Statedef 800]
type=S
movetype=A
physics=S
juggle=0
velset=0,0
ctrl=0
anim=800
sprpriority=-1

[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="recovery"),2,1)
[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,2,1)

[State 800, hit]
type=hitdef
trigger1=animelem=2&&var(10)=1
attr=S,NT
hitflag=M-
priority=1,Miss 
sparkno=-1
p1facing=ifelse(command="holdback",-1,1)
p2facing=1
p1stateno=ifelse(command="holdback",803,801) 
p2stateno=ifelse(command="holdback",804,802)
animtype=Back
ground.velocity=-6,-3
guard.dist=0  
fall=1
fall.recover=0
ID=800
numhits=0

[State 800, hit]
type=hitdef
trigger1=animelem=2&&var(10)=2
attr=S,NT
hitflag=M-
priority=1,Miss 
sparkno=-1
p1facing=ifelse(command="holdback",-1,1)
p2facing=1
p1stateno=ifelse(command="holdback",803,801) 
p2stateno=ifelse(command="holdback",804,802)
guard.dist=0  
fall=1
fall.recover=0
ID=800
numhits=0

[State 800, misssnd]
type=playsnd
trigger1=animelem=4
value=5000,ifelse(random<500,1,4)
channel=0
[State 800, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 801]
type=S
movetype=A
physics=S
anim=801
ctrl=0
sprpriority=-1
[State 801, grab snd]
type=playsnd
trigger1=!time
value=0,800
[State 801, end]
type=changestate
trigger1=!time&&var(10)=2&&numtarget(800)
trigger1=(target(800),const(size.head.pos.y))>-65
value=830
ctrl=0
[State 801, end]
type=changestate
trigger1=!time
value=ifelse(var(10)=1,810,820)
ctrl=0
[State 801, bind 1]
type=targetbind
trigger1=1
pos=40,0


;---PLAYER TURNS---
[Statedef 803]
type=S
movetype=A
physics=S
anim=803
ctrl=0
sprpriority=-1
[State 803, grab snd]
type=playsnd
trigger1=!time
value=0,800
[State 803, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=-40,0
[State 803, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=-10,0
[State 803, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=10,0
[State 801, end]
type=changestate
trigger1=animelemtime(4)>=0&&var(10)=2&&numtarget(800)
trigger1=(target(800),const(size.head.pos.y))>-65
value=830
ctrl=0
[State 803, end]
type=changestate
trigger1=animelemtime(4)>=0
value=ifelse(var(10)=1,810,820)
ctrl=0
[State 803, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0
pos=40,0


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


;==========<SAILOR SHOOT>==========
;---PLAYER---
[Statedef 810]
type=S
movetype=A
physics=S
anim=810
juggle=5
poweradd=50*!var(20)
sprpriority=1
ctrl=0

[State 810, throw]
type=targetstate
trigger1=!time
value=811
[State 810, throw]
type=targetfacing
trigger1=!time
value=-1

[State 810, vel]
type=velset
trigger1=animelemtime(6)<0
x=0
y=0

[State 810, bind 1]
type=bindtotarget
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=25,0,foot
[State 810, bind 2]
type=bindtotarget
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=32,50+floor(.5*(target(800),const(size.head.pos.y)+target(800),const(size.mid.pos.y)))
[State 810, bind 3]
type=bindtotarget
trigger1=animelemtime(3)>=0&&animelemtime(6)<0
pos=43,50+floor(.5*(target(800),const(size.head.pos.y)+target(800),const(size.mid.pos.y)))

[State 810, power]
type=poweradd
trigger1=animelem=5&&!var(20)
value=200
[State 810, hurt]
type=targetlifeadd
trigger1=animelem=5
value=-100
[State 810, hurt]
type=targetpoweradd
trigger1=animelem=5
value=60
[State 810, throw]
type=targetstate
trigger1=animelem=6
value=812

[State 810, throwsnd]
type=playsnd
trigger1=animelem=5
value=3,7
channel=0
[State 810, hitsnd]
type=playsnd
trigger1=animelem=5
value=2,6
[State 810, sparks]
type=explod
trigger1=animelem=5
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=70,-48
removetime=-2
ownpal=1
persistent=0
pausemovetime=100
supermovetime=100

[State 810, vel]
type=velset
trigger1=animelem=6
x=-4
y=-6
[State 810, turn]
type=turn
trigger1=animelem=9
[State 810, sts]
type=statetypeset
trigger1=animelemtime(6)>=0
statetype=A
physics=N
[State 810, grav]
type=gravity
trigger1=animelemtime(6)>=0

[State 810, end]
type=changestate
trigger1=animelemtime(6)>=0&&vel y>0&&pos y>0
value=52


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

[Statedef 812]
type=A
movetype=H
physics=N
[State 812, grav]
type=gravity
trigger1=1
[State 812, end]
type=selfstate
trigger1=1
value=5020


;==========<SAKURA JIME>==========
;---PLAYER---
[Statedef 820]
type=S
movetype=A
physics=S
anim=820
juggle=15
poweradd=0
sprpriority=1
ctrl=0

[State 820, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0
[State 820, throw]
type=targetstate
trigger1=!time
value=825
[State 820, throw]
type=targetfacing
trigger1=!time
value=-1
[State 820, anim]
type=changeanim
trigger1=!animtime&&anim=820
value=821

[State 820, end]
type=changestate
triggerall=!animtime&&anim=821
trigger1=time>=(181+var(15))
trigger2=hitcount>=11
value=823 

[State 820, anim]
type=changeanim
triggerall=anim=821&&animelemtime(6)<0&&var(15)>0
triggerall=animelemtime(animelemno(0))>1
trigger1=command="x"||command="y"||command="z"
trigger2=command="a"||command="b"||command="c"||command="start"
trigger3=command="up"||command="down"||command="back"||command="fwd"
trigger4=var(59)>=1&&!(time%3)
value=821
elem=animelemno(0)+1
[State 820, throw]
type=targetstate
trigger1=anim=821
value=ifelse(animelemtime(5)<0,826,ifelse(animelemtime(6)<6,827,826))

[State 820, pos]
type=posset
trigger1=anim=820&&animelemtime(5)>=0&&pos y>=0
y=0
[State 820, pos]
type=posset
trigger1=anim=820&&animelemtime(4)>=0&&animelemtime(5)<0&&pos y>=1
trigger2=anim=821&&animelemtime(5)>=0&&animelemtime(6)<0&&pos y>=1
y=1
[State 820, pos]
type=posset
trigger1=anim=820&&animelemtime(2)>=0&&animelemtime(3)<0&&pos y>=2
y=2
[State 820, pos]
type=posset
trigger1=anim=821&&animelemtime(1)>=0&&animelemtime(2)<0&&pos y>=7
trigger2=anim=821&&animelemtime(3)>=0&&animelemtime(4)<0&&pos y>=7
y=7
[State 820, pos]
type=posset
trigger1=anim=821&&animelemtime(2)>=0&&animelemtime(3)<0&&pos y>=9
trigger2=anim=821&&animelemtime(4)>=0&&animelemtime(5)<0&&pos y>=9
y=9

[State 820, mashvar]
type=varset
trigger1=!time
var(15)=0
[State 820, mashvar]
type=varadd
triggerall=anim=821
trigger1=command="x"||command="y"||command="z"
trigger2=command="a"||command="b"||command="c"||command="start"
trigger3=command="up"||command="down"||command="back"||command="fwd"
trigger4=var(59)>=1&&!(time%3)
var(15)=4
[State 820, mashvar]
type=varadd
triggerall=anim=821&&numtarget(800)
trigger1=target(800),command="x"||target(800),command="y"||target(800),command="z"
trigger2=target(800),command="a"||target(800),command="b"||target(800),command="c"||target(800),command="start"
trigger3=target(800),command="up"||target(800),command="down"||target(800),command="back"||target(800),command="fwd"
var(15)=-4
[State 820, mashvar]
type=varadd
trigger1=var(15)
var(15)=ifelse(var(15)>0,-1,ifelse(var(15)<0,1,0))

[State 820, flash]
type=palfx
trigger1=command="x"||command="y"||command="z"
trigger2=command="a"||command="b"||command="c"||command="start"
trigger3=command="up"||command="down"||command="back"||command="fwd"
trigger4=var(59)>=1&&!(time%3)
time=1
add=50,50,50

[State 820, throwsnd]
type=playsnd
trigger1=anim=821&&animelem=2
value=3,6
channel=0
[State 820, power]
type=poweradd
trigger1=anim=821&&animelem=2&&!var(20)
value=20
[State 820, hurt]
type=targetlifeadd
trigger1=anim=821&&animelem=2
value=-10
kill=0
[State 820, hurt]
type=targetpoweradd
trigger1=anim=821&&animelem=2
value=7

[State 820, hitsnd]
type=playsnd
trigger1=anim=821&&animelem=2
value=2,8
[State 820, spark]
type=explod
trigger1=anim=821&&animelem=2
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p1
removetime=-2
ownpal=1
pausemovetime=100
supermovetime=100

[State 820, hit]
type=hitadd
trigger1=anim=821&&animelem=2
value=1
[State 820, shake]
type=envshake
trigger1=anim=821&&animelem=2
time=10
freq=60
ampl=2

[State 820, bind Others];5000,0 axis at neck
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
pos=-ceil(.5*target(800),const(size.ground.back)),10,head
[State 820, bind Others];5000,10
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
pos=-ceil(1*target(800),const(size.ground.back)),10,head
[State 820, bind Others];5000,20
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
pos=-ceil(1.5*target(800),const(size.ground.back)),10,head

[State 820, bind Sakura];5000,0 axis at neck
type=bindtotarget
triggerall=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Sakura Kasugano"&&target(800),authorname="Phantom.of.the.Server"
trigger2=target(800),name="Pneophen's pissed off Sakura"&&target(800),authorname="Patrick Ching(Pneophen)"
pos=-11,-75
[State 820, bind Sakura];5000,10
type=bindtotarget
triggerall=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Sakura Kasugano"&&target(800),authorname="Phantom.of.the.Server"
trigger2=target(800),name="Pneophen's pissed off Sakura"&&target(800),authorname="Patrick Ching(Pneophen)"
pos=-24,-75
[State 820, bind Sakura];5000,20
type=bindtotarget
triggerall=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Sakura Kasugano"&&target(800),authorname="Phantom.of.the.Server"
trigger2=target(800),name="Pneophen's pissed off Sakura"&&target(800),authorname="Patrick Ching(Pneophen)"
pos=-38,-76

[State 820, bind Guy]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Guy"&&target(800),authorname="Phantom.of.the.Server"
pos=-3,-81
[State 820, bind Guy]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Guy"&&target(800),authorname="Phantom.of.the.Server"
pos=-16,-81
[State 820, bind Guy]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Guy"&&target(800),authorname="Phantom.of.the.Server"
pos=-24,-82

[State 820, bind Lei-Lei]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Lei-Lei"&&target(800),authorname="Phantom.of.the.Server"
pos=-15,-60
[State 820, bind Lei-Lei]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Lei-Lei"&&target(800),authorname="Phantom.of.the.Server"
pos=-17,-59
[State 820, bind Lei-Lei]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Lei-Lei"&&target(800),authorname="Phantom.of.the.Server"
pos=-40,-50

[State 820, bind Morrigan]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Morrigan Aensland"&&target(800),authorname="Phantom.of.the.Server"
pos=-1,-76
[State 820, bind Morrigan]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Morrigan Aensland"&&target(800),authorname="Phantom.of.the.Server"
pos=-11,-71
[State 820, bind Morrigan]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Morrigan Aensland"&&target(800),authorname="Phantom.of.the.Server"
pos=-41,-63

[State 820, bind Vega]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Vega"&&target(800),authorname="Phantom.of.the.Server"
pos=-6,-87
[State 820, bind Vega]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Vega"&&target(800),authorname="Phantom.of.the.Server"
pos=-24,-90
[State 820, bind Vega]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Vega"&&target(800),authorname="Phantom.of.the.Server"
pos=-34,-92

[State 820, bind Chun Li]
type=bindtotarget
triggerall=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Chun Li"&&target(800),authorname="Phantom.of.the.Server"
trigger2=target(800),name="Chun Li"&&target(800),authorname="Conversion World - J.Lee"
trigger3=target(800),name="cvschunli"&&target(800),authorname="Warusaki3"
pos=-2,-78
[State 820, bind Chun Li]
type=bindtotarget
triggerall=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Chun Li"&&target(800),authorname="Phantom.of.the.Server"
trigger2=target(800),name="Chun Li"&&target(800),authorname="Conversion World - J.Lee"
trigger3=target(800),name="cvschunli"&&target(800),authorname="Warusaki3"
pos=-21,-77
[State 820, bind Chun Li]
type=bindtotarget
triggerall=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Chun Li"&&target(800),authorname="Phantom.of.the.Server"
trigger2=target(800),name="Chun Li"&&target(800),authorname="Conversion World - J.Lee"
trigger3=target(800),name="cvschunli"&&target(800),authorname="Warusaki3"
pos=-36,-71

[State 820, bind Justice]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Justice"&&target(800),authorname="Phantom.of.the.Server"
pos=-10,-128
[State 820, bind Justice]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Justice"&&target(800),authorname="Phantom.of.the.Server"
pos=-45,-116
[State 820, bind Justice]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Justice"&&target(800),authorname="Phantom.of.the.Server"
pos=-58,-98

[State 820, bind Sodom]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Sodom"&&target(800),authorname="Phantom.of.the.Server"
pos=0,-84
[State 820, bind Sodom]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Sodom"&&target(800),authorname="Phantom.of.the.Server"
pos=-23,-88
[State 820, bind Sodom]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Sodom"&&target(800),authorname="Phantom.of.the.Server"
pos=-39,-90

[State 820, bind CvSShotos]
type=bindtotarget
triggerall=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=(target(800),name="Ryu"||target(800),name="Ken Masters"||target(800),name="Shin Gouki")&&target(800),authorname="Phantom.of.the.Server"
trigger2=(target(800),name="cvsryu"||target(800),name="cvsken"||target(800),name="cvsgouki")&&target(800),authorname="Warusaki3"
pos=0,-85
[State 820, bind CvSShotos]
type=bindtotarget
triggerall=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=(target(800),name="Ryu"||target(800),name="Ken Masters"||target(800),name="Shin Gouki")&&target(800),authorname="Phantom.of.the.Server"
trigger2=(target(800),name="cvsryu"||target(800),name="cvsken"||target(800),name="cvsgouki")&&target(800),authorname="Warusaki3"
pos=-20,-86
[State 820, bind CvSShotos]
type=bindtotarget
triggerall=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=(target(800),name="Ryu"||target(800),name="Ken Masters"||target(800),name="Shin Gouki")&&target(800),authorname="Phantom.of.the.Server"
trigger2=(target(800),name="cvsryu"||target(800),name="cvsken"||target(800),name="cvsgouki")&&target(800),authorname="Warusaki3"
pos=-36,-83

[State 820, bind CvSHaohmaru]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Cvshaohmaru"
pos=-18,-70
[State 820, bind CvSHaohmaru]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Cvshaohmaru"
pos=-33,-64
[State 820, bind CvSHaohmaru]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Cvshaohmaru"
pos=-40,-64

[State 820, bind CvS Rugal]
type=bindtotarget
triggerall=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=(target(800),name="cvsrugal"||target(800),name="cvsg_rugal")&&target(800),authorname="Warusaki3"
trigger2=target(800),name="Androide GRugal"&&target(800),authorname="@ndroide"
pos=-16,-106
[State 820, bind CvS Rugal]
type=bindtotarget
triggerall=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=(target(800),name="cvsrugal"||target(800),name="cvsg_rugal")&&target(800),authorname="Warusaki3"
trigger2=target(800),name="Androide GRugal"&&target(800),authorname="@ndroide"
pos=-33,-100
[State 820, bind CvS Rugal]
type=bindtotarget
triggerall=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=(target(800),name="cvsrugal"||target(800),name="cvsg_rugal")&&target(800),authorname="Warusaki3"
trigger2=target(800),name="Androide GRugal"&&target(800),authorname="@ndroide"
pos=-52,-91

[State 820, bind KFM]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Kung Fu Man"&&target(800),authorname="Elecbyte"
pos=-10,-82
[State 820, bind KFM]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Kung Fu Man"&&target(800),authorname="Elecbyte"
pos=-19,-79
[State 820, bind KFM]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Kung Fu Man"&&target(800),authorname="Elecbyte"
pos=-36,-80

[State 820, bind SFZ Shotos]
type=bindtotarget
triggerall=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Oyaji"&&target(800),authorname="Mr.Chainsaw & Phantom.of.the.Server"
trigger2=target(800),name="Evil Ryu"&&target(800),authorname="Reu and Kingtigre"
trigger3=target(800),name="Evil Ken"&&target(800),authorname="Reu"
trigger4=target(800),name="Evil Dan"&&target(800),authorname="ilcane87"
pos=-6,-74
[State 820, bind SFZ Shotos]
type=bindtotarget
triggerall=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Oyaji"&&target(800),authorname="Mr.Chainsaw & Phantom.of.the.Server"
trigger2=target(800),name="Evil Ryu"&&target(800),authorname="Reu and Kingtigre"
trigger3=target(800),name="Evil Ken"&&target(800),authorname="Reu"
trigger4=target(800),name="Evil Dan"&&target(800),authorname="ilcane87"
pos=-20,-75
[State 820, bind SFZ Shotos]
type=bindtotarget
triggerall=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Oyaji"&&target(800),authorname="Mr.Chainsaw & Phantom.of.the.Server"
trigger2=target(800),name="Evil Ryu"&&target(800),authorname="Reu and Kingtigre"
trigger3=target(800),name="Evil Ken"&&target(800),authorname="Reu"
trigger4=target(800),name="Evil Dan"&&target(800),authorname="ilcane87"
pos=-32,-75

[State 820, bind Setsuna]
type=bindtotarget
trigger1=numtarget(800)&&(anim=820&&animelemtime(2)>=0&&animelemtime(3)<0)
trigger1=target(800),name="Setsuna"&&target(800),authorname="Orochi Herman"
pos=-1,-89
[State 820, bind Setsuna]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||(anim=821&&animelemtime(5)>=0))
trigger1=target(800),name="Setsuna"&&target(800),authorname="Orochi Herman"
pos=-20,-88
[State 820, bind Setsuna]
type=bindtotarget
trigger1=numtarget(800)&&((anim=821&&animelemtime(5)<0)||(anim=821&&animelemtime(6)>=6))
trigger1=target(800),name="Setsuna"&&target(800),authorname="Orochi Herman"
pos=-26,-87

[State 820, bind ss3Goku]
type=bindtotarget
trigger1=numtarget(800)&&anim=820&&animelemtime(2)>=0&&animelemtime(3)<0
trigger1=target(800),name="ss3goku"&&target(800),authorname="Warusaki3"
pos=-11,-85
[State 820, bind ss3Goku]
type=bindtotarget
trigger1=numtarget(800)&&((anim=820&&animelemtime(3)>=0)||anim=821)
trigger1=target(800),name="ss3goku"&&target(800),authorname="Warusaki3"
pos=-31,-92


;---FINISH---
[Statedef 823]
type=S
movetype=A
physics=S
anim=823
sprpriority=1
poweradd=0
ctrl=0

[State 823, camera]
type=screenbound
trigger1=animelemtime(4)<0
value=1
movecamera=0,0
[State 823, throw]
type=targetstate
trigger1=!time
value=828
[State 823, throw]
type=targetfacing
trigger1=!time
value=-1

[State 823, mashvar]
type=varset
trigger1=var(15)
var(15)=0

[State 823, fixpos]
type=posadd
trigger1=animelem=4
x=-2
y=79

[State 820, power]
type=poweradd
trigger1=animelem=4&&!var(20)
value=80
[State 823, hurt]
type=targetlifeadd
trigger1=animelem=4
value=-40
[State 823, hurt]
type=targetpoweradd
trigger1=animelem=4
value=27
[State 810, throw]
type=targetstate
trigger1=animelem=4
value=829

[State 823, throwsnd]
type=playsnd
trigger1=animelem=4
value=3,5
channel=0
[State 823, hitsnd]
type=playsnd
trigger1=animelem=4
value=2,3
[State 823, spark]
type=explod
trigger1=animelem=4
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=-27,-66
removetime=-2
ownpal=1
pausemovetime=100
supermovetime=100

[State 823, hit]
type=hitadd
trigger1=animelem=4
value=1
[State 823, shake]
type=envshake
trigger1=animelem=4
time=10
freq=60
ampl=3

[State 823, grav]
type=gravity
trigger1=animelemtime(5)>=0

[State 823, end]
type=changestate
trigger1=animelemtime(5)>=0&&vel y>0&&pos y>0
value=52


;---TARGET---
[Statedef 825]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 825, anim]
type=changeanim2
trigger1=!time
value=825
[State 825, flash]
type=palfx
trigger1=command="x"||command="y"||command="z"
trigger2=command="a"||command="b"||command="c"||command="start"
trigger3=command="up"||command="down"||command="back"||command="fwd"
time=1
add=100,0,0
[State 825, freeze]
type=posfreeze
trigger1=1
value=1

[Statedef 826]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 826, anim]
type=changeanim2
trigger1=!time
value=826
[State 826, flash]
type=palfx
trigger1=command="x"||command="y"||command="z"
trigger2=command="a"||command="b"||command="c"||command="start"
trigger3=command="up"||command="down"||command="back"||command="fwd"
time=1
add=100,0,0
[State 826, freeze]
type=posfreeze
trigger1=1
value=1

[Statedef 827]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 827, anim]
type=changeanim2
trigger1=!time
value=827
[State 827, flash]
type=palfx
trigger1=command="x"||command="y"||command="z"
trigger2=command="a"||command="b"||command="c"||command="start"
trigger3=command="up"||command="down"||command="back"||command="fwd"
time=1
add=100,0,0
[State 827, freeze]
type=posfreeze
trigger1=1
value=1

[Statedef 828]
type=A
movetype=H
physics=N
velset=0,0
[State 828, anim]
type=changeanim2
trigger1=!time
value=828
[State 828, camera]
type=screenbound
trigger1=1
value=1
movecamera=1,0

[Statedef 829]
type=A
movetype=H
physics=N
velset=4,6
[State 829, camera]
type=screenbound
trigger1=1
value=1
movecamera=1,0
[State 829, grav]
type=gravity
trigger1=1
[State 829, hitground]
type=selfstate
trigger1=vel y>0&&pos y>=25
value=5100


;==========<RIVAL SCHOOLS THROW>==========
;---PLAYER---
[Statedef 830]
type=S
movetype=A
physics=S
anim=830
poweradd=50*!var(20)
juggle=10
ctrl=0
sprpriority=1

[State 830, throw]
type=targetstate
trigger1=!time
value=835

[State 830,width]
type=width
trigger1=animtime
edge=50,0

[State 830, throw snd]
type=playsnd
trigger1=animelem=4
value=3,1
channel=0
[State 830, throw snd]
type=playsnd
trigger1=animelem=14
value=3,6
channel=0

[State 830, bind 1]
type=targetbind
trigger1=animelemtime(5)<0
pos=60,0

[State 830, power]
type=poweradd
trigger1=animelem=5&&!var(20)
value=100
[State 830, hurt]
type=targetlifeadd
trigger1=animelem=5
value=-50
[State 830, hurt]
type=targetpoweradd
trigger1=animelem=5
value=30
[State 830, throw]
type=targetstate
trigger1=animelem=5
value=836

[State 830, power]
type=poweradd
trigger1=animelem=16&&!var(20)
value=100
[State 830, hurt]
type=targetlifeadd
trigger1=animelem=16
value=-50
[State 830, hurt]
type=targetpoweradd
trigger1=animelem=16
value=30
[State 830, throw]
type=targetstate
trigger1=animelem=16
value=837

[State 830, hitsnd]
type=playsnd
trigger1=animelem=5||animelem=16
value=2,ifelse((animelem=5),3,6)
[State 830, sparks]
type=explod
trigger1=animelem=5||animelem=16
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=ifelse((animelem=5),49,60),ifelse((animelem=5),-80,-86)
ownpal=1
facing=-1
pausemovetime=100
supermovetime=100
[State 830, hit]
type=hitadd
trigger1=animelem=5||animelem=16
value=1
[State 830, shake]
type=envshake
trigger1=animelem=5||animelem=16
time=10
freq=60
ampl=2

[State 830, end]
type=changestate
trigger1=!animtime
value=0 
ctrl=1


;---TARGET---
[Statedef 835]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 835, anim]
type=changeanim2
trigger1=!time
value=835
[State 835, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[Statedef 836]
type=A
movetype=H
physics=N
velset=-.1,-9
sprpriority=0
[State 836, grav]
type=veladd
trigger1=1
y=.5
[State 836, anim]
type=changeanim2
trigger1=!time
value=836
[State 836, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0
[State 836, hitground]
type=selfstate
trigger1=vel y>0
trigger1=pos y>=0
value=5100

[Statedef 837]
type=A
movetype=H
physics=N
velset=-6,-6
sprpriority=0
[State 837, grav]
type=gravity
trigger1=1
[State 837, recover]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)
[State 837, anim]
type=changeanim2
trigger1=!time
value=837
[State 837, hitground]
type=selfstate
trigger1=vel y>0
trigger1=pos y>=0
value=5100


;==========<SAILOR FLY>==========
;---ATTEMPT---
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
p1facing=ifelse(command="holdback",-1,1)
p2facing=1
p1stateno=860
p2stateno=861
animtype=Back
air.velocity=-6,3
guard.dist=0  
fall=1
fall.recover=0
ID=850
numhits=0
[State 850, misssnd]
type=playsnd
trigger1=animelem=3
value=5000,ifelse(random<500,1,4)
channel=0
[State 850, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I


;---PLAYER---
[Statedef 860]
type=A
movetype=A
physics=N
anim=810
juggle=5
poweradd=50*!var(20)
sprpriority=1
ctrl=0

[State 860, grab snd]
type=playsnd
trigger1=!time
value=0,800
[State 860, throw]
type=targetstate
trigger1=!time
value=861
[State 860, throw]
type=targetfacing
trigger1=!time
value=-1

[State 860, vel]
type=velset
trigger1=animelemtime(6)<0&&pos y>=-60
x=0
y=0
[State 860, pos]
type=posset
trigger1=animelemtime(6)<0&&pos y>=-60
y=-60
[State 860, vel]
type=velmul
trigger1=animelemtime(6)<0
x=.9
[State 860, vel]
type=veladd
trigger1=animelemtime(6)<0&&pos y<-60
y=ifelse(vel y<=0,.5,.25)

[State 860, bind 1]
type=bindtotarget
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=25,0,foot
[State 860, bind 2]
type=bindtotarget
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=32,50+floor(.5*(target(850),const(size.head.pos.y)+target(850),const(size.mid.pos.y)))
[State 860, bind 3]
type=bindtotarget
trigger1=animelemtime(3)>=0&&animelemtime(6)<0
pos=43,50+floor(.5*(target(850),const(size.head.pos.y)+target(850),const(size.mid.pos.y)))

[State 860, power]
type=poweradd
trigger1=animelem=5&&!var(20)
value=200
[State 860, hurt]
type=targetlifeadd
trigger1=animelem=5
value=-100
[State 860, hurt]
type=targetpoweradd
trigger1=animelem=5
value=60
[State 860, throw]
type=targetstate
trigger1=animelem=6
value=862

[State 860, throwsnd]
type=playsnd
trigger1=animelem=5
value=3,7
channel=0
[State 860, hitsnd]
type=playsnd
trigger1=animelem=5
value=2,6
[State 860, sparks]
type=explod
trigger1=animelem=5
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=70,-48
removetime=-2
ownpal=1
persistent=0
pausemovetime=100
supermovetime=100

[State 810, vel]
type=veladd
trigger1=animelem=6
x=-4
y=-6
[State 860, turn]
type=turn
trigger1=animelem=9
[State 860, sts]
type=statetypeset
trigger1=animelemtime(6)>=0
statetype=A
physics=N
[State 860, grav]
type=gravity
trigger1=animelemtime(6)>=0

[State 860, end]
type=changestate
trigger1=animelemtime(6)>=0&&vel y>0&&pos y>0
value=52


;---TARGET---
[Statedef 861]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 861, anim]
type=changeanim2
trigger1=!time
value=811

[Statedef 862]
type=A
movetype=H
physics=N
[State 862, grav]
type=gravity
trigger1=1
[State 862, end]
type=selfstate
trigger1=1
value=5020