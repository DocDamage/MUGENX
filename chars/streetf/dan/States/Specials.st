; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<SPECIAL STATES>=========================================
;================================================================================================

;========================<GADOU KEN>=============================
[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=45*!var(20)
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
trigger1=animelemtime(3)>=0&&animelemtime(9)<0
value=floor(40*const(size.xscale))

[State 1000, Gadouken]
type=helper
trigger1=!animelemtime(4)
helpertype=normal
stateno=1005
ID=1005
name="Gadouken"
postype=p1
pos=floor(120*const(size.xscale)),floor(-126*const(size.yscale))
size.xscale=1
size.yscale=.5
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=!animelemtime(4)
value=4,19
channel=0
[State 1000, snd]
type=playsnd
trigger1=!animelemtime(4)
value=5,0

[State 1000, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<KOURYUU KEN>=============================
[Statedef 1100]
type=S
physics=S
movetype=A
anim=1100
ctrl=0
velset=0,0
poweradd=60*(prevstateno!=520)*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)   

[State 1100, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="dfz"||prevstateno=520),3,ifelse(command="dfy",2,1))
[State 1100, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse((random<500||prevstateno=520),3,ifelse(random<666,2,1))

[State 1100, kouryukenvar]
type=varset
trigger1=!time
var(30)=ifelse(random<50,1,0)
[State 1100, nothitby]
type=nothitby
trigger1=anim=1100&&animelemtime(3)<0&&prevstateno!=520
value=SCA,AP
time=1
ignorehitpause=1
[State 1100, nothitby]
type=nothitby
trigger1=anim=1100&&animelemtime(3)<0&&var(30)=1
value=SCA
time=1
ignorehitpause=1
[State 1100, blink]
type=palfx
trigger1=anim=1100&&animelemtime(3)<0&&var(30)=1
add=255,255,255
sinadd=-255,-255,-255,12
time=3
ignorehitpause=1

[State 1100, vel]
type=velset
trigger1=anim=1100&&!animelemtime(3)
x=ifelse(var(10)=3,12,ifelse(var(10)=2,9,6))
y=ifelse(var(10)=3,-11,ifelse(var(10)=2,-8.5,-6))
[State 1100, vel]
type=velmul
trigger1=1
x=.8
[State 1100, vel]
type=velmul
trigger1=vel y>0
x=0

[State 1100, snd]
type=playsnd
trigger1=anim=1100&&!animelemtime(3)
value=0,41
[State 1100, dust]
type=helper
trigger1=anim=1100&&!animelemtime(3)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1100, snd]
type=playsnd
trigger1=anim=1100&&!animelemtime(2)
value=4,8
channel=0
ignorehitpause=1
persistent=0
[State 1100, width]
type=width
trigger1=vel y<0
edge=20

[State 1100, hit]
type=hitdef
trigger1=(animelem=2)&&anim=1100
attr=S,SA
damage=95+var(10)*10,5
animtype=Back
guardflag=M  
hitflag=MAF
priority=7,Hit  
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-68
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-1.5-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-1.5-(var(10)/2),-6-var(10)
getpower=190*(prevstateno!=520)*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=var(10)=1
fall.animtype=Medium
[State 1100, hit2]
type=hitdef
trigger1=animelem=3&&anim=1100&&!movecontact
attr=A,SA
damage=47+var(10)*5,5
animtype=Back
guardflag=MA
hitflag=MAF
priority=5,Hit  
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-82
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-1.5-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-1.5-(var(10)/2),-6-var(10)
getpower=94*(prevstateno!=520)*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=var(10)=1

[State 1100, statetype]
type=statetypeset
trigger1=anim=1100&&animelemtime(3)>=0
statetype=A
physics=A
[State 1100, anim]
type=changeanim
trigger1=anim=1100&&animelemtime(3)>0&&vel y>-3
value=1101


