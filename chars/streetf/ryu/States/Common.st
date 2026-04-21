; ______________________________
;| Ryu by Phantom.of.the.Server |
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
value=3+(var(1)=2)*10,6-(var(1)=2)*3
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
pos=31,-69
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
value=3+(var(1)=2)*10,6-(var(1)=2)*3
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
pos=25,-22
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
value=3+(var(1)=2)*10,6-(var(1)=2)*3
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
pos=40,-66
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
value=3+(var(1)=2)*10,7*(var(1)!=2)
channel=0
[State 710, push]
type=playerpush
trigger1=1
value=0
[State 710, hb]
type=hitby
trigger1=animelemtime(5)<0
value=SCA,AT
time=1
[State 710, attack]
type=changestate
trigger1=animelemtime(3)>=0
trigger1=command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
value=ifelse((command="x"||command="y"||command="z"),210,220)
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
value=3+(var(1)=2)*10,6*(var(1)!=2)
channel=0
[State 720, snd]
type=playsnd
trigger1=animelem=1&&random<500
value=3+(var(1)=2)*10,2+(var(1)=2)
channel=0
[State 720, vel]
type=velset
trigger1=animelemtime(2)>=0&&animelemtime(7)<0
x=6
[State 720, push]
type=playerpush
trigger1=1
value=0
[State 720, hb]
type=hitby
trigger1=animelemtime(8)<0
value=SCA,AT
time=1
[State 720, end]
type=changestate
trigger1=!animtime
value=0
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
triggerall=anim=740&&power<powermax
trigger1=var(59)<=0&&(command="holdb"&&command="holdy")
trigger2=var(59)>=1
value=ifelse(time>=220,28,ceil(time/8))

[State 740, snd]
type=playsnd
trigger1=!time
value=3+(var(1)=2)*10,5+(var(1)=2)
channel=0

[State 740, shake]
type=envshake
trigger1=anim=740&&!(time%4)
time=4
fre=80
ampl=2
[State 740, flash]
type=palfx
trigger1=anim=740&&!(time%12)
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
trigger1=anim=740&&!numhelper(7240)
helpertype=normal
stateno=7240
ID=7240
name="Power Charge"
postype=p1
ownpal=1
persistent=0

[State 740, anim]
type=changeanim
triggerall=anim=740&&animelemtime(3)>=0
trigger1=var(59)<=0&&(command!="holdb"||command!="holdy")
trigger2=power>=powermax||roundstate!=2
trigger3=var(59)>=1&&(inguarddist||p2movetype=A||p2dist x<160)
value=741

