; ______________________________
;| Ryu by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<NORMAL STATES>==========================================
;================================================================================================

;===========<Stand Light Punch>==========
[Statedef 200]
type=S
movetype=A
physics=S
juggle=4 
anim=ifelse(p2bodydist x<25,201,200)
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 200, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)!=2
value=3,ifelse(random<500,3,6)
channel=0
[State 200, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)=2
value=13,ifelse(random<500,1,3)
channel=0
[State 200, snd]
type=playsnd
trigger1=var(1)=2&&random<200&&animelem=2
value=13,ifelse(random<500,1,3)
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
priority=2,Hit 
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-85
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200&&!var(20)),-9,-6)
air.type=Low
air.velocity=-2,-2
getpower=60*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1

[State 200, hit]
type=hitdef
trigger1=anim=201&&animelem=2
attr=S,NA 
damage=23,0
animtype=Light
guardflag=MA 
hitflag=MAF 
priority=2,Hit 
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-93
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200&&!var(20)),-9,-6)
air.type=Low
air.velocity=-2,-2
getpower=69*!var(20)
envshake.time=9
envshake.freq=60
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
juggle=4
anim=ifelse(p2bodydist x<25,206+(var(1)=2)*2,205)
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 205, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 205, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
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
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-78
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=180*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 205, hit]
type=hitdef
trigger1=animelem=3&&anim=206
attr=S,NA 
damage=40,0
animtype=Medium 
guardflag=MA 
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-77
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 205, hit]
type=hitdef
trigger1=animelem=3&&anim=208
attr=S,NA 
damage=40,0
animtype=Medium 
guardflag=M
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-61
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 205, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Sakotsu Wari>==========
[Statedef 207]
type=S
movetype=A
physics=S
juggle=4 
anim=207
velset=0,0
poweradd=50*!var(20)
sprpriority=1
ctrl=0

[State 207, width]
type=width
trigger1=1
value=20,0

[State 207, snd]
type=playsnd
trigger1=animelem=3
value=3+(var(1)=2)*10,3-(var(1)=2)*2
channel=0
[State 207, snd]
type=playsnd
trigger1=animelem=4
value=1,3

[State 207, hit]
type=hitdef
trigger1=animelem=4
attr=S,NA 
damage=25,0
animtype=Medium
guardflag=HA 
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-78
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
getpower=75*!var(20)
envshake.time=11
envshake.freq=60
envshake.ampl=2

[State 207, hit2]
type=hitdef
trigger1=animelem=5
attr=S,NA 
damage=25,0
animtype=Medium
guardflag=H 
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-39
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=75*!var(20)
envshake.time=11
envshake.freq=60
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
juggle=4 
anim=ifelse((prevstateno=710),210+(var(1)!=1)*3,ifelse(p2bodydist x<25,211,210+(var(1)!=1)*3))
velset=0,0
poweradd=60*!var(20)
sprpriority=1
ctrl=0

[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
channel=0
[State 210, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 210, hit]
type=hitdef
trigger1=animelem=4&&anim=210
attr=S,NA
damage=65,0
animtype=Hard
guardflag=MA 
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-69
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=195*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=animelem=3&&anim=211
attr=S,NA
damage=60,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-77
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=animelem=5&&anim=211&&!movecontact
attr=S,NA
damage=60,0
animtype=Hard
guardflag=MA
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-111
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=animelem=4&&anim=213
attr=S,NA
damage=65,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-66
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-12
air.type=Low
air.velocity=-5,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=prevstateno=710
trigger1=animelem=4&&anim=210
attr=S,NA
damage=65,0
animtype=Hard
guardflag=MA
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,ifelse((anim=210),-69,-66)
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-4,-4
air.type=Low
air.velocity=-4,-4
fall=1
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=prevstateno=710
trigger1=animelem=4&&anim=213
attr=S,NA
damage=65,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,ifelse((anim=210),-69,-66)
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-4,-4
air.type=Low
air.velocity=-4,-4
fall=1
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 210, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Hard Punch 2>==========
[Statedef 212]
type=S
movetype=A
physics=S
juggle=4 
anim=212
velset=0,0
poweradd=70*!var(20)
sprpriority=1
ctrl=0

[State 212, width]
type=width
trigger1=1
value=20,0

[State 212, snd]
type=playsnd
trigger1=animelem=5
value=3,4
channel=0
[State 212, snd]
type=playsnd
trigger1=animelem=5
value=1,3

[State 212, vel]
type=velset
trigger1=animelemtime(4)>=0&&animelemtime(5)<=0
x=6

[State 212, hit]
type=hitdef
trigger1=(animelem=6||animelem=7)&&anim=212
attr=S,NA
damage=33,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=10/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-61
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-6
air.type=Low
air.velocity=-5,-2
getpower=100*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 212, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Seichuu Nidan Tsuki>==========
[Statedef 214]
type=S
movetype=A
physics=S
juggle=4 
anim=214
velset=0,0
poweradd=60*!var(20)
sprpriority=1
ctrl=0

[State 214, snd]
type=playsnd
trigger1=animelem=2&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 214, snd]
type=playsnd
trigger1=animelem=2&&var(1)=2
value=13,ifelse(random<500,1,2)
channel=0
[State 214, snd]
type=playsnd
trigger1=animelem=2
value=1,3

