; ________________________________
;|Sakura by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<SPECIAL STATES>=========================================
;================================================================================================

;========================<HADOU KEN>=============================
[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=40*!var(20)
sprpriority=1

[State 1000, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcfz",3,ifelse(command="qcfy",2,1))
[State 1000, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse((random<500||prevstateno=750),3,ifelse(random<666,2,1))

[State 1000, hadouvar]
type=varset
trigger1=animelemtime(4)<0
var(32)=1
[State 1000, hadouvar]
type=varadd
trigger1=animelemtime(2)>=0&&animelemtime(10)<0&&var(32)<3
trigger1=(var(10)=1&&command="x")||(var(10)=2&&command="y")||(var(10)=3&&command="z")
var(32)=1

[State 1000, anim]
type=changeanim
trigger1=animelemtime(2)>=0&&animelemtime(4)<0&&var(32)=2
value=1000
elem=4
[State 1000, anim]
type=changeanim
trigger1=animelemtime(4)>=0&&animelemtime(7)<0&&var(32)=3
value=1000
elem=7
[State 1000, anim]
type=changeanim
trigger1=animelemtime(4)>=0&&animelemtime(7)<0&&var(32)!=2
trigger2=animelemtime(7)>=0&&animelemtime(10)<0&&var(32)!=3
trigger3=var(59)>=1&&animelemtime(2)>=0&&animelemtime(10)<0&&p2movetype=A
value=1000
elem=10

[State 1000, width]
type=width
trigger1=animelemtime(10)>=0&&animelemtime(11)<0
trigger2=animelemtime(18)>=0&&animelemtime(19)<0
value=13
[State 1000, width]
type=width
trigger1=animelemtime(11)>=0&&animelemtime(18)<0
value=26

[State 1000, focus]
type=helper
trigger1=animelemtime(2)>=0&&animelemtime(11)<0&&!numhelper(1002)
helpertype=normal
stateno=1002
ID=1002
name="Hadouken Charge"
postype=p1
ownpal=1

[State 1000, Hadouken]
type=helper
trigger1=animelem=11
helpertype=normal
stateno=1005
ID=1005
name="Hadouken"
postype=p1
pos=86,-54
size.xscale=.5
size.yscale=ifelse(var(32)=3,1,ifelse(var(32)=2,.75,.4))
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=animelem=10
value=4,0
channel=0
[State 1000, snd]
type=playsnd
trigger1=animelem=11
value=5,6

[State 1000, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<TENGYOU HADOU KEN>=============================
[Statedef 1020]
type=S
physics=S
movetype=A
anim=1020
ctrl=0
velset=0,0
poweradd=45*!var(20)
sprpriority=1

[State 1020, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcbz",3,ifelse(command="qcby",2,1))
[State 1020, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1020, hadouvar]
type=varset
trigger1=animelemtime(4)<0
var(32)=1
[State 1020, hadouvar]
type=varadd
trigger1=animelemtime(2)>=0&&animelemtime(10)<0&&var(32)<3
trigger1=(var(10)=1&&command="x")||(var(10)=2&&command="y")||(var(10)=3&&command="z")
var(32)=1

[State 1020, anim]
type=changeanim
trigger1=animelemtime(2)>=0&&animelemtime(4)<0&&var(32)=2
value=1020
elem=4
[State 1020, anim]
type=changeanim
trigger1=animelemtime(4)>=0&&animelemtime(7)<0&&var(32)=3
value=1020
elem=7
[State 1020, anim]
type=changeanim
trigger1=animelemtime(4)>=0&&animelemtime(7)<0&&var(32)!=2
trigger2=animelemtime(7)>=0&&animelemtime(10)<0&&var(32)!=3
trigger3=var(59)>=1&&animelemtime(2)>=0&&animelemtime(10)<0&&p2movetype=A
value=1020
elem=10

[State 1020, width]
type=width
trigger1=animelemtime(10)>=0&&animelemtime(11)<0
trigger2=animelemtime(18)>=0&&animelemtime(19)<0
value=9
[State 1020, width]
type=width
trigger1=animelemtime(11)>=0&&animelemtime(18)<0
value=18

[State 1020, focus]
type=helper
trigger1=animelemtime(2)>=0&&animelemtime(11)<0&&!numhelper(1024)
helpertype=normal
stateno=1024
ID=1024
name="Hadouken Charge"
postype=p1
ownpal=1

[State 1020, Hadouken]
type=helper
trigger1=animelem=11
helpertype=normal
stateno=1005
ID=1025
name="Hadouken"
postype=p1
pos=58,-105
size.xscale=.5
size.yscale=ifelse(var(32)=3,1,ifelse(var(32)=2,.75,.4))
ownpal=1

[State 1020, snd]
type=playsnd
trigger1=animelem=10
value=4,0
channel=0
[State 1020, snd]
type=playsnd
trigger1=animelem=11
value=5,6

[State 1020, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<SHOU'OU KEN>=============================
[Statedef 1100]
type=S
physics=N
movetype=A
anim=1100
ctrl=0
velset=0,0
poweradd=60*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5) 

[State 1100, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="dfz"||prevstateno=750),3,ifelse(command="dfy",2,1))
[State 1100, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse((random<500||prevstateno=750),3,ifelse(random<666,2,1))
[State 1100, anim]
type=changeanim
trigger1=!time
value=1099+var(10)

[State 1100, vel]
type=velset
trigger1=(anim=[1100,1102])&&!animelemtime(2)
x=ifelse(var(10)=3,8,ifelse(var(10)=2,6,4))

[State 1100, snd]
type=playsnd
trigger1=(anim=[1100,1101])&&!animelemtime(6)
trigger2=anim=1102&&!animelemtime(8)
value=0,40
[State 1100, dust]
type=helper
trigger1=(anim=[1100,1101])&&!animelemtime(6)
trigger2=anim=1102&&!animelemtime(8)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1100, vel]
type=velset
trigger1=(anim=[1100,1101])&&!animelemtime(6)
trigger2=anim=1102&&!animelemtime(8)
x=ifelse(var(10)=3,4,ifelse(var(10)=2,3,2))
y=ifelse(var(10)=3,-8,ifelse(var(10)=2,-7,-6))
[State 1100, vel]
type=velmul
trigger1=(anim=[1100,1101])&&animelemtime(6)>0
trigger2=anim=1102&&animelemtime(8)>0
x=.95

[State 1100, snd]
type=playsnd
trigger1=(anim=[1100,1102])&&!animelemtime(2)
value=4,14
channel=0
ignorehitpause=1
persistent=0
[State 1100, width]
type=width
trigger1=vel y<0
edge=20

[State 1100, hitlow]
type=hitdef
trigger1=animelem=4&&(anim=1101||anim=1102)
trigger2=animelem=6&&anim=1102
attr=S,SA
damage=ifelse(var(10)=3,20,33),5
animtype=Hard
guardflag=M
hitflag=MAF
priority=7,Hit
pausetime=(10-var(10)*2),(10-var(10)*2)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=6),-61,-30)
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,0
air.type=Low
air.velocity=-2,.5
getpower=ifelse(var(10)=3,40,66)*(!var(20)*prevstateno!=750)
forcestand=1
envshake.time=16
envshake.freq=60
envshake.ampl=4

[State 1100, hithigh]
type=hitdef
trigger1=(animelem=5&&anim=1101)||(animelem=7&&anim=1102)
trigger2=animelem=5&&anim=1102
attr=S,SA
damage=ifelse(var(10)=3,20,33),5
animtype=Hard
guardflag=M
hitflag=MAF
priority=7,Hit
pausetime=(10-var(10)*2),(10-var(10)*2)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=7),-61,-30)
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,0
air.type=Low
air.velocity=-2,.5
getpower=ifelse(var(10)=3,40,66)*(!var(20)*prevstateno!=750)
forcestand=1
envshake.time=16
envshake.freq=60
envshake.ampl=4

