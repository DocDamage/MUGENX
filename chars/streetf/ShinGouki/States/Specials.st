; _____________________________________
;| Shin Gouki by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<SPECIAL STATES>=========================================
;================================================================================================

;========================<GOU HADOU KEN>=============================
[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=90*!var(20)
sprpriority=1

[State 1000, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcfz",3,ifelse(command="qcfy",2,1))
[State 1000, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1000, width]
type=width
trigger1=animelemtime(5)>=0&&animelemtime(10)<0
value=30,0

[State 1000, Hadouken]
type=helper
trigger1=!animelemtime(5)
helpertype=normal
stateno=1005
ID=1005
name="Hadouken"
postype=p1
pos=78,-68
ownpal=1
size.xscale=.75
size.yscale=.75

[State 1000, snd]
type=playsnd
trigger1=!animelemtime(4)
value=3,3
channel=0
[State 1000, snd]
type=playsnd
trigger1=!animelemtime(5)
value=5,0

[State 1000, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<SHAKUNETSU HADOU KEN>=============================
[Statedef 1020]
type=S
physics=S
movetype=A
anim=1020
ctrl=0
velset=0,0
poweradd=ifelse(command="hcbz",110,ifelse(command="hcby"=2,100,90))*!var(20)
sprpriority=1

[State 1020, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="hcbz",3,ifelse(command="hcby",2,1))
[State 1020, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1020, width]
type=width
trigger1=animelemtime(10)>=0&&animelemtime(15)<0
value=30,0
value=17,0

[State 1020, anim]
type=changeanim
trigger1=var(10)=1&&animelem=5
trigger2=var(10)=2&&animelem=7
value=1020
elem=9
persistent=0

[State 1020, dust]
type=explod
trigger1=animelem=3&&var(10)>1
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-3,0
vel=0,0
removetime=-2
ownpal=1
scale=ifelse(var(10)=3,.9,.7),ifelse(var(10)=3,.9,.7)

[State 1020, Hadouken]
type=helper
trigger1=!animelemtime(10)
helpertype=normal
stateno=1025
ID=1025
name="Hadouken"
postype=p1
pos=78,-68
ownpal=1
persistent=0
[State 1020, aura]
type=helper
trigger1=!animelemtime(3)
helpertype=normal
stateno=6000
ID=6000
postype=p1
ownpal=1
persistent=0

[State 1020, snd]
type=playsnd
trigger1=!animelemtime(3)
value=3,5
channel=0
persistent=0

[State 1020, snd]
type=playsnd
trigger1=!animelemtime(10)
value=3,0
channel=0
[State 1020, snd]
type=playsnd
trigger1=!animelemtime(10)
value=5,0

[State 1020, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<ZANKUU HADOU KEN>=============================
[Statedef 1050]
type=A
physics=A
movetype=A
anim=1050
ctrl=0
poweradd=90*!var(20)
sprpriority=1

[State 1050, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcfz",3,ifelse(command="qcfy",2,1))
[State 1050, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1050, width]
type=width
trigger1=(animelemtime(2)>=0&&animelemtime(4)<0)||(animelemtime(5)>=0&&animelemtime(6)<0)
value=27,0

[State 1050, Hadouken]
type=helper
trigger1=!animelemtime(2)||!animelemtime(5)
helpertype=normal
stateno=1055
ID=1055
name="Hadouken"
postype=p1
pos=ifelse((animelem=2),54,67),ifelse((animelem=2),-48,-48)
ownpal=1
size.xscale=.75
size.yscale=.75

[State 1050, snd]
type=playsnd
trigger1=animelem=2||animelem=5
value=3,10
channel=0
[State 1050, snd]
type=playsnd
trigger1=!animelemtime(2)||!animelemtime(5)
value=5,0
volume=-100


;========================<GOU SHORYUU KEN>=============================
[Statedef 1100]
type=S
physics=S
movetype=A
anim=1100
ctrl=0
velset=0,0
poweradd=ifelse(command="dfz",129,ifelse(command="dfy"=2,119,109))*(!var(20)*prevstateno!=750)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1100, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="dfz"||prevstateno=750),3,ifelse(command="dfy",2,1))
[State 1100, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse((random<500||prevstateno=750),3,ifelse(random<666,2,1))

[State 1100, nothitby]
type=nothitby
trigger1=anim=1100&&animelemtime(4)<0&&prevstateno!=750
value=SCA
time=1
ignorehitpause=1

[State 1100, vel]
type=velset
trigger1=anim=1100&&!animelemtime(4)
x=ifelse(var(10)=3,12,ifelse(var(10)=2,9,6))
y=ifelse(var(10)=3,-11,ifelse(var(10)=2,-8.5,-6))
[State 1100, vel]
type=velmul
trigger1=1
x=.88
[State 1100, vel]
type=velmul
trigger1=vel y>0
x=0

[State 1100, snd]
type=playsnd
trigger1=anim=1100&&!animelemtime(4)
value=0,41
[State 1100, dust]
type=helper
trigger1=anim=1100&&!animelemtime(4)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1100, snd]
type=playsnd
trigger1=anim=1100&&!animelemtime(4)
value=3,9
channel=0
ignorehitpause=1
persistent=0

[State 1100, width]
type=width
trigger1=vel y<0
edge=const(size.air.front)

[State 1100, hit]
type=hitdef
trigger1=(animelem=2)&&anim=1100
trigger2=(animelem=3)&&anim=1100
attr=S,SA
damage=31+var(10)*4,5
animtype=Hard
fall.animtype=Hard
guardflag=M
hitflag=MAF
priority=6,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=2),-52,-75)
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=.5,-5.5
air.type=Low
air.velocity=.5,-5.5
getpower=(62+var(10)*8)*!var(20)*(prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=var(10)=1
fall.animtype=Medium
[State 1100, hit2]
type=hitdef
trigger1=(animelem=4)&&anim=1100
attr=A,SA
damage=ifelse(movecontact,31,52)+var(10)*4,5
animtype=Back
guardflag=MA
hitflag=MAF
priority=6,Hit
pausetime=16/((var(20)>0)+1),16/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-100
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-1.5-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-1.5-(var(10)/2),-6-var(10)
getpower=80+var(10)*8*!var(20)*(prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=var(10)=1

[State 1100, statetype]
type=statetypeset
trigger1=anim=1100&&animelemtime(4)>=0
statetype=A
physics=A
[State 1100, anim]
type=changeanim
trigger1=anim=1100&&animelemtime(4)>0&&vel y>(ifelse(var(10)=3,-5.3,ifelse(var(10)=2,-4,-2.7)))
value=1101


;========================<TATSUMAKI ZANKUU KYAKU>=============================
[Statedef 1200]
type=A
physics=N
movetype=A
anim=1200
ctrl=0
velset=0,0
poweradd=ifelse(command="qcbc",120,ifelse(command="qcbb"=2,80,40))*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1200, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="qcbc"),3,ifelse(command="qcbb",2,1))
[State 1200, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1200, snd]
type=playsnd
trigger1=anim=1200&&!animelemtime(1)
value=3,11
channel=0
[State 1200, snd]
type=playsnd
trigger1=anim=1200&&!animelemtime(1)
value=0,40
[State 1200, dust]
type=helper
trigger1=anim=1200&&!animelemtime(1)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1200, anim]
type=changeanim
trigger1=anim=1200&&!animtime
value=1201
[State 1200, vel]
type=velset
trigger1=anim=1200&&!animelemtime(1)
x=3.5
y=-2.9

