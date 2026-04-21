; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<COMMON STATES>==========================================
;================================================================================================

;==========<PARRY>==========
;---STANDING---
[Statedef 700]
type=S
physics=S
movetype=I
anim=700
velset=0,0
ctrl=0
sprpriority=2
poweradd=75

[State 700, pause]
type=pause
trigger1=!time
time=10
movetime=10
[State 700, nhb]
type=nothitby
trigger1=time<=10
time=1
value=SCA
[State 700, stop]
type=posfreeze
trigger1=time<=10
value=1

[State 700, blueflash]
type=palfx
trigger1=!time&&var(21)>=0
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 700, redflash]
type=palfx
trigger1=!time&&var(21)<0
add=255,0,0
sinadd=-255,0,0,60
time=15

[State 700, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
[State 700, snd]
type=playsnd
trigger1=!time
value=7,3

[State 700, spark]
type=explod
trigger1=animelem=2
anim=7200
ID=7200
sprpriority=5
postype=p1
pos=ceil(44*const(size.xscale)),ceil(-160*const(size.yscale))
pausemovetime=60
ownpal=1
scale=.5,.5

[State 700, asserts]
type=assertspecial
trigger1=1
flag=nowalk
flag2=nostandguard
flag3=nocrouchguard
[State 700, ctrl]
type=ctrlset
trigger1=time>10
value=1
[State 700, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---CROUCHING---
[Statedef 701]
type=C
physics=C
movetype=I
anim=701
velset=0,0
ctrl=0
sprpriority=2
poweradd=75

[State 701, pause]
type=pause
trigger1=!time
time=10
movetime=10
[State 701, nhb]
type=nothitby
trigger1=time<=10
time=1
value=SCA
[State 701, stop]
type=posfreeze
trigger1=time<=10
value=1

[State 701, blueflash]
type=palfx
trigger1=!time&&var(21)>=0
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 701, redflash]
type=palfx
trigger1=!time&&var(21)<0
add=255,0,0
sinadd=-255,0,0,60
time=15

[State 701, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
[State 701, snd]
type=playsnd
trigger1=!time
value=7,3

[State 701, spark]
type=explod
trigger1=animelem=2
anim=7200
ID=7200
sprpriority=5
postype=p1
pos=ceil(39*const(size.xscale)),ceil(-111*const(size.yscale))
pausemovetime=60
ownpal=1
scale=.5,.5

[State 701, asserts]
type=assertspecial
trigger1=1
flag=nowalk
flag2=nostandguard
flag3=nocrouchguard
[State 701, ctrl]
type=ctrlset
trigger1=time>10
value=1
[State 701, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;---AERIAL---
[Statedef 702]
type=A
physics=A
movetype=I
anim=702
ctrl=0
sprpriority=2
poweradd=80

[State 702, pause]
type=pause
trigger1=!time
time=10
movetime=10
[State 702, nhb]
type=nothitby
trigger1=time<=10
time=1
value=SCA
[State 702, sts]
type=statetypeset
trigger1=time<=10
physics=N
[State 702, stop]
type=posfreeze
trigger1=time<=10
value=1
[State 702, sts]
type=statetypeset
trigger1=time>10
physics=A

[State 702, blueflash]
type=palfx
trigger1=!time&&var(21)>=0
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 702, redflash]
type=palfx
trigger1=!time&&var(21)<0
add=255,0,0
sinadd=-255,0,0,60
time=15

[State 702, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
[State 702, snd]
type=playsnd
trigger1=!time
value=7,3

[State 702, spark]
type=explod
trigger1=animelem=2
anim=7200
ID=7200
sprpriority=5
postype=p1
pos=ceil(53*const(size.xscale)),ceil(-185*const(size.yscale))
pausemovetime=60
ownpal=1
scale=.5,.5

[State 702, asserts]
type=assertspecial
trigger1=1
flag=noairguard
[State 702, ctrl]
type=ctrlset
trigger1=time>10
value=1


;==========<DODGE>==========
[Statedef 710]
type=S
physics=S
movetype=I
anim=710
velset=0,0
ctrl=0
sprpriority=-1
[State 710, snd]
type=playsnd
trigger1=animelem=1
value=4,3
channel=0
[State 710, push]
type=playerpush
trigger1=1
value=0
[State 710, hb]
type=hitby
trigger1=animelemtime(10)<0
value=SCA,AT
time=1
[State 710, attack]
type=changestate
trigger1=var(59)<=0&&animelemtime(5)>=0
trigger1=command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
value=ifelse((command="x"||command="y"||command="z"),210,225)
[State 710, attack]
type=changestate
trigger1=var(59)>=1&&animelemtime(5)>=0&&(p2dist x=[0,60])&&p2movetype!=A
value=ifelse(random<500,210,225)
[State 710, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<FORWARD ROLL>==========
[Statedef 720]
type=C
physics=C
movetype=I
anim=720
velset=ifelse(prevstateno=100,vel x,0),0
ctrl=0
sprpriority=-1
[State 720, snd]
type=playsnd
trigger1=animelem=1
value=4,ifelse(random<500,1,17)
channel=0
[State 720, vel]
type=velset
trigger1=animelemtime(3)>=0&&animelemtime(10)<0
x=4
[State 720, push]
type=playerpush
trigger1=1
value=0
[State 720, hb]
type=hitby
trigger1=animelemtime(10)<0
value=SCA,AT
time=1
[State 720, end]
type=changestate
trigger1=!animtime
value=ifelse(command="holddown",11,12)
ctrl=1


;==========<BACKWARD ROLL>==========
[Statedef 725]
type=C
physics=C
movetype=I
anim=725
velset=0,0
ctrl=0
sprpriority=-1
[State 725, snd]
type=playsnd
trigger1=animelem=1
value=4,ifelse(random<500,1,17)
channel=0
[State 725, vel]
type=velset
trigger1=animelemtime(3)>=0
x=-4
[State 725, push]
type=playerpush
trigger1=1
value=0
[State 725, hb]
type=hitby
trigger1=animelemtime(9)<0
value=SCA,AT
time=1
[State 725, end]
type=changestate
trigger1=!animtime
value=ifelse(command="holddown",11,12)
ctrl=1


;==========<POWER CHARGE>==========
[Statedef 740]
type=S
physics=S
movetype=I
anim=740
ctrl=0
velset=0,0

[State 740, power]
type=poweradd
triggerall=anim=740&&animelemtime(2)>=0&&power<powermax
trigger1=command="holdb"&&command="holdy"
trigger2=var(59)>=1
value=ifelse(time>=220,28,ceil(time/8))*(power<powermax)

[State 740, snd]
type=playsnd
trigger1=!time
value=3,7
channel=0

[State 740, shake]
type=envshake
trigger1=anim=740&&animelemtime(2)>=0&&!(time%4)
time=4
fre=80
ampl=2
[State 740, flash]
type=palfx
trigger1=anim=740&&animelemtime(2)>=0&&!(time%12)
add=80,20,0
sinadd=80,20,0,12
time=12
[State 740, flash]
type=palfx
trigger1=anim=741
add=0,0,0
time=1
persistent=0

[State 740, fx]
type=helper
trigger1=anim=740&&animelemtime(2)>=0&&!numhelper(6115)
helpertype=normal
stateno=7240
ID=7240
name="Power Charge"
postype=p1
size.xscale=1
size.yscale=1
ownpal=1
persistent=0

[State 740, anim]
type=changeanim
triggerall=anim=740&&animelemtime(2)>=0
trigger1=var(59)<=0&&(command!="holdb"||command!="holdy")
trigger2=power>=powermax||roundstate!=2
trigger3=var(59)>=1&&p2movetype=A
value=741

[State 740, stopsnd]
type=stopsnd
trigger1=anim=741
channel=0
persistent=0
[State 740, end]
type=changestate
trigger1=anim=741&&!animtime
value=0
ctrl=1


;==========<ZERO COUNTER>==========
[Statedef 750]
type=S
physics=S
movetype=I
anim=750
ctrl=0
velset=0,0
sprpriority=2

[State 750, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="bdx"||command="bdy"||command="bdz"),1,2)
ignorehitpause=1
[State 750, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse((p2statetype=A),1,ifelse((p2statetype=C),2,ifelse(random<500,1,2)))
ignorehitpause=1

[State 750, snd]
type=playsnd
trigger1=!time
value=3,0
channel=0
[State 750, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7250
ID=7250
postype=p1
pos=ceil(45*const(size.xscale)),ceil(-160*const(size.yscale))
ownpal=1
persistent=0
supermovetime=999
[State 750, superpause]
type=superpause
trigger1=!time
time=20
movetime=20
anim=-1
sound=s7,1
poweradd=-1000
p2defmul=1
darken=0
[State 750, end]
type=changestate
trigger1=time>=20
value=ifelse(var(10)=1,1100,255)


;===================<ORIGINAL COMBO>===================
[Statedef 760]
type=U
physics=U
movetype=I
anim=760+(statetype=A)
ctrl=0
velset=ifelse((statetype=S),0,vel x),ifelse((statetype=S),0,vel y)
[State 760, stop]
type=posfreeze
trigger1=anim=761
value=1

[State 760, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7260
ID=7260
postype=p1
pos=ceil((-30+(anim=761)*2)*const(size.xscale)),ceil((-130-(anim=761)*28)*const(size.yscale))
ownpal=1
persistent=0
supermovetime=9999
[State 760, superchargepause]
type=superpause
trigger1=!time
time=30
anim=-1
sound=s7,2
darken=0
movetime=6

[State 760, var]
type=varset
trigger1=time=7
var(20)=300

[State 760, image]
type=afterimage
trigger1=time=7
time=2
timegap=1
framegap=4
length=13
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=64,128,192
palpostbright=0,0,0
trans=add1

[State 760, end]
type=changeanim
trigger1=anim=761&&!animtime
value=41
elem=6
[State 760, ctrl]
type=ctrlset
trigger1=anim=41
value=1
[State 760, end]
type=changestate
trigger1=anim=760&&!animtime
value=0
ctrl=1


;==========<WALKING>==========
[Statedef 20]
type=S
physics=S
sprpriority=0
[State 20, vel]
type=velset
trigger1=var(33)<=0
x=ifelse(command="holdfwd",const(velocity.walk.fwd.x),ifelse(command="holdback",const(velocity.walk.back.x),vel x))
[State 20, vel]
type=velset
trigger1=var(33)>0
x=ifelse(command="holdfwd",1.2*const(velocity.walk.fwd.x),ifelse(command="holdback",1.2*const(velocity.walk.back.x),vel x))
[State 20, anim]
type=changeanim
triggerall=vel x>0
trigger1=anim!=20&&anim!=5
trigger2=anim=5&&!animtime
value=20
[State 20, anim]
type=changeanim
triggerall=vel x<0
trigger1=anim!=21&&anim!=5
trigger2=anim=5&&!animtime
value=21


;===================<JUMPING>================
[Statedef 40]
type=S
physics=S
anim=40
ctrl=0
sprpriority=1
facep2=1

[State 40, var]
type=varset
trigger1=!time&&var(59)>=1
var(9)=ifelse((p2dist x>240||p2dist y>180||random<100),3,1)
[State 40, var]
type=varset
trigger1=var(59)>=1
sysvar(1)=ifelse((enemynear,movetype!=A||backedgebodydist<=10),1,ifelse((enemynear,movetype=A),-1,0))
[State 40, var]
type=varset
trigger1=!time&&var(59)<=0
var(9)=ifelse(command="superjump",3,1)
[State 40, var]
type=varset
trigger1=var(59)<=0
sysvar(1)=ifelse(!time,0,ifelse(command="holdfwd",1,ifelse(command="holdback",-1,sysvar(1))))
[State 40, var]
type=varset
trigger1=var(59)<=0&&var(9)!=3&&command!="holdup"
trigger2=var(59)>=1&&var(9)!=3&&random<100
var(9)=2

[State 40, dust]
type=helper
trigger1=!animtime
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
[State 40, vel]
type=velset
trigger1=!animtime&&var(9)!=3
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))*ifelse(var(33)<=0,1,1.25)
y=ifelse(var(9)=2,.75,1)*const(velocity.jump.y)*ifelse(var(33)<=0,1,1.1)
[State 40, vel]
type=velset
trigger1=!animtime&&var(9)=3
x=ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,1.33*const(velocity.jump.fwd.x),1.33*const(velocity.jump.back.x)))*ifelse(var(33)<=0,1,1.25)
y=1.15*const(velocity.jump.y)*ifelse(var(33)<=0,1,1.1)
[State 40, vel]
type=velset
trigger1=!animtime&&prevstateno=100&&sysvar(1)=1
trigger1=var(9):=3
x=const(velocity.runjump.fwd.x)
[State 40, end]
type=changestate
trigger1=!animtime
value=50
ctrl=1

[Statedef 50]
type=A
physics=A
[State 50, snd]
type=playsnd
trigger1=!time
value=0,ifelse(var(9)=3,41,40)
[State 50, anim]
type=changeanim
trigger1=var(9)!=2
value=ifelse(!(vel x), 41, ifelse((vel x)>0, 42, 43))
persistent=0
[State 50, anim]
type=changeanim
trigger1=var(9)=2
value=ifelse(!(vel x), 51, ifelse((vel x)>0, 52, 53))
elem=animelemno(0)
persistent=0

[Statedef 51]
type=A
physics=A
[State 51, null]
type=null
trigger1=1

[Statedef 52]
type=S
physics=S
ctrl=0
anim=ifelse(vel y>11,48,47)
facep2=var(33)
[State 52, vel]
type=velset
trigger1=1
x=0
y=0
[State 52, pos]
type=posset
trigger1=1
y=0
[State 52, nowalk]
type=assertspecial
trigger1=1
flag=nowalk
[State 52, anim48]
type=changeanim
trigger1=!time&&(prevstateno=105||prevstateno=1200)
value=48
[State 52, anim1102]
type=changeanim
trigger1=!time&&(prevstateno=1100||prevstateno=3100||prevstateno=3200)
value=1102
[State 52, snd]
type=playsnd
trigger1=time=1
value=0,52
[State 52, dust]
type=explod
trigger1=!time
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.5,.5
ownpal=1
[State 52, ctrl]
type=ctrlset
trigger1=time>=2&&prevstateno<800
trigger2=var(33)
value=1
[State 52, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;======================<RUN>===========================
[Statedef 100]
type=S
physics=S
anim=100
ctrl=1
sprpriority=1
[State 100, width]
type=width
trigger1=1
value=12
[State 100,as]
type=assertspecial
trigger1=1
flag=nowalk
flag2=noautoturn
[State 100, vel]
type=velset
trigger1=anim=100
x=const(velocity.run.fwd.x)
[State 100, steps]
type=playsnd
trigger1=anim=100&&(animelem=2||animelem=5)
value=0,100
[State 100, steps]
type=playsnd
trigger1=anim=101
value=0,101
persistent=0
[State 100, change]
type=changeanim
triggerall=time>=8&&anim=100
trigger1=var(59)<=0&&command!="holdfwd"
trigger2=var(59)>=1&&p2dist x<80
value=101
persistent=0
[State 100, ctrl]
type=ctrlset
trigger1=anim=101&&animelem=3
value=1
[State 100, end]
type=changestate
trigger1=anim=101&&!animtime
value=0
ctrl=1


;========================<BACK DASH>==========================
[Statedef 105]
type=S
movetype=I
physics=S
velset=0,0
anim=105
ctrl=0
sprpriority=1
[State 105, vel]
type=velset
trigger1=animelem=2
x=const(velocity.run.back.x)
y=const(velocity.run.back.y)
[State 105, sts]
type=statetypeset
trigger1=animelemtime(2)>=0
statetype=A
physics=A
[State 105, snd]
type=playsnd
trigger1=animelem=2
value=0,105
[State 105, dust]
type=explod
trigger1=animelem=2
anim=7100
ID=7100
sprpriority=3
postype=p1
pos=26,ceil(pos y)
removetime=-2
ownpal=1
scale=.66,.66
[State 105, end]
type=changestate
trigger1=vel y>0&&pos y>=-4
value=52


;==========<GUARD>==========
;---START---
[Statedef 120]
type=U
physics=U
[State 120, anim]
type=changeanim
trigger1=!time
value=120+(statetype=C)+(statetype=A)*2
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=S
physics=S
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=C
physics=C
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=A
physics=A
[State 120, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 120, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 120, end]
type=changestate
trigger1=!animtime
value=130+(statetype=C)+(statetype=A)*2
[State 120, stop]
type=changestate
trigger1=(var(59)<=0&&command!="holdback")
trigger2=!inguarddist
value=140


;---STAND GUARD (guarding)---
[Statedef 130]
type=S
physics=S
[State 130, anim]
type=changeanim
trigger1=anim!=130
value=130
[State 130, Hi to Lo]
type=changestate
trigger1=var(59)<=0&&command="holddown"
trigger2=var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype=C)
value=131
[State 130, Stop Guarding]
type=changestate
trigger1=(var(59)<=0&&command!="holdback")
trigger2=!inguarddist
value=140


;---CROUCH GUARD (guarding)---
[Statedef 131]
type=C
physics=C
[State 131, anim]
type=changeanim
trigger1=anim!=131
value=131
[State 131, Lo to Hi]
type=changestate
trigger1=var(59)<=0&&command!="holddown"
trigger2=var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
value=130
[State 131, Stop Guarding]
type=changestate
trigger1=(var(59)<=0&&command!="holdback")
trigger2=!inguarddist
value=140


;---AIR GUARD (guarding)---
[Statedef 132]
type=A
physics=N
[State 132, anim]
type=changeanim
trigger1=anim!=132
value=132
[State 132, grav]
type=veladd
trigger1=1
y=const(movement.yaccel)
[State 132, var]
type=varset
trigger1=1
sysvar(0)=(pos y>=0)&&(vel y>0)
[State 132, vel]
type=velset
trigger1=sysvar(0)
y=0
[State 132, pos]
type=posset
trigger1=sysvar(0)
y=0
[State 132, end]
type=changestate
trigger1=sysvar(0)&&inguarddist
trigger1=(var(59)<=0&&command="holdback")||var(59)>=1
value=130
[State 132, end]
type=changestate
trigger1=sysvar(0)
value=52
[State 132, stop guarding]
type=changestate
trigger1=(var(59)<=0&&command!="holdback")
trigger2=!inguarddist
value=140

;---GUARD (end)---
[Statedef 140]
type=U
physics=U
ctrl=1
[State 140, anim]
type=changeanim
trigger1=!time
value=140+(statetype=C)+(statetype=A)*2
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=S
physics=S
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=C
physics=C
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=A
physics=A
[State 140, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 140, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 140, 5]
type=changestate
trigger1=!animtime
value=(statetype=C)*11+(statetype=A)*51

;---SGUARDHIT (shaking)---
[Statedef 150]
type=S
movetype=H
physics=N
velset=0,0
[State 150, anim]
type=changeanim
trigger1=1
value=150
[State 150, end]
type=changestate
trigger1=hitshakeover
value=151+2*((var(59)<=0&&command="holddown")||(var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype=C)))
[State 150, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 150, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S

;---SGUARDHIT2 (knocked back)---
[Statedef 151]
type=S
movetype=H
physics=S
anim=150
[State 151, vel]
type=hitvelset
trigger1=!time
x=1
[State 151, vel]
type=velset
trigger1=time=gethitvar(slidetime)
trigger2=hitover
x=0
[State 151, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 151, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 151, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 151, end]
type=changestate
trigger1=hitover
value=130
ctrl=1

;---CGUARDHIT (shaking)---
[Statedef 152]
type=C
movetype=H
physics=N
velset=0,0
[State 152, anim]
type=changeanim
trigger1=1
value=151
[State 152, end]
type=changestate
trigger1=hitshakeover
value=151+2*((var(59)<=0&&command="holddown")||(var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype=C)))
[State 152, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 152, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S

;---CGUARDHIT2 (knocked back)---
[Statedef 153]
type=C
movetype=H
physics=C
anim=151
[State 153, vel]
type=hitvelset
trigger1=!time
x=1
[State 153, vel]
type=velset
trigger1=time=gethitvar(slidetime)
trigger2=hitover
x=0
[State 153, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 153, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 153, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 153, end]
type=changestate
trigger1=hitover
value=131
ctrl=1

;---AGUARDHIT (shaking)---
[Statedef 154]
type=A
movetype=H
physics=N
velset=0,0
[State 154, anim]
type=changeanim
trigger1=1
value=152
[State 154, end]
type=changestate
trigger1=hitshakeover
value=155

;---AGUARDHIT2 (knocked away)---
[Statedef 155]
type=A
movetype=H
physics=N
anim=152
[State 155, vel]
type=hitvelset
trigger1=!time
x=1
y=1
[State 155, vel]
type=veladd
trigger1=1
y=const(movement.yaccel)
[State 155, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 155, var]
type=varset
trigger1=1
sysvar(0)=(pos y>=0)&&(vel y>0)
[State 155, vel]
type=velset
trigger1=sysvar(0)
y=0
[State 155, pos]
type=posset
trigger1=sysvar(0)
y=0
[State 155, end]
type=changestate
trigger1=sysvar(0)&&inguarddist
trigger1=(var(59)<=0&&command="holdback")||var(59)>=1
value=130
[State 155, end]
type=changestate
trigger1=sysvar(0)
value=52


;==========<CHEAP K.O.>==========
[Statedef 5130]
type=S
movetype=H
physics=S
anim=5130
[State 5130, nhb]
type=nothitby
trigger1=!alive
value=SCA
[State 5130, pos]
type=posset
trigger1=1
y=0
[State 5130, end]
type=changestate
trigger1=!animtime
value=5131

[Statedef 5131]
type=A
movetype=H
physics=N
anim=5131
[State 5131, nhb]
type=nothitby
trigger1=!alive
value=SCA
[State 5131, pos]
type=posset
trigger1=1
y=0
[State 5131, posfix]
type=posadd
trigger1=!time
x=-30
[State 5131, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
statetype=L
physics=C
[State 5131, snd]
type=playsnd
trigger1=animelem=4
value=0,52
[State 5131, dust]
type=explod
trigger1=animelem=4
anim=7102
ID=7102
sprpriority=-5
postype=p1
pos=16,0
scale=.75,.75
ownpal=1
[State 5131, end]
type=changestate
trigger1=!animtime
value=ifelse(alive,5110,5150)


;==========<LOSE (Time over)>==========
[Statedef 170]
type=S
ctrl=0
anim=170
velset=0,0
[State 170, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
[State 170, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
facing=1
[State 170, bound]
type=screenbound
trigger1=1
value=0
movecamera=0,0
[State 170, snd]
type=playsnd
trigger1=!time
value=7000,5
channel=0
[State 170, vel]
type=velset
trigger1=animelemtime(6)>=0
x=-2
[State 170, dust]
type=explod
trigger1=animelemtime(6)>=0&&!(time%5)
anim=7103
ID=7103
sprpriority=3
postype=p1
vel=1,0
removetime=-2
ownpal=1


;==========<DRAWGAME (Time over)>==========
[Statedef 175]
type=S
ctrl=0
velset=0,0
[State 175, switch]
type=changestate
trigger1=!time&&!selfanimexist(175)
value=170
[State 175, anim]
type=changeanim
trigger1=!time
value=175
[State 175, nhb]
type=nothitby
trigger1=1
value=SCA
time=1


;==========<INITIALIZE>==========
[Statedef 5900]
type=S
[State 5900, varreset]
type=varrangeset
trigger1=!roundsexisted
value=0
[State 5900, varreset]
type=varrangeset
trigger1=!roundsexisted
fvalue=0

[State 5900, turnsintro]
type=changestate
trigger1=!time&&teammode=turns
trigger1=!roundsexisted&&roundno>=2
value=193
[State 5900, end]
type=changestate
trigger1=!time
value=ifelse(roundno=1,190,0)


;==========<PREINTRO>==========
[Statedef 190]
type=S
ctrl=0
velset=0,0

[State 190, oyaji!!!]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,name="Oyaji"&&enemy,authorname="Mr.Chainsaw & Phantom.of.the.Server"
trigger2=enemy,name="Sagat"
value=194
[State 190, vsEvilDan];Evil Dan by ilcane87
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,name="Evil Dan"&&enemy,authorname="ilcane87"
value=196
[State 190, vs CvS Yuri]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Warusaki3"&&enemy,name="cvsyuri"
value=198
[State 190, intro]
type=changestate
trigger1=(command="holdfwd"&&command="holdback")||random<10
value=350
[State 190, intro]
type=changestate
trigger1=1
value=ifelse(random<333,191,ifelse(random<500,193,197))


;==========<INTRO 1>==========
[Statedef 191]
type=S
physics=N
anim=191
[State 191, intro]
type=assertspecial
trigger1=1
flag=intro
[State 191, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1
[State 191, bound]
type=screenbound
trigger1=1
value=0
[State 191, pos]
type=posadd
trigger1=!time
x=-320
[State 191, vel]
type=velset
trigger1=anim=191
x=6
[State 191, dust]
type=explod
trigger1=anim=191&&!(time%5)
anim=7103
sprpriority=3
postype=p1
vel=-1,0
ownpal=1
[State 191, anim]
type=changeanim
trigger1=time&&anim=191
trigger1=(helper(7650),rootdist x)>-24.0
value=192
[State 191, vel]
type=velset
trigger1=anim=192&&animelem=1
x=(helper(7650),rootdist x)/-4.0
[State 191, pos]
type=posset
trigger1=anim=192&&animelemtime(3)>=0
x=ceil(helper(7650),pos x)
[State 191, vel]
type=velset
trigger1=anim=192&&animelemtime(3)>=0
x=0
[State 191, snd]
type=playsnd
trigger1=anim=192&&animelem=6
value=4,ifelse(random<500,2,13)
channel=0
[State 191, end]
type=changestate
trigger1=anim=192&&!animtime
value=0


;==========<INTRO 2>==========
[Statedef 193]
type=A
physics=N
anim=193
[State 193, intro]
type=assertspecial
trigger1=1
flag=intro
[State 193, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1
[State 193, bound]
type=screenbound
trigger1=1
value=0
[State 193, pos]
type=posadd
trigger1=!time
x=-160
[State 193, vel]
type=velset
trigger1=!time
x=(helper(7650),rootdist x)/-50.0
y=-9
[State 193, grav]
type=veladd
trigger1=anim=193
y=.35
[State 193, snd]
type=playsnd
trigger1=time=5
value=4,17
channel=0
[State 193, anim]
type=changeanim
trigger1=time&&anim=193&&vel y>0&&pos y>=-5
value=48
[State 193, pos]
type=posset
trigger1=anim=48
x=ceil(helper(7650),pos x)
y=0
[State 193, vel]
type=velset
trigger1=anim=48
x=0
y=0
[State 193, snd]
type=playsnd
trigger1=anim=48&&animelem=1
value=0,52
[State 193, dust]
type=explod
trigger1=anim=48&&animelem=1
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.5,.5
ownpal=1
[State 193, end]
type=changestate
trigger1=anim=48&&!animtime
value=0


;==========<INTRO 3>==========
[Statedef 197]
type=S
physics=N
anim=197
[State 197, intro]
type=assertspecial
trigger1=1
flag=intro
[State 197, snd]
type=playsnd
trigger1=animelem=2
value=3,5
channel=0
[State 197, snd]
type=playsnd
trigger1=animelem=14
value=4,22
channel=0
[State 197, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO X>==========
[Statedef 350]
type=A
physics=N
anim=350
[State 350, intro]
type=assertspecial
trigger1=1
flag=intro
[State 350, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1
[State 350, bound]
type=screenbound
trigger1=1
value=0

[State 350, pos]
type=posset
trigger1=!time
x=180
[State 350, vel]
type=velset
trigger1=!time
x=(helper(7650),rootdist x)/-47.0
y=-12
[State 350, grav]
type=veladd
trigger1=anim=350
y=.5
[State 350, snd]
type=playsnd
trigger1=time=5
value=4,37

[State 350, anim]
type=changeanim
trigger1=time&&anim=350&&vel y>0&&pos y>=-5
value=351
[State 350, pos]
type=posset
trigger1=anim=351
x=ceil(helper(7650),pos x)
y=0
[State 350, vel]
type=velset
trigger1=anim=351
x=0
y=0

[State 350, sandal]
type=helper
trigger1=anim=351&&animelem=1
helpertype=normal
stateno=6005
ID=6005
name="Sandal"
postype=p1
pos=ceil(114*const(size.xscale)),ceil(-44*const(size.yscale))
ownpal=1
[State 350, sandal]
type=helper
trigger1=anim=351&&animelem=1
helpertype=normal
stateno=6005
ID=6005
name="Sandal"
postype=p1
pos=ceil(79*const(size.xscale)),ceil(-88*const(size.yscale))
ownpal=1

[State 351, snd]
type=playsnd
trigger1=anim=351&&animelem=1
value=5,6
[State 351, dust]
type=explod
trigger1=anim=351&&animelem=1
anim=7102
ID=7102
sprpriority=-2
postype=p1
removetime=-2
ownpal=1
[State 351, shake]
type=envshake
trigger1=anim=351&&animelem=1
time=18
freq=60
ampl=8

;[State 350, snd]
;type=playsnd
;trigger1=anim=351&&animelem=1
;value=5,7
;[State 350, explosion]
;type=explod
;trigger1=anim=351&&animelem=1
;anim=4005
;ID=4005
;sprpriority=4
;postype=p1
;ownpal=1
;scale=.75,.75
;[State 350, explosion]
;type=explod
;trigger1=anim=351&&animelem=1
;anim=7104
;ID=7104
;sprpriority=-2
;postype=p1
;ownpal=1
;scale=2,1

[State 350, end]
type=changestate
trigger1=anim=351&&!animtime
value=0


;==========<"OYAJI!" INTRO>==========
[Statedef 194]
type=A
physics=N
anim=194
[State 194, intro]
type=assertspecial
trigger1=1
flag=intro
[State 194, snd]
type=playsnd
trigger1=animelem=3
value=4,21
channel=0
[State 194, end]
type=changestate
trigger1=!animtime
value=0



;==========<INTRO vs EVIL DAN>==========
[Statedef 196]
type=A
physics=N
anim=196
[State 196, intro]
type=assertspecial
trigger1=1
flag=intro
[State 196, snd]
type=playsnd
trigger1=time=5
value=4,12
channel=0
[State 196, snd]
type=playsnd
trigger1=animelem=4
value=4,2
channel=0
[State 196, end]
type=changestate
trigger1=!animtime
value=0


;==========<CvS YURI INTRO>==========
[Statedef 198]
type=S
physics=N
anim=198
[State 198, intro]
type=assertspecial
trigger1=1
flag=intro
[State 198, snd]
type=playsnd
trigger1=animelem=24
value=4,11
channel=0
[State 198, snd]
type=playsnd
trigger1=animelem=46
value=4,5
channel=0
[State 198, snd]
type=playsnd
trigger1=animelem=46
value=5,10
[State 198, teeth]
type=explod
trigger1=animelem=46
anim=4105
ID=4105
sprpriority=2
postype=p1
pos=floor(-9*const(size.xscale)),floor(-172*const(size.yscale))
ownpal=1
scale=.5,.5
[State 198, end]
type=changestate
trigger1=!animtime
value=0


;==========<WIN POSE DECIDER>==========
[Statedef 180]
type=S
[State 180, winOM]
type=changestate
trigger1=prevstateno=4003
value=4003
[State 180, oyaji!!!]
type=changestate
trigger1=numenemy
trigger1=enemy,name="Sagat"
value=184
[State 180, win]
type=changestate
trigger1=!time
trigger1=command="holdx"||command="holdy"||command="holdz"
value=ifelse((command="holdx"||command="holdy"),181,184)
[State 180, win]
type=changestate
trigger1=!time
trigger1=command="holda"||command="holdb"||command="holdc"
value=182
[State 180, win]
type=changestate
trigger1=!time
value=ifelse(random<500,182,ifelse(random<666,181,184))


;==========<WIN 1>==========
[Statedef 181]
type=S
anim=ifelse(random<500,181,183)
ctrl=0
[State 181, anim]
type=changeanim
trigger1=!time&&command="holdx"||command="holdy"
value=ifelse((command="holdx"),181,183)
persistent=0
[State 181, wait]
type=assertspecial
trigger1=time<120
flag=roundnotover
[State 181, pos]
type=posset
trigger1=pos y
y=0
[State 181, snd]
type=playsnd
trigger1=anim=181&&time=7
value=4,ifelse(random<500,13,14)
channel=0
[State 181, snd]
type=playsnd
trigger1=anim=183&&time=7
value=4,ifelse(random<500,7,11)
channel=0


;==========<WIN 2>==========
[Statedef 182]
type=S
anim=ifelse(random<666,182,185)
ctrl=0
[State 182, anim]
type=changeanim
trigger1=!time&&command="holdc"
value=185
persistent=0
[State 182, wait]
type=assertspecial
trigger1=time<180
flag=roundnotover
[State 182, pos]
type=posset
trigger1=pos y
y=0
[State 182, snd]
type=playsnd
trigger1=anim=182&&time=5
value=4,ifelse(command="holdb",3,ifelse(command="holda",6,ifelse(random<500,3,6)))
channel=0

[State 182, snd]
type=playsnd
trigger1=anim=185&&time=5
value=4,5
channel=0
[State 182, snd]
type=playsnd
trigger1=anim=185&&animelem=2
value=5,10
[State 182, teeth]
type=explod
trigger1=anim=185&&animelem=2
anim=4105
ID=4105
sprpriority=2
postype=p1
pos=floor(-9*const(size.xscale)),floor(-172*const(size.yscale))
ownpal=1
scale=.5,.5


;==========<WIN by OTOKO MICHI>==========
[Statedef 4003]
type=S
movetype=I
sprpriority=-2
anim=4003
velset=0,0
[State 4003, snd]
type=playsnd
trigger1=!time&&prevstateno!=180
value=4,33
channel=0
[State 4003, pos]
type=posset
trigger1=pos y
y=0
[State 4003, win]
type=changestate
trigger1=time>=120&&prevstateno!=180
value=180
ctrl=1


;==========<WIN OYAJI>==========
[Statedef 184]
type=S
anim=184
[State 184, wait]
type=assertspecial
trigger1=time<180
flag=roundnotover
[State 184, pos]
type=posset
trigger1=pos y
y=0
[State 184, snd]
type=playsnd
trigger1=time=7
value=4,18
channel=0


;==========<GET UP>==========
[Statedef 5120]
type=L
movetype=I
physics=N
velset=0,0
[State 5120, winbyOM]
type=changestate
trigger1=alive&&winko&&numhelper(7600)
trigger1=(helper(7600),var(0)=4001)
value=4003
[State 5120, anim]
type=changeanim
trigger1=!time
value=5120
[State 5120, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
[State 5120, fall]
type=hitfallset
trigger1=!animtime
value=1
[State 5120, nhb]
type=nothitby
trigger1=!animtime
value=,NT,ST,HT
time=12
[State 5120, nhb]
type=nothitby
trigger1=!animtime
value2=SCA
time=3
[State 5120,7]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<LIE DEAD>==========
[Statedef 5150]
type=L
movetype=H
physics=N
sprpriority=-3

[State 5150, anim]
type=changeanim
triggerall=!time&&selfanimexist(5140)
trigger1=(anim!=[5111,5119])&&(anim!=[5171,5179])
trigger2=!selfanimexist(5140+(anim%10))
value=5140

[State 5150, anim]
type=changeanim
trigger1=!time
trigger1=(anim=[5111,5119])||(anim=[5171,5179])
trigger1=selfanimexist(5140+(anim%10))
value=5140+(anim%10)
[State 5150, anim]
type=changeanim
persistent=0
trigger1=matchover=1
trigger1=anim=[5140,5149]
trigger1=selfanimexist(anim+10)
value=anim+10
[State 5150, anim]
type=changeanim
trigger1=!time
trigger1=anim!=[5140,5159]
trigger1=anim!=[5110,5119]
value=5110

[State 5150, anim];lose by Eternal Slumber
type=changeanim
trigger1=anim!=4003
trigger1=enemynear,name="Morrigan Aensland"&&enemynear,authorname="Phantom.of.the.Server"
trigger1=prevstateno=1114102
value=4003
[State 5150, snd]
type=playsnd
trigger1=anim=4003
value=4,33
channel=0
persistent=0

[State 5150, vel]
type=velmul
trigger1=1
x=0.85
[State 5150, vel]
type=velset
trigger1=vel x<.05
persistent=0
x=0
[State 5150, nhb]
type=nothitby
trigger1=1
value=SCA
time=1


;==========<CONTINUE?>==========
[Statedef 5500]
type=S
ctrl=0
velset=0,0
[State 5500, anim]
type=changeanim
trigger1=!time
value=5500


;==========<FALL RECOVERY>==========
[Statedef 5200]
type=A
movetype=H
physics=N
[State 5200, anim]
type=changeanim
trigger1=anim=5035&&!animtime
value=5050
[State 5200, vel]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 5200, end]
type=selfstate
trigger1=vel y>0&&pos y>=-10
value=5201

[Statedef 5201]
type=A
movetype=I
physics=N
anim=5200
velset=0,vel y

[State 5201, pos]
type=posset
trigger1=pos y>=0
y=0
[State 5201, vel]
type=velset
trigger1=pos y>=0
y=0
[State 5201, snd]
type=playsnd
trigger1=animelem=1
value=4,11
[State 5201, flash]
type=palfx
trigger1=!time
add=255,255,255
sinadd=-255,-255,-255,60
time=15
[State 5201, nhb]
type=nothitby
trigger1=animelemtime(3)<0
value=SCA
time=1
[State 5201, end]
type=changestate
trigger1=!animtime
value=52

[Statedef 5210]
type=A
movetype=I
physics=A
anim=5210
ctrl=0
[State 5210, snd]
type=playsnd
trigger1=!time
value=4,11
channel=0
[State 5210, flash]
type=palfx
trigger1=!time
add=255,255,255
sinadd=-255,-255,-255,60
time=15
[State 5210, turn]
type=turn
trigger1=!time&&p2dist x<-20
[State 5210, direction]
type=velset
trigger1=!time
x=ifelse(command="holdfwd",.5*vel x,ifelse(command="holdback",1.5*vel x,vel x))
y=-6
[State 5210, nhb]
type=nothitby
trigger1=animelemtime(5)<0
value=SCA
time=1
[State 5210, ctrl]
type=ctrlset
trigger1=animelemtime(5)>=0
value=1


;==========<RECOVERY ROLL>==========
[Statedef 5220]
type=A
movetype=H
physics=N
[State 5220, anim]
type=changeanim
trigger1=anim=5035&&!animtime
value=7100
[State 5220, vel]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 5220, end]
type=selfstate
trigger1=vel y>0&&pos y>=-10
value=5221

[Statedef 5221]
type=C
movetype=I
physics=N
anim=5220
velset=0,0

[State 5221, pos]
type=posset
trigger1=1
y=0
[State 5221, vel]
type=velset
trigger1=1
x=5
y=0

[State 5221, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
[State 5221, push]
type=playerpush
trigger1=1
value=0

[State 5221, anim]
type=changeanim
trigger1=!animelemtime(12)&&command!="holdfwd"
value=5220
elem=20

[State 5221, dust]
type=explod
trigger1=!(time%5)
anim=7103
ID=6051
sprpriority=3
postype=p1
vel=-1,0
removetime=-2
ownpal=1
[State 5221, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[Statedef -2]

[State -2, counterFX]
type=helper
trigger1=movehit&&numtarget&&!numhelper(7400)&&var(29)
trigger1=(target,movetype=H)&&!(target,time)
helpertype=normal
stateno=7400
ID=7400
name="Counter"
postype=left
ignorehitpause=1
persistent=0
[State -2, countervar]
type=varset
trigger1=1
var(29)=ifelse((p2movetype=A),1,0)

[State -2, attackvarbyhits]
type=varadd
trigger1=time=1&&movetype=A&&fvar(10)<.9
trigger1=(stateno!=[800,899])&&stateno!=4001
fvar(10)=ifelse((stateno=[3000,4999]),.2,ifelse((stateno=[1000,2999]),.1,.05))
ignorehitpause=1
[State -2, attackvarbyhitsreset]
type=varset
trigger1=numenemy&&fvar(10)
trigger1=(enemynear,movetype!=H)
fvar(10)=0
ignorehitpause=1
[State -2, attackvarbypower]
type=varset
trigger1=1
fvar(11)=ifelse(power>=3000,.05,ifelse(power>=2000,.02,ifelse(power>=1000,.01,0)))
ignorehitpause=1
[State -2, dampenervar]
type=varset
trigger1=1
fvar(12)=(ifelse(fvar(10)>=.9,.1,1-fvar(10))+(fvar(11)*!var(20))+(.2*var(29)))/(3.0/(3-(var(20)>0)))
ignorehitpause=1
[State -2, dampener]
type=attackmulset
trigger1=1
value=fvar(12)
ignorehitpause=1

[State -2, defencevar]
type=varadd
triggerall=movetype=H&&fvar(14)<.2
trigger1=command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
trigger2=command="up"||command="down"||command="back"||command="fwd"
fvar(14)=.005
ignorehitpause=1
[State -2, defencevardecrease]
type=varadd
trigger1=movetype=H&&fvar(14)>0
fvar(14)=-.001
ignorehitpause=1
[State -2, defencevarreset]
type=varset
trigger1=movetype!=H&&fvar(14)
trigger2=fvar(14)<0
fvar(14)=0
ignorehitpause=1
[State -2, damagereduction]
type=defencemulset
trigger1=fvar(14)
value=1-fvar(14)
ignorehitpause=1

[State -2, powerOC]
type=poweradd
trigger1=movetype=H&&var(20)>0
trigger1=var(20):=-1
value=-1500
ignorehitpause=1
[State -2, turnoffOC]
type=varset
trigger1=var(20)<=0||roundstate!=2
var(20)=0
ignorehitpause=1
[State -2, varOC]
type=varadd
trigger1=var(20)>0
var(20)=-1
ignorehitpause=1
[State -2, powerOC]
type=poweradd
trigger1=var(20)>0
value=-10
ignorehitpause=1
[State -2, assertsOC]
type=assertspecial
trigger1=var(20)>0
flag=nojugglecheck
[State -2, assertsOC]
type=assertspecial
trigger1=var(20)>0
flag=nostandguard
flag2=nocrouchguard
flag3=noairguard
[State -2, OCnhb]
type=nothitby
trigger1=var(20)>=270
time=1
value=SCA
ignorehitpause=1
[State -2, glowOC]
type=palfx
trigger1=var(20)>0&&!(gametime%20)
time=20
add=16,16,32
sinadd=16,16,32,20

[State -2, boo!]
type=playsnd
trigger1=movetype=H&&var(31)>0
trigger1=var(31):=-1
trigger2=movetype=H&&var(33)>0
value=6,1
channel=5
ignorehitpause=1
[State -2, reset]
type=varset
trigger1=stateno!=3300||var(31)<=0
var(31)=0
ignorehitpause=1

[State -2, turnoffCS]
type=varset
trigger1=movetype=H||stateno=4101||roundstate!=2
var(33)=0
ignorehitpause=1
[State -2, varCS]
type=varadd
trigger1=var(33)>0&&stateno!=3300
var(33)=ifelse(var(33)=1,-2,-1)
ignorehitpause=1
[State -2, stopmusic]
type=assertspecial
trigger1=var(33)
flag=nomusic
ignorehitpause=1
[State -2, assertsCS]
type=assertspecial
trigger1=var(33)
flag=nostandguard
flag2=nocrouchguard
flag3=noairguard

[State -2, ghost]
type=null;trans
trigger1=palno=11
trans=add1

[State -2, varKOsnd]
type=varset
trigger1=alive&&var(8)>0
trigger2=!alive&&var(8)<2
var(8)=ifelse(alive,0,var(8)+1)
ignorehitpause=1
[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(8)=1
trigger1=var(8):=2
value=11,ifelse(stateno=5130,3,ifelse(random<500,1,2))
ignorehitpause=1
persistent=0

[State -2, Debug]
type=displaytoclipboard
trigger1=1
text="AI=%d Damage=%f O.Combo=%d C.Shinwa=%d by P.o.t.S."
params=var(59), fvar(12),  var(20), var(33)
ignorehitpause=1

[State -2, Debug]
type=displaytoclipboard
trigger1=1
text="gt=%d cos=%f"
params=gametime, cos(gametime)
ignorehitpause=1


;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[Statedef -3]

[State -3, resetAI]
type=varset
trigger1=var(59)&&(!alive||roundstate!=2)
var(59)=0
ignorehitpause=1
[State -3, AIactivation]
type=helper
trigger1=!numhelper(9741)&&roundstate=2&&alive&&!var(59)
helpertype=normal
name="Dan's AI"
stateno=9741
ID=9741
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent=0

[State -3, flashsnd]
type=playsnd
triggerall=var(33)&&!numhelper(7500)
trigger1=(stateno=[410,415])&&!(gametime%6)
trigger2=(stateno!=[410,415])&&!(gametime%36)
value=6,2+(random%3)
[State -3, flashes]
type=explod
triggerall=var(33)&&!numhelper(7500)
trigger1=(stateno=[410,415])&&!(gametime%2)
trigger2=(stateno!=[410,415])&&!(gametime%12)
anim=4110
ID=4105
sprpriority=-5
postype=left
pos=160,120
facing=-1+(random<500)*2
random=320,240
scale=.5+random/2000,.5+random/2000
ownpal=1
pausemovetime=20
supermovetime=20

[State -3, flashpalfx]
type=allpalfx
triggerall=var(33)&&!numhelper(7500)
trigger1=(stateno=[410,415])&&!(gametime%9)
trigger2=(stateno!=[410,415])&&!(gametime%54)
time=3
add=128,128,128
sinadd=-128,-128,-128,12
[State -3, flashpalfx]
type=bgpalfx
trigger1=var(33)&&!numhelper(7500)
trigger1=(gametime%36)<12
time=1
color=0
mul=128+ceil(cos(gametime/4.0)*128),0,0
[State -3, flashpalfx]
type=bgpalfx
trigger1=var(33)&&!numhelper(7500)
trigger1=(gametime%36)=[12,23]
time=1
color=0
mul=0,128+ceil(cos(gametime/4.0)*128),0
[State -3, flashpalfx]
type=bgpalfx
trigger1=var(33)&&!numhelper(7500)
trigger1=(gametime%36)=[24,35]
time=1
color=0
mul=0,0,128+ceil(cos(gametime/4.0)*128)
[State -3, flashpalfx]
type=bgpalfx
triggerall=var(33)&&stateno!=4100
trigger1=(stateno=[410,415])&&!(gametime%9)
trigger2=(stateno!=[410,415])&&!(gametime%54)
time=1
add=128,128,128

[State -3, moveshadow]
type=afterimage
triggerall=time=1&&!var(20)&&!var(33)
trigger1=stateno=50&&var(9)=3
trigger2=stateno=[710,725]
time=2
timegap=1
framegap=4
length=9
palbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
palcontrast=120,120,120
palpostbright=0,0,0
trans=add1
persistent=0

[State -3, ExSnd]
type=playsnd
trigger1=(stateno=[1000,2999])&&time=1&&movetype=A&&var(10)=4
trigger2=(stateno=[1510,1512])&&time=1&&var(10)=4
value=7,6
ignorehitpause=1
persistent=0
[State -3, ExShadow]
type=afterimage
trigger1=(stateno=[1000,2999])&&time=1&&movetype=A&&var(10)=4
trigger2=(stateno=[1510,1512])&&time=1&&var(10)=4
time=2
timegap=1
framegap=1
length=8
palbright=32,32,0
palcontrast=128,128,128
paladd=-10,-10,-10
palmul=1.1,1,.5
trans=add
ignorehitpause=1
persistent=0
[State -3, ExFlash]
type=palfx
trigger1=(stateno=[1000,2999])&&movetype=A&&var(10)=4
trigger1=(anim!=[1101,1102])
trigger2=(stateno=[1510,1512])&&var(10)=4
time=1
add=32+ceil(sin(gametime/1.5)*32),32+ceil(sin(gametime/1.5)*32),0
mul=300,300,200
ignorehitpause=1

[State -3, lv1supershadow]
type=afterimage
trigger1=stateno=3000&&animelemtime(1)=2
trigger2=stateno=3100&&anim=3100&&animelemtime(1)=3
trigger3=stateno=3300&&anim=3300&&animelem=3&&!var(33)
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=128,128,128
palpostbright=0,0,0
trans=add1
persistent=0

[State -3, lv2supershadow]
type=afterimage
trigger1=stateno=3200&&!animelemtime(3)
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=32,32,160
palpostbright=0,0,0
trans=add1
persistent=0

[State -3, lv3supershadow]
type=afterimage
trigger1=stateno=4000&&!animelemtime(3)
trigger2=stateno=4100&&time=60
trigger3=stateno=4200&&!animelemtime(2)
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=160,32,32
palpostbright=0,0,0
trans=add1
persistent=0

[State -3, AfterImagePersist]
type=afterimagetime
trigger1=var(20)||var(33)
trigger2=stateno=50&&var(9)=3&&vel y<-1
trigger3=stateno=[710,725]
trigger4=(stateno=[1000,2999])&&var(10)=4
trigger4=(anim!=[1101,1102])
trigger5=(stateno=[3000,4999])
time=2

[State -3, GetHitSnd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010||stateno=5020||stateno=5070||stateno=5080
trigger1=enemynear,hitdefattr=SCA,SA,HA
trigger2=gethitvar(animtype)>=2&&random<500
trigger3=gethitvar(animtype)=1&&random<375
trigger4=gethitvar(animtype)=0&&random<250
value=5000,1+(random%5)
channel=0
ignorehitpause=1
persistent=0

[State -3, sf3airrecover]
type=hitfallset
trigger1=stateno=5050
value=!(gethitvar(type)!=3&&gethitvar(yveladd)<=0&&prevstateno!=5080&&pos y<=-20)

[State -3, collapse]
type=changestate
trigger1=!alive&&(stateno=[5000,5030])
trigger1=(prevstateno=[130,131])||(prevstateno=[140,141])||(prevstateno=[150,153])
value=5130

[State -3, KOfx]
type=helper
triggerall=winKO&&!numhelper(7600)
trigger1=movehit&&numtarget&&(stateno=[3000,4999])
trigger2=stateno=4001&&animelemtime(5)>=0
trigger3=numhelper(1305)
trigger3=helper(1305),var(3)
trigger4=numhelper(3005)
trigger4=helper(3005),var(3)
helpertype=normal
stateno=7600
ID=7600
name="KO FX"
postype=left
pos=160,-120
ownpal=1
persistent=0
ignorehitpause=1
pausemovetime=999
supermovetime=999