[State 1100, hitlowfinal]
type=hitdef
trigger1=animelem=5&&anim=1100
attr=S,SA
damage=90,5
animtype=Diagup
guardflag=M
hitflag=MAF
priority=7,Hit
pausetime=(10-var(10)*2),(10-var(10)*2)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-72
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-1-var(10),-5-var(10)
air.type=Low
air.velocity=-1-var(10),-5-var(10)
getpower=180*(!var(20)*prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1

[State 1100, hitmidair]
type=hitdef
trigger1=(animelem=6&&anim=1100)&&!movecontact
trigger2=(animelem=6&&anim=1101)||(animelem=8&&anim=1102)
attr=S,SA
damage=35+var(10)*5,5
animtype=Diagup
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime=(10-var(10)*2),(10-var(10)*2)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-92
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-1-var(10),-5-var(10)
air.type=High
air.velocity=-1-var(10),-5-var(10)
getpower=(70+var(10)*10)*(!var(20)*prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=var(10)!=3

[State 1100, statetype]
type=statetypeset
trigger1=anim=1100&&animelemtime(6)>=0
trigger2=anim=1101&&animelemtime(6)>=0
trigger3=anim=1102&&animelemtime(8)>=0
statetype=A
physics=A
[State 1100, anim]
type=changeanim
trigger1=anim=1100&&animelemtime(6)>0&&vel y>-2
trigger2=anim=1101&&animelemtime(6)>0&&vel y>-3
trigger3=anim=1102&&animelemtime(8)>0&&vel y>-4
value=1103


;========================<SHUNPUU KYAKU>=============================
[Statedef 1200]
type=S
physics=S
movetype=A
anim=1200
ctrl=0
velset=0,0
poweradd=ifelse(command="qcbc",105,ifelse(command="qcbb"=2,70,35))*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5) 

[State 1200, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="qcbc"),3,ifelse(command="qcbb",2,1))
[State 1200, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1200, shunpuuvar]
type=varset
triggerall=(anim=[1201,1203])
trigger1=var(59)<=0&&(command="qcba"||command="qcbb"||command="qcbc")
trigger2=var(59)>=1&&random<100
var(30)=1
ignorehitpause=1
[State 1200, shunpuuvar]
type=varset
triggerall=(anim=[1201,1203])
trigger1=var(59)<=0&&command="qcb2k"
trigger2=var(59)>=1&&random<50
var(30)=2
ignorehitpause=1
[State 1200, shunpuuvar]
type=varset
trigger1=(anim!=[1201,1203])
trigger2=var(59)>=1&&(p2dist x<0||p2dist y<=-120)
var(30)=0

