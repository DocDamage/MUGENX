; _____________________________________
;| Shin Gouki by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<HELPER STATES>==========================================
;================================================================================================

;========================<AI ACTIVATION>=============================
;---Adapted from Winane's---
[StateDef 9741]
anim=9741
ctrl=0
[State 9741, safety]
type=selfstate
trigger1=!ishelper
value=0
[State 9741, end]
type=destroyself
trigger1=((root,ID)!=(parent,ID))||!(root,alive)
trigger2=roundstate!=2
trigger3=root,var(59)

[State 9741, facing]
type=turn
trigger1=facing!=root,facing
[State 9741, pausecheck]
type=varset
trigger1=(root,movecontact)&&!(root,ctrl)
trigger2=(facing!=root,facing)
var(0)=0

[State 9741, dirturnonAI]
type=parentvarset
triggerall=var(0)
trigger1=(root,command="up")||(root,command="down")||(root,command="back")||(root,command="fwd")
var(59)=1
[State 9741, dirturnoffAI]
type=parentvarset
trigger1=(command="up")&&(root,command="up")
trigger2=(command="down")&&(root,command="down")
trigger3=(command="back")&&(root,command="back")
trigger4=(command="fwd")&&(root,command="fwd")
var(59)=-1
[State 9741, buttonturnonAI]
type=parentvarset
triggerall=var(0)
trigger1=(root,command="a")||(root,command="b")||(root,command="c")||(root,command="x")
trigger2=(root,command="y")||(root,command="z")||(root,command="start")
var(59)=1
[State 9741, buttonturnoffAI]
type=parentvarset
trigger1=(command="a")&&(root,command="a")
trigger2=(command="b")&&(root,command="b")
trigger3=(command="c")&&(root,command="c")
trigger4=(command="x")&&(root,command="x")
trigger5=(command="y")&&(root,command="y")
trigger6=(command="z")&&(root,command="z")
trigger7=(command="start")&&(root,command="start")
var(59)=-1
[State 9741, unpausecheck]
type=varset
trigger1=root,ctrl
var(0)=1


;========================<GOU HADOU KEN>=============================
[Statedef 1005]
type=A
physics=N
movetype=A
anim=1005
ctrl=0
velset=0,0
sprpriority=4