;========================<DANKUU KYAKU>=============================
[Statedef 1200]
type=S
physics=S
movetype=A
anim=1200
ctrl=0
velset=0,0
poweradd=60*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1200, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcbc",3,ifelse(command="qcbb",2,1))
[State 1200, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))
[State 1200, anim]
type=changeanim
trigger1=!time
value=1199+var(10)

[State 1200, vel]
type=velset
trigger1=!animelemtime(3)
x=ifelse(var(10)=3,5,ifelse(var(10)=2,4,3))
y=ifelse(var(10)=3,-4,ifelse(var(10)=2,-5,-6))
[State 1200, statetype]
type=statetypeset
triggerall=animelemtime(2)>=0
trigger1=anim=1200&&animelemtime(5)<0
trigger2=anim=1201&&animelemtime(9)<0
trigger3=anim=1202&&animelemtime(13)<0
statetype=A
physics=N
[State 1200, grav]
type=veladd
triggerall=animelemtime(3)>=0
trigger1=anim=1200&&animelemtime(5)<0
trigger2=anim=1201&&animelemtime(9)<0
trigger3=anim=1202&&animelemtime(13)<0
y=ifelse(var(10)=3,.2,ifelse(var(10)=2,.3,.4))
[State 1200, statetype]
type=statetypeset
trigger1=anim=1200&&animelemtime(5)>=0
trigger2=anim=1201&&animelemtime(9)>=0
trigger3=anim=1202&&animelemtime(13)>=0
statetype=A
physics=A

[State 1200, snd]
type=playsnd
trigger1=!animelemtime(3)
value=0,40
[State 1200, dust]
type=helper
trigger1=!animelemtime(3)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1200, snd]
type=playsnd
trigger1=animelem=4||animelem=7
value=3,0
channel=0
ignorehitpause=1
[State 1200, snd]
type=playsnd
trigger1=animelem=11
value=3,2
channel=0
ignorehitpause=1
[State 1200, snd]
type=playsnd
trigger1=animelem=4
value=1,ifelse((anim=1200),6,5)
[State 1200, snd]
type=playsnd
trigger1=animelem=7
value=1,ifelse((anim=1201),6,5)
[State 1200, snd]
type=playsnd
trigger1=animelem=11
value=1,6

[State 1200, hit]
type=hitdef
trigger1=(anim=[1201,1202])&&animelem=4
trigger2=anim=1202&&animelem=7
attr=S,SA
damage=40,5
animtype=Hard       
guardflag=MA
hitflag=MAF
priority=5,Hit  
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=4),-65,-49)
hitsound=s2,6      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-10,0
air.type=Low
air.velocity=-4,-4
getpower=120*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
air.fall=1
fall.recover=0
forcestand=1

[State 1200, hit]
type=hitdef
trigger1=anim=1200&&animelem=4
trigger2=anim=1201&&animelem=7
trigger3=anim=1202&&animelem=11
attr=S,SA
damage=40,5
animtype=Back
guardflag=MA
hitflag=MAF
priority=5,Hit  
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=4),-65,ifelse((animelem=7),-49,-54))
hitsound=s2,6      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-5,-5
air.type=Low
air.velocity=-5,-5
getpower=120*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0

[State 1200, end]
type=changestate
trigger1=animelemtime(3)>0&&vel y>0&&pos y>=0
value=52


;========================<KUUCHUU DANKUU KYAKU>=============================
[Statedef 1250]
type=A
physics=N
movetype=A
anim=1200
ctrl=0
poweradd=60*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)   

[State 1250, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcbc",3,ifelse(command="qcbb",2,1))
[State 1250, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))
[State 1250, anim]
type=changeanim
trigger1=!time
value=1199+var(10)
elem=2

[State 1250, vel]
type=velset
trigger1=!time
x=ifelse(vel x,1.33*vel x,2)
y=vel y-5
[State 1250, grav]
type=veladd
trigger1=anim!=41
y=ifelse(var(10)=3,.25,ifelse(var(10)=2,.35,.45))

