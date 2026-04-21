; _____________________________________
;| Shin Gouki by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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
value=3,(random<500)
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
pos=36,-65
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
value=3,(random<500)
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
pos=27,-21
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
value=3,(random<500)
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
pos=41,-64
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
trigger1=!time
value=4,13
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
trigger1=var(59)<=0&&animelemtime(3)>=0
trigger1=command="x"||command="y"||command="z"||command="a"||command="b"||command="c"
value=ifelse((command="x"||command="y"||command="z"),210,220)
[State 710, attack]
type=changestate
trigger1=var(59)>=1&&animelemtime(3)>=0&&(p2dist x=[0,60])&&p2movetype!=A
value=ifelse(random<500,210,220)
[State 710, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;==========<ROLL>==========
;---FORWARD---
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
value=3,ifelse(random<250,0,ifelse(random<333,1,ifelse(random<250,3,4)))
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
value=3,2
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
[State 740, aura]
type=helper
trigger1=anim=740&&animelemtime(5)>=0&&!numhelper(6000)
helpertype=normal
stateno=6000
ID=6000
postype=p1
ownpal=1

[State 740, anim]
type=changeanim
triggerall=anim=740&&animelemtime(2)>=0
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
value=4,15
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
pos=23,-74
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
ctrl=(statetype=A)
velset=ifelse((statetype=S),0,vel x),ifelse((statetype=S),0,vel y)

[State 760, snd]
type=playsnd
trigger1=!time
value=4,11
channel=0
volume=200
[State 760, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7260
ID=7260
postype=p1
pos=-5,-45-(anim=761)*30
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
movetime=30*(anim=760)

[State 760, var]
type=varset
trigger1=anim=760&&time=30
trigger2=anim=761&&time=1
var(20)=300

[State 760, image]
type=afterimage
trigger1=anim=760&&time=30
trigger2=anim=761&&time=1
time=2
timegap=1
framegap=3
length=15
palcontrast=0,128,256
palmul=.5,.7,.8
trans=add
persistent=0

[State 760, end]
type=changeanim
trigger1=anim=761&&!animtime
value=41+(vel x>0)+(vel x<0)*2
elem=7-(!vel x)*4
persistent=0
[State 760, end]
type=changestate
trigger1=anim=760&&!animtime
value=0
ctrl=1


;==========<STAND>==========
[Statedef 0]
type=S
physics=S
sprpriority=(prevstateno=500)
[State 0, anim]
type=changeanim
trigger1=anim!=0&&anim!=5
trigger2=anim=5&&!animtime
value=0
[State 0, stop]
type=posset
trigger1=1
y=0
[State 0, stop]
type=velset
trigger1=abs(vel x)<2
trigger2=time=4
x=0


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
y=ifelse(var(9)=2,.75,1)*const(velocity.jump.y)
[State 40, vel]
type=velset
trigger1=!animtime&&var(9)=3
x=ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,1.33*const(velocity.jump.fwd.x),1.33*const(velocity.jump.back.x)))
y=1.15*const(velocity.jump.y)
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
trigger1=!time&&(prevstateno=222||prevstateno=1050||(prevstateno=[1200,1250])||(prevstateno=[1301,1310])||prevstateno=3050)
value=48
[State 52, anim283]
type=changeanim
trigger1=!time&&prevstateno=282
value=283
[State 52, anim1102]
type=changeanim
trigger1=!time&&((prevstateno=[1100,1110])||prevstateno=3100)
value=1102
[State 52, anim1103]
type=changeanim
trigger1=!time&&prevstateno=4302
value=1103
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
trigger1=prevstateno<800
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
value=8
[State 100,as]
type=assertspecial
trigger1=1
flag=nowalk
flag2=noautoturn
[State 100, vel]
type=velSet
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
trigger2=var(59)>=1&&p2dist x<60
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
ownpal=1
[State 102, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1
[State 102, end]
type=changestate
triggerall=(animelemtime(2)>4)&&(animelemtime(3)<0)
trigger1=var(59)<=0&&command="holdfwd"
trigger2=var(59)>=1&&p2dist x>=60
value=100


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
movetype=A                      
physics=S                      
juggle=2           
anim=195
velset=0,0
sprpriority=1
ctrl=0            

[State 195, hit]
type=hitdef
trigger1=animelem=5
attr=S,NA                   
damage=10,0    
animtype=Back        
guardflag=MA           
hitflag=MA
priority=1,Hit             
pausetime=9,9              
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-34
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3,-4.5
air.type=Low
air.velocity=-3,-4
getpower=0
givepower=0
envshake.time=9
envshake.freq=60
envshake.ampl=2
palfx.color=32
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=32
fall=1

[State 195, flames]
type=helper
triggerall=movehit&&numtarget&&numhelper(7181)<1
trigger1=!(target,time)&&(target,movetype=H)
helpertype=normal
stateno=7181
ID=7181
name="flames"
postype=p2
bindtime=1000
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
ignorehitpause=1
persistent=0

[State 195, aura]
type=helper
trigger1=!animelemtime(5)
helpertype=normal
stateno=6000
ID=6000
postype=p1
ownpal=1
persistent=0
ignorehitpause=1
[State 195, metsu]
type=helper
trigger1=!animelemtime(5)
helpertype=normal
stateno=6002
ID=6002
postype=p1
pos=-5,-100
facing=ifelse(facing=1,1,-1)
ownpal=1
persistent=0
ignorehitpause=1
[State 195, snd]
type=playsnd
trigger1=!animelemtime(5)
value=4,10
channel=0
ignorehitpause=1
[State 195, snd]
type=playsnd
trigger1=animelem=5
value=5,4
ignorehitpause=1
[State 195, dust]
type=explod
trigger1=animelem=5
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=-34,0
ownpal=1
ignorehitpause=1
[State 195, dust]
type=explod
trigger1=animelem=5
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-34,0
scale=.75,.75
ownpal=1
ignorehitpause=1
[State 195, shake]
type=envshake
trigger1=animelem=5
time=18
freq=60
ampl=4
ignorehitpause=1

[State 195, power]
type=poweradd
trigger1=animelem=5&&!var(20)
value=50
[State 195, attackvar]
type=varadd
trigger1=!animtime&&fvar(13)<=.15
fvar(13)=.05
persistent=0

[State 195, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


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
[State 170, dust]
type=explod
trigger1=animelem=2
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-6,0
ownpal=1
scale=.5,.5
[State 170, snd]
type=playsnd
trigger1=animelem=2
value=0,52


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
[State 175, dust]
type=explod
trigger1=animelem=5
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-5,6
ownpal=1
[State 175, snd]
type=playsnd
trigger1=animelem=5
value=5,4


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
[State 5900, end]
type=changestate
trigger1=!time
value=ifelse(roundno=1,190,0)


;==========<PREINTRO>==========
[Statedef 190]
type=S
ctrl=0
velset=0,0
[State 190, specialintrounavailable]
type=varset
trigger1=!time
var(0)=0
[State 190, intro vs Vega]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Phantom.of.the.Server"&&enemy,name="Vega"
value=350
[State 190, vs Evil Ryu]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Phantom.of.the.Server"&&enemy,name="Ryu"
trigger1=var(0):=2
trigger1=(enemy,var(1)=2)
value=192
[State 190, vsHaohmaru]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,name="Cvshaohmaru"&&enemy,authorname="Z Sabre User"
value=191
[State 190, vs Adon]
type=changestate
trigger1=numenemy
trigger1=!(teammode=simul)&&!(enemy,teammode=simul)
trigger1=enemy,authorname="Sepp"&&enemy,name="Adon"
value=193
[State 190, killvega]
type=changestate
trigger1=!time&&var(0)!=2&&!numpartner&&numenemy&&random<250
trigger1=ifelse((enemy,name="Shin Gouki")&&(enemy,authorname="Phantom.of.the.Server"),!(enemy,numhelper(6100)),1)
trigger1=ifelse((enemy,name="cvsgouki"),(enemy,authorname!="Warusaki3"),1)
trigger1=ifelse((enemy,name="Vega"),(enemy,authorname!="Phantom.of.the.Server"),1)
trigger1=ifelse((enemy,name="cvsvega"),((enemy,authorname!="Warusaki3")&&(enemy,authorname!="Gargoyle")),1)
trigger1=ifelse((enemy,name="M. Bison"),(enemy,authorname!="VK, Updated by Terry Kuo, adapted by Tenebrous"),1)
trigger1=ifelse((enemy,name="M.Bison"),(enemy,authorname!="N-Mario"),1)
trigger1=ifelse((enemy,name="CvSBison"),(enemy,authorname!="Team Kai (Saiai and Koga)"),1)
trigger1=enemy,name!="[Necromancer's] M. Bison"&&enemy,name!="Sevil Nahte"
value=188
[State 190, intro]
type=changestate
trigger1=ifelse(var(0)=2,time>=1,1)
value=ifelse(random<333,182,ifelse(random<500,187,181))


;==========<INTRO 1>==========
[Statedef 182]
type=S
anim=182
[State 182, intro]
type=assertspecial
trigger1=1
flag=intro

[State 182, aura]
type=helper
trigger1=!animelemtime(7)
helpertype=normal
stateno=6000
ID=6000
postype=p1
ownpal=1
persistent=0
[State 182, metsu]
type=helper
trigger1=!animelemtime(7)
helpertype=normal
stateno=6002
ID=6002
postype=p1
pos=-5,-100
facing=ifelse(facing=1,1,-1)
ownpal=1
persistent=0
[State 182, snd]
type=playsnd
trigger1=!animelemtime(7)
value=3,5
channel=0
[State 182, snd]
type=playsnd
trigger1=!animelemtime(7)
value=5,4

[State 182, dust]
type=explod
trigger1=animelem=7
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=-34,0
ownpal=1
[State 182, dust]
type=explod
trigger1=animelem=7
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-34,0
scale=.75,.75
ownpal=1

[State 182, shake]
type=envshake
trigger1=animelemtime(7)>=0&&animelemtime(26)<0&&!(animelemtime(7)%12)
time=12
freq=60
ampl=4
[State 182, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO 2>==========
[Statedef 187]
type=S
anim=187
[State 187, intro]
type=assertspecial
trigger1=1
flag=intro

[State 187, kanji]
type=explod
trigger1=!time
anim=6015+(facing=-1)
ID=6015
sprpriority=1
postype=p1
bindtime=-1
removeongethit=1
ownpal=1

[State 187, snd]
type=playsnd
trigger1=!time
value=5,11
[State 187, hadou]
type=explod
trigger1=!time
anim=6020
ID=6020
sprpriority=2
postype=p1
pos=14,-72
removetime=260
removeongethit=1
ownpal=1
[State 187, grow]
type=modifyexplod
trigger1=time<40
ID=6020
scale=(.025*time),(.025*time)
[State 187, normal]
type=modifyexplod
trigger1=time>=40&&time<=120
ID=6020
scale=1,1
[State 187, shrink]
type=modifyexplod
trigger1=time>120&&time<=280
ID=6020
scale=1-(.0063*(time-120)),1-(.0063*(time-120))
[State 187, fx]
type=helper
trigger1=time>120&&time<=220
trigger1=!(time%4)&&numhelper(6021)<12
helpertype=normal
stateno=6021
ID=6021
name="Red Particle"
postype=p1
pos=ifelse(random<250,-160,ifelse(random<333,-80,ifelse(random<500,80,160))),-75-(random%200)
;pos=ceil(240-random/2.1),-75-(random%200)
;ifelse(random<250,-160,ifelse(random<333,-80,ifelse(random<500,80,160)))
size.xscale=ifelse(random<500,.5,-.5)
size.yscale=ifelse(random<500,.5,-.5)
ownpal=1

[State 187, dust]
type=explod
trigger1=time>120&&time<=240
trigger1=ifelse(animelemtime(4)>=0,!(time%12),!(time%9))
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=ifelse(animelemtime(4)>=0,16,20),0
ownpal=1
scale=.75,.75
[State 187, snd]
type=playsnd
trigger1=time=100
value=5,12
channel=4
loop=1
[State 187, snd]
type=stopsnd
trigger1=time>=260
channel=4
[State 187, snd]
type=playsnd
trigger1=time=200
value=4,7
channel=0
[State 187, snd]
type=playsnd
trigger1=animelem=11
value=5,4
[State 182, dust]
type=explod
trigger1=animelem=11
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=-34,0
ownpal=1
[State 182, dust]
type=explod
trigger1=animelem=11
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-34,0
scale=.75,.75
ownpal=1
[State 187, shake]
type=envshake
trigger1=animelem=11
time=8
freq=60
ampl=4
[State 187, shake]
type=envshake
trigger1=time>120&&time<=210&&!(time%12)
time=12
freq=60
ampl=ifelse(animelemtime(4)>=0,3,4)
[State 187, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO 3>==========
[Statedef 181]
type=S
anim=181
[State 181, intro]
type=assertspecial
trigger1=1
flag=intro
[State 181, kanji]
type=explod
trigger1=!time
anim=6010
ID=6010
sprpriority=1
postype=p1
facing=ifelse(facing=1,1,-1)
pos=ifelse(facing=1,0,32)
bindtime=-1
removeongethit=1
ownpal=1
[State 181, snd]
type=playsnd
trigger1=time=15
value=4,3
channel=0
[State 181, end]
type=changestate
trigger1=!animtime
value=0


;========================<MISOGI INTRO>=============================
[Statedef 188]
type=A
physics=N
movetype=I
anim=188
ctrl=0
sprpriority=-1
[State 188, intro]
type=assertspecial
trigger1=1
flag=intro
[State 188, pos]
type=screenbound
trigger1=animelemtime(5)<0
value=0
movecamera=1,0
[State 188, vega]
type=helper
trigger1=!time
helpertype=normal
stateno=6100
ID=6100
name="Vega"
postype=p1
pos=20,-ceil(pos y)
;pos=15,-ceil(pos y)
size.shadowoffset=6
ownpal=1
[State 188, palfx]
type=palfx
trigger1=animelemtime(2)<0
add=-255,-255,-255
time=1
[State 188, palfx]
type=palfx
trigger1=animelem=2
add=-255,-255,-255
sinadd=255,255,255,28
time=7
[State 188, pos]
type=posadd
trigger1=!time
y=-240
[State 188, vel]
type=velset
trigger1=animelem=2
y=20
[State 188, grav]
type=gravity
trigger1=animelemtime(2)>0
[State 188, anim]
type=changeanim
trigger1=time&&animelemtime(5)<0&&pos y>=-5
value=188
elem=5
persistent=0
[State 188, stop]
type=posset
trigger1=animelemtime(5)>=0
y=0
[State 188, stop]
type=velset
trigger1=animelemtime(5)>=0
y=0
[State 188, shake]
type=envshake
trigger1=!animelemtime(5)
time=30
ampl=12
[State 188, snd]
type=playsnd
trigger1=animelem=5
value=5,10
[State 188, dust]
type=explod
trigger1=animelem=5
anim=7100
ID=7100
sprpriority=2
postype=p1
ownpal=1
[State 188, dust]
type=explod
trigger1=animelem=5
anim=7104
ID=7104
sprpriority=-2
postype=p1
scale=.75,.75
ownpal=1
[State 188, snd]
type=playsnd
trigger1=animelem=3
value=4,10
channel=0
[State 188, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO vs EVIL RYU>==========
[Statedef 192]
type=S
physics=N
anim=192
sprpriority=0
[State 192, intro]
type=assertspecial
trigger1=1
flag=intro
[State 192, camera]
type=helper
trigger1=!numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
[State 192, screen]
type=screenbound
trigger1=1
value=0
movecamera=0,1

[State 192, vel]
type=posset
trigger1=!time
x=-240*facing
[State 192, vel]
type=velset
trigger1=!time
x=6
[State 192, snd]
type=playsnd
trigger1=!time
value=5,6

[State 192, anim]
type=changeanim
trigger1=animelemtime(2)<0&&p2dist x<=72
value=192
elem=2
[State 192, snd]
type=playsnd
trigger1=!animelemtime(2)
value=4,10
channel=0
[State 192, vel]
type=velset
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
x=0
[State 192, pos]
type=posset
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
x=-36*facing

[State 192, fadeout]
type=allpalfx
trigger1=animelemtime(2)=10
time=20
sinadd=-255,-255,-255,80
[State 192, black]
type=envcolor
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
time=2
value=0,0,0
[State 192, assert]
type=assertspecial
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
flag=nobardisplay

[State 192, hitsnd]
type=playsnd
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
trigger1=(animelemtime(2)%8)=1
value=2,0
[State 192, sparks]
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
[State 192, shake]
type=envshake
trigger1=animelemtime(2)>=30&&animelemtime(3)<0
trigger1=(animelemtime(2)%8)=1
time=2
freq=90
ampl=-3

[State 192, anim]
type=changeanim
trigger1=animelemtime(2)>=72&&animelemtime(3)<0
value=192
elem=3
[State 192, snd]
type=playsnd
trigger1=!animelemtime(3)
value=5000,4
channel=0

[State 192, snd]
type=playsnd
trigger1=!animelemtime(3)
value=7,1
[State 192, lightning]
type=helper
trigger1=!animelemtime(3)
helpertype=normal
stateno=7250
ID=7250
postype=left
pos=160,-60
ownpal=1
supermovetime=999

[State 192, vel]
type=velset
trigger1=!animelemtime(3)
x=-6
[State 192, pos]
type=posset
trigger1=animelemtime(3)>=0&&(helper(7650),rootdist x<=0)
x=ceil(helper(7650),pos x)
[State 192, vel]
type=velset
trigger1=animelemtime(3)>=0&&(helper(7650),rootdist x<=0)
x=0
[State 192, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO vs HAOHMARU>==========
[Statedef 191]
type=S
anim=191
[State 191, intro]
type=assertspecial
trigger1=1
flag=intro
[State 191, kanji]
type=explod
trigger1=!time
anim=6014
ID=6014
sprpriority=1
postype=p1
facing=ifelse(facing=1,1,-1)
pos=ifelse(facing=1,0,32)
bindtime=-1
removeongethit=1
ownpal=1
[State 191, snd]
type=playsnd
trigger1=time=180
value=4,15
channel=0
[State 191, end]
type=changestate
trigger1=!animtime
value=0


;==========<INTRO vs Sepp's ADON>==========
[Statedef 193]
type=S
anim=193
sprpriority=-1
[State 193, intro]
type=assertspecial
trigger1=1
flag=intro
ignorehitpause=1
[State 193, kanji]
type=explod
trigger1=!time
anim=6010
ID=6010
sprpriority=1
postype=p1
facing=ifelse(facing=1,1,-1)
pos=ifelse(facing=1,0,32)
bindtime=-1
removeongethit=1
ownpal=1
persistent=0
[State 193, snd]
type=playsnd
trigger1=animelemtime(2)<0&&time=15
value=4,3
channel=0
persistent=0
[State 193, anim]
type=changeanim
trigger1=animelemtime(5)>0&&animelemtime(6)<0
value=193
elem=5
[State 193, anim]
type=changeanim
trigger1=animelemtime(6)<0&&(enemynear,anim=1220)&&(enemynear,vel x>0)&&p2dist x<=102
value=193
elem=6

[State 193, snd]
type=playsnd
trigger1=animelem=6
value=5,14
[State 193, dust]
type=explod
trigger1=animelem=6
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=-35
vel=-.5,0
ownpal=1

[State 193, snd]
type=playsnd
trigger1=animelem=11
value=4,10
channel=0
[State 193, sts]
type=statetypeset
trigger1=animelemtime(11)>=0&&animelemtime(18)<0
movetype=A
[State 193, hit]
type=hitdef
trigger1=animelem=13
attr=S,NA
animtype=Up
hitflag=MAF
priority=7,Hit
pausetime=16,16
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-20,-76
hitsound=s2,3
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-1,-6
air.type=High
air.velocity=-1,-6
getpower=0
givepower=0
envshake.time=16
envshake.ampl=4
sprpriority=1

[State 193, aura]
type=helper
trigger1=!animelemtime(24)
helpertype=normal
stateno=6000
ID=6000
postype=p1
ownpal=1
persistent=0
[State 193, metsu]
type=helper
trigger1=!animelemtime(24)
helpertype=normal
stateno=6002
ID=6002
postype=p1
pos=-5,-100
facing=ifelse(facing=1,1,-1)
ownpal=1
persistent=0
[State 193, snd]
type=playsnd
trigger1=animelem=24
value=4,13
channel=0
[State 193, snd]
type=playsnd
trigger1=animelem=24
value=5,4
[State 193, dust]
type=explod
trigger1=animelem=24
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=-34,0
ownpal=1
[State 193, dust]
type=explod
trigger1=animelem=24
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-34,0
scale=.75,.75
ownpal=1
[State 193, shake]
type=envshake
trigger1=animelem=24
time=18
freq=60
ampl=4

[State 193, end]
type=changestate
trigger1=!animtime
value=0


;========================<INTRO vs VEGA>=============================
[Statedef 350]
type=A
physics=N
movetype=I
anim=350
ctrl=0
sprpriority=-1
[State 350, intro]
type=assertspecial
trigger1=1
flag=intro
[State 350, pos]
type=screenbound
trigger1=animelemtime(5)<0
value=0
movecamera=1,0
[State 350, palfx]
type=palfx
trigger1=animelemtime(2)<0
add=-255,-255,-255
time=1
[State 350, palfx]
type=palfx
trigger1=animelem=2
add=-255,-255,-255
sinadd=255,255,255,28
time=7
[State 350, pos]
type=posadd
trigger1=!time
y=-240
[State 350, snd]
type=playsnd
trigger1=time=5
value=4,7
channel=0
[State 350, vel]
type=velset
trigger1=animelem=2
y=20
[State 350, grav]
type=gravity
trigger1=animelemtime(2)>0
[State 350, anim]
type=changeanim
trigger1=time&&animelemtime(5)<0&&pos y>=-5
value=350
elem=5
persistent=0
[State 350, stop]
type=posset
trigger1=animelemtime(5)>=0
y=0
[State 350, stop]
type=velset
trigger1=animelemtime(5)>=0
y=0
[State 350, shake]
type=envshake
trigger1=!animelemtime(5)
time=30
ampl=12
[State 350, snd]
type=playsnd
trigger1=animelem=5
value=5,10
[State 350, dust]
type=explod
trigger1=animelem=5
anim=7100
ID=7100
sprpriority=2
postype=p1
ownpal=1
[State 350, dust]
type=explod
trigger1=animelem=5
anim=7104
ID=7104
sprpriority=-2
postype=p1
scale=.75,.75
ownpal=1
[State 350, end]
type=changestate
trigger1=!animtime
value=0


;==========<WIN POSE DECIDER>==========
[Statedef 180]
type=S
[State 180, winSGS/misogi]
type=changestate
trigger1=prevstateno=183||prevstateno=184
value=prevstateno
[State 180, win]
type=changestate
trigger1=!time
trigger1=command="holdx"||command="holdy"||command="holdz"||command="holda"||command="holdb"||command="holdc"
value=ifelse((command="holdz"||command="holdc"),189,ifelse((command="holdy"||command="holdb"),185,186))
[State 180, win]
type=changestate
trigger1=!time
value=ifelse(random<333,185,ifelse(random<500,186,189))


;==========<WIN 1>==========
[Statedef 185]
type=S
anim=185
[State 185, snd]
type=playsnd
trigger1=animelem=4
value=4,ifelse(random<500,2,8)
channel=0
[State 185, kanji]
type=explod
trigger1=animelem=4
anim=6011
ID=6011
sprpriority=1
postype=p1
facing=ifelse(facing=1,1,-1)
pos=ifelse(facing=1,0,32)
bindtime=-1
removeongethit=1
ownpal=1


;==========<WIN 2>==========
[Statedef 186]
type=S
anim=186
[State 186, snd]
type=playsnd
trigger1=animelem=3
value=3,5
channel=0
persistent=0


;==========<WIN 3>==========
[Statedef 189]
type=S
anim=189
[State 189, aura]
type=helper
trigger1=!animelemtime(5)
helpertype=normal
stateno=6000
ID=6000
postype=p1
ownpal=1
persistent=0
ignorehitpause=1
[State 189, metsu]
type=helper
trigger1=!animelemtime(5)
helpertype=normal
stateno=6002
ID=6002
postype=p1
pos=-5,-100
facing=ifelse(facing=1,1,-1)
ownpal=1
persistent=0
ignorehitpause=1
[State 189, snd]
type=playsnd
trigger1=!animelemtime(5)
value=5,4
ignorehitpause=1
[State 189, snd]
type=playsnd
trigger1=animelem=5
value=4,13
channel=0
[State 189, dust]
type=explod
trigger1=animelem=5
anim=7100
ID=7100
sprpriority=2
postype=p1
pos=-34,0
ownpal=1
[State 189, dust]
type=explod
trigger1=animelem=5
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=-34,0
scale=.75,.75
ownpal=1
[State 189, shake]
type=envshake
trigger1=animelemtime(5)>=0&&!(time%12)
time=12
freq=60
ampl=4
[State 189, snd]
type=playsnd
trigger1=animelem=5
value=5,12
loop=1
persistent=0


;==========<WIN by S.G.S.>==========
[Statedef 183]
type=S
sprpriority=-4
anim=183
[State 183, safety]
type=removeexplod
trigger1=1
ID=6013
[State 183, kanji]
type=helper
trigger1=!time&&prevstateno=4001
helpertype=normal
stateno=6012
ID=6012
postype=p1
facing=ifelse(facing=1,1,-1)
pos=ifelse(facing=1,0,32)
ownpal=1
persistent=0
pausemovetime=99
supermovetime=99
[State 183, kanjibg]
type=helper
trigger1=!time&&prevstateno=4001
helpertype=normal
stateno=7610
ID=7610
postype=left
ownpal=1
persistent=0
[State 183, snd]
type=playsnd
trigger1=time=10&&prevstateno=4001
value=4,12
channel=0
[State 183, win]
type=changestate
trigger1=prevstateno=4001&&time>150
value=180
ctrl=1


;==========<WIN by MISOGI>==========
[Statedef 184]
type=S
sprpriority=-5
[State 184, anim]
type=changeanim
trigger1=anim!=184
value=184
[State 184, snd]
type=playsnd
trigger1=animelem=6
value=4,8
channel=0
[State 184, kanji]
type=explod
trigger1=animelem=6
anim=6011
ID=6011
sprpriority=-3
postype=p1
facing=ifelse(facing=1,1,-1)
pos=ifelse(facing=1,0,32)
bindtime=-1
removeongethit=1
ownpal=1
[State 184, win]
type=changestate
trigger1=prevstateno=4100&&time>60
value=180
ctrl=1


;==========<CONTINUE?>==========
[Statedef 5500]
type=S
anim=5500
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
velset=vel x-3
[State 5201, turn]
type=turn
trigger1=!time&&vel x>0
[State 5201, pos]
type=posset
trigger1=pos y>=0
y=0
[State 5201, vel]
type=velset
trigger1=pos y>=0
y=0
[State 5201, vel]
type=veladd
trigger1=1
x=-vel x/20
[State 5201, snd]
type=playsnd
trigger1=animelem=1
value=3,1
[State 5201, flash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 5201, nhb]
type=nothitby
trigger1=animelemtime(5)<0
value=SCA
time=1
[State 5201, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
ownpal=1
scale=.5,.5
[State 5201, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1

[Statedef 5210]
type=A
movetype=I
physics=A
anim=5210
ctrl=0
[State 5210, snd]
type=playsnd
trigger1=!time
value=3,1
channel=0
[State 5210, flash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
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
trigger1=animelemtime(6)<0
value=SCA
time=1
[State 5210, ctrl]
type=ctrlset
trigger1=animelemtime(7)>=0
value=1


;==========<RECOVERY ROLL>==========
[Statedef 5220]
type=A
movetype=H
physics=N
[State 5220, anim]
type=changeanim
trigger1=anim=5035&&!animtime
value=5050
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
[State 5221, turn]
type=turn
trigger1=!time&&p2dist x<0
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
trigger1=animelemtime(13)<0
value=SCA
time=1
[State 5221, push]
type=playerpush
trigger1=animelemtime(15)<0
value=0
[State 5221, flash]
type=palfx
trigger1=!time
add=0,50,255
sinadd=0,-50,-255,60
time=15
[State 5221, anim]
type=changeanim
trigger1=!animelemtime(8)&&command!="holdfwd"
value=5220
elem=12
[State 5221, sts]
type=statetypeset
trigger1=animelemtime(15)>=0
physics=S
[State 5221, dust]
type=explod
trigger1=animelemtime(13)<0&&!(time%5)
anim=6051
ID=6051
sprpriority=3
postype=p1
vel=-1,0
ownpal=1
[State 5221, dust]
type=explod
trigger1=animelem=15
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=25,0
vel=0,0
ownpal=1
scale=.5,.5
[State 5221, snd]
type=playsnd
trigger1=animelem=15
value=0,53
persistent=0

[State 5221, end]
type=changestate
trigger1=!animtime
value=0
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
trigger1=(stateno!=[800,815])&&(stateno!=[4301,4303])&&(stateno!=[1320,1335])
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
fvar(12)=(ifelse(fvar(10)>=.9,.1,1-fvar(10))+(fvar(11)*!var(20))+fvar(13)+(.2*var(29)))
ignorehitpause=1
[State -2, attackincreasereset]
type=varset
trigger1=roundstate<=1
fvar(13)=0
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
trigger1=var(20)>0&&!(gametime%16)
time=16
add=20,20,20
sinadd=20,20,20,16

[State -2, nodizzy >:)]
type=null;selfstate
trigger1=anim=5300
value=0
ctrl=1

[State -2, stopsnd]
type=stopsnd
trigger1=!time&&prevstateno=187
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
value=11,ifelse(stateno=5130,3,ifelse(random<500,1,2))
ignorehitpause=1
persistent=0

[State -2, resetvegavar]
type=varset
triggerall=numenemy&&var(51)
trigger1=enemy,name="Shin Gouki"&&enemy,authorname="Phantom.of.the.Server"&&enemy,numhelper(6100)
trigger2=enemy,name="Vega"&&enemy,authorname="Phantom.of.the.Server"
trigger3=enemy,name="cvsvega"&&(enemy,authorname="Warusaki3"||enemy,authorname!="Gargoyle")
trigger4=enemy,name="M. Bison"&&enemy,authorname="VK, Updated by Terry Kuo, adapted by Tenebrous"
trigger5=enemy,name="M.Bison"&&enemy,authorname="N-Mario"
trigger6=enemy,name="CvSBison"&&enemy,authorname="Team Kai (Saiai and Koga)"
trigger7=enemy,name="[Necromancer's] M. Bison"||enemy,name="Sevil Nahte"
var(51)=0
ignorehitpause=1
[State -2, vega]
type=helper
trigger1=var(51)&&!numhelper(6100)&&stateno!=5900&&stateno!=190
helpertype=normal
stateno=6101
ID=6100
name="Vega"
postype=p1
pos=20,-ceil(pos y)
;pos=15,-ceil(pos y)
size.shadowoffset=6
ownpal=1

[State -2, Debug]
type=displaytoclipboard
trigger1=1
text="AI=%d Damage=%f Defence=%f Original Combo=%d by P.o.t.S."
params=var(59)>=1, fvar(12), 1+fvar(14), var(20)


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
name="Shin Gouki's AI"
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
trigger2=stateno=[710,720]
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

[State -3, lv1supershadow]
type=afterimage
trigger1=stateno=3000&&anim=3000&&!animelemtime(3)
trigger2=stateno=3050&&!animelemtime(2)
trigger3=stateno=3100&&anim=3100&&animelemtime(1)=2
trigger4=stateno=3200&&anim=3200&&!animelemtime(2)
trigger5=stateno=3250&&anim=3250&&!animelemtime(3)
trigger6=stateno=3300&&time=1
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
trigger1=stateno=4200&&!animelemtime(2)
trigger2=stateno=4300&&!animelemtime(6)
trigger3=stateno=4400&&anim=4400&&!animelemtime(2)
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
trigger1=stateno=4000&&time=1
trigger2=stateno=4100&&anim=4100&&time=63
trigger3=stateno=192&&time=1
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
trigger1=stateno=50&&var(9)=3&&vel y<-1
trigger2=var(20)>0
trigger3=(stateno=[3000,4999])&&anim!=1101&&anim!=1102&&anim!=3205&&(anim!=[4102,4103])&&anim!=4301
trigger4=(stateno=[710,720])||stateno=1400
trigger5=stateno=192&&animelemtime(2)<0
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
triggerall=winKO&&!numhelper(7600)&&!numhelper(7610)
trigger1=movehit&&numtarget&&(stateno=[3000,4999])
trigger2=numhelper(3005)
trigger2=helper(3005),var(3)
trigger3=numhelper(3055)
trigger3=helper(3055),var(3)
trigger4=numhelper(4205)
trigger4=helper(4205),var(3)
trigger5=numhelper(4305)
trigger5=helper(4305),var(3)
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