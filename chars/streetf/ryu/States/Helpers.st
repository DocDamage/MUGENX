; ______________________________
;| Ryu by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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


;========================<HADOU KEN>=============================
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

[State 1005, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1005, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=47
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
trigger1=target,time=0&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1005, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,SP
damage=ceil(ifelse(time<=16,100,90)*root,fvar(12)),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4/((root,var(20)>0)+1),4/((root,var(20)>0)+1)
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24/((root,var(20)>0)+1)
ground.hittime=24/((root,var(20)>0)+1)
ground.velocity=ifelse(time<=16,-10,-7),0
ground.cornerpush.veloff=0
air.velocity=ifelse(time<=16,-4,-3),ifelse(time<=16,-4,-3)
air.fall=1
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
damage=90,5
affectteam=F
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
ground.velocity=ifelse(time<=16,-10,-7),0
ground.cornerpush.veloff=0
air.velocity=ifelse(time<=16,-4,-3),ifelse(time<=16,-4,-3)
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
trigger1=movecontact
value=1006
ignorehitpause=1
[State 1006, end]
type=destroyself
trigger1=frontedgedist<-50||backedgedist<0

[Statedef 1006]
type=A
physics=N
movetype=I
anim=1006
velset=0,0
ctrl=0
sprpriority=4
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


;========================<EX HADOU KEN>=============================
[Statedef 1015]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 1015, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=ifelse(var(2)<2,1015,1016)
ignorehitpause=1
[State 1015,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1015, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=4
[State 1015, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=1015

[State 1015, hitvar]
type=varadd
trigger1=!time&&!sysvar(4)
var(2)=1
[State 1015, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1015, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1015, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=51
[State 1015, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1015, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),1,7)
y=0

[State 1015, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 1015, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=target,time=0&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1015, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,SP
damage=ceil(ifelse(time<=16,70,60)*root,fvar(12)),5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=ifelse(time<=16,-8,-6),-3
ground.cornerpush.veloff=0
air.velocity=ifelse(time<=16,-8,-6),-3
p2facing=1
fall=1
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=5
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
damage=60,5
affectteam=F
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
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
fall=1
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=5
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
trigger1=movecontact
value=ifelse(var(2)<2,1015,1016)
[State 1015, end]
type=destroyself
trigger1=frontedgedist<-75||backedgedist<0

[Statedef 1016]
type=A
physics=N
movetype=I
anim=1016
ctrl=0
velset=0,0
sprpriority=4
[State 1016, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 1016, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1016, end]
type=destroyself
trigger1=!animtime


;========================<SHAKUNETSU HADOU KEN>=============================
[Statedef 1025]
type=A
physics=N
movetype=A
anim=1015
ctrl=0
velset=0,0
sprpriority=4

[State 1025, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1026
ignorehitpause=1
[State 1025, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1025, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
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
x=51
[State 1025, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1025, vel]
type=velset
trigger1=1
x=ifelse(var(10)=3,5,ifelse(var(10)=2,4,3))
y=0

[State 1025, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 1025, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=target,time=0&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 1025, hit]
type=hitdef
trigger1=1
priority=6,Hit
attr=S,SP
damage=ceil(ifelse(time<=16,100,90)*root,fvar(12)),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4/((root,var(20)>0)+1),4/((root,var(20)>0)+1)
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24/((root,var(20)>0)+1)
ground.hittime=24/((root,var(20)>0)+1)
ground.velocity=ifelse(time<=16,-4,-7),ifelse(time<=16,-4,0)
ground.cornerpush.veloff=0
air.velocity=-4,-4
fall=time<=16
air.fall=1
p2facing=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
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
damage=60,5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4/((root,var(20)>0)+1),4/((root,var(20)>0)+1)
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24/((root,var(20)>0)+1)
ground.hittime=24/((root,var(20)>0)+1)
ground.velocity=ifelse(time<=16,-4,-7),ifelse(time<=16,-4,0)
ground.cornerpush.veloff=0
air.velocity=-4,-4
fall=0
air.fall=1
p2facing=1
getpower=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1025, sparks]
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
[State 1025, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 1025, end]
type=changestate
trigger1=movecontact
value=1026
ignorehitpause=1
[State 1025, end]
type=destroyself
trigger1=frontedgedist<-50||backedgedist<0

[Statedef 1026]
type=A
physics=N
movetype=I
anim=1016
velset=0,0
ctrl=0
sprpriority=4
[State 1026, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1026, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 1026, end]
type=destroyself
trigger1=!animtime


;========================<SHINKUU HADOU KEN>=============================
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
stateno=ifelse(var(2)<5,3005,3006)
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
x=65
[State 3005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 3005, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),1,9)
y=0

[State 3005, shield]
type=helper
trigger1=(root,var(1)!=2)&&!numhelper(3008)
helpertype=normal
stateno=3008
ID=3008
name="Shinkuu Shield"
postype=p1
ownpal=1

[State 3005, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 3005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=target,time=0&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 3005, hit]
type=hitdef
trigger1=root,var(1)=1
priority=6,Hit
attr=S,HP
damage=ceil(46*root,fvar(12)),5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=ifelse(time<=6,-6,-4),-4
ground.cornerpush.veloff=0
air.velocity=ifelse(time<=6,-6,-4),-3
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
trigger1=root,var(1)!=1
priority=6,Hit
attr=S,HP
damage=ceil(46*root,fvar(12)),5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=ifelse(time<=6,-6,-4),-4
ground.cornerpush.veloff=0
air.velocity=ifelse(time<=6,-6,-4),-3
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
trigger1=root,var(1)=1&&(sysvar(3)%2)
priority=6,Hit
attr=S,HP
damage=46,5
affectteam=F
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=ifelse(time<=6,-6,-4),-4
ground.cornerpush.veloff=0
air.velocity=ifelse(time<=6,-6,-4),-3
p2facing=1
fall=1
fall.recover=0
getpower=0
sprpriority=4

[State 3005, hit]
type=hitdef
trigger1=root,var(1)!=1&&(sysvar(3)%2)
priority=6,Hit
attr=S,HP
damage=46,5
affectteam=F
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=ifelse(time<=6,-6,-4),-4
ground.cornerpush.veloff=0
air.velocity=ifelse(time<=6,-6,-4),-3
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
[State 3005, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 3005, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<5,3005,3006)
[State 3005, end]
type=destroyself
trigger1=frontedgedist<-130||backedgedist<0

[Statedef 3006]
type=A
physics=N
movetype=I
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


;========================<SHINKUU SHIELD>=============================
[Statedef 3008]
type=A
physics=N
movetype=A
anim=3008
ctrl=0
velset=8,0
sprpriority=3
[State 3008, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3008, bind]
type=varset
trigger1=!time
var(0)=parent,ID
[State 3008, bind]
type=bindtoparent
trigger1=playerIDexist(var(0))
pos=10,0
time=1
[State 3008, turn]
type=turn
trigger1=playerIDexist(var(0))
trigger1=(facing!=parent,facing)
[State 3008, end]
type=destroyself
trigger1=!playerIDexist(var(0))
trigger2=playerIDexist(var(0))
trigger2=parent,stateno!=3005


;========================<DENJIN HADOU KEN>=============================
[Statedef 3025]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 3025, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=ifelse(var(2)<var(4),3025,3026)
ignorehitpause=1
[State 3025,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1
[State 3025, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=3025

[State 3025, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=floor(root,var(35)/50)
[State 3025, hitvar]
type=varadd
trigger1=!time&&!sysvar(4)
var(2)=1
[State 3025, maxhitvar]
type=varadd
trigger1=!time&&!prevstateno
var(4)=1+var(10)

[State 3025, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 3025, timevar]
type=varadd
trigger1=time&&var(1)<=16
var(1)=1

[State 3025, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 3025, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=52
[State 3025, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 3025, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),.5,4+1.5*var(10))
y=0

[State 3025, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 3025, particles]
type=explod
trigger1=1
vel=-.5-(random/1000.0),0
accel=0,.075
anim=3031
sprpriority=3
postype=p1
pos=-25,0
random=70,30
facing=-1+(random<500)*2
vfacing=-1+(random<500)*2
scale=.5,.5
ownpal=1
ignorehitpause=1
[State 3025, particles]
type=explod
trigger1=var(4)=5
vel=-.5-(random/1000.0),0
accel=0,.075
anim=3031
sprpriority=3
postype=p1
pos=-25,0
random=70,30
facing=-1+(random<500)*2
vfacing=-1+(random<500)*2
scale=.5,.5
ownpal=1
ignorehitpause=1

[State 3025, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=target,time=0&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1
[State 3025, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=target,time=0&&target,movetype=H
value=5,5
persistent=0
ignorehitpause=1

[State 3025, hit]
type=hitdef
trigger1=!var(3)
priority=6,Hit
attr=S,HP
damage=ceil(52*root,fvar(12)),5
animtype=Hard
hitflag=MAF
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,0
ground.cornerpush.veloff=0
air.velocity=-5,-2
p2facing=1
fall=var(1)<16
air.fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=6
palfx.color=32
palfx.sinadd=10,30,60,8
palfx.mul=128,256,512
palfx.time=32
sprpriority=4

[State 3025, hit]
type=hitdef
trigger1=var(3)
priority=6,Hit
attr=S,HP
damage=ceil(52*root,fvar(12)),5
animtype=Hard
hitflag=MAF
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,0
ground.cornerpush.veloff=0
air.velocity=-5,-2
p2facing=1
fall=var(1)<16
air.fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=6
palfx.color=32
palfx.sinadd=10,30,60,8
palfx.mul=128,256,512
palfx.time=32
sprpriority=4
p2stateno=7696
ID=3025

[State 3025, hit]
type=hitdef
trigger1=!var(3)&&(sysvar(3)%2)
priority=6,Hit
attr=S,HP
damage=52,5
affectteam=F
animtype=Hard
hitflag=MAF
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,0
ground.cornerpush.veloff=0
air.velocity=-5,-2
p2facing=1
fall=var(1)<16
air.fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=6
palfx.color=32
palfx.sinadd=10,30,60,8
palfx.mul=128,256,512
palfx.time=32
sprpriority=4

[State 3025, hit]
type=hitdef
trigger1=var(3)&&(sysvar(3)%2)
priority=6,Hit
attr=S,HP
damage=52,5
affectteam=F
animtype=Hard
hitflag=MAF
pausetime=4,6
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,0
ground.cornerpush.veloff=0
air.velocity=-5,-2
p2facing=1
fall=var(1)<16
air.fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=6
palfx.color=32
palfx.sinadd=10,30,60,8
palfx.mul=128,256,512
palfx.time=32
sprpriority=4
p2stateno=7696
ID=3025

[State 3025, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
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

[State 3025, noflamesvar]
type=varset
triggerall=movehit&&numtarget
trigger1=(target,ID=root,ID)
trigger2=numpartner
trigger2=(target,ID=partner,ID)
var(16)=1
ignorehitpause=1
[State 3025, dizzyfx]
type=helper
trigger1=movehit&&numtarget&&numhelper(3033)<1
trigger1=!(target,time)&&(target,movetype=H)&&!var(16)
helpertype=normal
stateno=3033
ID=3033
name="Dizzy FX"
postype=p2
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
ignorehitpause=1
persistent=0
[State 3025, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 3025, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<var(4),3025,3026)
[State 3025, end]
type=destroyself
trigger1=frontedgedist<-130||backedgedist<-130

[Statedef 3026]
type=A
physics=N
movetype=I
anim=3026
ctrl=0
velset=0,0
sprpriority=4
[State 3026, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 3026, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 3026, end]
type=destroyself
trigger1=!animtime


;========================<METSU HADOU KEN>=============================
[Statedef 3045]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 3045, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=ifelse(var(2)<var(4),3045,3046)
ignorehitpause=1
[State 3045,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1
[State 3045, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=3045

[State 3045, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=floor(root,var(36)/40)
[State 3045, hitvar]
type=varadd
trigger1=!time&&!sysvar(4)
var(2)=1
[State 3045, maxhitvar]
type=varadd
trigger1=!time&&!prevstateno
var(4)=2+var(10)

[State 3045, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 3045, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 3045, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=64
[State 3045, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 3045, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),.5,6+2*var(10))
y=0

[State 3045, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 3045, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=target,time=0&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 3045, hit]
type=hitdef
trigger1=!var(3)
priority=6,Hit
attr=S,HP
damage=ceil(88*root,fvar(12)),5
animtype=Hard
hitflag=MAF
pausetime=6,8
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,0
ground.cornerpush.veloff=0
air.velocity=-5,-2
p2facing=1
fall=var(1)<160
air.fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=8
palfx.color=32
palfx.invertall=1
palfx.sinadd=60,0,0,8
palfx.mul=384,128,128
palfx.time=32
sprpriority=4

[State 3045, hit]
type=hitdef
trigger1=var(3)
priority=6,Hit
attr=S,HP
damage=ceil(88*root,fvar(12)),5
animtype=Hard
hitflag=MAF
pausetime=6,8
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,0
ground.cornerpush.veloff=0
air.velocity=-5,-2
p2facing=1
fall=var(1)<160
air.fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=8
palfx.color=32
palfx.invertall=1
palfx.sinadd=60,0,0,8
palfx.mul=384,128,128
palfx.time=32
sprpriority=4
p2stateno=1113045

[State 3045, hit]
type=hitdef
trigger1=!var(3)&&(sysvar(3)%2)
priority=6,Hit
attr=S,HP
damage=88,5
affectteam=F
animtype=Hard
hitflag=MAF
pausetime=6,8
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,0
ground.cornerpush.veloff=0
air.velocity=-5,-2
p2facing=1
fall=var(1)<160
air.fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=8
palfx.color=32
palfx.invertall=1
palfx.sinadd=60,0,0,8
palfx.mul=384,128,128
palfx.time=32
sprpriority=4

[State 3045, hit]
type=hitdef
trigger1=var(3)&&(sysvar(3)%2)
priority=6,Hit
attr=S,HP
damage=88,5
affectteam=F
animtype=Hard
hitflag=MAF
pausetime=6,8
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-6,0
ground.cornerpush.veloff=0
air.velocity=-5,-2
p2facing=1
fall=var(1)<160
air.fall=1
fall.recover=0
getpower=0
envshake.time=16
envshake.freq=100
envshake.ampl=8
palfx.color=32
palfx.invertall=1
palfx.sinadd=60,0,0,8
palfx.mul=384,128,128
palfx.time=32
sprpriority=4
p2stateno=1113045

[State 3045, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
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

[State 3045, noflamesvar]
type=varset
triggerall=movehit&&numtarget
trigger1=(target,ID=root,ID)
trigger2=numpartner
trigger2=(target,ID=partner,ID)
var(16)=1
ignorehitpause=1
[State 3045, dizzyfx]
type=helper
trigger1=movehit&&numtarget&&numhelper(3033)<1
trigger1=!(target,time)&&(target,movetype=H)&&!var(16)
helpertype=normal
stateno=3033
ID=3033
name="Dizzy FX"
postype=p2
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
ignorehitpause=1
persistent=0
[State 3045, noflamesvar]
type=varset
trigger1=1
var(16)=0

[State 3045, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<var(4),3045,3046)
[State 3045, end]
type=destroyself
trigger1=frontedgedist<-130||backedgedist<0

[Statedef 3046]
type=A
physics=N
movetype=I
anim=3046
ctrl=0
velset=0,0
sprpriority=4
[State 3046, snd]
type=playsnd
trigger1=animelem=1
value=5,10
ignorehitpause=1
persistent=0
[State 3046, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3046, end]
type=destroyself
trigger1=!animtime


;========================<RYUU KOKU HADOU KEN>=============================
[Statedef 3055]
type=S
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
stateno=3055
ignorehitpause=1
[State 3055,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 3055, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3055, bind]
type=bindtoroot
trigger1=1
pos=69,-66

[State 3055, strengthvar]
type=varset
trigger1=var(10)!=7
var(10)=7
[State 3055, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=3055

[State 3055, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 3055, movehitvar2]
type=varset
trigger1=!time&&prevstateno
var(4)=animelemno(0)
ignorehitpause=1

[State 3055, reflectionvar]
type=varset
trigger1=1
sysvar(3)=-123; not reflectable

[State 3055, bgpal]
type=bgpalfx
trigger1=1
mul=512,0,0
time=2
mul=512,0,0
add=-70,-70,-70
color=0

[State 3055, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,7
ignorehitpause=1

[State 3055, hit]
type=hitdef
triggerall=animelemno(0)!=var(4)
trigger1=animelem=1||animelem=2||animelem=3||animelem=4||animelem=5||animelem=7||animelem=9||animelem=11
trigger2=animelem=13||animelem=15||animelem=17||animelem=19||animelem=21||animelem=23||animelem=25||animelem=27
attr=S,HP 
damage=ceil(33*root,fvar(12)),5
animtype=Back 
hitflag=MAFD 
priority=7,Hit 
pausetime=2,2
guard.dist=320
sparkno=-1
guard.sparkno=-1
guardsound=s2,0
ground.type=High
ground.slidetime=30
ground.hittime=30
ground.velocity=-20,0
ground.cornerpush.veloff=0
air.velocity=-20,-.5
getpower=0
fall=1
fall.recover=0
sprpriority=4

[State 3055, sparks]
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

[State 3055, end]
type=changestate
trigger1=!animtime||root,stateno!=3050||root,anim!=3050
value=3056

[Statedef 3056]
type=A
physics=N
movetype=I
anim=3056
ctrl=0
velset=0,0
sprpriority=4
[State 3056, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 3056, bgpal]
type=bgpalfx
trigger1=1
mul=512-ceil(18*time),ceil(18*time),ceil(18*time)
add=(-70+5*time),(-70+5*time),(-70+5*time)
color=ceil(18*time)
time=2
[State 3056, end]
type=destroyself
trigger1=!animtime


;========================<HADOUKEN BLOW BACK>=============================
[Statedef 3054]
physics=N
movetype=A
anim=3054
[State 3054, nhb]
type=nothitby
trigger1=1
time=-1
value=SCA
[State 3054, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA
stateno=3054
ignorehitpause=1
[State 3054, bound]
type=screenbound
trigger1=1
value=0
[State 3054, push]
type=playerpush
trigger1=1
value=1
[State 3054, vel]
type=velset
trigger1=!time&&!prevstateno
x=40
[State 3054, vel]
type=velmul
trigger1=1
x=.9
[State 3054, snd]
type=playsnd
trigger1=!time&&!prevstateno
value=5,2
[State 3054, hit]
type=hitdef
trigger1=!time
priority=7,Hit
attr=S,SP
damage=0,0
numhits=0
animtype=Back
hitflag=MAFD
guard.dist=0
sparkno=-1
guard.sparkno=-1
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity=-8,-6
ground.cornerpush.veloff=0
air.velocity=-8,-6
kill=0
[State 3054, end]
type=destroyself
trigger1=time>=15


;========================<B&W DUST>=============================
[Statedef 3125]
physics=N
anim=9741
[State 3125, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3125, dust]
type=explod
trigger1=!time
anim=3125
ID=3125
sprpriority=-2
postype=p1
removetime=16
[State 3125, fade]
type=palfx
trigger1=!time
color=0
mul=384,384,384
sinadd=-255,-255,-255,64
time=16
[State 3125, shrink]
type=modifyexplod
trigger1=1
ID=3125
scale=.2+(.05*time)*const(size.xscale),.05+(.0125*time)*const(size.yscale)
[State 3125, end]
type=destroyself
trigger1=time>=17


;========================<METSU SHORYUU KEN>=============================
[Statedef 3165]
physics=N
velset=0,0
anim=3165
sprpriority=3
[State 3165, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3165, bind]
type=bindtoroot
trigger1=1
[State 3165, image]
type=afterimage
trigger1=!time&&!prevstateno
time=999
timegap=1
framegap=1
length=3
palcontrast=120,30,30
trans=add
[State 3165, end]
type=destroyself
trigger1=!animtime


;========================<TATSUMAKI VACUUM>=============================
[Statedef 3205]
physics=N
velset=0,0
anim=3205
[State 3205, nhb]
type=nothitby
trigger1=1
time=-1
value=SCA
[State 3205, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA
stateno=3205
ignorehitpause=1
[State 3205, bound]
type=screenbound
trigger1=1
value=0
[State 3205, turn]
type=turn
trigger1=(facing=root,facing)
[State 3205, push]
type=playerpush
trigger1=p2bodydist x=[-5,5]
value=1
[State 3205, pos]
type=posset
trigger1=1
y=0
[State 3205, vel]
type=velset
trigger1=rootdist x>=0&&root,var(1)=1
x=ifelse((rootdist x=[0,100]),2,ifelse((rootdist x=[100,200]),1.5,1))
[State 3205, vel]
type=velset
trigger1=rootdist x>=0&&root,var(1)!=1
x=ifelse((rootdist x=[0,100]),4,ifelse((rootdist x=[100,200]),3,2))
[State 3205, dust]
type=explod
trigger1=(p2bodydist x=[-5,5])&&(enemynear,statetype!=A)&&!(time%12)
anim=7103
ID=7103
sprpriority=2
postype=p1
pos=0,0
scale=1,1
removetime=-2
ownpal=1
[State 3205, pos]
type=posadd
trigger1=p2bodydist x!=[-5,5]
x=ceil(p2dist x)-enemynear,const(size.ground.back)-5
[State 3205, end]
type=destroyself
trigger1=root,stateno!=3200||(root,anim!=[3201,3202])||root,movecontact


;========================<CLOUD>=============================
[Statedef 3215]
physics=N
anim=3215
sprpriority=4
[State 3215, pos]
type=posadd
trigger1=!time
y=-ceil(screenpos y)-20
[State 3215, bind]
type=posset
trigger1=var(0)!=3
x=ceil(root,pos x)
[State 3215, bind]
type=posset
trigger1=var(0)=2
y=-180

[State 3215, vel]
type=velset
trigger1=!time
trigger1=var(0):=1
y=(pos y+180)/-57.9

[State 3215, anim]
type=changeanim
trigger1=anim=3215&&(root,anim=[3201,3202])
trigger1=var(0):=2
value=3216
[State 3215, vel]
type=velset
trigger1=var(0)=2
y=0

[State 3215, vel]
type=velset
trigger1=anim=3216&&(root,anim!=[3201,3202])
trigger1=var(0):=3
y=-2

[State 3215, rain]
type=explod
trigger1=var(0)=2&&!numexplod(3217)
anim=3217
ID=3217
sprpriority=4
postype=p1
pos=0,-ceil(pos y)
bindtime=-1
removetime=-1
[State 3215, rain]
type=removeexplod
trigger1=var(0)=3
ID=3217

[State 3215, snd]
type=playsnd
trigger1=var(0)=2
value=5,16
channel=0
loop=1
persistent=0
[State 3215, snd]
type=stopsnd
trigger1=var(0)!=2
channel=0

[State 3215, assert]
type=assertspecial
trigger1=1
flag=noshadow
[State 3215, end]
type=destroyself
trigger1=var(0)=3&&vel y<0&&pos y<=-260


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


;========================<BAG>=============================
[Statedef 6000]
physics=N
anim=6000
sprpriority=2
[State 6000, bound]
type=screenbound
trigger1=1
value=0
[State 6000, bind1]
type=bindtoroot
trigger1=(root,anim=355)&&roundstate=1
trigger1=(root,animelemtime(1)>=0)&&(root,animelemtime(4)<0)
pos=61,-46
[State 6000, bind4]
type=bindtoroot
trigger1=(root,anim=355)&&roundstate=1
trigger1=(root,animelemtime(4)>=0)&&(root,animelemtime(5)<0)
pos=38,-46
[State 6000, bind5]
type=bindtoroot
trigger1=(root,anim=355)&&roundstate=1
trigger1=(root,animelemtime(5)>=0)&&(root,animelemtime(6)<0)
pos=14,-46
[State 6000, bind6]
type=bindtoroot
trigger1=(root,anim=355)&&roundstate=1
trigger1=(root,animelemtime(6)>=0)&&(root,animelemtime(7)<0)
pos=2,-43
[State 6000, bind7]
type=bindtoroot
trigger1=(root,anim=355)&&roundstate=1
trigger1=root,animelem=7
pos=-19,-46
[State 6000, grav]
type=gravity
trigger1=time>=91
[State 6000, vel]
type=velset
trigger1=time=91
x=-7
[State 6000, vel]
type=velmul
trigger1=time>=91
x=.85
[State 6000]
type=sprpriority
trigger1=time>=91
value=-3
[State 6000, end]
type=changestate
trigger1=pos y>=-4
value=6001

[Statedef 6001]
physics=S
anim=ifelse(random<750,6001,6002)
sprpriority=-3
velset=vel x,0
[State 6001, stop]
type=posset
trigger1=1
y=-4
[State 6001, landsnd]
type=playsnd
trigger1=!time
trigger2=anim=6003&&animelem=3
value=5,2
[State 6001, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-4
postype=p1
scale=.25,.25
ownpal=1
[State 6001, fall]
type=changeanim
triggerall=anim=6001&&animelemtime(2)>0&&random<500
trigger1=root,movetype=H&&(rootdist x=[-30,30])&&(rootdist x=[-30,30]);&&!(root,time)
trigger2=enemy,movetype=H&&(p2dist x=[-30,30])&&(p2dist y=[-30,30]);&&!(enemy,time)
value=6003
persistent=0
[State 6001, bound]
type=screenbound
trigger1=1
value=0


;========================<DIZZY FX>=============================
[Statedef 3033]
physics=N
velset=0,0
anim=9741
sprpriority=4
[State 3033, assert]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1
[State 3033, pos]
type=posadd
trigger1=1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State 3033, snd]
type=playsnd
trigger1=enemynear,stateno=5300
value=0,ifelse(random<500,5300,5301)
persistent=0
[State 3033, end]
type=destroyself
trigger1=enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,stateno=5300)


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


;---SHARED---
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


;========================<SHIN SHORYUUKEN SHOCKWAVE>=============================
[Statedef 7050]
physics=N
velset=0,0
anim=9741
[State 7050, palfx]
type=palfx
trigger1=time=5
time=10
add=0,0,0
sinadd=-255,-255,-255,40
[State 7050, circle]
type=explod
trigger1=!time
anim=7051
ID=7051
sprpriority=5
postype=p1
removetime=15
pausemovetime=300
supermovetime=300
[State 7050, circle]
type=explod
trigger1=!time
anim=7050
ID=7050
sprpriority=5
postype=p1
removetime=15
pausemovetime=300
supermovetime=300
[State 7050, shrink]
type=modifyexplod
trigger1=1
ID=7051
scale=.15*time,.15*time
[State 7050, shrink]
type=modifyexplod
trigger1=1
ID=7050
scale=.05*time,.05*time
[State 7050, noshadow]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1
[State 7050, safety]
type=removeexplod
trigger1=time>=15
ID=7050
[State 7050, end]
type=destroyself
trigger1=time>=15


;========================<POWER CHARGE>=============================
;-----<MAIN FX>-----
[Statedef 7240]
physics=N
anim=7240
sprpriority=-2
[State 7240, bind]
type=bindtoroot
trigger1=(root,stateno=740)&&(root,anim=740)
pos=-10,0
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

[State 7250, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
supermovetime=30
ownpal=1
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
sprpriority=3
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
anim=ifelse((root,var(1)=2),7511,7510)
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
[State 7600, var]
type=varset
trigger1=!time
var(0)=root,stateno

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

[State 7600, noshadow]
type=assertspecial
trigger1=1
flag=invisible
[State 7600, nobars]
type=assertspecial
trigger1=time<=20
flag=nobardisplay


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
value=7,8
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
[State 7610, fade]
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