[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1006
ignorehitpause=1
[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1005, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1005, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 1005, timevar]
type=varadd
trigger1=time&&var(1)<25
var(1)=1

[State 1005, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1005, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=60
[State 1005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1005, vel]
type=velset
trigger1=1
x=ifelse(var(10)=3,6,ifelse(var(10)=2,4.5,3))
y=0

[State 1005, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 1005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1005, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,SP
damage=ceil(ifelse(var(1)<=12,100,90)*root,fvar(12)),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4/((root,var(20)>0)+1),4/((root,var(20)>0)+1)
sparkno=-1
guard.sparkno=s7001
guardsound=s2,0
ground.type=High
ground.slidetime=24/((root,var(20)>0)+1)
ground.hittime=24/((root,var(20)>0)+1)
ground.velocity=-vel x*ifelse(var(1)<=12,.75,1.5),ifelse(var(1)<=12,-2.5,0)
ground.cornerpush.veloff=0
air.velocity=-.75*vel x,-2
fall=var(1)<=12
air.fall=1
fall.recover=0
p2facing=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=ifelse(var(1)<=12,100,90),5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-vel x*ifelse(var(1)<=12,.75,1.5),ifelse(var(1)<=12,-2.5,0)
ground.cornerpush.veloff=0
air.velocity=-.75*vel x,-2
fall=var(1)<=12
air.fall=1
fall.recover=0
p2facing=1
getpower=0
givepower=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1005, end]
type=changestate
trigger1=movecontact
value=1006
ignorehitpause=1
[State 1006, end]
type=destroyself
trigger1=frontedgedist<-120||backedgedist<-120

[Statedef 1006]
type=A
physics=N
movetype=I
anim=3006
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1
[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1006, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 1006, end]
type=destroyself
trigger1=!animtime


;========================<SHAKUNETSU HADOU KEN>=============================
[Statedef 1025]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 1025, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=ifelse(var(2)<var(10),1025,1026)
ignorehitpause=1
[State 1025,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1025, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=root,var(10)
[State 1025, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=1025

[State 1025, hitvar]
type=varadd
trigger1=!time&&!sysvar(4)
var(2)=1
[State 1025, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1025, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1025, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=65
[State 1025, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1025, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),1,ifelse(var(10)=3,7,ifelse(var(10)=2,5.3,3.5)))
y=0

[State 1025, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 1025, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1025, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,SP
damage=ceil(ifelse(var(10)=3,40,ifelse(var(10)=2,50,80))*root,fvar(12))
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4/((root,var(20)>0)+1),6/((root,var(20)>0)+1)
sparkno=-1
sparkxy=-10,0
guard.sparkno=s7001
guardsound=s2,0
ground.type=Low
ground.slidetime=24/((root,var(20)>0)+1)
ground.hittime=24/((root,var(20)>0)+1)
ground.velocity=-4.5,-3
ground.cornerpush.veloff=0
air.velocity=-4.5,-3
p2facing=1
fall=1
fall.recover=0
getpower=55*!(root,var(20))
envshake.time=16
envshake.freq=100
envshake.ampl=5
palfx.color=32
palfx.sinadd=80,25,0,8
palfx.mul=512,256,128
palfx.time=32
sprpriority=4

[State 1025, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=ifelse(var(10)=3,40,ifelse(var(10)=2,50,80))
affectteam=F
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
sparkxy=-10,0
guard.sparkno=s7001
guardsound=s2,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-4.5,-3
ground.cornerpush.veloff=0
air.velocity=-4.5,-3
p2facing=1
fall=1
fall.recover=0
getpower=0
givepower=0
envshake.time=16
envshake.freq=100
envshake.ampl=5
sprpriority=4

[State 1025, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1025, noflamesvar]
type=varset
triggerall=movehit&&numtarget
trigger1=(target,ID=root,ID)
trigger2=numpartner
trigger2=(target,ID=partner,ID)
var(16)=1
ignorehitpause=1
[State 1025, flames]
type=helper
trigger1=movehit&&numtarget&&numhelper(7181)<1
trigger1=!(target,time)&&(target,movetype=H)&&!var(16)
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
[State 1025, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 1025, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<var(10),1025,1026)
[State 1025, end]
type=destroyself
trigger1=frontedgedist<-120||backedgedist<-120

[Statedef 1026]
type=A
physics=N
movetype=A
anim=1026
ctrl=0
velset=0,0
sprpriority=4
[State 1026, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1026, snd]
type=playsnd
trigger1=animelem=1
value=5,2
ignorehitpause=1
persistent=0
[State 1026, end]
type=destroyself
trigger1=!animtime


;========================<ZANKUU HADOUKEN>=============================
[Statedef 1055]
type=A
physics=N
movetype=A
anim=1055
ctrl=0
velset=0,0
sprpriority=4

[State 1055, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1056
ignorehitpause=1
[State 1055,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1055, strengthvar]
type=varset
trigger1=!time
var(10)=root, var(10)
[State 1055, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1055, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1055, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=53
[State 1055, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1055, vel]
type=velset
trigger1=1
x=ifelse(var(10)=3,5.7,ifelse(var(10)=2,4.3,2.9))
y=ifelse(var(10)=3,4,ifelse(var(10)=2,3,2))

[State 1055, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 1055, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1055, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=A,SP
damage=ceil(55*root,fvar(12)),5
animtype=Hard
fall.animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=4/((root,var(20)>0)+1),4/((root,var(20)>0)+1)
sparkno=-1
sparkxy=-10,0
guard.sparkno=s7001
guardsound=s2,0
ground.type=High
ground.slidetime=24/((root,var(20)>0)+1)
ground.hittime=24/((root,var(20)>0)+1)
ground.velocity=-1.5*vel x,0
ground.cornerpush.veloff=0
air.velocity=-1.5*vel x,-2
down.hittime=32
down.velocity=0,0
air.fall=1
fall.recover=0
p2facing=ifelse(p2statetype=L,0,1)
getpower=55*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1055, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=A,SP
damage=55,5
affectteam=F
animtype=Hard
fall.animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=4,4
sparkno=-1
sparkxy=-10,0
guard.sparkno=s7001
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-1.5*vel x,0
ground.cornerpush.veloff=0
air.velocity=-1.5*vel x,-2
down.hittime=32
down.velocity=0,0
air.fall=1
fall.recover=0
getpower=0
givepower=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1055, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1055, end]
type=changestate
trigger1=movecontact
value=1056
ignorehitpause=1
[State 1055, end]
type=changestate
trigger1=pos y>=0
value=1057
ignorehitpause=1
[State 1055, end]
type=destroyself
trigger1=frontedgedist<-83||backedgedist<-120

[Statedef 1056]
type=A
physics=N
movetype=I
anim=3056
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1
[State 1056, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1056, snd]
type=playsnd
trigger1=animelem=1
value=5,3
ignorehitpause=1
persistent=0
[State 1056, end]
type=destroyself
trigger1=!animtime

[Statedef 1057]
type=A
physics=N
movetype=I
anim=3057
velset=0,0
ctrl=0
sprpriority=4
[State 1057, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1057, pos]
type=posset
trigger1=1
y=0
[State 1057, snd]
type=playsnd
trigger1=animelem=1
value=5,3
ignorehitpause=1
persistent=0
[State 1057, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-2
pos=0,0
vel=0,0
removetime=-2
ownpal=1
scale=.75,.75
[State 1057, end]
type=destroyself
trigger1=!animtime


;========================<MESSATSU GOU HADOU>=============================
[Statedef 3005]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4
 
[State 3005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=ifelse(var(2)<8,3005,3006)
ignorehitpause=1
[State 3005,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 3005, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=5
[State 3005, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=3005

[State 3005, hitvar]
type=varadd
trigger1=!time&&!sysvar(4)
var(2)=1
[State 3005, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 3005, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 3005, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=80
[State 3005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 3005, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),1,9)
y=0

[State 3005, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 3005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 3005, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,HP
damage=ceil(32*root,fvar(12)),5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
sparkxy=-10,0
guard.sparkno=s7001
guardsound=s2,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-6,-4
ground.cornerpush.veloff=0
air.velocity=-6,-4
p2facing=1
fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=6
palfx.color=32
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=32
sprpriority=4

[State 3005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=S,HP
damage=32,5
affectteam=F
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
sparkxy=-10,0
guard.sparkno=s7001
guardsound=s2,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-6,-4
ground.cornerpush.veloff=0
air.velocity=-6,-4
p2facing=1
fall=1
fall.recover=0
getpower=0
givepower=0
envshake.time=16
envshake.freq=100
envshake.ampl=6
sprpriority=4

[State 3005, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
anim=7030+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 3005, noflamesvar]
type=varset
triggerall=movehit&&numtarget
trigger1=(target,ID=root,ID)
trigger2=numpartner
trigger2=(target,ID=partner,ID)
var(16)=1
ignorehitpause=1
[State 3005, flames]
type=helper
trigger1=movehit&&numtarget&&numhelper(7181)<1
trigger1=!(target,time)&&(target,movetype=H)&&!var(16)
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
[State 3005, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 3005, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<8,3005,3006)
[State 3005, end]
type=destroyself
trigger1=frontedgedist<-145||backedgedist<-145

[Statedef 3006]
type=A
physics=N
movetype=A
anim=3006
ctrl=0
velset=0,0
sprpriority=4
[State 3006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3006, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 3006, end]
type=destroyself
trigger1=!animtime


;========================<TENMA GOU ZANKUU>=============================
[Statedef 3055]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 3055, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=ifelse(var(2)<8,3055,3056)
ignorehitpause=1
[State 3055,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 3055, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=5
[State 3055, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=3055

[State 3055, hitvar]
type=varadd
trigger1=!time&&!sysvar(4)
var(2)=1
[State 3055, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 3055, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 3055, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=71
[State 3055, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 3055, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),1,7.4)
y=ifelse((time<2&&var(2)>1),1,5.2)

[State 3055, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 3055, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 3055, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=A,HP
damage=ceil(31*root,fvar(12)),5
animtype=Back
hitflag=MAFD
guardflag=MA
pausetime=4,6
sparkno=-1
sparkxy=-10,0
guard.sparkno=s7001
guardsound=s2,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-4,-2
ground.cornerpush.veloff=0
air.velocity=-4,-2
down.velocity=-4,-2
p2facing=ifelse(p2statetype=L,0,1)
fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=6
palfx.color=32
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=32
sprpriority=4

[State 3055, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=A,HP
damage=31,5
affectteam=F
animtype=Back
hitflag=MAFD
guardflag=MA
pausetime=4,6
sparkno=-1
sparkxy=-10,0
guard.sparkno=s7001
guardsound=s2,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-4,-2
ground.cornerpush.veloff=0
air.velocity=-4,-2
down.velocity=-4,-2
p2facing=ifelse(p2statetype=L,0,1)
fall=1
fall.recover=0
getpower=0
givepower=0
envshake.time=16
envshake.freq=100
envshake.ampl=6
sprpriority=4

[State 3055, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
anim=7030+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 3055, noflamesvar]
type=varset
triggerall=movehit&&numtarget
trigger1=(target,ID=root,ID)
trigger2=numpartner
trigger2=(target,ID=partner,ID)
var(16)=1
ignorehitpause=1
[State 3055, flames]
type=helper
trigger1=movehit&&numtarget&&numhelper(7181)<1&&(root,var(1)!=1)
trigger1=!(target,time)&&(target,movetype=H)&&!var(16)
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
[State 3055, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 3055, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<8,3055,3056)
[State 3055, end]
type=changestate
trigger1=pos y>=0
value=3057
ignorehitpause=1
[State 3005, end]
type=destroyself
trigger1=frontedgedist<-110||backedgedist<-120

[Statedef 3056]
type=A
physics=N
movetype=A
anim=3056
ctrl=0
velset=0,0
sprpriority=4
[State 3056, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3056, snd]
type=playsnd
trigger1=animelem=1
value=5,3
ignorehitpause=1
persistent=0
[State 3056, end]
type=destroyself
trigger1=!animtime

[Statedef 3057]
type=A
physics=N
movetype=I
anim=3057
velset=0,0
ctrl=0
sprpriority=4
[State 3057, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3057, pos]
type=posset
trigger1=1
y=0
[State 3057, snd]
type=playsnd
trigger1=animelem=1
value=5,3
ignorehitpause=1
persistent=0
[State 3057, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-2
pos=0,0
vel=0,0
removetime=-2
ownpal=1
[State 3057, end]
type=destroyself
trigger1=!animtime


;========================<KONGOU KOKURETSU ZAN>=============================
;---LIGHTNING---
[Statedef 4205]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
anim=4205
sprpriority=4

[State 4205, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 4205, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=6

[State 4205, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 4205, image]
type=afterimage
trigger1=!time&&!prevstateno
time=999
timegap=1
framegap=2
length=3
palcontrast=20,10,50
trans=add

[State 4205, hit]
type=hitdef
trigger1=animelem=1
attr=S,HA 
damage=ceil(60*root,fvar(12)),5
animtype=Up
guardflag=M
hitflag=MAFD 
priority=7,Hit 
pausetime=0,0
sparkno=-1
guard.sparkno=-1
hitsound=s2,7
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-1,-3
ground.cornerpush.veloff=0
air.velocity=-1,-3
getpower=0
fall=1
fall.recover=0
palfx.color=24
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=32
sprpriority=4

[State 4205, flames]
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

[State 4205, sparks]
type=explod
trigger1=movecontact&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=ifelse(moveguarded,7001,7030+(random%8))
ID=7000
sprpriority=5
postype=p2
pos=(target,const(size.ground.front)-10),(target,const(size.mid.pos.y))
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
pausemovetime=100
supermovetime=100

[State 4205, end]
type=destroyself
trigger1=!animtime


;---SHOCKWAVES---
[Statedef 4206]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=5

[State 4206, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=4206
ignorehitpause=1
[State 4206,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 4206, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 4206, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=6
[State 4206, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=4206

[State 4206, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 4206, movehitvar2]
type=varset
trigger1=!time&&prevstateno
var(4)=animelemno(0)
ignorehitpause=1

[State 4206, image]
type=afterimage
trigger1=!time&&!prevstateno
time=999
timegap=1
framegap=2
length=7
palcontrast=20,20,20
trans=add

[State 4206, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
ignorehitpause=1

[State 4206, hit]
type=hitdef
trigger1=animelemno(0)!=var(4)
trigger1=animelem=2||animelem=3||animelem=4||animelem=5
attr=S,HA 
damage=ceil(43*root,fvar(12)),5
animtype=Hard
fall.animtype=Up
guardflag=M
hitflag=MAFD 
priority=7,Hit 
pausetime=0,1
sparkno=-1
guard.sparkno=-1
guardsound=s2,0
ground.type=High
ground.slidetime=30
ground.hittime=30
ground.velocity=ifelse((animelem=9),-12,-4),0
ground.cornerpush.veloff=0
air.velocity=-3,-12
getpower=0
fall=0
air.fall=1
fall.recover=0
palfx.color=32
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=ifelse(p2statetype=A,74,30)
ID=4206+(facing=-1)
nochainID=4207-(facing=-1)
sprpriority=4

[State 4206, hit]
type=hitdef
trigger1=animelemno(0)!=var(4)
trigger1=animelem=6||animelem=7||animelem=8||animelem=9
attr=S,HA 
damage=ceil(43*root,fvar(12)),5
animtype=Hard
fall.animtype=Up
guardflag=MA
hitflag=MAFD 
priority=7,Hit 
pausetime=0,1
sparkno=-1
guard.sparkno=-1
guardsound=s2,0
ground.type=High
ground.slidetime=30
ground.hittime=30
ground.velocity=ifelse((animelem=9),-12,-4),0
ground.cornerpush.veloff=0
air.velocity=-3,-12
getpower=0
fall=0
air.fall=1
fall.recover=0
palfx.color=32
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=ifelse(p2statetype=A,74,30)
ID=4206+(facing=-1)
nochainID=4207-(facing=-1)
sprpriority=4

[State 4206, flames]
type=helper
trigger1=movehit&&numtarget&&numhelper(7181)<1
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

[State 4206, sparks]
type=explod
trigger1=movecontact&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=ifelse(moveguarded,7001,7030+(random%8))
ID=7000
sprpriority=5
postype=p2
pos=(target,const(size.ground.front)-10),(target,const(size.mid.pos.y))
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
pausemovetime=100
supermovetime=100

[State 4206, end]
type=destroyself
trigger1=!animtime


;========================<TENSHOU KAIREKI JIN>=============================
[Statedef 4305]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=5

[State 4305, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=4305
ignorehitpause=1
[State 4305,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 4305, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 4305, pos]
type=posset
trigger1=1
y=0

[State 4305, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=6
[State 4305, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=4305

[State 4305, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 4305, movehitvar2]
type=varset
trigger1=!time&&prevstateno
var(4)=animelemno(0)
ignorehitpause=1

[State 4305, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,11
ignorehitpause=1

[State 4305, hit]
type=hitdef
trigger1=animelemno(0)!=var(4)&&animelem=2
attr=S,HA 
damage=ceil(65*root,fvar(12)),5
animtype=Hard
fall.animtype=Up
guardflag=M
hitflag=MAFD 
priority=7,Hit 
pausetime=0,0
sparkno=-1
guard.sparkno=-1
guardsound=s2,0
ground.type=High
ground.slidetime=30
ground.hittime=30
ground.velocity=ifelse((animelem=12),-3,0),ifelse((animelem=12),-15,-10)
ground.cornerpush.veloff=0
air.velocity=ifelse((animelem=12),-3,0),ifelse((animelem=12),-15,-10)
getpower=0
p2facing=1
fall=1
fall.recover=0
palfx.color=32
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=100
sprpriority=4

[State 4305, hit]
type=hitdef
triggerall=animelemno(0)!=var(4)
trigger1=animelem=4||animelem=6||animelem=8||animelem=10||animelem=12
attr=S,HA 
damage=ceil(65*root,fvar(12)),5
animtype=Hard
fall.animtype=Up
guardflag=MA
hitflag=MAFD 
priority=7,Hit 
pausetime=0,0
sparkno=-1
guard.sparkno=-1
guardsound=s2,0
ground.type=High
ground.slidetime=30
ground.hittime=30
ground.velocity=ifelse((animelem=12),-3,0),ifelse((animelem=12),-15,-10)
ground.cornerpush.veloff=0
air.velocity=ifelse((animelem=12),-3,0),ifelse((animelem=12),-15,-10)
getpower=0
p2facing=1
fall=1
fall.recover=0
palfx.color=32
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=100
sprpriority=4

[State 4305, flames]
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

[State 4305, sparks]
type=explod
trigger1=movecontact&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=ifelse(moveguarded,7001,7030+(random%8))
ID=7000
sprpriority=5
postype=p2
pos=(target,const(size.ground.front)-10),(target,const(size.mid.pos.y))
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
pausemovetime=100
supermovetime=100

[State 4305, end]
type=destroyself
trigger1=!animtime


;========================<PURPLE DUST>=============================
[Statedef 4210]
physics=N
anim=9741
[State 4210, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 4210, dust]
type=explod
trigger1=!time
anim=4210
ID=4210
sprpriority=-2
postype=p1
removetime=25
[State 4210, fade]
type=palfx
trigger1=!time
mul=384,384,384
sinadd=-255,-255,-255,100
time=25
[State 4210, shrink]
type=modifyexplod
trigger1=1
ID=4210
scale=.5+(.1*time),.1+(.02*time)
[State 4210, end]
type=destroyself
trigger1=time>=26


;========================<TENMA SHINZUI WARI F.X.>=============================
[Statedef 3305]
physics=N
velset=0,0
anim=3305
sprpriority=3
[State 3305, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3305, bind]
type=bindtoroot
trigger1=root,anim=3300
ignorehitpause=1

[State 3305, image]
type=afterimage
trigger1=!time
time=999
timegap=1
framegap=2
length=3
palcontrast=120,90,150
trans=add

[State 3305, end]
type=destroyself
trigger1=!animtime||root,stateno!=3300


;========================<MISOGI ILLUSIONS>=============================
[Statedef 4104]
physics=N
anim=9741
[State 4111, assert]
type=assertspecial
trigger1=1
flag=invisible

[State 4104, dust]
type=explod
trigger1=!time
anim=4110
ID=4110
sprpriority=-1
postype=p1
pos=0,0
vel=0,0
removetime=-2
ownpal=1
[State 4104, particles]
type=explod
trigger1=time=[1,16]
vel=0,-ceil(random/200)
accel=0,-.3
anim=4111
sprpriority=-1
postype=p1
pos=-2,-45
random=50,50
facing=-1+(random<500)*2
removetime=-2
ownpal=1
scale=.25,.25
pausemovetime=300
supermovetime=300

[State 4104, illusion]
type=null;explod
trigger1=!time
anim=4104
ID=4104
sprpriority=-1
vel=3,0
accel=-.1,0
removetime=60
[State 4104, illusion]
type=null;explod
trigger1=!time
anim=4104
ID=4104
sprpriority=-1
vel=-3,0
accel=.1,0
removetime=60

[State 4104, fade]
type=palfx
trigger1=!time
mul=200,0,256
sinadd=-255,-255,-255,240
time=60

[State 4104, end]
type=destroyself
trigger1=time>=60


;========================<S.G.S. GUARDED>=============================
[Statedef 4012]
physics=N
velset=0,0
anim=9741

[State 4012, bgpalfx]
type=bgpalfx
trigger1=!time
time=20
add=-255,-128,-64
sinadd=255,128,64,80
persistent=0
[State 4012, palfx]
type=palfx
trigger1=!time
time=24
sinadd=-255,-255,-255,96

[State 4012, thunder]
type=explod
trigger1=!time
anim=4012
ID=4012
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
removetime=-2
supermovetime=30
ownpal=1
[State 4012, circle]
type=explod
trigger1=!time
anim=7501
ID=4013
sprpriority=5
postype=p1
removetime=20
supermovetime=30

[State 4012, shrink]
type=modifyexplod
trigger1=numexplod(4013)
ID=4013
scale=.2+(.09*time),.2+(.09*time)
[State 4012, noshadow]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1
[State 4012, end]
type=destroyself
trigger1=time>=24


;========================<AURA>=============================
[Statedef 6000]
physics=N
velset=0,0
anim=6000
sprpriority=-2
[State 6000, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 6000, var]
type=varset
trigger1=!time
var(0)=root,anim
[State 6000, image]
type=afterimage
trigger1=!time
time=999
timegap=1
framegap=1
length=2
palcontrast=100,100,100
trans=add
[State 6000, bind]
type=bindtoroot
trigger1=1
[State 6000, end]
type=destroyself
trigger1=(root,anim)!=var(0)
trigger2=root,stateno=195&&root,animelemtime(19)>=0
trigger3=root,stateno=182&&root,animelemtime(26)>=0
trigger4=root,stateno=1020&&root,animelemtime(9)>=0
trigger5=root,stateno=1400&&root,animelemtime(5)>=0
trigger6=root,stateno=3020&&root,anim=3020&&root,animelemtime(22)>=0
trigger7=root,stateno=193&&root,anim=193&&root,animelemtime(39)>=0


;========================<METSU>=============================
[Statedef 6002]
physics=N
velset=0,-.5
anim=6002
sprpriority=-1
[State 6002, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 6002, image]
type=afterimage
trigger1=!time
time=999
timegap=1
framegap=1
length=2
palcontrast=120,90,150
trans=add
[State 6002, image]
type=velset
trigger1=animelem=6
y=-2
[State 6002, fade]
type=palfx
trigger1=animelem=7
sinadd=-255,-255,-255,64
time=16
[State 6002, end]
type=destroyself
trigger1=!animtime||root,movetype=H


;========================<KKZ AURA>=============================
[Statedef 4203]
physics=N
velset=0,0
anim=4203
sprpriority=0
[State 4203, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 4203, image]
type=afterimage
trigger1=!time
time=999
timegap=1
framegap=1
length=2
palcontrast=100,100,100
trans=add
[State 4203, bind]
type=bindtoroot
trigger1=1
time=-1
[State 4203, end]
type=destroyself
trigger1=root,stateno!=4200||root,anim!=4200
trigger2=root,stateno=4200&&root,animelemtime(19)>=0
trigger3=!animtime


;========================<RED PARTICLES>=============================
[Statedef 6021]
physics=N
anim=6021
sprpriority=4
[State 6021, assert]
type=assertspecial
trigger1=1
flag=noshadow
[State 6021, assert]
type=assertspecial
trigger1=!time
flag=invisible
[State 6021, fade]
type=palfx
trigger1=!time
add=-255,-255,-255
sinadd=255,255,255,40
time=10
[State 6021, vel]
type=velset
trigger1=!time
x=(rootdist x-16)/36.0
y=(rootdist y-79)/36.0
[State 6021, end]
type=destroyself
trigger1=!animtime


;========================<VEGA>=============================
[Statedef 6100]
physics=N
velset=0,0
anim=6100
sprpriority=4
[State 6100, exists]
type=parentvarset
trigger1=1
var(51)=1
[State 6100, offset]
type=offset
trigger1=1
y=6
[State 6100, snd]
type=playsnd
trigger1=time=5
value=6,random<500
channel=0
[State 6100, blood]
type=explod
trigger1=animelem=9
anim=6105
ID=6105
sprpriority=5
postype=p1
bindtime=-1
[State 6100, snd]
type=playsnd
trigger1=animelem=9
value=2,8
[State 6100, snd]
type=playsnd
trigger1=animelem=12
value=6,11
channel=0
[State 6100, gone]
type=destroyself
triggerall=numenemy
trigger1=enemy,name="Shin Gouki"&&enemy,authorname="Phantom.of.the.Server"&&enemy,numhelper(6100)
trigger2=enemy,name="Vega"&&enemy,authorname="Phantom.of.the.Server"
trigger3=enemy,name="cvsvega"&&(enemy,authorname="Warusaki3"||enemy,authorname!="Gargoyle")
trigger4=enemy,name="M. Bison"&&enemy,authorname="VK, Updated by Terry Kuo, adapted by Tenebrous"
trigger5=enemy,name="M.Bison"&&enemy,authorname="N-Mario"
trigger6=enemy,name="CvSBison"&&enemy,authorname="Team Kai (Saiai and Koga)"
trigger7=enemy,name="[Necromancer's] M. Bison"||enemy,name="Sevil Nahte"


;---DEAD---
[Statedef 6101]
physics=N
velset=0,0
anim=6101
sprpriority=4
[State 6101, offset]
type=offset
trigger1=1
y=6
[State 6101, snd]
type=stopsnd
trigger1=!time
channel=0
[State 6101, exists]
type=parentvarset
trigger1=1
var(51)=1
[State 6101, gone]
type=destroyself
triggerall=numenemy
trigger1=enemy,name="Shin Gouki"&&enemy,authorname="Phantom.of.the.Server"&&enemy,numhelper(6100)
trigger2=enemy,name="Vega"&&enemy,authorname="Phantom.of.the.Server"
trigger3=enemy,name="cvsvega"&&(enemy,authorname="Warusaki3"||enemy,authorname!="Gargoyle")
trigger4=enemy,name="M. Bison"&&enemy,authorname="VK, Updated by Terry Kuo, adapted by Tenebrous"
trigger5=enemy,name="M.Bison"&&enemy,authorname="N-Mario"
trigger6=enemy,name="CvSBison"&&enemy,authorname="Team Kai (Saiai and Koga)"
trigger7=enemy,name="[Necromancer's] M. Bison"||enemy,name="Sevil Nahte"


;========================<JUMP DUST>=============================
[Statedef 7100]
physics=N
velset=0,0
anim=9741
[State 7100, bind]
type=bindtoroot
trigger1=time
[State 7100, dust]
type=explod
trigger1=!time
anim=7100
ID=7100
sprpriority=3
postype=p1
scale=.5,.5
[State 7100, dust]
type=explod
trigger1=!time||time=2||time=6
anim=7101
ID=7100
sprpriority=3
postype=p1
scale=.5,.5
[State 7100, assert]
type=assertspecial
trigger1=1
flag=invisible
[State 7100, end]
type=destroyself
trigger1=time>=7


;========================<FIRE>=============================
;---RED---
[Statedef 7180]
physics=N
velset=0,0
anim=9741
sprpriority=4
[State 7180, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 7180, flames]
type=explod
trigger1=1
anim=7180
ID=7180
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random=40,40
removetime=-2
scale=.5,.5
ownpal=1
[State 7180, pos]
type=posadd
trigger1=1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State 7180, end]
type=destroyself
trigger1=time>=120
trigger2=enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,statetype=L)


;---PURPLE---
[Statedef 7181]
physics=N
velset=0,0
anim=9741
sprpriority=4
[State 7181, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 7181, flames]
type=explod
trigger1=1
anim=7181
ID=7181
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random=40,40
removetime=-2
scale=.5,.5
ownpal=1
[State 7181, pos]
type=posadd
trigger1=1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State 7181, end]
type=destroyself
trigger1=time>=120
trigger2=enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,statetype=L)


;========================<SUPERCHARGE>=============================
[Statedef 7500]
physics=N
velset=0,0
anim=9741
[State 7500, var]
type=parentvarset
trigger1=time&&root,var(20)>0
var(20)=-1

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=5
time=40
invertall=1
add=100,100,100
sinadd=-710,-710,-355,160
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=40&&root,var(10)=5
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=6
time=48
invertall=1
add=100,100,100
sinadd=-710,-710,-355,192
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=48&&root,var(10)=6
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=7
time=55
invertall=1
add=100,100,100
sinadd=-710,-710,-355,220
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=55&&root,var(10)=7
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, fade]
type=palfx
trigger1=!time
time=40
sinadd=-255,-255,-255,160
[State 7500, fade]
type=palfx
trigger1=time=40
time=-1
add=-255,-255,-255

[State 7500, portrait]
type=helper
trigger1=!time&&root,var(10)=7
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 7500, main]
type=explod
trigger1=!time
anim=7500
ID=7500
sprpriority=5
postype=p1
removetime=-1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=!time
anim=7501
ID=7501
sprpriority=5
postype=p1
removetime=43
supermovetime=300

[State 7500, circle]
type=explod
trigger1=!time
anim=7502
ID=75021
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
supermovetime=300
ownpal=1

[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=5
ID=7500
scale=1.5-(.033*time),1.5-(.033*time)
[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=6
ID=7500
scale=1.5-(.028*time),1.5-(.028*time)
[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=7
ID=7500
scale=1.5-(.025*time),1.5-(.025*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7500, safety]
type=removeexplod
trigger1=root,var(10)=5&&time>=46
trigger2=root,var(10)=6&&time>=54
trigger3=root,var(10)=7&&time>=61
[State 7500, end]
type=destroyself
trigger1=root,var(10)=5&&time>=46
trigger2=root,var(10)=6&&time>=54
trigger3=root,var(10)=7&&time>=61


;========================<Lv3 SUPERCHARGE PORTRAIT>=============================
[Statedef 7510]
physics=N
anim=9741
[State 7510, assert]
type=assertspecial
trigger1=1
flag=invisible
flag2=nobardisplay
ignorehitpause=1
[State 7510, portrait]
type=explod
trigger1=!time
anim=7510
ID=7510
postype=back
pos=160,120
under=1
bindtime=-1
removetime=60
pausemovetime=300
supermovetime=300
[State 7510, shrink]
type=modifyexplod
trigger1=time<45
ID=7510
scale=.5,.5
[State 7510, shrink]
type=modifyexplod
trigger1=time>=45
ID=7510
scale=.5225+(.13*(time-45)),.5225+(.13*(time-45))
[State 7510, fade]
type=palfx
trigger1=time=45
time=15
sinadd=-255,-255,-255,60
[State 7510, safety]
type=removeexplod
trigger1=time>=61
[State 7510, end]
type=destroyself
trigger1=time>=61


;========================<POWER CHARGE>=============================
;-----<MAIN FX>-----
[Statedef 7240]
physics=N
anim=7240
sprpriority=-2
[State 7240, bind]
type=bindtoroot
trigger1=(root,stateno=740)&&(root,anim=740)
pos=-4,0
time=-1
[State 7240, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 7240, snd]
type=playsnd
trigger1=!time
value=7,4
channel=0
[State 7240, image]
type=afterimage
trigger1=!time
time=999
timegap=1
framegap=1
length=4
palmul=.5,.33,.25
palcontrast=120,120,120
trans=add

[State 7240, fx]
type=explod
trigger1=!numexplod(7242)
anim=7242
ID=7242
sprpriority=4
postype=p1
removetime=-1
[State 7240, fx]
type=modifyexplod
trigger1=1
ID=7242
scale=.5,.1+.00022*(root,power)
[State 7240, fx]
type=modifyexplod
trigger1=root,power>=3000
ID=7242
scale=.5,.75

[State 7240, fx]
type=helper
trigger1=anim=7240&&!(time%7)&&numhelper(7243)<8
helpertype=normal
stateno=7243
ID=7243
name="Power Particle"
postype=p1;left
pos=ceil(240-random/2.1),-ceil(random/4)
size.xscale=.5
size.yscale=.5
ownpal=1

[State 7240, anim]
type=changeanim
trigger1=anim=7240&&((root,stateno!=740)||(root,anim!=740))
value=7241
elem=animelemno(0)
[State 7240, stopsnd]
type=stopsnd
trigger1=anim=7241
channel=0
persistent=0
[State 7240, fade]
type=palfx
trigger1=anim=7241
sinadd=-255,-255,-255,64
time=17
persistent=0
[State 7240, remove]
type=removeexplod
trigger1=anim=7241&&!animtime
[State 7240, end]
type=destroyself
trigger1=anim=7241&&!animtime


;-----<PARTICLES>-----
[Statedef 7243]
physics=N
anim=7243
sprpriority=4
[State 7243, assert]
type=assertspecial
trigger1=1
flag=noshadow
[State 7243, assert]
type=assertspecial
trigger1=!time
flag=invisible
[State 7243, fade]
type=palfx
trigger1=!time
add=-255,-255,-255
sinadd=300,300,300,240
time=56
[State 7243, vel]
type=velset
trigger1=!time
x=(rootdist x-4)/60
y=(rootdist y-55)/60
[State 7243, end]
type=destroyself
trigger1=time>=56
trigger2=(root,stateno!=740)||(root,anim!=740)


;========================<ZERO COUNTER CHARGE>=============================
[Statedef 7250]
physics=N
velset=0,0
anim=9741

[State 7250, bgpalfx]
type=bgpalfx
trigger1=!time
time=20
add=-255,-128,-64
sinadd=255,128,64,80
persistent=0
[State 7250, palfx]
type=palfx
trigger1=!time
time=20
sinadd=-255,-255,-255,80

[State 7250, thunder]
type=explod
trigger1=!time
anim=7250
ID=7250
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
removetime=-2
supermovetime=30
ownpal=1
[State 7250, circle]
type=explod
trigger1=!time
anim=7251
ID=7251
sprpriority=5
postype=p1
removetime=20
supermovetime=30

[State 7250, shrink]
type=modifyexplod
trigger1=numexplod(7251)
ID=7251
scale=.2+(.09*time),.2+(.09*time)
[State 7250, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7250, end]
type=destroyself
trigger1=time>=20


;========================<ORIGINAL COMBO CHARGE>=============================
[Statedef 7260]
physics=N
velset=0,0
anim=9741

[State 7260, bgpalfx]
type=bgpalfx
trigger1=!time
time=30
add=-255,-255,-128
sinadd=255,255,128,120
[State 7260, palfx]
type=palfx
trigger1=time=20
time=11
sinadd=-255,-255,-255,40
persistent=0

[State 7260, main]
type=explod
trigger1=!time
anim=7260
ID=7260
sprpriority=5
postype=p1
removetime=20
supermovetime=300
[State 7260, sphere]
type=explod
trigger1=!time
anim=7500
ID=7261
sprpriority=5
postype=p1
removetime=-1
supermovetime=300
[State 7260, circle]
type=explod
trigger1=time=20
anim=7501
ID=7262
sprpriority=5
postype=p1
removetime=-1
supermovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1=1
ID=7260
scale=2-(.1*time),2-(.1*time)
[State 7260, shrinkcircle]
type=modifyexplod
trigger1=1
ID=7261
scale=.017*time,.017*time
[State 7260, shrinkcircle]
type=modifyexplod
trigger1=time>=20
ID=7262
scale=.1+(.1*(time-20)),.1+(.1*(time-20))

[State 7260, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7260, bound]
type=screenbound
trigger1=1
value=0
[State 7260, safety]
type=removeexplod
trigger1=time>=30
[State 6110, end]
type=destroyself
trigger1=time>=30


;========================<COUNTER F.X.>=============================
[Statedef 7400]
physics=N
velset=0,0
anim=9741
[State 7400, superchargebgpalfx]
type=allpalfx
trigger1=!time
time=5
add=255,255,255
sinadd=-255,-255,-255,20
[State 7400, slow]
type=pause
trigger1=time<5
time=2
[State 7400, noshadow]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1
[State 7400, end]
type=destroyself
trigger1=root,movetype!=A


;========================<K.O. F.X.>=============================
[Statedef 7600]
physics=N
velset=0,0
anim=9741
sprpriority=-5
[State 7600, bind]
type=posset
trigger1=1
x=0
y=-120

[State 7600, snd]
type=playsnd
trigger1=!time
value=7,6
[State 7600, palfx]
type=palfx
trigger1=!time
time=40
sinadd=-255,-255,-255,160
ignorehitpause=1
[State 7600, bgpalfx]
type=bgpalfx
trigger1=time<30
time=1
mul=512-(time*8),(time*8),(time*8)
add=-60+time*4,-60+time*4,-60+time*4

[State 7600, VSthing]
type=explod
trigger1=!time
anim=7601
ID=7601
sprpriority=5
postype=left
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300

[State 7600, circle]
type=explod
trigger1=!time
anim=7600
ID=76001
sprpriority=-5
postype=left
pos=160,120
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, circle]
type=explod
trigger1=!time
anim=7600
ID=76002
sprpriority=-5
postype=left
pos=160,120
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, shrink]
type=modifyexplod
trigger1=time<=40&&numexplod(76001)
ID=76001
scale=(.1*time),(.1*time)
[State 7600, shrink]
type=modifyexplod
trigger1=time<=40&&numexplod(76002)
ID=76002
scale=(.3*time),(.3*time)

[State 7600, ten]
type=explod
trigger1=!time
anim=7605
ID=7605
sprpriority=-5
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, shrink]
type=modifyexplod
trigger1=numexplod(7605)
ID=7605
scale=(.1*time),(.1*time)

[State 7600, noshadow]
type=assertspecial
trigger1=1
flag=invisible
[State 7600, nobars]
type=assertspecial
trigger1=time<=20
flag=nobardisplay


;========================<KANJI>=============================
[Statedef 6012]
physics=N
velset=0,0
anim=6012
sprpriority=-3
[State 6012, glow]
type=palfx
trigger1=!time
time=9999
add=50,0,0
sinadd=100,0,0,80
[State 6012, bind]
type=bindtoroot
trigger1=1
pos=ifelse((root,facing=1),0,32),0


;========================<KANJI B.G.>=============================
[Statedef 7610]
physics=N
velset=0,0
anim=9741
[State 7610, assert]
type=assertspecial
trigger1=time<120
flag=nomusic
[State 7610, snd]
type=playsnd
trigger1=!time
value=7,7
[State 7610, black]
type=bgpalfx
trigger1=time<120
time=2
add=-255,-255,-255
[State 7610, black]
type=bgpalfx
trigger1=time=120
time=60
add=-255,-255,-255
sinadd=255,255,255,240
[State 6200, fade]
type=palfx
trigger1=time=120
time=60
sinadd=-255,-255,-255,240
[State 7610, kanji]
type=explod
trigger1=!time
anim=7610
ID=7610
sprpriority=-5
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
[State 7610, shrink]
type=modifyexplod
trigger1=time<6
ID=7610
scale=(5.5-time),(5.5-time)
[State 7610, shrink]
type=modifyexplod
trigger1=time>=6
ID=7610
scale=.5,.5
[State 7610, flamebg]
type=explod
trigger1=!time
anim=7611
ID=7611
sprpriority=5
postype=left
pos=0,0
bindtime=-1
removetime=-1
pausemovetime=300
supermovetime=300
[State 7610, assert]
type=assertspecial
trigger1=1
flag=invisible
flag2=nobardisplay
ignorehitpause=1
[State 7610, assert]
type=assertspecial
trigger1=time<120
flag=noFG
ignorehitpause=1
[State 7610, safety]
type=removeexplod
trigger1=time>=180
[State 7610, end]
type=destroyself
trigger1=time>=180


;========================<CAMERA CONTROL>=============================
[Statedef 7650]
physics=N
velset=0,0
anim=9741
[State 7650, bound]
type=screenbound
trigger1=1
value=0
movecamera=1,1
[State 7650, end]
type=destroyself
trigger1=roundstate=2