[State 1250, snd]
type=playsnd
trigger1=(anim=[1200,1202])&&(animelem=4||animelem=7)
value=3,0
channel=0
ignorehitpause=1
[State 1250, snd]
type=playsnd
trigger1=(anim=[1200,1202])&&animelem=11
value=3,2
channel=0
ignorehitpause=1
[State 1200, snd]
type=playsnd
trigger1=(anim=[1200,1202])&&animelem=4
value=1,ifelse((anim=1200),6,5)
[State 1200, snd]
type=playsnd
trigger1=(anim=[1200,1202])&&animelem=7
value=1,ifelse((anim=1201),6,5)
[State 1200, snd]
type=playsnd
trigger1=(anim=[1200,1202])&&animelem=11
value=1,6


[State 1250, hit]
type=hitdef
trigger1=(anim=[1201,1202])&&animelem=4
trigger1=var(11):=4&&var(12):=-10&&var(13):=-130
trigger2=anim=1202&&animelem=7
trigger2=var(11):=4&&var(12):=-10&&var(13):=-98
attr=A,SA
damage=40,5
animtype=Hard       
guardflag=HA
hitflag=MAF
priority=5,Hit  
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=4),-65,-49)
hitsound=s2,6      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-10,0
air.type=Low
air.velocity=-4,-4
getpower=120*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
air.fall=1
fall.recover=0

[State 1250, hit]
type=hitdef
trigger1=anim=1200&&animelem=4
trigger1=var(11):=4&&var(12):=-10&&var(13):=-130
trigger2=anim=1201&&animelem=7
trigger2=var(11):=4&&var(12):=-10&&var(13):=-98
trigger3=anim=1202&&animelem=11
trigger3=var(11):=4&&var(12):=-10&&var(13):=-108
attr=A,SA
damage=40,5
animtype=Back
guardflag=HA
hitflag=MAF
priority=5,Hit  
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=4),-65,ifelse((animelem=7),-49,-54))
hitsound=s2,6      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-5,-5
air.type=Low
air.velocity=-5,-5
getpower=120*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0

[State 1250, end]
type=changeanim
trigger1=anim=1200&&animelemtime(5)>=5
trigger2=anim=1201&&animelemtime(9)>=5
trigger3=anim=1202&&animelemtime(13)>=5
value=41
elem=6
[State 1250, statetype]
type=statetypeset
trigger1=anim=41
physics=A
[State 1250, end]
type=changestate
trigger1=vel y>0&&pos y>=0
value=52


;========================<PREMIUM SIGN>=============================
[Statedef 1300]
type=S
physics=S
movetype=A
anim=1300
ctrl=0
velset=0,0
poweradd=15*!var(20)
sprpriority=1