[State 1200, width]
type=width
trigger1=anim=[1201,1203]
edge=35,0

[State 1200, snd]
type=playsnd
trigger1=anim=1200&&animelem=5
value=4,15
channel=0
[State 1200, snd]
type=playsnd
trigger1=anim=1200&&!animtime
value=0,40
persistent=0
[State 1200, dust]
type=helper
trigger1=anim=1200&&!animtime
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
persistent=0

[State 1200, anim]
type=changeanim
trigger1=anim=1200&&!animtime
value=ifelse((var(10)=[1,3]),1200+var(10),1203)
[State 1200, vel]
type=velset
trigger1=(anim=[1201,1203])&&animelem=1
x=ifelse(var(10)=3,4,ifelse(var(10)=2,3.5,3))
y=ifelse(var(10)=3,-8,ifelse(var(10)=2,-6,-4))

[State 1200, statetype]
type=statetypeset
trigger1=(anim=[1201,1203])
statetype=A
physics=N
[State 1200, grav]
type=veladd
trigger1=(anim=[1201,1203])
y=.6

[State 1200, spin]
type=playsnd
trigger1=(anim=[1201,1203])
trigger1=animelem=2||animelem=6||animelem=10
value=1,5

[State 1200, hit]
type=hitdef
trigger1=(anim=[1201,1203])&&(animelem=3||animelem=7||animelem=11)&&(hitcount<var(10))
attr=S,SA 
damage=35,5
animtype=Hard
guardflag=MA
hitflag=MAF 
priority=5,Hit 
pausetime=14,14
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-44
hitsound=s2,6 
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-7,0
air.type=Low
air.velocity=-5,-5
getpower=70*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
air.fall=1
fall.recover=1
ID=1200
nochainID=1201

[State 1200, hit]
type=hitdef
trigger1=(anim=[1201,1203])&&(animelem=5||animelem=9)&&(hitcount<var(10))
attr=S,SA 
damage=35,5
animtype=Hard
guardflag=MA
hitflag=MAF 
priority=5,Hit 
pausetime=14,14
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-44
hitsound=s2,6 
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=7,0
air.type=Low
air.velocity=5,-5
getpower=70*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
air.fall=1
fall.recover=1
ID=1201
nochainID=1200

[State 1200, end]
type=changestate
trigger1=vel y>0&&pos y>=0
value=ifelse((var(30)=2&&power>=500&&!var(20)),1230,ifelse(var(30),1220,52))


;========================<SHUNPUU REN KYAKU>=============================
[Statedef 1220]
type=S
physics=S
movetype=A
anim=1220
ctrl=0
velset=0,0
poweradd=40
juggle=ifelse((p2movetype=H&&p2statetype=A),5,0)