[State 1200, vel]
type=velset
trigger1=anim=1201
x=3.5
y=0

[State 1200, spin]
type=playsnd
triggerall=anim=1201
trigger1=animelem=1||animelem=7||animelem=13||animelem=19
value=1,6

[State 1200, anim]
type=changeanim
trigger1=anim=1201&&ifelse(var(10)=3,!animtime,ifelse(var(10)=2,animelemtime(18)>=0,animelemtime(6)>=0))
value=1205
persistent=0
[State 1200, statetype]
type=statetypeset
trigger1=anim=1200&&animelemtime(1)>1
trigger2=anim=1205&&animelemtime(1)>1
statetype=A
physics=A
[State 1200, statetype]
type=statetypeset
trigger1=anim=1201
statetype=A
physics=N

[State 1200, hit]
type=hitdef
trigger1=anim=1200&&animelemtime(2)=-1
trigger2=anim=1201&&(animelem=2||animelem=8||animelem=14||animelem=20)
attr=S,SA
damage=43,5
animtype=Hard
guardflag=MA
hitflag=MAF
priority=6,Hit
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((anim=1200),-62,-69)
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=1
ground.velocity=-2.5,-8
air.type=Low
air.velocity=-2.5,-6.5
getpower=86*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1

[State 1200, hitb]
type=hitdef
trigger1=anim=1201&&(animelem=5||animelem=11||animelem=17||animelem=23)
attr=S,SA
damage=43,5
animtype=Hard
guardflag=MA
hitflag=MAF
priority=6,Hit
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=-1
ground.velocity=2.5,-8
air.type=Low
air.velocity=2.5,-6.5
getpower=86*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1