[State 740, stopsnd]
type=stopsnd
trigger1=anim=741
channel=0
persistent=0
[State 740, snd]
type=playsnd
trigger1=anim=741&&power>=powermax
value=4+(var(1)=2)*10,10-(var(1)=2)
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
value=3+(var(1)=2)*10,7-(var(1)=2)*4
channel=0
[State 750, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7250
ID=7250
postype=p1
pos=16,-79
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
anim=ifelse(statetype=A,762,760+(var(1)=2))
ctrl=0
velset=ifelse((statetype=S),0,vel x),ifelse((statetype=S),0,vel y)
[State 760, stop]
type=posfreeze
trigger1=anim=762
value=1

[State 760, snd]
type=playsnd
trigger1=!time
value=4+(var(1)=2)*10,10-(var(1)=2)
channel=0
[State 760, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7260
ID=7260
postype=p1
pos=ifelse((anim=760),-2,ifelse((anim=762),-5,-8)),ifelse((anim=760),-62,ifelse((anim=762),-77,-43))
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
movetime=30*(anim!=762)

[State 760, var]
type=varset
trigger1=(anim=[760,761])&&time=30
trigger2=anim=762&&time=1
var(20)=300

[State 760, image]
type=afterimage
trigger1=(anim=[760,761])&&time=30
trigger2=anim=762&&time=1
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
trigger1=anim=762&&!animtime
value=41
elem=6
[State 760, ctrl]
type=ctrlset
trigger1=anim=41
value=1
[State 760, end]
type=changestate
trigger1=(anim=[760,761])&&!animtime
value=0
ctrl=1


;==========<STANDING>==========
[Statedef 0]
type=S
physics=S
[State 0, anim]
type=changeanim
trigger1=((var(1)!=2)&&anim!=0)||(var(1)=2&&anim!=1)
trigger1=anim!=5
trigger2=anim=5&&!animtime
value=ifelse(var(1)=2,1,0)
[State 0, stop]
type=posset
trigger1=1
y=0
[State 0, stop]
type=velset
trigger1=abs(vel x)<2
trigger2=time=4
x=0


;==========<WALKING>==========
[Statedef 20]
type=S
physics=S
sprpriority=0
[State 20, vel]
type=velset
trigger1=var(1)=1
x=ifelse(command="holdfwd",const(velocity.walk.fwd.x),ifelse(command="holdback",const(velocity.walk.back.x),vel x))
[State 20, vel]
type=velset
trigger1=var(1)!=1
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
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y=ifelse(var(9)=2,.75,1)*ifelse(var(1)!=1,1.05*const(velocity.jump.y),const(velocity.jump.y))
[State 40, vel]
type=velset
trigger1=!animtime&&var(9)=3
x=ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,1.5*const(velocity.jump.fwd.x),1.5*const(velocity.jump.back.x)))
y=ifelse(var(1)!=1,1.2*const(velocity.jump.y),1.15*const(velocity.jump.y))
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
[State 52, stop]
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
trigger1=!time&&(prevstateno=222||(prevstateno=[1200,1250])||prevstateno=3200)
value=48
[State 52, anim283]
type=changeanim
trigger1=!time&&prevstateno=282
value=283
[State 52, anim1102]
type=changeanim
trigger1=!time&&((prevstateno=[1100,1110])||prevstateno=3100||prevstateno=3140)
value=1102
[State 52, anim3102]
type=changeanim
trigger1=!time&&(prevstateno=3160)
value=3102
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
trigger1=time>=2
trigger1=prevstateno<=285
value=1
[State 52, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;======================<RUN>===========================
[Statedef 100]
type=S
movetype=I
physics=S
velset=0,0
anim=100
ctrl=1
sprpriority=1
[State 100, assert]
type=assertspecial
trigger1=1
flag=nowalk
flag2=noautoturn
[State 100, width]
type=width
trigger1=1
value=8
[State 100, vel]
type=velset
trigger1=anim=100
x=const(velocity.run.fwd.x)
[State 100, steps]
type=playsnd
trigger1=anim=100&&(animelem=3||animelem=6)
value=0,100
[State 100, change]
type=changeanim
triggerall=time>7&&anim=100
trigger1=var(59)<=0&&command!="holdfwd"
trigger2=var(59)>=1&&(p2movetype=A||p2dist x<80)
value=101
persistent=0
[State 100, snd]
type=playsnd
trigger1=anim=101
value=0,101
persistent=0
[State 100, end]
type=changestate
trigger1=anim=101&&!animtime
value=0
ctrl=1


;========================<FORWARD DASH>==========================
[Statedef 102]
type=S
movetype=I
physics=S
velset=0,0
anim=102
ctrl=0
sprpriority=1
[State 102, vel]
type=velset
trigger1=animelem=2
x=-1.2*const(velocity.run.back.x)
y=const(velocity.run.back.y)
[State 102, snd]
type=playsnd
trigger1=animelem=2
value=0,105
[State 102, dust]
type=explod
trigger1=animelem=2
anim=7103
ID=7103
sprpriority=3
postype=p1
vel=1,0
removetime=-2
ownpal=1
[State 102, end]
type=changestate
triggerall=(animelemtime(2)>4)&&(animelemtime(3)<0)
trigger1=var(59)<=0&&command="holdfwd"
trigger2=var(59)>=1&&p2dist x>=80
value=100
[State 102, end]
type=changestate
trigger1=!animtime
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
[State 105, snd]
type=playsnd
trigger1=animelem=2
value=0,105
[State 105, dust]
type=explod
trigger1=animelem=2
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=-17,0
vel=-1,0
removetime=-2
ownpal=1
[State 105, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


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
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
trigger3=!inguarddist
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
type=changeState
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
trigger3=!inguarddist
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
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
value=130

[State 131, Stop Guarding]
type=changestate
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
trigger3=!inguarddist
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
triggerall=sysvar(0)
triggerall=inguarddist
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
value=130

[State 132, end]
type=changeState
trigger1=sysvar(0)
value=52

[State 132, stop guarding]
type=changestate
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
trigger3=!inguarddist
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
value=151+2*(command="holddown")
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
[State 150, shake]
type=forcefeedback
trigger1=!time
waveform=square
time=3

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
value=151+2*(command="holddown")
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
[State 152, shake]
type=forcefeedback
trigger1=!time
waveform=square
time=4

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
trigger1=statetype=C&&command!="holddown"
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
[State 154, shake]
type=forcefeedback
trigger1=!time
waveform=square
time=4

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
triggerall=sysvar(0)
triggerall=inguarddist
trigger1=var(59)<=0&&command!="holdback"
trigger2=var(59)>=1
trigger2=enemynear,movetype!=A&&p2bodydist x>=80&&(p2bodydist y!=[-75,75])&&!(enemy,numproj)
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
type=L
movetype=H
physics=C
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
trigger1=animelem=4||animelem=5
x=ifelse((animelem=4),-12,-24)
[State 5131, snd]
type=playsnd
trigger1=!time
trigger2=animelem=5
value=0,52
[State 5131, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-4
postype=p1
pos=-7,0
scale=.5,.5
ownpal=1
[State 5131, dust]
type=explod
trigger1=animelem=5
anim=7102
ID=7102
sprpriority=-5
postype=p1
scale=.75,.75
ownpal=1
[State 5131, end]
type=changestate
trigger1=!animtime
value=ifelse(alive,5110,5150)



;==========<TAUNT>==========
[Statedef 195]
type=S
ctrl=0
velset=0,0
physics=S
[State 195, hadou no kamae]
type=changestate
trigger1=var(1)!=2&&!time&&command="qcfs"
value=198
[State 195, taunt1]
type=changestate
trigger1=!time
value=ifelse(var(1)=2,197,196)


;==========<TAUNT>==========
[Statedef 196]
type=S
physics=S
movetype=I
sprpriority=1
anim=ifelse(command="holdfwd",195,ifelse(command="holdback",357,350))

[State 196, snd]
type=playsnd
trigger1=anim=195&&!animelemtime(3)
trigger2=anim=350&&!animelemtime(2)
trigger3=anim=357&&!animelemtime(4)
value=4,ifelse(random<250,8,ifelse(random<333,9,ifelse(random<500,10,11)))
channel=0
[State 196, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<EVIL TAUNT>==========
[Statedef 197]
type=S
physics=S
movetype=I
sprpriority=1
anim=197

[State 197, snd]
type=playsnd
trigger1=!animelemtime(4)
value=14,6
channel=0
[State 197, shake]
type=envshake
trigger1=!animelemtime(4)
time=18
ampl=4
[State 197, snd]
type=playsnd
trigger1=animelem=4
value=5,3
[State 197, dust]
type=explod
trigger1=animelem=4
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=-32,0
ownpal=1
[State 197, dust]
type=explod
trigger1=animelem=4
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-32,0
scale=.75,.75
ownpal=1
[State 197, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<HADOU NO KAMAE>==========
[Statedef 198]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
[State 198, width]
type=width
trigger1=animelemtime(4)>=0&&animelemtime(10)<0
value=30,0
[State 198, snd]
type=playsnd
trigger1=animelem=5&&var(1)=1
value=3,6
persistent=0
[State 198, snd]
type=playsnd
trigger1=animelem=3&&var(1)=3
value=4,100+(random%4)
persistent=0
[State 198, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<LOSE (Time over)>==========
[Statedef 170]
type=S
ctrl=0
anim=175-(var(1)=2)*5
velset=0,0
[State 170, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
[State 170, snd]
type=playsnd
trigger1=anim=170&&animelem=2
value=0,52
[State 170, dust]
type=explod
trigger1=anim=170&&animelem=2
anim=7104
ID=7104
sprpriority=-4
postype=p1
pos=-7,0
scale=.5,.5
ownpal=1


;==========<DRAWGAME (Time over)>==========
[Statedef 175]
type=S
ctrl=0
anim=175
velset=0,0
[State 175, nhb]
type=nothitby
trigger1=1
value=SCA
time=1


;==========<PREINTRO>==========
[Statedef 190]
type=S
ctrl=0
velset=0,0

[State 190, intro Ryu vs Evil]
type=changestate
trigger1=var(1)!=3&&numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Phantom.of.the.Server"&&enemy,name="Ryu"
trigger1=(var(1)=1&&enemy,var(1)=2)||(var(1)=2&&enemy,var(1)=1)
value=360

[State 190, intro Evil vs Shin Gouki]
type=changestate
trigger1=var(1)=2&&numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Phantom.of.the.Server"&&enemy,name="Shin Gouki"
value=368

[State 190, intro Ryu vs Sakura]
type=changestate
trigger1=var(1)!=2&&numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Phantom.of.the.Server"&&enemy,name="Sakura Kasugano"
value=373

[State 190, intro vs CvS2 Another Kyo]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Mouser && Byakko"&&enemy,name="CvS2AKyo"
value=370

[State 190, intro vs CvS2 Ryo]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Byakko"&&enemy,name="CvS2Ryo"
value=369

[State 190, introvsPSGouki]
type=changestate
trigger1=!time&&name="Ryu"&&(p2name="Pocket Shin Gouki"||p4name="Pocket Shin Gouki")
trigger1=enemy,authorname="Phantom.of.the.Server"
value=363

[State 190, introEK]
type=changestate
trigger1=!time&&name="Ryu"&&(p2name="Evil Ken"||p4name="Evil Ken")&&var(1)!=2
value=358

[State 190, intro]
type=changestate
trigger1=time&&var(1)!=2
value=ifelse(random<333,355,ifelse(random<500,352,353))
[State 190, intro]
type=changestate
trigger1=time&&var(1)=2
value=ifelse(random<500,354,356)


;==========<INTRO 1>==========
[Statedef 355]
type=S
anim=355
[State 355, intro]
type=assertspecial
trigger1=1
flag=intro
[State 355, Bag]
type=helper
trigger1=!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
name="Bag"
postype=p1
pos=61,-46
ownpal=1
size.shadowoffset=-4
[State 355, snd]
type=playsnd
trigger1=animelem=8&&random<750
value=4,ifelse(random<250,8,ifelse(random<333,9,ifelse(random<500,10,13)))
channel=0
[State 355, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO 2>==========
[Statedef 352]
type=S
anim=352
[State 352, intro]
type=assertspecial
trigger1=1
flag=intro
[State 352, snd]
type=playsnd
trigger1=animelem=7&&random<750
value=4,ifelse(random<250,8,ifelse(random<333,9,ifelse(random<500,10,13)))
channel=0
[State 352, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO 3>==========
[Statedef 353]
type=S
anim=353
[State 353, intro]
type=assertspecial
trigger1=1
flag=intro
[State 353, snd]
type=playsnd
trigger1=animelem=21&&random<750
value=4,ifelse(random<250,8,ifelse(random<333,9,ifelse(random<500,10,13)))
channel=0
[State 353, end]
type=changestate
trigger1=!animtime
value=0


;==========<EVIL INTRO 1>==========
[Statedef 356]
type=S
anim=356
[State 356, intro]
type=assertspecial
trigger1=1
flag=intro
[State 356, snd]
type=playsnd
trigger1=!animelemtime(5)
value=14,4
channel=0
[State 356, snd]
type=playsnd
trigger1=!animelemtime(10)
value=5,3
[State 356, dust]
type=explod
trigger1=animelem=10
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=-32,0
ownpal=1
[State 356, dust]
type=explod
trigger1=animelem=10
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-32,0
scale=.75,.75
ownpal=1
[State 356, shake]
type=envshake
trigger1=animelem=10
time=12
frequency=60
ampl=4
[State 356, end]
type=changestate
trigger1=!animtime
value=0


;==========<EVIL INTRO 2>==========
[Statedef 354]
type=S
anim=354
[State 354, intro]
type=assertspecial
trigger1=1
flag=intro
[State 354, snd]
type=playsnd
trigger1=animelem=9
value=14,ifelse(random<500,6,9)
channel=0
[State 354, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO RYU vs EVIL RYU>==========
[Statedef 360]
type=S
physics=N
anim=360+(var(1)=2)
sprpriority=1-(var(1)=2)*2
[State 360, intro]
type=assertspecial
trigger1=1
flag=intro
[State 360, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
[State 360, screen]
type=screenbound
trigger1=1
value=1
movecamera=0,1

[State 360, pos]
type=posset
trigger1=!time
x=-9*facing

[State 360, snd]
type=playsnd
trigger1=(var(1)=2)&&animelemtime(1)=30
value=14,7
channel=0
[State 360, snd]
type=playsnd
trigger1=(var(1)!=2)&&animelem=3
value=4,9
channel=0

[State 360, pos]
type=posadd
trigger1=var(1)!=2&&animelem=7
trigger2=var(1)=2&&animelem=11
x=-6
[State 360, vel]
type=velset
trigger1=var(1)!=2&&animelem=7
trigger2=var(1)=2&&animelem=11
x=(helper(7650),rootdist x)/-12
[State 360, pos]
type=posset
trigger1=var(1)!=2&&animelemtime(10)>=0
trigger2=var(1)=2&&animelemtime(14)>=0
trigger3=animelemtime(10)>=0&&(helper(7650),rootdist x)<=0
x=ceil(helper(7650),pos x)
[State 360, vel]
type=velset
trigger1=var(1)!=2&&animelemtime(10)>=0
trigger2=var(1)=2&&animelemtime(14)>=0
trigger3=animelemtime(10)>=0&&(helper(7650),rootdist x)<=0
x=0

[State 360, snd]
type=playsnd
trigger1=var(1)!=2&&animelem=7
trigger2=var(1)=2&&animelem=11
value=0,105
[State 360, dust]
type=explod
trigger1=var(1)!=2&&animelem=7
trigger2=var(1)=2&&animelem=11
anim=7103
ID=7103
sprpriority=3
postype=p1
vel=-1,0
removetime=-2
ownpal=1

[State 360, snd]
type=playsnd
trigger1=var(1)!=2&&animelem=7
trigger2=var(1)=2&&animelem=11
value=3+(var(1)=2)*10,(var(1)=2)*3
[State 360, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO EVIL vs SHIN GOUKI>==========
[Statedef 368]
type=S
physics=N
anim=368
sprpriority=0
[State 368, intro]
type=assertspecial
trigger1=1
flag=intro
[State 368, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
[State 368, screen]
type=screenbound
trigger1=1
value=0
movecamera=0,1

[State 368, vel]
type=posset
trigger1=!time
x=-240*facing
[State 368, vel]
type=velset
trigger1=!time
x=6
[State 368, snd]
type=playsnd
trigger1=!time
value=5,4
[State 368, anim]
type=changeanim
trigger1=animelemtime(2)<0&&p2dist x<=72
value=368
elem=2
[State 368, snd]
type=playsnd
trigger1=!animelemtime(2)
value=14,9
channel=0
[State 368, vel]
type=velset
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
x=0
[State 368, pos]
type=posset
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
x=-36*facing

[State 368, fadeout]
type=allpalfx
trigger1=animelemtime(2)=10
time=20
sinadd=-255,-255,-255,80
[State 368, black]
type=envcolor
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
time=2
value=0,0,0
[State 368, assert]
type=assertspecial
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
flag=nobardisplay

[State 368, hitsnd]
type=playsnd
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
trigger1=(animelemtime(2)%8)=1
value=2,0
[State 368, sparks]
type=explod
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
trigger1=(animelemtime(2)%8)=1
anim=7001
ID=7000
sprpriority=5
postype=p2
pos=0,-70
random=60,60
facing=-1
ownpal=1
ontop=1
pausemovetime=300
supermovetime=300
[State 368, shake]
type=envshake
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
trigger1=(animelemtime(2)%8)=1
time=2
freq=90
ampl=-3

[State 368, anim]
type=changeanim
trigger1=animelemtime(2)>=72&&animelemtime(3)<0
value=368
elem=3
[State 368, snd]
type=playsnd
trigger1=!animelemtime(3)
value=5010,5
channel=0

[State 368, vel]
type=velset
trigger1=!animelemtime(3)
x=-6
[State 368, pos]
type=posset
trigger1=animelemtime(3)>=0&&(helper(7650),rootdist x<=0)
x=ceil(helper(7650),pos x)
[State 368, vel]
type=velset
trigger1=animelemtime(3)>=0&&(helper(7650),rootdist x<=0)
x=0
[State 368, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO vs SAKURA>==========
[Statedef 373]
type=S
anim=373
[State 373, intro]
type=assertspecial
trigger1=1
flag=intro
[State 373, snd]
type=null;playsnd
trigger1=animelem=7&&random<750
value=4,ifelse(random<250,8,ifelse(random<333,9,ifelse(random<500,10,13)))
channel=0

[State 373, anim]
type=changeanim
trigger1=animelemtime(20)>=5&&animelemtime(21)<0&&numenemy
trigger1=enemy,animelemtime(28)>=0
value=373
elem=21
persistent=0

[State 373, blueflash]
type=palfx
trigger1=animelem=23
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 373, snd]
type=playsnd
trigger1=animelem=23
value=3+(var(1)=2)*10,6-(var(1)=2)*3
channel=0
[State 373, snd]
type=playsnd
trigger1=animelem=23
value=7,3
[State 373, spark]
type=explod
trigger1=animelem=23
anim=7200
ID=7200
sprpriority=5
postype=p1
pos=31,-69
removetime=-2
pausemovetime=60
ownpal=1
scale=.5,.5

[State 373, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO vs CvS2 ANOTHER KYO>==========
[Statedef 370]
type=S
physics=N
anim=ifelse(var(1)!=2,372,370)
sprpriority=0
[State 370, intro]
type=assertspecial
trigger1=1
flag=intro
[State 370, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
[State 370, screen]
type=screenbound
trigger1=1
value=1
movecamera=0,1

[State 370, anim]
type=changeanim
trigger1=time>=120&&anim!=371
value=371
[State 370, vel]
type=velset
trigger1=anim=371&&animelem=1
x=((p2dist x/2)-25)/12
[State 370, vel]
type=velset
trigger1=anim=371&&animelemtime(5)>=0&&animelemtime(33)<0
trigger2=anim=371&&animelemtime(37)>=0
x=0

[state 370, posfix]
type=posadd
trigger1=anim=371&&(animelem=16||animelem=17||animelem=18)
x=ifelse((animelem=16),-10,ifelse((animelem=17),-6,-5))

[State 370, snd]
type=playsnd
trigger1=time=15
value=4+(var(1)=2)*10,8-(var(1)=2)*2
channel=0
[State 370, snd]
type=playsnd
trigger1=anim=371&&animelem=5
value=3+(var(1)=2)*10,6-(var(1)=2)*3
channel=0
[State 370, snd]
type=playsnd
trigger1=anim=371&&animelem=11
value=3+(var(1)=2)*10,4-(var(1)=2)*4
channel=0
[State 370, snd]
type=playsnd
trigger1=anim=371&&animelem=18
value=3+(var(1)=2)*10,2-(var(1)=2)
channel=0
[State 370, snd]
type=playsnd
trigger1=anim=371&&animelem=27
value=3+(var(1)=2)*10,3-(var(1)=2)
channel=0

[State 370, snd]
type=playsnd
trigger1=anim=371&&(animelem=11||animelem=18)
value=1,3
[State 370, snd]
type=playsnd
trigger1=anim=371&&animelem=27
value=1,6

[State 370, snd]
type=playsnd
trigger1=anim=371&&(animelem=19||animelem=28)
value=2,8
[State 370, sparks]
type=helper
trigger1=anim=371&&(animelem=19||animelem=28)
helpertype=normal
stateno=7050
ID=7050
name="Shin Shoryuken Spark"
postype=back
pos=160,-72
ownpal=1
ignorehitpause=1

[State 370, vel]
type=velset
trigger1=anim=371&&animelem=35
x=(helper(7650),rootdist x)/-12
[State 370, snd]
type=playsnd
trigger1=anim=371&&animelem=2
value=0,105
[State 370, dust]
type=explod
trigger1=anim=371&&animelem=2
anim=7103
ID=7103
sprpriority=3
postype=p1
vel=1,0
removetime=-2
ownpal=1
[State 370, snd]
type=playsnd
trigger1=anim=371&&animelem=35
value=0,105
[State 370, dust]
type=explod
trigger1=anim=371&&animelem=35
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=-17,0
vel=-1,0
removetime=-2
ownpal=1

[State 370, pos]
type=posset
trigger1=anim=371&&animelemtime(38)>=0
x=ceil(helper(7650),pos x)
[State 370, end]
type=changestate
trigger1=anim=371&&!animtime
value=0


;==========<INTRO vs CvS2 RYO>==========
[Statedef 369]
type=A
physics=N
anim=369
[State 369, intro]
type=assertspecial
trigger1=1
flag=intro
[State 369, screen]
type=screenbound
trigger1=1
value=1
movecamera=0,0
[State 369, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1
[State 369, pos]
type=posset
trigger1=!time
x=-20*facing
[State 369, snd]
type=playsnd
trigger1=time=15
value=4+(var(1)=2)*10,9;-(var(1)=2)*3
channel=0

[State 369, snd]
type=playsnd
trigger1=animelem=7
value=0,40
[State 369, dust]
type=helper
trigger1=animelem=7
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
[State 369, vel]
type=velset
trigger1=anim=369&&animelem=7
x=(helper(7650),rootdist x)/-50
y=-8
[State 369, grav]
type=veladd
trigger1=anim=369&&animelemtime(7)>=0
y=.35
[State 369, anim]
type=changeanim
trigger1=anim=369&&animelemtime(7)>=0&&vel y>0&&pos y>=-5
value=48
[State 369, pos]
type=posset
trigger1=anim=48
x=ceil(helper(7650),pos x)
y=0
[State 369, vel]
type=velset
trigger1=anim=48
x=0
y=0
[State 369, snd]
type=playsnd
trigger1=anim=48&&animelem=1
value=0,52
[State 369, dust]
type=explod
trigger1=anim=48&&animelem=1
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.5,.5
ownpal=1
[State 369, end]
type=changestate
trigger1=anim=48&&!animtime
value=0


;==========<INTRO VS EVIL KEN>==========
[Statedef 358]
type=S
anim=358
[State 358, intro]
type=assertspecial
trigger1=1
flag=intro
[State 358, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO vs POCKET SHIN GOUKI>==========
[Statedef 363]
type=S
anim=363
[State 363, intro]
type=assertspecial
trigger1=1
flag=intro
[State 363, snd]
type=playsnd
trigger1=animelemtime(5)=15
value=4+(var(1)=2)*10,11
channel=0
[State 363, end]
type=changestate
trigger1=!animtime
value=0


;==========<WIN POSE DECIDER>==========
[Statedef 180]
type=S
[State 180, winSGS]
type=changestate
trigger1=prevstateno=362
value=362
[State 180, winRKH]
type=changestate
trigger1=prevstateno=3052
value=3052
[State 180, winShoryuken]
type=changestate
trigger1=!time&&numhelper(7600)
trigger1=(helper(7600),var(0)=3100)||(helper(7600),var(0)=3120)
value=359

[State 180, win]
type=changestate
trigger1=!time&&var(1)!=2
trigger1=command="holdx"||command="holdy"||command="holdz"||command="holda"||command="holdb"||command="holdc"
value=ifelse((command="holdx"||command="holdy"||command="holdz"),366,351)
[State 180, win]
type=changestate
trigger1=!time&&var(1)!=2
value=ifelse(random<500,351,366)

[State 180, win]
type=changestate
trigger1=!time&&var(1)=2
trigger1=command="holdx"||command="holdy"||command="holdz"||command="holda"||command="holdb"||command="holdc"
value=ifelse((command="holdx"||command="holdy"||command="holdz"),364,365)
[State 180, win]
type=changestate
trigger1=!time&&var(1)=2
value=ifelse(random<500,364,365)


;==========<WIN 1>==========
[Statedef 351]
type=S
anim=351
ctrl=0
[State 351, win]
type=assertspecial
trigger1=time<180
flag=roundnotover
[State 351, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=4,17
channel=0
[State 351, leaf]
type=explod
trigger1=animelem=7
trigger1=random<333||command="holdstart"
anim=6010
sprpriority=2
postype=p1
pos=-21,-28
vel=-1,1.5
accel=.2,-.1
removetime=-2
ownpal=1


;==========<WIN 2>==========
[Statedef 366]
type=S
anim=366
ctrl=0
[State 366, win]
type=assertspecial
trigger1=time<180
flag=roundnotover
[State 366, snd]
type=playsnd
trigger1=animelem=3
value=4,16
channel=0


;==========<WIN by S.G.S.>==========
[Statedef 362]
type=S
sprpriority=-4
[State 362, anim]
type=changeanim
trigger1=!time&&prevstateno=4001
value=362
[State 362, kanjibg]
type=helper
trigger1=!time&&prevstateno=4001&&!numhelper(7610)
helpertype=normal
stateno=7610
ID=7610
postype=left
ownpal=1
persistent=0
[State 362, snd]
type=playsnd
trigger1=time=10&&prevstateno=4001&&var(1)=2
value=14,10
channel=0
[State 362, win]
type=changestate
trigger1=prevstateno=4001&&time>150
value=180
ctrl=1


;==========<WIN by SHORYUKEN>==========
[Statedef 359]
type=S
anim=359
ctrl=0
[State 359, win]
type=assertspecial
trigger1=time<180
flag=roundnotover


;==========<WIN by R.K.H.>==========
[Statedef 3052]
type=S
[State 3052, anim]
type=changeanim
trigger1=!time&&anim!=170
value=170
[State 4001, imageoff]
type=afterimagetime
trigger1=animelemtime(5)>0
time=0
[State 3052, snd]
type=playsnd
trigger1=animelem=2
value=5000+(var(1)=2)*10,3
channel=0
[State 3052, snd]
type=playsnd
trigger1=animelem=2
value=0,52
[State 3052, dust]
type=explod
trigger1=animelem=2
anim=7104
ID=7104
sprpriority=-4
postype=p1
pos=-7,0
scale=.5,.5
ownpal=1
[State 3052, win]
type=changestate
trigger1=prevstateno=3050&&time>=120
value=180
ctrl=1


;==========<EVIL WIN 1>==========
[Statedef 364]
type=S
anim=364
ctrl=0
[State 364, intro]
type=assertspecial
trigger1=time<180
flag=roundnotover
[State 364, snd]
type=playsnd
trigger1=animelem=5
value=14,8
channel=0


;==========<EVIL WIN 2>==========
[Statedef 365]
type=S
anim=365
ctrl=0
[State 365, win]
type=assertspecial
trigger1=time<180
flag=roundnotover

[State 365, snd]
type=playsnd
trigger1=animelem=4
value=14,9
channel=0
[State 365, shake]
type=envshake
trigger1=animelem=4
time=18
ampl=4
[State 365, snd]
type=playsnd
trigger1=animelem=4
value=5,3
[State 365, dust]
type=explod
trigger1=animelem=4
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=-32,0
ownpal=1
[State 365, dust]
type=explod
trigger1=animelem=4
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-32,0
scale=.75,.75
ownpal=1


;==========<LOSE (Time over)>==========
[Statedef 170]
type=S
ctrl=0
velset=0,0
anim=170
velset=0,0
[State 170, nhb]
type=nothitby
trigger1=1
value=SCA
time=1


;==========<DRAWGAME (Time over)>==========
[Statedef 175]
type=S
ctrl=0
velset=0,0
anim=170
[State 175, nhb]
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
movetype=H
physics=N
anim=5200
velset=vel x-2

[State 5201, pos]
type=posset
trigger1=pos y>=0
y=0
[State 5201, vel]
type=velset
trigger1=pos y>=0
y=0

[State 5201, vel]
type=velmul
trigger1=animelemtime(4)>0
x=.85

[State 5201, snd]
type=playsnd
trigger1=animelem=1
value=3+(var(1)=2)*10,0
[State 5201, flash]
type=palfx
trigger1=!time
add=100,40,0
sinadd=100,40,0,6
time=12

[State 5201, nhb]
type=nothitby
trigger1=1
value=SCA
time=1

[State 5201, fx]
type=gamemakeanim
trigger1=!time
value=60
pos=0,-ceil(pos y)
under=1

[State 5201, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1

[Statedef 5210]
type=A
movetype=I
physics=N
anim=5210
ctrl=0
[State 5210, snd]
type=playsnd
trigger1=animelem=1
value=3+(var(1)=2)*10,3*(var(1)=2)
channel=0
ignorehitpause=1
[State 5210, flash]
type=palfx
trigger1=!time
add=100,40,0
sinadd=100,40,0,6
time=12
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
trigger1=animelemtime(6)<0
value=SCA
time=1
[State 5210, ctrl]
type=ctrlset
trigger1=animelemtime(6)>=0
value=1
[State 5210, grav]
type=gravity
trigger1=1
[State 5210, land]
type=changestate
trigger1=vel y>0&&pos y>=0
value=52
ctrl=1


;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[Statedef -2]

[State -2, counterFX]
type=helper
trigger1=movehit&&numtarget&&hitdefattr=SCA,AA
trigger1=!numhelper(7400)&&var(29)
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
trigger1=(stateno!=[800,899])&&stateno!=1300&&stateno!=4001&&stateno!=4101
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
fvar(12)=(ifelse(fvar(10)>=.9,.1,1-fvar(10))+(fvar(11)*!var(20))+(.2*var(29)))
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
trigger1=1
value=ifelse(var(1)=3,1.05,ifelse(var(1)=2,1.1,1))-fvar(14)
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
trigger1=var(20)>0&&!(gametime%16)
time=16
add=20,20,20
sinadd=20,20,20,16

[State -2, stopsnd3]
type=stopsnd
trigger1=prevstateno=3040
channel=3
persistent=0
[State -2, stopsnd4]
type=stopsnd
trigger1=prevstateno=3040
channel=4
persistent=0

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
value=11,ifelse((var(1)=2),2,1)+2*(stateno=5130)
ignorehitpause=1
persistent=0

[State -2, resetmetsushoryukenvar]
type=varset
trigger1=(stateno!=3100||anim!=3101)&&var(33)
var(33)=0

[State -2, Debug]
type=displaytoclipboard
trigger1=1
text="AI=%d Mode=%d Damage=%f by P.o.t.S."
params=var(59), var(1), fvar(12)


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
name="Ryu's AI"
stateno=9741
ID=9741
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent=0

[State -3, moveshadow]
type=afterimage
triggerall=time=1&&!var(20)
trigger1=stateno=50&&var(9)=3
trigger2=stateno=710||stateno=720
time=2
timegap=1
framegap=3
length=12
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
value=7,6
ignorehitpause=1
persistent=0
[State -3, ExShadow]
type=afterimage
trigger1=(stateno=[1000,2999])&&time=1&&movetype=A&&var(10)=4
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
triggerall=(anim!=[1101,1103])&&anim!=1207
time=1
add=32+ceil(sin(gametime/1.5)*32),32+ceil(sin(gametime/1.5)*32),0
mul=300,300,200
ignorehitpause=1

[State -3, lv1supershadow]
type=afterimage
trigger1=stateno=3000&&!animelemtime(4)
trigger2=stateno=3020&&!animelemtime(3)
trigger3=stateno=3100&&anim=3100&&!animelemtime(4)
trigger4=stateno=3140&&anim=3140&&animelemtime(1)=2
trigger5=stateno=3200&&anim=3200&&!animelemtime(3)
time=2
timegap=1
framegap=10
length=30
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=128,128,128
palpostbright=0,0,0
trans=add1
persistent=0

[State -3, lv2supershadow]
type=afterimage
trigger1=stateno=3180&&anim=3180&&!animelemtime(2)
time=2
timegap=1
framegap=10
length=30
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=32,32,160
palpostbright=0,0,0
trans=add1
persistent=0

[State -3, lv3supershadow]
type=afterimage
trigger1=stateno=3040&&anim=3040&&!animelemtime(4)
trigger2=stateno=3120&&anim=3120&&!animelemtime(2)
trigger3=stateno=3160&&anim=3160&&!animelemtime(4)
trigger4=stateno=4000&&time=1
trigger5=stateno=368&&time=1
time=2
timegap=1
framegap=10
length=30
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=160,32,32
palpostbright=0,0,0
trans=add1
persistent=0

[State -3, AfterImagePersist]
type=afterimagetime
trigger1=stateno=50&&var(9)=3&&vel y<-1
trigger2=var(20)>0
trigger3=stateno=710||stateno=720||stateno=1400
trigger4=(stateno=[1000,2999])&&var(10)=4&&(anim!=[1101,1103])&&anim!=1207
trigger5=(stateno=[3000,4999])&&(anim!=[1101,1102])&&(anim!=[1111,1112])
trigger6=stateno=368&&animelemtime(2)<0
time=2

[State -3, GetHitSnd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010||stateno=5020||stateno=5070||stateno=5080
trigger1=enemynear,hitdefattr=SCA,SA,HA
trigger2=gethitvar(animtype)>=2&&random<500
trigger3=gethitvar(animtype)=1&&random<375
trigger4=gethitvar(animtype)=0&&random<250
value=5000+(var(1)=2)*10,ceil(random/200)
channel=0
ignorehitpause=1
persistent=0

[State -3, sf3airrecover]
type=hitfallset
trigger1=stateno=5050&&hitfall
trigger1=prevstateno!=5080&&pos y<=-60
value=0

[State -3, collapse]
type=changestate
trigger1=!alive&&(stateno=[5000,5030])
trigger1=(prevstateno=[130,131])||(prevstateno=[140,141])||(prevstateno=[150,153])
value=5130

[State -3, KOfx]
type=helper
triggerall=winKO&&!numhelper(7600)&&!numhelper(7610)
trigger1=movehit&&numtarget&&(stateno=[3000,4999])
trigger2=numhelper(3005)
trigger2=helper(3005),var(3)
trigger3=numhelper(3025)
trigger3=helper(3025),var(3)
trigger4=numhelper(3045)
trigger4=helper(3045),var(3)
trigger5=numhelper(3055)
trigger5=helper(3055),var(3)
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