[State 214, vel]
type=velset
trigger1=animelem=2
x=9
[State 214, snd]
type=playsnd
trigger1=animelem=2
value=5,12
[State 214, dust]
type=explod
trigger1=animelemtime(2)>=0&&vel x>.5&&!(time%3)
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=45,0
vel=-2,0
removetime=-2
ownpal=1

[State 214, hit]
type=hitdef
trigger1=animelem=2
attr=S,NA
damage=20,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=5,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-49
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-2
air.type=Low
air.velocity=-2,-2
getpower=60*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 214, hit]
type=hitdef
trigger1=animelem=3
attr=S,NA
damage=50,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=5,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-62
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-6
air.type=Low
air.velocity=-4.5,-2
getpower=150*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 214, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Light Kick>==========
[Statedef 215]
type=S
movetype=A
physics=S
juggle=4 
anim=215
velset=0,0 
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 215, snd]
type=playsnd
trigger1=animelem=3&&random<200&&var(1)!=2
value=3,ifelse(random<500,3,6)
channel=0
[State 215, snd]
type=playsnd
trigger1=animelem=3&&random<200&&var(1)=2
value=13,ifelse(random<500,1,3)
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
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-35
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
getpower=60*!var(20)
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
juggle=4 
anim=ifelse((prevstateno=710||p2bodydist x<25),221,220)
velset=0,0 
poweradd=40*!var(20)
sprpriority=1
ctrl=0

[State 220, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 220, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
channel=0
[State 220, snd]
type=playsnd
trigger1=animelem=3
value=1,4

[State 220, hit]
type=hitdef
trigger1=animelem=3&&anim=220
attr=S,NA 
damage=40,0
animtype=Medium
guardflag=MA
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-93
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 220, hit]
type=hitdef
trigger1=animelem=3&&anim=221
attr=S,NA 
damage=40,0
animtype=Medium
guardflag=M
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-15,-78
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
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
juggle=4 
anim=222
velset=vel x,0
poweradd=40*!var(20)
sprpriority=1
ctrl=0


[State 222, snd]
type=playsnd
trigger1=animelem=5
value=3+(var(1)=2)*10,2
channel=0
[State 222, snd]
type=playsnd
trigger1=animelem=1
value=0,40
[State 222, dust]
type=helper
trigger1=animelem=1
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 222, snd]
type=playsnd
trigger1=animelem=5
value=1,6

[State 222, dust]
type=explod
trigger1=animelem=1
anim=6022
ID=6022
sprpriority=3
postype=p1
pos=0,0
vel=.33,-.5
removetime=-2
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
trigger1=animelem=7
attr=S,NA 
damage=50,0
animtype=Medium
guardflag=MA 
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-78
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=150*!var(20)
envshake.time=11
envshake.freq=60
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
juggle=4 
anim=ifelse(p2bodydist x<25,226,225)
velset=0,0
poweradd=60*!var(20)
sprpriority=1
ctrl=0

[State 225, snd]
type=playsnd
trigger1=animelem=4&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 225, snd]
type=playsnd
trigger1=animelem=4&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
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
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-92
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 225, hit]
type=hitdef
trigger1=animelem=3&&anim=226
attr=S,NA
damage=33,0
animtype=Hard
guardflag=MA 
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-103
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=100*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 225, hit]
type=hitdef
trigger1=animelem=5&&anim=226
attr=S,NA
damage=33,0
animtype=Hard
fall.animtype=Hard
guardflag=H
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-72
hitsound=s2,6
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-10
air.type=Low
air.velocity=-6,6
getpower=100*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3
air.fall=1
fall.recover=0

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
juggle=4 
anim=230
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 230, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)!=2
value=3,ifelse(random<500,3,6)
channel=0
[State 230, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)=2
value=13,ifelse(random<500,1,3)
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
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-51
hitsound=s2,1
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=230&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=230&&!var(20)),-9,-6)
air.type=Low
air.velocity=-2,-2
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
juggle=4 
anim=235
velset=0,0
poweradd=40*!var(20)
sprpriority=1
ctrl=0