;========================<KUUCHUU TATSUMAKI ZANKUU KYAKU>=============================
[Statedef 1250]
type=A
physics=A
movetype=A
anim=1250
ctrl=0
velset=(vel x)+ifelse(vel x>=0,1,-1),(vel y)-1
poweradd=ifelse(command="qcbc",120,ifelse(command="qcbb"=2,80,40))*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1250, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="qcbc"),3,ifelse(command="qcbb",2,1))
[State 1250, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1250, slow]
type=veladd
trigger1=1
y=-const(movement.yaccel)*.33

[State 1250, snd]
type=playsnd
trigger1=!animelemtime(1)
value=3,11
channel=0

[State 1250, spin]
type=playsnd
trigger1=animelem=4||animelem=10||animelem=16||animelem=22
value=1,6

[State 1250, hit]
type=hitdef
trigger1=animelem=5||animelem=11||animelem=17||animelem=23
attr=A,SA
damage=43,5
animtype=Hard
guardflag=HA
hitflag=MAF
priority=6,Hit
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-69
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=1
ground.velocity=-2,-7
air.type=Low
air.velocity=-2,-6
getpower=86*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1

[State 1250, hitb]
type=hitdef
trigger1=animelem=8||animelem=14||animelem=20||animelem=26
attr=A,SA
damage=43,5
animtype=Hard
guardflag=HA
hitflag=MAF
priority=6,Hit
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=-1
ground.velocity=2,-7
air.type=Low
air.velocity=2,-6
getpower=86*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1


;========================<HYAKKI SHU>=============================
[Statedef 1300]
type=A
physics=N
movetype=A
anim=1300
ctrl=0
velset=0,0
sprpriority=1

[State 1300, grav]
type=gravity
trigger1=animelemtime(1)>1
[State 1300, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="dfc",3,ifelse(command="dfb",2,1))
[State 1300, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1&&!var(10)
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1300, snd]
type=playsnd
trigger1=!time
value=0,40
[State 1300, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
[State 1300, dust]
type=helper
trigger1=!time
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1300, vel]
type=velset
trigger1=animelem=1
x=ifelse(var(10)=3,6,ifelse(var(10)=2,4,2))
y=-9

[State 1300, goushou]
type=changestate
trigger1=vel y>-3&&(command="x"||command="y"||command="z")
value=1301

[State 1300, goujin]
type=changestate
trigger1=vel y>-3&&(command="a"||command="b")
value=1302

[State 1300, goudan]
type=changestate
trigger1=vel y>-3&&(command="c")
value=1303

[State 1300, end]
type=changestate
trigger1=vel y>0&&pos y>=-30
value=1305


;===========<HYAKKI GOU SHOU>==========
[Statedef 1301]
type=A
movetype=A
physics=A
juggle=5
anim=1301
poweradd=45*!var(20)
sprpriority=1
ctrl=0
[State 1301, snd]
type=playsnd
trigger1=animelem=4
value=1,3
[State 1301, snd]
type=playsnd
trigger1=animelem=4
value=3,8
channel=0
[State 1301, hitgrabp]
type=hitdef
trigger1=!time&&(command="holdfwd"||command="holdback"||command="holdup"||command="holddown")
trigger1=var(11):=-1
attr=A,ST 
hitflag=M-
priority=1, Miss
sparkno=-1
sprpriority=1
p1facing=1
p2facing=1
p1stateno=1320
p2stateno=1325
guard.dist=0
fall=1
ID=1320

[State 1301, hit]
type=hitdef
trigger1=animelem=5
attr=A,SA
damage=90,5 
animtype=Hard
guardflag=HA
hitflag=MAF
priority=6,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-54
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=24
ground.velocity=-5,5
air.type=Low
air.velocity=-7,7
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1


;===========<HYAKKI GOU JIN>==========
[Statedef 1302]
type=A
physics=N
movetype=A
anim=1302
velset=.3*vel x,.3*vel y
ctrl=0
poweradd=40*!var(20)
sprpriority=1

[State 1302, snd]
type=playsnd
trigger1=animelem=3
value=1,6
[State 1302, snd]
type=playsnd
trigger1=animelem=3
value=3,9
channel=0

[State 1302, vel]
type=velset
trigger1=animelemtime(4)>0
x=9
y=9