[State 1220, strengthvar]
type=varset
trigger1=var(10)!=3
var(10)=3
[State 1220, shunpuuvar]
type=varset
trigger1=1
var(30)=0
[State 1220, width]
type=width
trigger1=animelemtime(2)>=0&&animelemtime(6)<0
value=25,0

[State 1220, snd]
type=playsnd
trigger1=time=1
value=0,52
[State 1220, dust]
type=explod
trigger1=!time
anim=7102
ID=7102
sprpriority=-2
postype=p1
pos=15,0
scale=.5,.5
ownpal=1
[State 1220, stop]
type=velset
trigger1=1
y=0
[State 1220, pos]
type=posset
trigger1=1
y=0

[State 1220, snd]
type=playsnd
trigger1=animelem=4
value=3,6
channel=0
[State 1220, snd]
type=playsnd
trigger1=animelem=4
value=1,6

[State 1220, hit]
type=hitdef
trigger1=animelem=4
attr=S,SA 
damage=40,5
animtype=Back
guardflag=MA
hitflag=MAF 
priority=5,Hit 
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-20,-57
hitsound=s2,6 
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-6,-3
air.type=Low
air.velocity=-6,-3
getpower=80*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 1220, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<KUUCHUU SHUNPUU KYAKU>=============================
[Statedef 1250]
type=A
physics=N
movetype=A
anim=1250
ctrl=0
velset=(vel x)+ifelse(vel x>=0,1,-1),(vel y)-1
poweradd=ifelse(command="qcbc",105,ifelse(command="qcbb"=2,70,35))*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1250, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="qcbc"),3,ifelse(command="qcbb",2,1))
[State 1250, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1250, shunpuuvar]
type=varset
triggerall=animelemtime(3)>=0
trigger1=var(59)<=0&&(command="qcba"||command="qcbb"||command="qcbc")
trigger2=var(59)>=1&&random<100
var(30)=1
ignorehitpause=1
[State 1250, shunpuuvar]
type=varset
triggerall=animelemtime(3)>=0
trigger1=var(59)<=0&&command="qcb2k"&&!var(20)
trigger2=var(59)>=1&&random<50
var(30)=2
ignorehitpause=1
[State 1250, shunpuuvar]
type=varset
trigger1=animelemtime(3)<0
trigger2=var(59)>=1&&(p2dist x<0||p2dist y<=-120)
var(30)=0

[State 1250, width]
type=width
trigger1=1
edge=35,0

[State 1250, snd]
type=playsnd
trigger1=animelem=1
value=3,5
channel=0

[State 1250, grav]
type=veladd
trigger1=animelemtime(11)<0
y=const(movement.yaccel)*.66
[State 1250, grav]
type=gravity
trigger1=animelemtime(11)>=0

[State 1250, spin]
type=playsnd
trigger1=animelem=3||animelem=7
value=1,5

[State 1250, hit]
type=hitdef
trigger1=(animelem=4||animelem=8)&&!movecontact
attr=A,SA 
damage=60,5
animtype=Hard
guardflag=MA
hitflag=MAF 
priority=5,Hit 
pausetime=14,14
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-44
hitsound=s2,6 
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-4.5,-3
air.type=Low
air.velocity=-4.5,-3
getpower=120*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1
ID=1250
nochainID=1251

[State 1250, hit]
type=hitdef
trigger1=animelem=6&&!movecontact
attr=A,SA 
damage=60,5
animtype=Hard
guardflag=MA
hitflag=MAF 
priority=5,Hit 
pausetime=14,14
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-44
hitsound=s2,6 
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=4.5,-3
air.type=Low
air.velocity=4.5,-3
getpower=120*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1
ID=1251
nochainID=1250

[State 1250, posfix]
type=posadd
trigger1=animelem=11
x=10
y=-5
[State 1250, statetype]
type=statetypeset
trigger1=animelemtime(11)>=0
movetype=I
[State 1250, end]
type=changestate
trigger1=vel y>0&&pos y>=0
value=ifelse(var(30)&&random<500,1252,ifelse(var(30)=2,1230,ifelse(var(30)=1,1220,52)))


;---TRIP---
[Statedef 1252]
type=S
physics=S
movetype=I
anim=1252
ctrl=0
velset=0,0
sprpriority=1
[State 1252, pos]
type=posset
trigger1=1
y=0

[State 1252, statetype]
type=statetypeset
trigger1=animelemtime(4)>=0&&animelemtime(7)<0
statetype=A
physics=S
[State 1252, statetype]
type=statetypeset
trigger1=animelemtime(7)>=0&&animelemtime(12)<0
statetype=L
physics=C
[State 1252, statetype]
type=statetypeset
trigger1=animelemtime(12)>=0&&animelemtime(15)<0
statetype=C
physics=C
[State 1252, statetype]
type=statetypeset
trigger1=animelemtime(15)>=0
statetype=S
physics=S