[State 235, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 235, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
channel=0
[State 235, snd]
type=playsnd
trigger1=animelem=3
value=1,2

[State 235, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA 
damage=40,0
animtype=Medium 
guardflag=M 
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-46
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
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
juggle=4 
anim=240
velset=0,0
poweradd=60*!var(20)
sprpriority=1
ctrl=0

[State 240, snd]
type=playsnd
trigger1=animelem=4&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 240, snd]
type=playsnd
trigger1=animelem=4&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
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
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-73
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 240, hit]
type=hitdef
trigger1=animelem=5&&!movecontact
attr=S,NA
damage=60,0
animtype=Hard
guardflag=M
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-120
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=8
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
juggle=4 
anim=245
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 245, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)!=2
value=3,ifelse(random<500,3,6)
channel=0
[State 245, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)=2
value=13,ifelse(random<500,1,3)
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
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-4
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
down.velocity=-2,-2
getpower=60*!var(20)
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
juggle=4 
anim=250
velset=0,0 
poweradd=40*!var(20)
sprpriority=1
ctrl=0

[State 250, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 250, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
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
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-5
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
down.velocity=-3,-3
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
juggle=4 
anim=255
velset=0,0
poweradd=60*!var(20)*prevstateno!=750
sprpriority=1
ctrl=0

[State 255, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 255, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
channel=0
[State 255, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 255, hit]
type=hitdef
trigger1=animelem=4
attr=C,NA
damage=60,0
animtype=Hard
guardflag=L 
hitflag=MAFD 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-6
hitsound=s2,6
guardsound=s2,0
ground.type=Trip
ground.slidetime=18
ground.hittime=18
ground.velocity=-3,-2
air.type=Low
air.velocity=-3,-2
down.velocity=-4,-4
getpower=180*!var(20)*prevstateno!=750
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
juggle=4 
anim=260
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 260, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)!=2
value=3,ifelse(random<500,3,6)
channel=0
[State 260, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)=2
value=13,ifelse(random<500,1,3)
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
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-50
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=-3
air.type=Low
air.velocity=-2,-5
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1


;===========<Air Medium Punch>==========
[Statedef 265]
type=A
movetype=A
physics=A
juggle=4 
anim=265
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 265, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 265, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
channel=0
[State 265, snd]
type=playsnd
trigger1=animelem=3
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
sparkxy=-10,-88
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity=0,-5
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 265, hit]
type=hitdef
trigger1=animelem=3
attr=A,NA 
damage=40,0
animtype=Medium 
guardflag=HA 
hitflag=MAF 
priority=3,Hit 
pausetime=10,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-133
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-5
air.type=High
air.velocity=-4,-4
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2


;===========<Air Hard Punch>==========
[Statedef 270]
type=A
movetype=A
physics=A
juggle=4 
anim=270
poweradd=60*!var(20)
sprpriority=1
ctrl=0

[State 270, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 270, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
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
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-52
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-7
air.type=Low
air.velocity=-6,-3
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3


;===========<Air Light Kick>==========
[Statedef 275]
type=A
movetype=A
physics=A
juggle=4 
anim=ifelse(vel x,275,276)
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 275, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)!=2
value=3,ifelse(random<500,3,6)
channel=0
[State 275, snd]
type=playsnd
trigger1=animelem=2&&random<200&&var(1)=2
value=13,ifelse(random<500,1,3)
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
priority=2,Hit 
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-42
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=-3
air.type=Low
air.velocity=-2,-5
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1

[State 275, hit]
type=hitdef
trigger1=animelem=2&&anim=276
attr=A,NA 
damage=25,0
animtype=Light
guardflag=HA 
hitflag=MAF 
priority=2,Hit 
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-108
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=High
air.velocity=-2,-5
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1


;===========<Air Medium Kick>==========
[Statedef 280]
type=A
movetype=A
physics=A
juggle=4 
anim=ifelse(vel x,280,281)
poweradd=40*!var(20)
sprpriority=1
ctrl=0

[State 280, snd]
type=playsnd
trigger1=animelem=2&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 280, snd]
type=playsnd
trigger1=animelem=2&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
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
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-48
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity=-2.5,-5
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 280, hit]
type=hitdef
trigger1=anim=281&&animelem=2
attr=A,NA 
damage=40,0
animtype=Medium 
guardflag=HA 
hitflag=MAF 
priority=3,Hit 
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-108
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-5
air.type=High
air.velocity=-2.5,-5
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
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
trigger1=animelem=1
value=3+(var(1)=2)*10,2+(var(1)=2)*2
channel=0
[State 282, snd]
type=playsnd
trigger1=animelem=4
value=1,6