[State 1302, hitgrabk]
type=hitdef
trigger1=!time&&(command="holdfwd"||command="holdback"||command="holdup"||command="holddown")
trigger1=var(11):=-1
attr=A,ST 
hitflag=MA-
priority=1, Miss
sparkno=-1
sprpriority=1
p1facing=-1
p2facing=1
p1stateno=1330
p2stateno=1335
guard.dist=0
fall=1
ID=1330

[State 1302, hit]
type=hitdef
trigger1=animelem=4
attr=A,NA
damage=80,5
animtype=Hard
guardflag=HA
hitflag=MAFD
priority=6,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-7
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=24
ground.velocity=-4
air.type=Low
air.velocity=-5,6
down.hittime=32
down.velocity=0,0
getpower=180*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3
air.fall=1
fall.recover=1

[State 1302, end]
type=changestate
trigger1=pos y>=0
value=52


;===========<HYAKKI GOU DAN>==========
[Statedef 1303]
type=A
movetype=A
physics=N
juggle=5
anim=1303
poweradd=60*!var(20)
sprpriority=1
ctrl=0

[State 1303, grav]
type=gravity
trigger1=1

[State 1303, snd]
type=playsnd
trigger1=animelem=3
value=1,3
[State 1303, snd]
type=playsnd
trigger1=animelem=3
value=3,8
channel=0

[State 1303, anim]
type=changeanim
triggerall=animelemtime(3)>2&&animelemtime(4)<0
trigger1=p2bodydist x<35
trigger2=pos y>=-25
value=1303
elem=4
persistent=0

[State 1303, hitgrabk]
type=hitdef
trigger1=!time&&(command="holdfwd"||command="holdback"||command="holdup"||command="holddown")
trigger1=var(11):=-1
attr=A,ST 
hitflag=MA-
priority=6, Miss
sparkno=-1
sprpriority=1
p1facing=-1
p2facing=1
p1stateno=1330
p2stateno=1335
guard.dist=0
fall=1
ID=1330

[State 1303, hit]
type=hitdef
trigger1=animelem=4
attr=A,SA
damage=75,5  
animtype=Hard
guardflag=HA
hitflag=MAF
priority=6,Hit
pausetime=6/((var(20)>0)+1),4/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-56
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-vel x,10
air.type=Low
air.velocity=-vel x,8
fall.yvelocity=0
givepower=200
envshake.time=12
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 1303, end]
type=changestate
trigger1=pos y>=0&&vel y>0
value=1304

[Statedef 1304]
type=C
movetype=A
anim=1304
physics=C
velset=0,0
ctrl=0
sprpriority=1

