; _____________________________
;|Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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


;========================<GADOU KEN>=============================
[Statedef 1005]
type=A
physics=N
movetype=A
anim=1005
ctrl=0
velset=0,0
sprpriority=4

[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1
[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1007
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
trigger1=time&&var(1)<60
var(1)=1

[State 1005, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1005, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=36
[State 1005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1005, vel]
type=velset
trigger1=1
x=ifelse(var(10)=3,6,ifelse(var(10)=2,5,4))
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
damage=ceil(80*(root,fvar(12))),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=ifelse(var(1)<=6,-10,-7),0
ground.cornerpush.veloff=0
air.velocity=-3,-3
air.fall=1
p2facing=1
getpower=170*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=80,5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=ifelse(var(1)<=6,-10,-7),0
ground.cornerpush.veloff=0
air.velocity=-3,-3
air.fall=1
p2facing=1
getpower=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
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
trigger1=var(1)>=ifelse(var(10)=3,12,ifelse(var(10)=2,10,8))
value=1006
ignorehitpause=1
[State 1005, end]
type=changestate
trigger1=movecontact
value=1007
ignorehitpause=1
[State 1005, end]
type=destroyself
trigger1=frontedgedist<-50||backedgedist<-50

[Statedef 1006]
type=A
physics=N
movetype=I
anim=1006
ctrl=0
sprpriority=4
movehitpersist=1
[State 1006, vel]
type=velmul
trigger1=1
x=.8
[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1006, end]
type=destroyself
trigger1=!animtime

[Statedef 1007]
type=A
physics=N
movetype=I
anim=1007
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1
[State 1007, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1007, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 1007, end]
type=destroyself
trigger1=!animtime


;========================<EX GADOU KEN>=============================
[Statedef 1015]
type=A
physics=N
movetype=A
anim=1015
ctrl=0
velset=0,0
sprpriority=4

[State 1015, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1017
ignorehitpause=1
[State 1015, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1015, strengthvar]
type=varset
trigger1=!time
var(10)=4
[State 1015, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 1005, timevar]
type=varadd
trigger1=time&&var(1)<15
var(1)=1

[State 1015, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1015, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=35
[State 1015, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1015, vel]
type=velset
trigger1=1
x=7
y=0

[State 1015, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 1015, image]
type=afterimage
trigger1=!time&&!prevstateno
time=999
timegap=1
framegap=2
length=5
palbright=40,20,0
palmul=.75,.6,.5
palcontrast=220,140,80
trans=add

[State 1015, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1015, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,SP
damage=ceil(110*(root,fvar(12))),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-6,-3
ground.cornerpush.veloff=0
air.velocity=-6,-3
p2facing=1
getpower=0
fall=1
fall.recover=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
palfx.color=32
palfx.sinadd=80,25,0,8
palfx.mul=512,256,128
palfx.time=32
sprpriority=4

[State 1015, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=110,5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-6,-3
ground.cornerpush.veloff=0
air.velocity=-6,-3
p2facing=1
getpower=0
fall=1
fall.recover=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
palfx.color=32
palfx.sinadd=80,25,0,8
palfx.mul=512,256,128
palfx.time=32
sprpriority=4

[State 1015, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
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

[State 1015, noflamesvar]
type=varset
triggerall=movehit&&numtarget
trigger1=(target,ID=root,ID)
trigger2=numpartner
trigger2=(target,ID=partner,ID)
var(16)=1
ignorehitpause=1
[State 1015, flames]
type=helper
trigger1=movehit&&numtarget&&numhelper(7180)<1
trigger1=!(target,time)&&(target,movetype=H)&&!var(16)
helpertype=normal
stateno=7180
ID=7180
name="flames"
postype=p2
bindtime=1000
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
ignorehitpause=1
persistent=0
[State 1015, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 1015, end]
type=changestate
trigger1=var(1)>=12
value=1016
ignorehitpause=1
[State 1015, end]
type=changestate
trigger1=movecontact
value=1017
ignorehitpause=1
[State 1015, end]
type=destroyself
trigger1=frontedgedist<-50||backedgedist<-50

[Statedef 1016]
type=A
physics=N
movetype=I
anim=1016
ctrl=0
sprpriority=4
movehitpersist=1
[State 1016, vel]
type=velmul
trigger1=1
x=.8
[State 1016, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1016, end]
type=destroyself
trigger1=!animtime

[Statedef 1017]
type=A
physics=N
movetype=I
anim=1017
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1
[State 1017, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1017, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 1017, end]
type=destroyself
trigger1=!animtime


;========================<PREMIUM SIGN>=============================
[Statedef 1305]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=3

[State 1305, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1306
ignorehitpause=1
[State 1305, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1305, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1305, anim]
type=changeanim
trigger1=(anim!=[1305,1307])
value=1304+var(10)

[State 1305, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1305, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1305, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=18
[State 1305, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1305, vel]
type=velset
trigger1=!time
x=ifelse(var(10)=3,5,ifelse(var(10)=2,4.5,4))
y=ifelse(var(10)=3,3,ifelse(var(10)=2,-2,-1))
[State 1305, grav]
type=veladd
trigger1=vel y=[-10,10]
y=ifelse(var(10)=3,-.25,ifelse(var(10)=2,.13,.25))

[State 1305, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 1305, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,4
persistent=0
ignorehitpause=1

[State 1305, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,SP
damage=ceil(30*(root,fvar(12))),5
animtype=Medium
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-4,0
ground.cornerpush.veloff=0
air.velocity=-2,-2
getpower=90*!(root,var(20))
envshake.time=8
envshake.freq=100
envshake.ampl=2
sprpriority=3
ID=1305

[State 1305, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=30,5
affectteam=F
animtype=Medium
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-4,0
ground.cornerpush.veloff=0
air.velocity=-2,-2
getpower=90*!(root,var(20))
envshake.time=8
envshake.freq=100
envshake.ampl=2
sprpriority=3
ID=1305

[State 1305, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
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

[State 1305, end]
type=changestate
trigger1=movecontact
value=1306
ignorehitpause=1
[State 1305, end]
type=changestate
trigger1=pos y>=0
value=1307
[State 1305, end]
type=destroyself
trigger1=frontedgedist<-20||backedgedist<0

[Statedef 1306]
type=A
physics=N
movetype=I
velset=-vel x,vel y
ctrl=0
sprpriority=3
movehitpersist=1
[State 1306, custom]
type=targetstate
triggerall=movecontact&&numtarget
triggerall=!(target,ishelper)&&!(target,alive)
trigger1=(target,prevstateno=[5000,5011])
trigger2=(target,prevstateno=[130,131])||(target,prevstateno=[140,141])||(target,prevstateno=[150,153])
value=1111305
ID=1305
ignorehitpause=1
;persistent=0
[State 1306, fadeout]
type=trans
trigger1=1
trans=addalpha
alpha=ceil(256-12.8*time),ceil(12.8*time)
[State 1306, pos]
type=posset
trigger1=pos y>=0
y=0
[State 1306, vel]
type=velset
trigger1=pos y>=0
x=0
y=0
[State 1306, anim]
type=changeanim
trigger1=pos y>=0
value=anim
elem=animelemno(0)
[State 1306, end]
type=destroyself
trigger1=time>=20

[Statedef 1307]
type=A
physics=N
movetype=I
velset=0,0
ctrl=0
sprpriority=3
movehitpersist=1
[State 1307, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
[State 1307, anim]
type=changeanim
trigger1=1
value=anim
elem=animelemno(0)
[State 1307, fadeout]
type=trans
trigger1=1
trans=addalpha
alpha=ceil(256-12.8*time),ceil(12.8*time)
[State 1307, pos]
type=posset
trigger1=1
y=0
[State 1307, end]
type=destroyself
trigger1=time>=20


;========================<GADOU SHOUKOU KEN>=============================
[Statedef 1405]
type=A
physics=N
movetype=A
anim=1405
ctrl=0
velset=0,0
sprpriority=4
juggle=5

[State 1405, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1407
ignorehitpause=1
[State 1405, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1405, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1405, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 1405, timevar]
type=varadd
trigger1=time&&var(1)<25
var(1)=1

[State 1405, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1405, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=72
[State 1405, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1405, vel]
type=velset
trigger1=1
x=ifelse(var(10)=3,4,ifelse(var(10)=2,3.5,3))
y=0

[State 1405, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 1405, image]
type=afterimage
trigger1=!time&&!prevstateno
time=999
timegap=1
framegap=2
length=5
palcontrast=75,20,0
palmul=.75,.5,.25
trans=add

[State 1405, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1405, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,SP
damage=ceil(125*(root,fvar(12))),5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-6,-3
ground.cornerpush.veloff=0
air.velocity=-6,-3
fall=1
fall.recover=0
p2facing=1
getpower=250*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=6
palfx.color=32
palfx.sinadd=80,25,0,8
palfx.mul=512,256,128
palfx.time=30
sprpriority=4

[State 1405, hit]
type=hitdef
trigger1=(sysvar(3)%2)
affectteam=F
priority=6,Hit
attr=S,SP
damage=125,5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-6,-3
ground.cornerpush.veloff=0
air.velocity=-6,-3
fall=1
fall.recover=0
p2facing=1
getpower=0
envshake.time=12
envshake.freq=100
envshake.ampl=6
sprpriority=4

[State 1405, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-(target,const(size.ground.front)-10)*facing+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1405, noflamesvar]
type=varset
triggerall=movehit&&numtarget
trigger1=(target,ID=root,ID)
trigger2=numpartner
trigger2=(target,ID=partner,ID)
var(16)=1
ignorehitpause=1
[State 1405, flames]
type=helper
trigger1=movehit&&numtarget&&numhelper(7180)<1
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
[State 1405, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 1405, end]
type=changestate
trigger1=var(1)>=ifelse(var(10)=3,18,ifelse(var(10)=2,14,10))
value=1406
ignorehitpause=1
[State 1405, end]
type=changestate
trigger1=movecontact
value=1407
ignorehitpause=1
[State 1405, end]
type=destroyself
trigger1=frontedgedist<-100||backedgedist<0

[Statedef 1406]
type=A
physics=N
movetype=I
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1
[State 1406, nhb]
type=nothitby
trigger1=1
time=-1
value=SCA
[State 1406, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1406, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256-floor(time*16),256
[State 1406, shrink]
type=angledraw
trigger1=1
scale=1-(.0625*time),1-(.0625*time)
[State 1406, end]
type=destroyself
trigger1=time>16

[Statedef 1407]
type=A
physics=N
movetype=I
anim=1407
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1
[State 1407, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1407, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 1407, end]
type=destroyself
trigger1=!animtime


;========================<SHINKUU GADOU KEN>=============================
[Statedef 3005]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 3005,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1
[State 3005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=ifelse(var(2)<5,3005,3007)
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
[State 3005, timevar]
type=varadd
trigger1=time
var(1)=1

[State 3005, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 3005, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=36
[State 3005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 3005, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),1,8)
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
damage=ceil(46*(root,fvar(12))),5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
sparkxy=0,0
guard.sparkno=s7001
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
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
sprpriority=4

[State 3005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=S,HP
damage=46,5
affectteam=F
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
sparkxy=0,0
guard.sparkno=s7001
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
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
sprpriority=4

[State 3005, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7030+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-(target,const(size.ground.front)-10)*facing+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 3005, end]
type=changestate
trigger1=var(1)>=12
value=3006
ignorehitpause=1
[State 3005, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<5,3005,3007)
ignorehitpause=1
[State 3005, end]
type=destroyself
trigger1=frontedgedist<-65||backedgedist<-65

[Statedef 3006]
type=A
physics=N
movetype=I
anim=3006
ctrl=0
sprpriority=4
movehitpersist=1
[State 3006, vel]
type=velmul
trigger1=1
x=.8
[State 3006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3006, end]
type=destroyself
trigger1=!animtime

[Statedef 3007]
type=A
physics=N
movetype=I
anim=3007
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1
[State 3007, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3007, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 3007, end]
type=destroyself
trigger1=!animtime


;========================<SAIKYOU-RYUU BOUGYO>=============================
[Statedef 1505]
physics=N
velset=0,0
anim=1505
[State 1505, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1505, nhb]
type=nothitby
trigger1=1
time=-1
value=SCA
[State 1505, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA
stateno=1505
ignorehitpause=1
[State 1505, bound]
type=screenbound
trigger1=1
value=0
[State 1505, push]
type=playerpush
trigger1=1
value=1
[State 1505, vel]
type=velset
trigger1=!time&&!prevstateno
x=ifelse(var(10)=4,40,20)
[State 1505, vel]
type=velmul
trigger1=1
x=.9
[State 1505, snd]
type=playsnd
trigger1=!time&&!prevstateno
value=5,2
[State 1505, dust]
type=explod
trigger1=(p2bodydist x=[-5,5])&&(enemynear,statetype!=A)&&!(time%3)
anim=7103
ID=7103
sprpriority=2
postype=p1
pos=0,0
scale=1,1
removetime=-2
ownpal=1
[State 1505, end]
type=destroyself
trigger1=time>=20


;========================<OTOKO CHARGE>=============================
[Statedef 4006]
physics=N
velset=0,0
anim=7500
sprpriority=3
[State 4006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 4006, trans]
type=trans
trigger1=1
trans=addalpha
alpha=floor(time*2.13),256
[State 4006, shrink]
type=angledraw
trigger1=1
scale=.0125*time,.0125*time
[State 4006, snd]
type=playsnd
trigger1=!time
value=5,8

[State 4006, bgpalfx]
type=bgpalfx
trigger1=1
time=1
color=256-floor(2.13*time)
mul=(256-floor(2.13*time)),(256-floor(2.13*time)),(256-floor(.53*time))
[State 4006, end]
type=destroyself
trigger1=root,animelemtime(6)>=0
trigger2=root,stateno!=4001||root,movetype!=A


;========================<OTOKO PORTRAIT>=============================
[Statedef 4008]
physics=N
velset=0,0
anim=4008
sprpriority=-5
[State 4006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 4001, palfx]
type=bgpalfx
trigger1=1
time=2
mul=floor(8.53*time),floor(8.53*time),floor(8.53*time)
[State 4006, pos]
type=posset
trigger1=1
x=0
y=ceil(pos y-screenpos y)
[State 4006, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256-floor(time*8.53),256
[State 4006, end]
type=destroyself
trigger1=time>=30


;========================<FIRE>=============================
;---ENEMY---
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


;---ENEMY---
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
anim=7180
ID=7180
sprpriority=3
postype=p1
vel=-.2,-.75
pos=(root,const(size.mid.pos.x)),(root,const(size.mid.pos.y))+10
random=40,40
scale=.5,.5
ownpal=1
[State 7181, pos]
type=posadd
trigger1=1
x=ceil(rootdist x)
y=ceil(rootdist y)
[State 7181, end]
type=destroyself
trigger1=time>=120
trigger2=root,ctrl||(root,movetype!=H)||(root,statetype=L)


;========================<POWER CHARGE>=============================
;-----<MAIN FX>-----
[Statedef 7240]
physics=N
anim=7240
sprpriority=-2
[State 7240, bind]
type=bindtoroot
trigger1=(root,stateno=740)&&(root,anim=740)
pos=2,0
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
trigger1=0;;anim=7240&&!(time%7)&&numhelper(7243)<8
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
x=rootdist x/60.0
y=(rootdist y-110*root,const(size.yscale))/60.0
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
pos=0,ceil(pos y)
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


;========================<SUPERCHARGE>=============================
[Statedef 7500]
physics=N
velset=0,0
anim=9741
[State 7500, var]
type=parentvarset
trigger1=time&&root,var(20)!=-1
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

[State 7500, spiral]
type=helper
trigger1=!time&&root,var(10)>=6
helpertype=normal
stateno=7509
ID=7509
name="Super Charge Spiral"
postype=p1
supermovetime=300
ownpal=1
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


;========================<SUPERCHARGE SPIRAL>=============================
[Statedef 7509]
physics=N
anim=7509
sprpriority=5
[State 7509, assert]
type=assertspecial
trigger1=1
flag=noshadow
[State 7509, spin]
type=angleadd
trigger1=1
value=-8

[State 7509, spin]
type=angledraw
trigger1=root,var(10)=6
scale=1-(time/53.0),1-(time/53.0)
[State 7509, trans]
type=trans
trigger1=root,var(10)=6
trans=addalpha
alpha=floor(4.83*time),256

[State 7509, spin]
type=angledraw
trigger1=root,var(10)=7
scale=1-(time/60.0),1-(time/60.0)
[State 7509, trans]
type=trans
trigger1=root,var(10)=7
trans=addalpha
alpha=floor(4.27*time),256

[State 7509, end]
type=destroyself
trigger1=root,var(10)=6&&time>=54
trigger2=root,var(10)=7&&time>=61


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
;scale=1+(.001*time),1+(.001*time)
scale=.5,.5;+(.0005*time),.5+(.0005*time)
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
[State 7600, pos]
type=posset
trigger1=1
x=0
y=-120
[State 7600, var]
type=varset
trigger1=!time
var(0)=root,stateno

[State 7600, snd]
type=playsnd
trigger1=!time
value=7,7
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

[State 7600, main]
type=explod
trigger1=!time
anim=7600
ID=76001
sprpriority=5
postype=left
pos=160,120
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, main]
type=explod
trigger1=!time
anim=7600
ID=76002
sprpriority=5
postype=left
pos=160,120
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, shrink]
type=modifyexplod
trigger1=time<=40
ID=76001
scale=(.1*time),(.1*time)
[State 7600, shrink]
type=modifyexplod
trigger1=time<=40
ID=76002
scale=(.3*time),(.3*time)

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
[State 7600, noshadow]
type=assertspecial
trigger1=1
flag=invisible


;========================<SANDALS>=============================
[Statedef 6005]
type=A
physics=N
movetype=I
ctrl=0
anim=6005
velset=-2+(random/250.0),-7.5-(random/133.3)
sprpriority=2
[State 6005, vel]
type=velset
trigger1=(vel y=(0,2])&&pos y>=-2
y=0
[State 6005, pos]
type=posset
trigger1=pos y>=0&&!vel y
y=0
[State 6005, pos]
type=velmul
trigger1=pos y>=0&&!vel y&&!pos y
x=.8
[State 6005, dust]
type=explod
trigger1=vel y>0&&pos y>=-ceil(vel y)&&time<90
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
scale=.25,.25
ownpal=1
[State 6005, vel]
type=veladd
trigger1=1
y=.35
[State 6005, vel]
type=velmul
trigger1=vel y>0&&pos y>=-ceil(vel y)
x=-.5+(random/500.0)
y=-.66

[State 6005, spin]
type=angleadd
trigger1=1
value=-12
[State 6005, spin]
type=angledraw
trigger1=1
[State 6005, fade]
type=trans
trigger1=time>=60
trans=addalpha
alpha=ceil(256-4.27*(time-60)),ceil(4.27*(time-60))
[State 6005, end]
type=destroyself
trigger1=time>=120


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