[State 282, vel]
type=velset
trigger1=animelemtime(4)>0
x=10
y=10

[State 282, hit]
type=hitdef
trigger1=!time
attr=A,NA
damage=60,0
animtype=Hard
guardflag=HA 
hitflag=MAFD 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-15
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-7
air.type=Low
air.velocity=-5,6
down.hittime=24
down.velocity=0,0
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3
air.fall=1

[State 282, end]
type=changestate
trigger1=pos y>=0
value=52


;===========<Air Hard Kick>==========
[Statedef 285]
type=A
movetype=A
physics=A
juggle=4 
anim=ifelse(vel x,285,286)
poweradd=60*!var(20)
sprpriority=1
ctrl=0

[State 285, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)!=2
value=3,ifelse(random<500,2,3)
channel=0
[State 285, snd]
type=playsnd
trigger1=animelem=3&&random<350&&var(1)=2
value=13,ifelse(random<500,1,2)
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
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-48
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-7
air.type=Low
air.velocity=-6,-3
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 285, hit]
type=hitdef
trigger1=anim=286&&animelem=5
attr=A,NA
damage=60,0
animtype=Hard
guardflag=HA 
hitflag=MAF 
priority=4,Hit 
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-77
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-5
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3


;===========================================================================
;=================================<THROWS>==================================
;===========================================================================
;==========<THROW CONTROLLER>==========
[Statedef 800]
type=S
movetype=A
physics=S
juggle=0
velset=0,0
ctrl=0
anim=800
sprpriority=1

[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="z",1,ifelse(command="y",2,3))
[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ceil(random/333)

[State 800, hit]
type=hitdef
trigger1=!time&&(var(10)=[1,2])
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
ID=805

[State 800, hit]
type=hitdef
trigger1=!time&&var(10)=3
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
ID=810

[State 800, misssnd]
type=playsnd
trigger1=animelem=4
value=5000+(var(1)=2)*10,4-(var(1)=2)*3
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
[State 801, grabsnd]
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
value=ifelse(var(10)=3,810,805)
ctrl=0

;---PLAYER TURNS---
[Statedef 803]
type=S
movetype=A
physics=S
anim=803
ctrl=0
sprpriority=1
[State 803, grabsnd]
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
value=ifelse(var(10)=3,810,805)
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
juggle=10
ctrl=0

[State 805, throw]
type=targetstate
trigger1=!time
value=ifelse(var(10)=1,806,808)

[State 805, width]
type=width
trigger1=animelemtime(3)>0&&animtime
edge=0,30

[State 805, throw snd]
type=playsnd
trigger1=(var(1)!=2&&animelem=2)||(var(1)=2&&animelem=1)
value=3+(var(1)=2)*10,4+(var(1)=2)*3
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
trigger1=animelem=4&&var(10)=2
pos=-70,-45

[State 805, snd]
type=playsnd
trigger1=animelemtime(4)=5&&numtarget(805)&&var(10)=2
value=5,3
volume=-100
persistent=0
[State 805, dust]
type=explod
trigger1=animelemtime(4)=5&&numtarget(805)&&var(10)=2
anim=7120
ID=7120
sprpriority=-2
postype=p2
pos=0,0
removetime=-2
ownpal=1
scale=.5,.5
[State 805, shake]
type=envshake
trigger1=animelemtime(4)=5&&numtarget(805)&&var(10)=2
time=12
freq=60
ampl=6
persistent=0

[State 805, hurt]
type=targetlifeadd
trigger1=animelem=4&&var(10)=1
value=-ceil(80+random/200)

[State 805, throw]
type=targetstate
trigger1=animelem=4
value=ifelse(var(10)=1,807,809)

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
juggle=10
ctrl=0

[State 810, throw]
type=targetstate
trigger1=!time
value=811

[State 810,width]
type=width
trigger1=animtime
edge=0,55

[State 810, throw snd]
type=playsnd
trigger1=animelem=2
value=3+(var(1)=2)*10,2
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
value=-80

[State 810, throw]
type=targetstate
trigger1=animelem=4
value=812

[State 810, pos]
type=posadd
trigger1=animelem=1||animelem=2||animelem=3||animelem=4
x=ifelse((animelem=2),-17,ifelse((animelem=2),-15,ifelse((animelem=3),-5,-14)))

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