[State 1304, pos]
type=posset
trigger1=1
y=0
[State 1304, snd]
type=playsnd
trigger1=!time
value=5,5
ignorehitpause=1
[State 1304, dust]
type=explod
trigger1=!time
anim=7103
ID=7103
sprpriority=-2
postype=p1
pos=-22,0
vel=0,0
removetime=-2
ownpal=1
ignorehitpause=1
[State 1304, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=40,0
vel=0,0
removetime=-2
ownpal=1
ignorehitpause=1

[State 1304, hit]
type=hitdef
trigger1=animelem=1
attr=C,SA
damage=50,5
animtype=Hard
guardflag=M
hitflag=FD
priority=6,Hit
pausetime=30/((var(20)>0)+1),30/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-4
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-3,5
air.type=Low
air.velocity=-7,7
down.velocity=0,0
down.bounce=0
getpower=100*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=6
fall=1
fall.recover=0

[State 1304, shake]
type=envshake
trigger1=!time
time=12
freq=60
ampl=4
[State 1304, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<HYAKKI GOU ZAN>==========
[Statedef 1305]
type=A
movetype=A
physics=N
juggle=5
anim=1305
poweradd=40*!var(20)
sprpriority=1
ctrl=0
[State 1305, width]
type=width
trigger1=animelemtime(3)>=0&&animelemtime(6)<0
value=30
[State 1305, grav]
type=gravity
trigger1=animelemtime(3)>=0
[State 1305, anim]
type=changeanim
trigger1=animelemtime(2)<0&&pos y>=-5
value=1305
elem=2
persistent=0
[State 1305, sts]
type=statetypeset
trigger1=animelemtime(2)>=0
statetype=S
physics=S
[State 1305, pos]
type=velset
trigger1=animelemtime(2)>=0
y=0
[State 1305, pos]
type=posset
trigger1=animelemtime(2)>=0
y=0

[State 1305, dust]
type=explod
trigger1=animelem=2
anim=6050
ID=6050
sprpriority=-2
postype=p1
pos=20,0
vel=0,0
removetime=-2
ownpal=1
scale=.66,.66
persistent=0
[State 1305, snd]
type=playsnd
trigger1=animelem=2
value=0,53

[State 1305, snd]
type=playsnd
trigger1=animelem=3
value=1,6
[State 1305, snd]
type=playsnd
trigger1=animelem=3
value=3,0
channel=0

[State 1305, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA
damage=80,5
animtype=Hard
guardflag=L
hitflag=MAF
priority=6,Hit
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-18
hitsound=s2,6
guardsound=s2,0
ground.type=Trip
ground.slidetime=12
ground.hittime=16
ground.velocity=-4,-3
air.type=Low
air.velocity=-4,-3
getpower=160*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1

[State 1305, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<HYAKKI GOUSAI>=============================
;---PLAYER---
[Statedef 1320]
type=A
physics=N
movetype=A
anim=1320
ctrl=0
velset=0,0
juggle=10
[State 1320, assert]
type=assertspecial
trigger1=1
flag=noautoturn

[State 1320, grabsnd]
type=playsnd
trigger1=!time
value=0,800
[State 1320, snd]
type=playsnd
trigger1=!time
value=4,10
channel=0

[State 1320, vel]
type=velset
trigger1=animelemtime(3)<0
x=0
y=0
[State 1320, vel]
type=velset
trigger1=!animelemtime(3)
x=2
y=-6
[State 1320, grav]
type=gravity
trigger1=animelemtime(3)>0
[State 1320, accel]
type=velmul
trigger1=animelemtime(3)>0&&vel y>1
y=1.2
[State 1320, width]
type=width
trigger1=1
edge=30,0

[State 1320, bind 1]
type=bindtotarget
trigger1=animelemtime(1)>=0&&animelemtime(3)<0
pos=target(1320),const(size.head.pos.x),35+(target(1320),const(size.head.pos.y))
ID=1320

[State 1320, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=-11,-50
[State 1320, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
pos=-28,-64
[State 1320, bind 5]
type=targetbind
trigger1=animelemtime(5)>=0&&animelemtime(6)<0
pos=4,-96
[State 1320, bind 6]
type=targetbind
trigger1=animelemtime(6)>=0&&animelemtime(7)<0
pos=14,-100
[State 1320, bind 7]
type=targetbind
trigger1=animelemtime(7)>=0
pos=12,-112

[State 1320, spr 1]
type=sprpriority
trigger1=animelemtime(1)>=0&&animelemtime(5)<0
value=1
[State 1320, spr 2]
type=sprpriority
trigger1=animelemtime(5)>=0
value=-1

[State 1320, end]
type=changestate
trigger1=animelemtime(3)>0&&vel y>0&&pos y>-15
value=1321

;---HIT FLOOR---
[Statedef 1321]
type=C
physics=C
movetype=A
anim=1321
ctrl=0
velset=0,0
sprpriority=-1
[State 1321, pos]
type=posadd
trigger1=!time
x=13
[State 1321, assert]
type=assertspecial
trigger1=1
flag=noautoturn
[State 1321, throw]
type=targetstate
trigger1=!time
value=1326
[State 1321, pos]
type=posset
trigger1=1
y=0

[State 1321, snd]
type=playsnd
trigger1=!time
value=0,53
[State 1321, dust]
type=explod
trigger1=!time
anim=6050
ID=6050
sprpriority=-2
postype=p1
pos=2,0
vel=0,0
removetime=-2
ownpal=1
scale=.75,.75

[State 1321, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=12,-102
[State 1321, bind 2]
type=targetbind
trigger1=animelem=2
pos=15,-45

[State 1321, hurt]
type=targetlifeadd
trigger1=!animelemtime(2)
value=-ceil(120*fvar(12))
[State 1321, hurt]
type=targetpoweradd
trigger1=!animelemtime(2)
value=ceil(120*fvar(12))*.6
[State 1321, hurt]
type=poweradd
trigger1=!animelemtime(2)
value=240*!var(20)
[State 1321, snd]
type=playsnd
trigger1=!animelemtime(2)
value=2,3
[State 1321, snd]
type=playsnd
trigger1=!time
value=3,7
channel=0
[State 1321, sparks]
type=explod
trigger1=!animelemtime(2)
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=17,-30
removetime=-2
ownpal=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1321, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1

;---TARGET---
[Statedef 1325]
type=A
physics=N
movetype=H
ctrl=0
sprpriority=0
[State 1325, anim]
type=changeanim2
trigger1=!time
value=1325
[State 1325, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0


;---TARGET HIT FLOOR---
[Statedef 1326]
type=A
physics=N
movetype=H
ctrl=0
sprpriority=0
[State 1326, anim]
type=changeanim2
trigger1=!time
value=1326

[State 1326, vel]
type=velset
trigger1=!animelemtime(3)
x=-4
y=-5
[State 1326, grav]
type=gravity
trigger1=animelemtime(3)>0
[State 1326, end]
type=selfstate
trigger1=animelemtime(3)>0&&vel y>0&&pos y>=const(size.mid.pos.y)
value=5100
ctrl=1


;========================<HYAKKI GOU TSUI>=============================
;---PLAYER---
[Statedef 1330]
type=A
physics=N
movetype=A
anim=1330
ctrl=0
velset=0,0
juggle=10
sprpriority=1
[State 1330, assert]
type=assertspecial
trigger1=1
flag=noautoturn

[State 1330, grabsnd]
type=playsnd
trigger1=!time
value=0,800
[State 1330, snd]
type=playsnd
trigger1=animelem=4
value=3,6
channel=0
[State 815, spinsnd]
type=playsnd
trigger1=animelem=6||animelem=10||animelem=14
value=1,6

[State 1330, vel]
type=velset
trigger1=animelemtime(4)<0
x=0
y=0
[State 1330, vel]
type=velset
trigger1=!animelemtime(4)
x=-3.5
y=-12
[State 1330, grav]
type=gravity
trigger1=animelemtime(4)>0
[State 1330, accel]
type=velmul
trigger1=animelemtime(4)>0&&(vel y=[1,20])
y=1.1
[State 1330, accel]
type=velmul
trigger1=vel y>0
x=.95
[State 1330, width]
type=width
trigger1=1
edge=30,0

[State 1330, bind 1]
type=bindtotarget
trigger1=animelemtime(1)>=0&&animelemtime(3)<0
pos=(target(1330),const(size.mid.pos.x)),55+(target(1330),const(size.mid.pos.y))
;-23
ID=1330
[State 1330, bind 3]
type=bindtotarget
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=8+(target(1330),const(size.mid.pos.x)),55+(target(1330),const(size.mid.pos.y))
ID=1330
[State 1330, bind 4]
type=bindtotarget
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
pos=18+(target(1330),const(size.mid.pos.x)),55+(target(1330),const(size.mid.pos.y))
ID=1330

[State 1330, bind 5]
type=targetbind
trigger1=animelemtime(5)>=0&&animelemtime(6)<0
pos=12,-62
[State 1330, bind 6]
type=targetbind
trigger1=animelemtime(6)>=0&&animelemtime(7)<0
trigger2=animelemtime(10)>=0&&animelemtime(11)<0
trigger3=animelemtime(14)>=0&&animelemtime(15)<0
pos=2,-55
[State 1330, bind 7]
type=targetbind
trigger1=animelemtime(7)>=0&&animelemtime(8)<0
trigger2=animelemtime(11)>=0&&animelemtime(12)<0
trigger3=animelemtime(15)>=0
pos=-14,-36
[State 1330, bind 8]
type=targetbind
trigger1=animelemtime(8)>=0&&animelemtime(9)<0
trigger2=animelemtime(12)>=0&&animelemtime(13)<0
pos=9,0
[State 1330, bind 9]
type=targetbind
trigger1=animelemtime(9)>=0&&animelemtime(10)<0
trigger2=animelemtime(13)>=0&&animelemtime(14)<0
pos=20,-52

[State 1330, end]
type=changestate
trigger1=animelemtime(4)>0&&vel y>0&&pos y>-15
value=1331

;---HIT FLOOR---
[Statedef 1331]
type=C
physics=C
movetype=A
anim=1331
ctrl=0
velset=0,0
sprpriority=1
[State 1331, pos]
type=posadd
trigger1=!time
x=32
[State 1331, pos]
type=posset
trigger1=!time
y=0

[State 1331, assert]
type=assertspecial
trigger1=1
flag=noautoturn
[State 1331, throw]
type=targetstate
trigger1=!time
value=1336

[State 1331, hurt]
type=targetlifeadd
trigger1=!time
value=-ceil(140*fvar(12))
[State 1331, hurt]
type=targetpoweradd
trigger1=!time
value=ceil(140*fvar(12))*.6
[State 1331, hurt]
type=poweradd
trigger1=!time
value=280*!var(20)

[State 1331, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=-32,0

[State 1331, snd]
type=playsnd
trigger1=!time
value=3,7
channel=0

[State 1331, shake]
type=envshake
trigger1=!time
time=12
freq=60
ampl=4

[State 1331, snd]
type=playsnd
trigger1=!time
value=5,4
ignorehitpause=1

[State 1331, dust]
type=null;helper
trigger1=!time
helpertype=normal
stateno=6050
ID=6050
name="Red Dust"
postype=p1
pos=-24,0
ownpal=1

[State 1331, dust]
type=explod
trigger1=!time
anim=1338
ID=1338
sprpriority=-2
postype=p1
pos=-24,0
removetime=-2
scale=.75,.75
ownpal=1

[State 1331, vel]
type=velset
trigger1=!animelemtime(2)
x=3
y=-3
[State 1331, sts]
type=statetypeset
trigger1=animelemtime(2)>0
physics=A


;---TARGET---
[Statedef 1335]
type=A
physics=N
movetype=H
ctrl=0
sprpriority=0
[State 1335, anim]
type=changeanim2
trigger1=!time
value=1335
[State 1335, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0


;---TARGET HIT FLOOR---
[Statedef 1336]
type=A
physics=N
movetype=H
ctrl=0
sprpriority=0
[State 1336, anim]
type=changeanim2
trigger1=!time
value=1336

[State 1336, vel]
type=velset
trigger1=!animelemtime(2)
x=4
y=-5
[State 1336, grav]
type=gravity
trigger1=animelemtime(2)>0
[State 1336, end]
type=selfstate
trigger1=animelemtime(2)>0&&vel y>0&&pos y>=-10
value=5100
ctrl=1


;========================<ASHURA SENKUU>=============================
[Statedef 1400]
type=S
physics=N
movetype=I
anim=1400
velset=0,0
ctrl=0
sprpriority=-1

[State 1400, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="df2p",3,ifelse(command="df2k",2,ifelse(command="db2p",-3,-2)))

[State 1400, anim]
type=changeanim
trigger1=!time&&(prevstateno=195||prevstateno=1020||prevstateno=1500)
value=1400
elem=3

[State 1400, afterimage]
type=afterimage
trigger1=animelem=3&&!var(20)
time=2
timegap=1
framegap=6
length=ifelse((var(10)=3||var(10)=-3),24,18)
palbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
palcontrast=160,160,160
palpostbright=0,0,0
trans=add1

[State 1400, aura]
type=helper
trigger1=!animelemtime(3)
helpertype=normal
stateno=6000
ID=6000
postype=p1
ownpal=1
persistent=0

[State 1400, vel]
type=velset
trigger1=animelemtime(2)>0&&animelemtime(6)<0
x=ifelse(var(10)=3,-7,ifelse(var(10)=2,-4,ifelse(var(10)=-3,7,4)))*sin((time-2)/2)

[State 1400, vel]
type=velset
trigger1=animelem=6
x=ifelse(var(10)=3,14,ifelse(var(10)=2,9,ifelse(var(10)=-3,-14,-9)))
[State 1400, vel]
type=velmul
trigger1=animelemtime(6)>ifelse((var(10)=3||var(10)=-3),16,9)
x=.9

[State 1400, snd]
type=playsnd
trigger1=animelem=6
value=5,6
persistent=0

[State 1400, push]
type=playerpush
trigger1=animelemtime(3)>=0
value=0
[State 1400, nothitby]
type=nothitby
trigger1=animelemtime(3)>0&&animelemtime(6)<=ifelse((var(10)=3||var(10)=-3),35,20)
value=SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time=1
ignorehitpause=1
[State 1400, turn]
type=turn
trigger1=animelemtime(6)>0&&p2dist x<0

[State 1400, end]
type=changestate
trigger1=animelemtime(6)=ifelse((var(10)=3||var(10)=-3),40,25)
trigger2=animelemtime(6)>0&&vel x<0&&backedgebodydist<=const(size.ground.back)
trigger3=animelemtime(6)>0&&vel x>0&&frontedgebodydist<=const(size.ground.front)
value=0
ctrl=1


;========================<ZENPOU TENSHIN>=============================
[Statedef 1450]
type=S
physics=N
movetype=I
anim=1450
ctrl=0
velset=0,0
sprpriority=-1

[State 1450, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcbz",3,ifelse(command="qcby",2,1))
[State 1450, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,1,ifelse(random<666,2,3))

[State 1450, sts]
type=statetypeset
trigger1=anim=1450&&animelemtime(3)>=0
statetype=C
[State 1450, sts]
type=statetypeset
trigger1=anim=1451&&animelemtime(3)>=0
statetype=S
physics=S

[State 1450, vel]
type=velset
trigger1=anim=1450&&animelemtime(2)>=0
x=ifelse(animelemtime(4)>=0,5,6)

[State 1400, dust]
type=explod
trigger1=anim=1450&&animelem=2
anim=7100
ID=7100
sprpriority=3
postype=p1
pos=0,0
vel=-.33,0
removetime=-2
ownpal=1
scale=.66,.66
[State 1400, snd]
type=playsnd
trigger1=anim=1450&&animelem=2
value=0,105
persistent=0

[State 1450, dust]
type=explod
trigger1=anim=1450&&animelemtime(4)>=0&&!(animelemtime(4)%5)
anim=7103
ID=7103
sprpriority=3
postype=p1
vel=-1,0
removetime=-2
ownpal=1

[State 1450, push]
type=playerpush
trigger1=anim=1450
trigger2=anim=1451&&animelemtime(3)<0
value=0
[State 1450, nothitby]
type=nothitby
trigger1=anim=1450&&animelemtime(2)>=0
value=,AT
time=1
ignorehitpause=1

[State 1450, anim]
type=changeanim
trigger1=anim=1450
trigger1=ifelse(var(10)=3,!animtime,ifelse(var(10)=2,animelemtime(8)>=0,animelemtime(4)>=0))
value=1451

[State 1400, dust]
type=explod
trigger1=anim=1451&&animelem=3
anim=7102
ID=7102
sprpriority=-2
postype=p1
pos=25,0
vel=0,0
removetime=-2
ownpal=1
scale=.5,.5
[State 1400, snd]
type=playsnd
trigger1=anim=1451&&animelem=3
value=0,100
persistent=0

[State 1450, end]
type=changestate
trigger1=anim=1451&&!animtime
value=0
ctrl=1


;========================<TENMA SHURETTOU>=============================
;---POSE---
[Statedef 1500]
type=S
physics=S
movetype=I
anim=1500
ctrl=0
velset=0,0
poweradd=0
[State 1500, anim]
type=changeanim
trigger1=!time&&var(59)<=0&&command="2d2k"
trigger2=!time&&var(59)>=1&&p2statetype=C
value=1501
[State 1500, statetype]
type=statetypeset
trigger1=!time&&anim=1501
statetype=C
physics=C

[State 1500, reversal]
type=reversaldef
trigger1=!time&&anim=1500
reversal.attr=SA,AA
p1stateno=1505
pausetime=5,15
hitsound=s2,0
sparkno=s7001
sparkxy=-10,0
numhits=0
[State 1500, reversal]
type=reversaldef
trigger1=!time&&anim=1501
reversal.attr=C,AA
p1stateno=1505
pausetime=5,15
hitsound=s2,0
sparkno=s7001
sparkxy=-10,0
numhits=0

[State 1500, end]
type=changestate
trigger1=!animtime
value=ifelse(anim=1501,11,0)
ctrl=1


;---GOUHA KEN---
[Statedef 1505]
type=S
movetype=A
physics=S
juggle=5
anim=1505
velset=0,0
poweradd=50   
sprpriority=1
ctrl=0

[State 1505, width]
type=width
trigger1=animelemtime(11)<0
value=35,0

[State 1505, snd]
type=playsnd
trigger1=animelem=9
value=1,3
[State 1505, snd]
type=playsnd
trigger1=!time
value=4,13
channel=0

[State 1505, snd]
type=playsnd
trigger1=animelem=8
value=5,4
ignorehitpause=1
[State 1505, dust]
type=explod
trigger1=animelem=8
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=48,0
ownpal=1
ignorehitpause=1
[State 1505, dust]
type=explod
trigger1=animelem=8
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=48,0
scale=.75,.75
ownpal=1
ignorehitpause=1
[State 1505, shake]
type=envshake
trigger1=animelem=8
time=18
freq=60
ampl=4
ignorehitpause=1

[State 1505, hit]
type=hitdef
trigger1=animelem=10
attr=S,SA
damage=100,0
animtype=Back
guardflag=MA
hitflag=MAF
priority=6,Hit
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-74
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-8,-2
air.type=Low
air.velocity=-8,-2
getpower=200*!var(20)
envshake.time=18
envshake.freq=60
envshake.ampl=6
fall=1
fall.recover=0

[State 1505, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1