[State 1252, snd]
type=playsnd
trigger1=animelem=4
value=5000,1
channel=0
[State 1252, snd]
type=playsnd
trigger1=animelem=7
value=5,3
[State 1252, dust]
type=explod
trigger1=animelem=7
anim=7104
ID=7104
sprpriority=-4
postype=p1
pos=-20,0
scale=.5,.5
ownpal=1

[State 1252, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<SAKURA OTOSHI>=============================
[Statedef 1300]
type=U
physics=U
movetype=A
anim=40
ctrl=0
velset=vel x*(prevstateno=1305),vel y*(prevstateno=1305)
poweradd=120*!var(20)
[State 1300, anim]
type=changeanim
trigger1=!time&&prevstateno=1305
value=1300
elem=3

[State 1300, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="dfc"),3,ifelse(command="dfb",2,1))
[State 1300, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1300, otoshivar]
type=varset
trigger1=!time&&(prevstateno!=[1300,1305])
var(31)=0

[State 1300, vel]
type=velset
trigger1=anim=40&&!animtime
x=ifelse(var(10)=3,3,ifelse(var(10)=2,2.5,2))
y=ifelse(var(10)=3,-9,ifelse(var(10)=2,-7,-5))
[State 1300, snd]
type=playsnd
trigger1=anim=40&&!animtime
value=0,41
persistent=0
[State 1300, dust]
type=helper
trigger1=anim=40&&!animtime
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
persistent=0
[State 1300, anim]
type=changeanim
trigger1=anim=40&&!animtime
value=1300

[State 1300, statetype]
type=statetypeset
trigger1=anim=1300
statetype=A
physics=N
[State 1300, grav]
type=veladd
trigger1=anim=1300
y=.4

[State 1300, snd]
type=playsnd
trigger1=anim=1300&&animelem=1
value=4,5
channel=0

[State 1300, punch]
type=changestate
triggerall=anim=1300&&animelemtime(3)>0&&var(31)<3
trigger1=var(59)<=0&&(command="x"||command="y"||command="z")
trigger2=var(59)>=1&&(p2bodydist x=[0,75])&&(p2bodydist y=[-75,75])&&(p2statetype!=L)
trigger3=var(59)>=1&&vel y>=0&&(enemy,numproj)
value=1305
[State 1300, cancel]
type=changestate
triggerall=anim=1300&&animelemtime(3)>0&&var(31)<3
trigger1=var(59)<=0&&(command="a"||command="b"||command="c")
trigger2=var(59)>=1&&!var(31)&&random<50
value=1302

[State 1300, end]
type=changestate
trigger1=anim=1300&&vel y>0&&pos y>=0
value=ifelse(var(31),52,1301)


;---PUNCH---
[Statedef 1305]
type=A
movetype=A
physics=N
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)*(var(31)=1)
anim=1305
poweradd=0
sprpriority=1
ctrl=0

[State 1305, grav]
type=veladd
trigger1=1
y=.4
[State 1305, otoshivar]
type=varadd
trigger1=!time&&var(31)<3
var(31)=1

[State 1305, snd]
type=playsnd
trigger1=animelem=2
value=ifelse(var(31)<3,3,4),ifelse(var(31)=1,1,ifelse(var(31)=2,2,12))
channel=0
[State 1305, snd]
type=playsnd
trigger1=animelem=2
value=1,3

[State 1305, helper]
type=helper
trigger1=!time&&!numhelper(1306)
helpertype=normal
stateno=1306
ID=1306
name="Projectile Hitter"
postype=p1
[State 1305, nhb]
type=nothitby
trigger1=numhelper(1306)
trigger1=animelemtime(2)>=0&&animelemtime(4)<0
value=SCA,NP,SP,HP
time=1
ignorehitpause=1

[State 1305, hit]
type=hitdef
trigger1=animelem=2&&var(31)<3
attr=A,SA
damage=50,5 
animtype=Hard
guardflag=HA 
hitflag=MAF 
priority=5,Hit
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-64
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=22
ground.slidetime=22
ground.velocity=-3,-6.5
air.type=High
air.velocity=-3,-6.5
fall=1
fall.recover=0
getpower=100*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=4