[State 1300, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcfc",3,ifelse(command="qcfb",2,1))
[State 1300, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,1,ifelse(random<666,2,3))
[State 1300, anim]
type=changeanim
trigger1=!time
value=1299+var(10)

[State 1300, width]
type=width
trigger1=anim=1300&&animelemtime(10)>=0&&animelemtime(13)<0
trigger2=anim=1301&&animelemtime(16)>=0&&animelemtime(19)<0
trigger3=anim=1302&&animelemtime(24)>=0&&animelemtime(27)<0
value=floor(40*const(size.xscale))

[State 1300, hit]
type=hitdef
trigger1=!time
attr=S,SA
damage=30,5
animtype=Medium
guardflag=MA
hitflag=MAF
priority=3,Hit  
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-85
hitsound=s2,2      
guardsound=s2,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-7,0
air.type=Low
air.velocity=-3,-3
getpower=60*!var(20)
envshake.time=16
envshake.ampl=2

[State 1300, autograph]
type=helper
trigger1=anim=1300&&animelem=11
trigger2=anim=1301&&animelem=17
trigger3=anim=1302&&animelem=25
helpertype=normal
stateno=1305
ID=1305
name="Autograph"
postype=p1
pos=floor(120*const(size.xscale)),floor(-132*const(size.yscale))
size.xscale=1
size.yscale=1
ownpal=1

[State 1300, snd]
type=playsnd
trigger1=(anim=[1300,1302])&&animelem=3
value=5,12
channel=0
[State 1300, snd]
type=playsnd
trigger1=anim=1300&&animelem=6
trigger2=anim=1301&&animelem=12
trigger3=anim=1302&&animelem=20
value=4,30
channel=0
[State 1300, snd]
type=playsnd
trigger1=anim=1300&&animelem=11
trigger2=anim=1301&&animelem=17
trigger3=anim=1302&&animelem=25
value=4,31
channel=0
[State 1300, snd]
type=playsnd
trigger1=anim=1300&&animelem=11
trigger2=anim=1301&&animelem=17
trigger3=anim=1302&&animelem=25
value=1,2

[State 1300, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<GADOU SHOUKOU KEN>=============================
[Statedef 1400]
type=S
physics=S
movetype=A
anim=1400
ctrl=0
velset=0,0
poweradd=60*!var(20)
sprpriority=1

[State 1400, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="fhcfz",3,ifelse(command="fhcfy",2,1))
[State 1400, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))
[State 1400, anim]
type=changeanim
trigger1=!time
value=1399+var(10)

[State 1400, width]
type=width
trigger1=animelemtime(5)>=0&&animelemtime(8)<0
value=floor(60*const(size.xscale))

[State 1400, GadouShoukouKen]
type=helper
trigger1=!animelemtime(6)
helpertype=normal
stateno=1405
ID=1405
name="Gadou Shoukou Ken"
postype=p1
pos=floor(140*const(size.xscale)),floor(-130*const(size.yscale))
size.xscale=1
size.yscale=1
ownpal=1

[State 1400, snd]
type=playsnd
trigger1=animelem=3
value=4,25
channel=0
[State 1400, snd]
type=playsnd
trigger1=!animelemtime(6)
value=4,26
channel=0
[State 1400, snd]
type=playsnd
trigger1=!animelemtime(6)
value=5,0

[State 1400, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<SAIKYOU-RYUU BOUGYO>=============================
;---STANDING---
[Statedef 1500]
type=S
physics=S
movetype=I
anim=1500
velset=0,0
ctrl=0
sprpriority=1
[State 1500, strengthvar]
type=varset
trigger1=var(10)!=2
var(10)=2
[State 1500, nhb]
type=nothitby
trigger1=animelemtime(3)<0
time=1
value=SCA
[State 1500, width]
type=width
trigger1=animelemtime(2)>=0&&animelemtime(4)<0
value=floor(88*const(size.xscale))
[State 1500, snd]
type=playsnd
trigger1=!time
value=3,5
channel=0
[State 1500, pusher]
type=helper
trigger1=!animelemtime(2)
helpertype=normal
stateno=1505
ID=1505
name="Pusher"
postype=p1
size.xscale=1
size.yscale=1
size.ground.back=20
size.ground.front=20
size.height=240
ownpal=1
[State 1500, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---CROUCHING---
[Statedef 1501]
type=C
physics=C
movetype=I
anim=1501
velset=0,0
ctrl=0
sprpriority=1
[State 1500, strengthvar]
type=varset
trigger1=var(10)!=2
var(10)=2
[State 1501, nhb]
type=nothitby
trigger1=animelemtime(3)<0
time=1
value=SCA
[State 1501, width]
type=width
trigger1=animelemtime(2)>=0&&animelemtime(4)<0
value=floor(88*const(size.xscale))
[State 1501, snd]
type=playsnd
trigger1=!time
value=3,5
channel=0
[State 1501, pusher]
type=helper
trigger1=!animelemtime(2)
helpertype=normal
stateno=1505
ID=1505
name="Pusher"
postype=p1
size.xscale=1
size.yscale=1
size.ground.back=20
size.ground.front=20
size.height=240
ownpal=1
[State 1501, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1

;---AERIAL---
[Statedef 1502]
type=A
physics=A
movetype=I
anim=1502
ctrl=0
sprpriority=1
[State 1500, strengthvar]
type=varset
trigger1=var(10)!=2
var(10)=2
[State 1502, nhb]
type=nothitby
trigger1=animelemtime(3)<0
time=1
value=SCA
[State 1502, width]
type=width
trigger1=animelemtime(2)>=0&&animelemtime(4)<0
value=floor(60*const(size.xscale))
[State 1502, stop]
type=posfreeze
trigger1=animelemtime(3)<0
value=1
[State 1502, snd]
type=playsnd
trigger1=!time
value=3,5
channel=0
[State 1502, pusher]
type=helper
trigger1=!animelemtime(2)
helpertype=normal
stateno=1505
ID=1505
name="Pusher"
postype=p1
pos=0,floor(-158*const(size.yscale))
size.xscale=1
size.yscale=1
size.ground.back=20
size.ground.front=20
size.height=240
ownpal=1


;========================<ZUKI>=============================
[Statedef 1600]
type=S
physics=S
movetype=A
anim=1600
ctrl=0
velset=0,0
poweradd=55*!var(20)
sprpriority=1
[State 1600, strengthvar]
type=varset
trigger1=var(10)!=3
var(10)=3

[State 1600, reversal]
type=reversaldef
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
reversal.attr=SA,AA
pausetime=8,8
hitsound=s2,0
sparkno=s7001
sparkxy=0,0
numhits=0
[State 1600, dist]
type=attackdist
trigger1=animelemtime(3)<0
value=0
[State 1600, dist]
type=sprpriority
trigger1=animelemtime(4)>=0
value=2

[State 1600, vel]
type=velset
trigger1=animelem=3
x=12
[State 1600, vel]
type=velset
trigger1=animelem=5
x=0

[State 1600, snd]
type=playsnd
trigger1=animelem=2
value=4,34
channel=0
[State 1600, snd]
type=playsnd
trigger1=animelem=3
value=4,35
channel=0

[State 1600, fx]
type=explod
trigger1=animelem=2
anim=7260
ID=1605
sprpriority=5
postype=p1
pos=ceil(-31*const(size.xscale)),ceil(-121*const(size.xscale))
removetime=20
removeongethit=1
[State 1600, fx]
type=modifyexplod
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
ID=1605
scale=1-(.05*animelemtime(2)),1-(.05*animelemtime(2))

[State 1600, snd]
type=playsnd
trigger1=animelem=4
value=5,6
[State 1600, dust]
type=explod
trigger1=animelem=4
anim=1604
sprpriority=3
postype=p1
pos=ceil(50*const(size.xscale))
ownpal=1
scale=.5,.5
[State 1600, shake]
type=envshake
trigger1=animelem=5
time=20
freq=60
ampl=6
[State 1600, snd]
type=playsnd
trigger1=animelem=4
value=1,3

[State 1600, hit]
type=hitdef
trigger1=animelem=5
attr=S,SA
damage=110,5
animtype=Diagup
guardflag=M  
hitflag=MAF
priority=7,Hit  
pausetime=18/((var(20)>0)+1),18/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-68
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=32
ground.hittime=32
ground.velocity=-8,-4
air.type=Low
air.velocity=-8,-4
getpower=220*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=6
fall=1
fall.recover=0
p1stateno=1601

[State 1600, anim]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---HURT---
[Statedef 1601]
type=S
physics=S
movetype=I
anim=1601
ctrl=0
velset=0,0
sprpriority=2
[State 1601, snd]
type=playsnd
trigger1=animelem=7
value=5000,5
channel=0
[State 1601, snd]
type=playsnd
trigger1=animelem=11
value=4,11
channel=0
[State 1601, snd]
type=playsnd
trigger1=!time
value=5,13
[State 1601, anim]
type=changestate
trigger1=!animtime
value=0
ctrl=1