[State 1305, hit]
type=hitdef
trigger1=animelem=2&&var(31)>=3
attr=A,SA
damage=40,5 
animtype=Hard
guardflag=HA 
hitflag=MAF 
priority=5,Hit
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-64
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=22
ground.slidetime=22
ground.velocity=-8,4
air.type=High
air.velocity=-8,4
fall=1
fall.recover=0
getpower=80*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=4

[State 1305, vel]
type=velset
trigger1=movehit
x=3
y=-7
persistent=0
[State 1305, vel]
type=velset
trigger1=numhelper(1306)
trigger1=helper(1306),stateno=1307
x=4
y=-8
persistent=0

[State 1305, hitsnd]
type=playsnd
trigger1=numhelper(1306)
trigger1=helper(1306),stateno=1307
value=2,3
persistent=0
[State 1305, sparks]
type=explod
trigger1=numhelper(1306)
trigger1=helper(1306),stateno=1307
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=p1
pos=45,-29
removetime=-2
ownpal=1
persistent=0
pausemovetime=100
supermovetime=100
persistent=0

[State 1305, punch]
type=changestate
trigger1=movehit&&animelemtime(5)>=0&&var(31)<3
trigger1=var(59)<=0&&(command="x"||command="y"||command="z")
value=1305

[State 1305, back]
type=changestate
triggerall=var(31)<3
trigger1=animelemtime(8)>=0&&movehit
trigger2=animelemtime(8)>=0&&numhelper(1306)
trigger2=helper(1306),stateno=1307
value=1300
[State 1305, end]
type=changestate
trigger1=vel y>0&&pos y>=0
value=52


;---LAND---
[Statedef 1301]
type=S
physics=S
ctrl=0
anim=1301
velset=ifelse(vel x<=0,3,1.5*vel x),0
[State 1301, snd]
type=playsnd
trigger1=time=1
value=4,11
channel=0
[State 1301, snd]
type=playsnd
trigger1=time=1
value=0,101
[State 1301, dust]
type=explod
trigger1=!time
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.5,.5
ownpal=1
[State 1301, dust]
type=explod
trigger1=!time
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=18,0
vel=2,0
removetime=-2
ownpal=1
[State 1301, stop]
type=velset
trigger1=1
y=0
[State 1301, pos]
type=posset
trigger1=1
y=0
[State 1301, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---CANCEL---
[Statedef 1302]
type=A
physics=A
ctrl=0
anim=1302
velset=0,0
[State 1302, snd]
type=playsnd
trigger1=time=1
value=3,7
channel=0


;========================<OUKA KYAKU>=============================
[Statedef 1400]
type=A
physics=A
movetype=A
anim=1400
ctrl=0
velset=0,0
poweradd=43*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1400, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="qcfc"),3,ifelse(command="qcfb",2,1))
[State 1400, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1400, width]
type=width
trigger1=1
edge=40,0

[State 1400, snd]
type=playsnd
trigger1=animelem=3
value=3,1
channel=0
[State 1400, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 1400, freeze]
type=velset
trigger1=animelemtime(3)<0
x=0
y=0
[State 1400, vel]
type=velset
trigger1=animelem=3
x=ifelse(var(10)=3,5,ifelse(var(10)=2,4,3))
y=ifelse(var(10)=3,5,ifelse(var(10)=2,4,3))

[State 1400, hit]
type=hitdef
trigger1=animelem=3
attr=A,SA 
damage=85,5
animtype=Hard
guardflag=MA
hitflag=MAFD
priority=5,Hit 
pausetime=12,14
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-16
hitsound=s2,6 
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-10,0
air.type=Low
air.velocity=-4,2
down.velocity=0,0
getpower=170*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
air.fall=1
fall.recovery=1


;========================<TAUNT>=============================
[Statedef 1470]
type=A
physics=A
movetype=A
anim=1470
ctrl=0
poweradd=90*!var(20)
sprpriority=1

[State 1470, strengthvar]
type=varset
trigger1=var(10)!=1
var(10)=1
[State 1470, vel]
type=velset
trigger1=animelemtime(5)<0
x=0
y=ifelse(pos y>=-20,0,.5)

[State 1470, Shoe]
type=helper
trigger1=animelem=2
helpertype=normal
stateno=1475
ID=1475
name="Shoe"
postype=p1
pos=78,-35
ownpal=1

[State 1470, snd]
type=playsnd
trigger1=animelem=2
value=4,ifelse(random<500,3,4)
channel=0
[State 1470, snd]
type=playsnd
trigger1=animelem=2
value=1,6
volume=-100