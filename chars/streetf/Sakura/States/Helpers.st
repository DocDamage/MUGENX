; ________________________________
;|Sakura by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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


;========================<HADOU KEN>=============================
[Statedef 1005]
type=A
physics=N
movetype=A
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
[State 1005, strengthvar]
type=varset
trigger1=!time
var(32)=root,var(32)
[State 1005, movevar]
type=varset
trigger1=!time&&!prevstateno
var(5)=root,stateno

[State 1005, anim]
type=changeanim
trigger1=anim!=1005&&anim!=1025
value=ifelse(var(5)=1020,1025,1005)

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
x=40
[State 1005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1005, trans]
type=trans
trigger1=1
trans=add
[State 1005, angle]
type=angledraw
trigger1=var(5)=1020
value=43

[State 1005, vel]
type=velset
trigger1=var(32)=1&&var(5)=1000
x=ifelse(var(10)=3,6,ifelse(var(10)=2,4.5,3))
y=0
[State 1005, vel]
type=velset
trigger1=var(32)=2&&var(5)=1000
x=4
y=0
[State 1005, vel]
type=velset
trigger1=var(32)=3&&var(5)=1000
x=2
y=0

[State 1005, vel]
type=velset
trigger1=var(32)=1&&var(5)=1020
x=ifelse(var(10)=3,4.4,ifelse(var(10)=2,3.3,2.2))
y=ifelse(var(10)=3,-4,ifelse(var(10)=2,-3,-2))
[State 1005, vel]
type=velset
trigger1=var(32)=2&&var(5)=1020
x=2.9
y=-2.7
[State 1005, vel]
type=velset
trigger1=var(32)=3&&var(5)=1020
x=1.5
y=-1.4

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
trigger1=var(32)=1&&var(5)=1000
priority=6,Hit
attr=S,SP
damage=ceil(75*root,fvar(12)),5
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
ground.velocity=-7,0
ground.cornerpush.veloff=0
air.velocity=-3,-3
p2facing=1
getpower=150*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=2&&var(5)=1000
priority=6,Hit
attr=S,SP
damage=ceil(90*root,fvar(12)),5
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
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
p2facing=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=3&&var(5)=1000
priority=6,Hit
attr=S,SP
damage=ceil(105*root,fvar(12)),5
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
fall=1
p2facing=1
getpower=210*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=1&&var(5)=1020
priority=6,Hit
attr=S,SP
damage=ceil(75*root,fvar(12)),5
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
ground.velocity=-7,0
ground.cornerpush.veloff=0
air.velocity=-2,-4
p2facing=1
getpower=150*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=2&&var(5)=1020
priority=6,Hit
attr=S,SP
damage=ceil(90*root,fvar(12)),5
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
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-3,-5
air.fall=1
p2facing=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=3&&var(5)=1020
priority=6,Hit
attr=S,SP
damage=ceil(105*root,fvar(12)),5
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
ground.velocity=-4,-6
ground.cornerpush.veloff=0
air.velocity=-4,-6
fall=1
p2facing=1
getpower=210*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

;reflected
[State 1005, hit]
type=hitdef
trigger1=var(32)=1&&var(5)=1000&&(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=75,5
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
ground.velocity=-7,0
ground.cornerpush.veloff=0
air.velocity=-3,-3
p2facing=1
getpower=150*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=2&&var(5)=1000&&(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=90,5
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
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
p2facing=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=3&&var(5)=1000&&(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=105,5
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
fall=1
p2facing=1
getpower=210*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=1&&var(5)=1020&&(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=75,5
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
ground.velocity=-7,0
ground.cornerpush.veloff=0
air.velocity=-2,-4
p2facing=1
getpower=150*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=2&&var(5)=1020&&(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=90,5
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
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-3,-5
air.fall=1
p2facing=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4

[State 1005, hit]
type=hitdef
trigger1=var(32)=3&&var(5)=1020&&(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=105,5
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
ground.velocity=-4,-6
ground.cornerpush.veloff=0
air.velocity=-4,-6
fall=1
p2facing=1
getpower=210*!(root,var(20))
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
[State 1005, end]
type=destroyself
trigger1=frontedgedist<-50||backedgedist<0

[State 1005, end]
type=changestate
trigger1=var(5)=1000&&var(32)=1&&time>=ifelse(var(10)=3,25,ifelse(var(10)=2,33,50))
trigger2=var(5)=1020&&var(32)=1&&time>=ifelse(var(10)=3,17,ifelse(var(10)=2,23,34))
value=1007
ignorehitpause=1
[State 1005, end]
type=changestate
trigger1=var(32)!=1&&time>=ifelse(var(32)=3,10,20)
value=1007
ignorehitpause=1

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
[State 1006, sizefix]
type=angledraw
trigger1=1
scale=1,.75
[State 1006, trans]
type=trans
trigger1=1
trans=add
[State 1006, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 1006, end]
type=destroyself
trigger1=!animtime

[Statedef 1007]
type=A
physics=N
movetype=I
velset=.5*vel x,.5*vel y
ctrl=0
sprpriority=4
[State 1007, anim]
type=changeanim
trigger1=anim!=1007
value=1007
elem=animelemno(0)
[State 1007, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1007, trans]
type=trans
trigger1=1
trans=add
[State 1007, fade]
type=palfx
trigger1=!time
time=16
sinadd=-255,-255,-255,64
[State 1007, shrink]
type=angledraw
trigger1=1
scale=1,1-(time*.063)
[State 1007, end]
type=destroyself
trigger1=time>=16


;========================<HADOU SHOU>=============================
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
stateno=1015
ignorehitpause=1
[State 1015, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1015, strengthvar]
type=varset
trigger1=!time&&!prevstateno
var(10)=root,var(10)
[State 1015, movevar]
type=varset
trigger1=!time&&!prevstateno
var(5)=root,stateno
[State 1015, anim]
type=changeanim
trigger1=anim!=1015&&anim!=1035
value=ifelse(var(5)=1030,1035,1015)

[State 1015, trans]
type=trans
trigger1=1
trans=add
[State 1015, angle]
type=angledraw
trigger1=var(5)=1030
value=43

[State 1015, hitvar]
type=varadd
trigger1=!time
var(2)=1
[State 1015, movehitvar]
type=varset
trigger1=movehit&&numtarget
trigger1=target,movetype=H
var(3)=1
ignorehitpause=1
[State 1015, movehitvar2]
type=varset
trigger1=!time&&prevstateno
var(4)=animelemno(0)
ignorehitpause=1

[State 1015, reflectionvar]
type=varset
trigger1=1
sysvar(3)=-123

[State 1015, bind]
type=bindtoroot
trigger1=(root,stateno=1010)&&var(5)=1010
pos=72,-54
[State 1015, bind]
type=bindtoroot
trigger1=(root,stateno=1030)&&var(5)=1030
pos=44,-90

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
triggerall=animelemno(0)!=var(4)&&var(2)<4&&var(5)=1010
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6
priority=6,Hit
attr=S,SP
damage=ceil((75/var(2))*root,fvar(12)),5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=10,12
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-4,-2
ground.cornerpush.veloff=0
air.velocity=-4,-2
p2facing=1
getpower=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
fall=1
fall.recovery=0
sprpriority=4

[State 1015, hit]
type=hitdef
triggerall=animelemno(0)!=var(4)&&var(2)<4&&var(5)=1030
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6
priority=6,Hit
attr=S,SP
damage=ceil((75/var(2))*root,fvar(12)),5
animtype=Back
hitflag=MAF
guardflag=MA
pausetime=10,12
sparkno=-1
guard.sparkno=s7001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=24
ground.hittime=24
ground.velocity=-3,-6
ground.cornerpush.veloff=0
air.velocity=-3,-6
p2facing=1
getpower=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
fall=1
fall.recovery=0
sprpriority=4

[State 1015, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=p2
pos=(target,const(size.ground.front)-10),-floor(p2dist y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1015, end]
type=destroyself
trigger1=!animtime
trigger2=animelemtime(7)<0&&(root,stateno!=var(5))
trigger3=(root,anim=1010&&root,animelemtime(5)<0)
trigger4=(root,anim=1030&&root,animelemtime(5)<0)
ignorehitpause=1
[State 1015, end]
type=changestate
trigger1=movecontact
value=1015
ignorehitpause=1


;========================<PROJECTILE SHIELD>=============================
[Statedef 1115]
type=A
physics=N
movetype=A
ctrl=0
velset=8,0
sprpriority=3
[State 1115, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1115
ignorehitpause=1
[State 1115, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1
[State 1115, anim]
type=changeanim
trigger1=anim!=1115
value=1115
[State 1115, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 1115, bind]
type=bindtoroot
trigger1=1
pos=0,-55
time=-1
[State 1115, end]
type=destroyself
trigger1=!animtime


;========================<PROJECTILE HITTER>=============================
[Statedef 1306]
type=A
physics=N
movetype=A
anim=1306
ctrl=0
[State 1306, reversal]
type=reversaldef
trigger1=!time
reversal.attr=SCA,AP
p1stateno=1307
pausetime=6,6
sparkno=-1
numhits=0
ground.hittime=0
ignorehitpause=1
[State 1306, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=1307
ignorehitpause=1
[State 1306, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,AP
ignorehitpause=1
[State 1306, bind]
type=bindtoroot
trigger1=1
time=-1
[State 1306, anim]
type=changeanim
trigger1=root,anim=1305&&root,animelemtime(5)<0
value=1306
elem=(root,animelemno(0))
ignorehitpause=1
[State 1306, end]
type=destroyself
trigger1=!animtime||root,movetype=H
trigger2=root,stateno!=1305||root,anim!=1305

[Statedef 1307]
type=A
physics=N
movetype=A
anim=9741
ctrl=0
[State 1307, bind]
type=bindtoroot
trigger1=1
time=-1
[State 1307, end]
type=destroyself
trigger1=root,stateno!=1305||root,anim!=1305
trigger2=root,stateno=1305&&!(root,time)


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
trigger1=var(10)!=5
var(10)=5
[State 3005, movevar]
type=varset
trigger1=!time&&!prevstateno
var(5)=root,stateno
[State 3005, anim]
type=changeanim
trigger1=anim!=1005&&anim!=1025
value=ifelse(var(5)=3020,1025,1005)

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
trigger1=time&&var(4)<25
var(4)=1

[State 3005, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 3005, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=40
[State 3005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 3005, trans]
type=trans
trigger1=1
trans=add
[State 3005, shrink]
type=angledraw
trigger1=var(5)=3000
scale=.5,1-(var(4)*.032)
[State 3005, shrink]
type=angledraw
trigger1=var(5)=3020
scale=.5,1-(var(4)*.032)
value=43

[State 3005, vel]
type=velset
trigger1=var(5)=3000
x=ifelse((time<2&&var(2)>1),1,7)
y=0
[State 3005, vel]
type=velset
trigger1=var(5)=3020
x=ifelse((time<2&&var(2)>1),.8,5.1)
y=ifelse((time<2&&var(2)>1),-.7,-4.8)

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
trigger1=var(5)=3000
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
trigger1=var(5)=3020
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
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-4,-6
ground.cornerpush.veloff=0
air.velocity=-4,-6
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
trigger1=var(5)=3000&&(sysvar(3)%2)
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
trigger1=var(5)=3020&&(sysvar(3)%2)
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
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-4,-6
ground.cornerpush.veloff=0
air.velocity=-4,-6
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
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 3005, end]
type=changestate
trigger1=movecontact
value=ifelse(var(2)<5,3005,3006)
ignorehitpause=1
[State 3005, end]
type=changestate
trigger1=var(5)=3000&&var(4)>=25
trigger2=var(5)=3020&&var(4)>=17
value=3007
[State 3005, end]
type=destroyself
trigger1=frontedgedist<-65||backedgedist<0

[Statedef 3006]
type=A
physics=N
movetype=I
anim=1006
ctrl=0
velset=0,0
sprpriority=4
[State 3006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3006, trans]
type=trans
trigger1=1
trans=add
[State 3006, shrink]
type=angledraw
trigger1=var(5)=3000
scale=.5,.75-(var(4)*.024)
[State 3006, shrink]
type=angledraw
trigger1=var(5)=3020
scale=.5,.75-(var(4)*.024)
value=43
[State 3006, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 3006, end]
type=destroyself
trigger1=!animtime

[Statedef 3007]
type=A
physics=N
movetype=I
velset=.5*vel x,.5*vel y
ctrl=0
sprpriority=4
[State 3007, anim]
type=changeanim
trigger1=anim!=1007
value=1007
elem=animelemno(0)
[State 3007, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 3007, trans]
type=trans
trigger1=1
trans=add
[State 3007, fade]
type=palfx
trigger1=!time
time=10
sinadd=-255,-255,-255,40
[State 3007, shrink]
type=angledraw
trigger1=1
scale=.5,.2-(time*.02)
[State 3007, end]
type=destroyself
trigger1=time>=10


;========================<NEKKETSU HADOU KEN>=============================
[Statedef 4305]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 4305, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=ifelse(var(3),4306,4307)
ignorehitpause=1
[State 4305, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 4305, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 4305, anim]
type=changeanim
trigger1=!time&&!prevstateno
value=4305

[State 4305, vel]
type=velset
trigger1=1
x=ifelse((time<2&&var(2)>1),.5,12)
y=0

[State 4305, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 4305, dust]
type=explod
trigger1=!(time%6)
anim=4309
ID=4309
sprpriority=4
postype=p1
pos=0,-ceil(pos y)+7
scale=1,1

[State 4305, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,9
persistent=0
ignorehitpause=1

[State 4305, hitvar]
type=varadd
trigger1=!time
var(2)=1
[State 4305, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1

[State 4305, reflectionvar]
type=varset
trigger1=1
sysvar(3)=-123

[State 4305, hit]
type=hitdef
trigger1=!var(3)
priority=6,Hit
attr=S,HP
damage=ceil(435*root,fvar(12)),60
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
ground.velocity=-12,-4
ground.cornerpush.veloff=0
air.type=Low
air.velocity=-12,-4
p2facing=1
fall=1
fall.recover=0
getpower=0
envshake.time=30
envshake.freq=100
envshake.ampl=6
sprpriority=4

[State 4305, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7030+(random%8)
ID=7000
sprpriority=5
postype=p2
pos=(target,const(size.ground.front)-10),-floor(p2dist y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=430
supermovetime=430

[State 4305, end]
type=changestate
trigger1=movecontact
value=ifelse((var(3)||var(2)>=5),4306,4305)
ignorehitpause=1
[State 4305, end]
type=destroyself
trigger1=frontedgedist<-200||backedgedist<-200

[Statedef 4306]
type=A
physics=N
movetype=I
anim=4306
velset=0,0
ctrl=0
sprpriority=4
[State 4306, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 4306, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 4306, end]
type=destroyself
trigger1=!animtime

[Statedef 4307]
type=A
physics=N
movetype=I
anim=4306
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1
hitcountpersist=1
[State 4307, movehitvar]
type=varset
trigger1=numtarget||(uniqhitcount>=2)
var(7)=1
ignorehitpause=1
[State 4307, Debug]
type=displaytoclipboard
trigger1=1
text="%d Targets %d Hits Var(3)=%d Var(7)=%d"
params=numtarget, uniqhitcount, var(3), var(7)
ignorehitpause=1
[State 4307, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 4307, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 4307, circle]
type=helper
trigger1=!var(3)&&!var(7)&&!time
helpertype=normal
stateno=7251
ID=7251
name="Circle"
postype=p1
pos=-10,0
ownpal=1
supermovetime=300
[State 4307, fragment]
type=helper
trigger1=!var(3)&&!var(7)&&numhelper(4310)<16&&(time=[1,9])
helpertype=normal
stateno=4310
ID=4310
name="Nekketsu Fragment"
postype=p1
pos=-64+ceil(random/18.5),0
size.xscale=ifelse(random<500,-.5,.5)
size.yscale=ifelse(random<500,-.5,.5)
ownpal=1
[State 4307, fragment]
type=helper
trigger1=!var(3)&&!var(7)&&numhelper(4310)<16&&(time=[1,9])
helpertype=normal
stateno=4310
ID=4310
name="Nekketsu Fragment"
postype=p1
pos=-64+ceil(random/18.5),0
size.xscale=ifelse(random<500,-.5,.5)
size.yscale=ifelse(random<500,-.5,.5)
ownpal=1
[State 4307, end]
type=destroyself
trigger1=!animtime


;========================<NEKKETSU FRAGMENT>=============================
[Statedef 4310]
type=A
physics=N
movetype=A
anim=4310
ctrl=0
velset=0,0
sprpriority=4

[State 4310, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=4311
ignorehitpause=1
[State 4310, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 4310, vel]
type=velset
trigger1=!time&&!prevstateno
x=-5+(random/50.0)
y=-5+(random/100.0)

[State 4310, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 4310, reflectionvar]
type=varset
trigger1=1
sysvar(3)=-123

[State 4310, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=target,time=0&&target,movetype=H
value=2,7
persistent=0
ignorehitpause=1

[State 4310, hit]
type=hitdef
trigger1=!movecontact
priority=6,Hit
attr=S,HP
damage=35,5
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
ground.velocity=-7,0
ground.cornerpush.veloff=0
air.velocity=-3,-3
p2facing=1
getpower=0
envshake.time=12
envshake.freq=430
envshake.ampl=4
sprpriority=4

[State 4310, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7030+(random%8)
ID=7000
sprpriority=5
postype=p2
pos=(target,const(size.ground.front)-10),-floor(p2dist y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=430
supermovetime=430

[State 4310, end]
type=changestate
trigger1=movecontact
value=4311
ignorehitpause=1
[State 4310, end]
type=destroyself
trigger1=frontedgedist<-50||backedgedist<-50
trigger2=!animtime

[Statedef 4311]
type=A
physics=N
movetype=I
ctrl=0
sprpriority=4
[State 4311, assert]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 4311, end]
type=destroyself
trigger1=time>=12


;========================<HADOUKEN CHARGE>=============================
[Statedef 1002]
physics=N
velset=0,0
anim=1002
sprpriority=3
[State 1002, bind]
type=bindtoroot
trigger1=1

[State 1002, anim]
type=changeanim
trigger1=root,anim=1000&&root,animelemtime(10)<0
trigger1=animelemtime(3)>=0
value=anim
elem=1
[State 1002, anim]
type=changeanim
triggerall=root,anim=1000&&root,animelemtime(10)<0
trigger1=anim=1002&&root,var(32)!=1
trigger2=anim=1003&&root,var(32)!=2
trigger3=anim=1004&&root,var(32)!=3
value=ifelse((root,var(32)=1),1002,ifelse((root,var(32)=2),1003,1004))
[State 1002, anim]
type=changeanim
trigger1=root,anim=1000&&root,animelemtime(10)>=0
trigger1=animelemtime(3)<0
value=ifelse((root,var(32)=1),1002,ifelse((root,var(32)=2),1003,1004))
elem=3

[State 1002, noshadow]
type=assertspecial
trigger1=1
flag=noshadow

[State 1002, snd]
type=playsnd
trigger1=!time
value=5,5
channel=2
[State 1002, snd]
type=stopsnd
trigger1=root,stateno!=1000||root,anim!=1000
trigger2=!animtime
channel=2

[State 1002, end]
type=destroyself
trigger1=root,stateno!=1000||root,anim!=1000
trigger2=!animtime


;---DIAGONAL---
[Statedef 1024]
physics=N
velset=0,0
anim=1024
sprpriority=3
[State 1024, bind]
type=bindtoroot
trigger1=1

[State 1024, anim]
type=changeanim
trigger1=root,anim=1020&&root,animelemtime(10)<0
trigger1=animelemtime(4)>=0
value=1024
elem=1
[State 1024, anim]
type=changeanim
trigger1=root,anim=1020&&root,animelemtime(10)>=0
trigger1=animelemtime(4)<0
value=1024
elem=4

[State 1024, noshadow]
type=assertspecial
trigger1=1
flag=noshadow

[State 1024, snd]
type=playsnd
trigger1=!time
value=5,5
channel=2
[State 1024, snd]
type=stopsnd
trigger1=root,stateno!=1020||root,anim!=1020
trigger2=!animtime
channel=2

[State 1024, end]
type=destroyself
trigger1=root,stateno!=1020||root,anim!=1020
trigger2=!animtime


;---SHINKUU---
[Statedef 3004]
physics=N
velset=0,0
anim=3004
sprpriority=3
[State 3004, bind]
type=bindtoroot
trigger1=1
[State 3004, anim]
type=changeanim
trigger1=root,anim=3000&&animelemtime(4)>=0
trigger2=root,anim=4300&&animelemtime(4)>=0
value=3004
elem=1
[State 3004, anim]
type=changeanim
trigger1=root,anim=3001&&animelemtime(4)<0
trigger2=root,anim=4301&&animelemtime(4)<0
value=3004
elem=4
[State 3004, noshadow]
type=assertspecial
trigger1=1
flag=noshadow

[State 3004, snd]
type=playsnd
trigger1=!time
value=5,5
channel=2
[State 3004, snd]
type=stopsnd
trigger1=root,stateno!=3000||(root,anim!=[3000,3001])
trigger1=root,stateno!=4300||(root,anim!=[4300,4301])
trigger2=!animtime
channel=2

[State 3004, end]
type=destroyself
trigger1=root,stateno!=3000||(root,anim!=[3000,3001])
trigger1=root,stateno!=4300||(root,anim!=[4300,4301])
trigger2=!animtime


;---DIAGONAL SHINKUU---
[Statedef 3024]
physics=N
velset=0,0
anim=1024
sprpriority=3
[State 3024, bind]
type=bindtoroot
trigger1=1
[State 3024, anim]
type=changeanim
trigger1=root,anim=3020&&animelemtime(4)>=0
value=1024
elem=1
[State 3024, anim]
type=changeanim
trigger1=root,anim=3021&&animelemtime(4)<0
value=1024
elem=4
[State 3024, noshadow]
type=assertspecial
trigger1=1
flag=noshadow

[State 3024, snd]
type=playsnd
trigger1=!time
value=5,5
channel=2
[State 3024, snd]
type=stopsnd
trigger1=root,stateno!=3020||(root,anim!=[3020,3021])
trigger2=!animtime
channel=2

[State 3024, end]
type=destroyself
trigger1=root,stateno!=3020||(root,anim!=[3020,3021])
trigger2=!animtime


;---NEKKETSU---
[Statedef 4304]
physics=N
velset=0,0
anim=4304
sprpriority=3
[State 4304, bind]
type=bindtoroot
trigger1=1
pos=ifelse((root,anim=4300),-18,3),ifelse((root,anim=4300),-63,-55)

[State 4304, noshadow]
type=assertspecial
trigger1=1
flag=noshadow

[State 4304, trans]
type=trans
trigger1=1
trans=add
[State 4304, angle]
type=angleadd
trigger1=1
value=6
[State 4304, angle]
type=angledraw
trigger1=1

[State 4304, snd]
type=playsnd
trigger1=!time
value=5,5
channel=2
[State 4304, snd]
type=stopsnd
trigger1=root,stateno!=4300||(root,anim!=[4300,4301])
trigger2=root,anim=4301&&root,animelemtime(2)>=0
channel=2

[State 4304, end]
type=destroyself
trigger1=root,stateno!=4300||(root,anim!=[4300,4301])
trigger2=root,anim=4301&&root,animelemtime(2)>=0


;========================<HADOUKEN INTRO>=============================
[Statedef 1003]
physics=N
velset=0,0
anim=1002
sprpriority=3
[State 1003, bind]
type=bindtoroot
trigger1=root,animelemtime(29)<0
[State 1003, bind]
type=bindtoroot
trigger1=root,animelem=29
pos=86,-54
[State 1003, nhb]
type=nothitby
trigger1=1
time=-1
value=SCA
ignorehitpause=1

[State 1003, anim]
type=changeanim
trigger1=root,animelemtime(29)<0
trigger1=animelemtime(3)>=0
value=1002
elem=1
[State 1003, anim]
type=changeanim
trigger1=root,animelemtime(28)>=0&&root,animelemtime(29)<0
value=1002
elem=3
[State 1003, anim]
type=changeanim
trigger1=root,animelemtime(29)>=0
value=1005
persistent=0
[State 1003, vel]
type=velset
trigger1=anim=1005
x=(p2dist x-31)/7.0
y=0
persistent=0

[State 1003, anim]
type=changeanim
trigger1=anim=1005&&p2dist x<=30
value=1006
persistent=0
[State 1003, vel]
type=velset
trigger1=anim=1006
x=0
y=0
[State 1003, snd]
type=playsnd
trigger1=anim=1006
value=5,1
persistent=0

[State 1003, shrink]
type=angledraw
trigger1=anim=[1005,1006]
scale=.5,.4
[State 1003, shrink]
type=trans
trigger1=1
trans=add

[State 1003, noshadow]
type=assertspecial
trigger1=1
flag=noshadow

[State 1003, snd]
type=playsnd
trigger1=!time
value=5,5
channel=2
[State 1003, snd]
type=stopsnd
trigger1=root,stateno!=352
trigger2=anim=1006&&!animtime
channel=2

[State 1003, end]
type=destroyself
trigger1=root,stateno!=352
trigger2=anim=1006&&!animtime


;========================<7251 CIRCLE>=============================
[Statedef 7251]
physics=N
velset=0,0
anim=9741
[State 7251, palfx]
type=palfx
trigger1=!time
time=25
sinadd=-255,-255,-255,100
[State 7251, circle]
type=explod
trigger1=!time
anim=7251
ID=7251
sprpriority=3
postype=p1
removetime=25
supermovetime=30
[State 7251, shrink]
type=modifyexplod
trigger1=numexplod(7251)
ID=7251
scale=.067+(.03*time),.2+(.09*time)
[State 7251, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7251, end]
type=destroyself
trigger1=!numexplod(7251)


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
sprpriority=5

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
sprpriority=5
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
x=(rootdist x-12)/60
y=(rootdist y-63)/60
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


;========================<COUNTER F.X.>=============================
[Statedef 7400]
physics=N
velset=0,0
anim=9741
[State 7400, bgpalfx]
type=bgpalfx
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
trigger1=time>=5


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
value=7,ifelse((root,stateno=[4001,4002]),7,6)
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

[State 7600, kanji]
type=helper
trigger1=!time&&(root,stateno=[4001,4002])
helpertype=normal
stateno=7610
ID=7610
name="Haru Kanji"
postype=left
pos=160,120
ownpal=1

[State 7600, noshadow]
type=assertspecial
trigger1=1
flag=invisible
[State 7600, nobars]
type=assertspecial
trigger1=time<=20
flag=nobardisplay


;========================<HARU KANJI>=============================
[Statedef 7610]
physics=N
velset=0,0
anim=9741
sprpriority=-5
[State 7610, bind]
type=posset
trigger1=1
x=0
y=-120
[State 7610, palfx]
type=palfx
trigger1=time=20
time=40
sinadd=-255,-255,-255,160
ignorehitpause=1
[State 7610, kanji]
type=explod
trigger1=!time
anim=7610
ID=7610
sprpriority=-5
postype=left
pos=160,120
bindtime=-1
removetime=60
[State 7610, shrink]
type=modifyexplod
trigger1=time<6&&numexplod(7610)
ID=7610
scale=(5.5-time),(5.5-time)
[State 7610, shrink]
type=modifyexplod
trigger1=time>=6&&numexplod(7610)
ID=7610
scale=.5,.5
[State 7610, noshadow]
type=assertspecial
trigger1=1
flag=invisible
[State 7610, end]
type=destroyself
trigger1=time&&!numexplod(7610)


;==========<KEI INTRO>==========
[Statedef 6000]
type=S
physics=N
anim=6000
sprpriority=-1
[State 6000, offset]
type=offset
trigger1=1
y=-5

[State 6000, anim]
type=changeanim
trigger1=anim=6000&&animelemtime(2)<0&&root,stateno=354
trigger1=root,anim=354&&root,animelemtime(4)<-1
value=6000
elem=1

[State 6000, anim]
type=changeanim
trigger1=anim=6000&&!animtime
value=6001
[State 6000, steps]
type=playsnd
trigger1=anim=6001
trigger1=animelem=2||animelem=5
value=0,100
[State 6000, turn]
type=turn
trigger1=anim=6001
persistent=0
[State 6000, vel]
type=velset
trigger1=anim=6001
x=8

[State 6000, snd]
type=playsnd
trigger1=anim=6000&&animelem=6
value=6,0
channel=0
[State 6000, snd]
type=playsnd
trigger1=anim=6000&&animelem=13
value=6,1
channel=0
[State 6000, snd]
type=playsnd
trigger1=anim=6001
value=6,2
channel=0
persistent=0

[State 6000, end]
type=destroyself
trigger1=anim=6001
trigger1=frontedgedist<-50


;==========<KEI WIN POSE 1>==========
[Statedef 6002]
type=S
physics=N
anim=6002
sprpriority=2
[State 6002, offset]
type=offset
trigger1=1
y=5
[State 6002, steps]
type=playsnd
trigger1=anim=6002
trigger1=animelem=2||animelem=5
value=0,100
[State 6002, vel]
type=velset
trigger1=anim=6002
x=8
[State 6002, anim]
type=changeanim
trigger1=anim=6002&&rootdist x<=200
value=6003
[State 6002, snd]
type=playsnd
trigger1=anim=6003
value=6,1
channel=0
persistent=0
[State 6002, snd]
type=playsnd
trigger1=anim=6003&&animelem=3
value=5,3
[State 6002, dust]
type=explod
trigger1=anim=6003&&animelem=3
anim=7102
ID=7102
sprpriority=-2
postype=p1
pos=36
ownpal=1
scale=.5,.5
[State 6002, shake]
type=envshake
trigger1=anim=6003&&animelem=3
time=18
freq=60
ampl=4
[State 6002, statetype]
type=statetypeset
trigger1=anim=6003&&animelemtime(3)>=0
statetype=L
physics=C


;==========<KEI WIN POSE 2>==========
[Statedef 6004]
type=S
physics=N
anim=6002
sprpriority=2
[State 6004, steps]
type=playsnd
trigger1=anim=6002
trigger1=animelem=2||animelem=5
value=0,100
[State 6004, vel]
type=velset
trigger1=anim=6002
x=8
[State 6004, anim]
type=changeanim
trigger1=anim=6002&&rootdist x<=125
value=6004
[State 6004, anim]
type=changeanim
trigger1=anim=6004&&root,stateno=182&&root,anim=182
value=6004
elem=root,animelemno(0)
[State 6004, anim]
type=turn
trigger1=anim=6004
persistent=0
[State 6004, statetype]
type=statetypeset
trigger1=anim=6004
physics=S


;==========<KEI SHUN GOKU SATSU>==========
[Statedef 6010]
type=S
physics=N
anim=6002
sprpriority=-1

[State 6010, snd]
type=playsnd
trigger1=!time
value=6,0
channel=0
persistent=0
[State 6010, steps]
type=playsnd
trigger1=anim=6002
trigger1=animelem=2||animelem=5
value=0,100
[State 6010, vel]
type=velset
trigger1=anim=6002
x=8

[State 6010, anim]
type=changeanim
trigger1=anim=6002&&root,stateno=4001&&root,anim=4001
trigger1=root,animelemtime(2)<0&&rootdist x<=90
value=6010
[State 4001, grabsnd]
type=playsnd
trigger1=anim=6010
value=0,800
persistent=0
[State 6010, vel]
type=velset
trigger1=anim=6010
x=0
persistent=0

[State 6010, bind]
type=bindtoroot
trigger1=anim=6010&&root,stateno=4001&&root,anim=4001
trigger1=root,animelemtime(8)<0
pos=65,0
[State 6010, bind]
type=bindtoroot
trigger1=anim=6010&&root,stateno=4001&&root,anim=4001
trigger1=root,animelemtime(8)>=0
pos=90,0

[State 4001, palfx]
type=palfx
trigger1=root,animelemtime(10)=-1||root,animelemtime(14)=-1||root,animelemtime(18)=-1
add=-50,-50,-50
sinadd=-155,-155,-155,80
mul=256,128,256
color=0
time=20
[State 4001, palfx]
type=palfx
trigger1=root,animelemtime(23)=-1
add=0,0,0
sinadd=0,0,0,1
time=1

[State 6010, end]
type=changestate
trigger1=anim=6010&&(root,stateno!=4001||root,anim!=4001)
trigger2=anim=6010&&root,stateno=4001&&root,anim=4001
trigger2=root,animelemtime(23)>=-1
value=6011
[State 6010, end]
type=changestate
trigger1=anim=6010&&winko
value=6012


[Statedef 6011]
type=S
physics=N
anim=6002
sprpriority=-1
[State 6011, snd]
type=playsnd
trigger1=!time
value=6,2
channel=0
persistent=0
[State 6011, turn]
type=turn
trigger1=!time
[State 6011, steps]
type=playsnd
trigger1=animelem=2||animelem=5
value=0,100
[State 6011, vel]
type=velset
trigger1=1
x=8
[State 6011, end]
type=destroyself
trigger1=frontedgedist<-50


;==========<KEI WIN S.G.S.>==========
[Statedef 6012]
type=S
physics=N
anim=6012
sprpriority=-3
[State 6012, vel]
type=velset
trigger1=anim=6012
x=0

[State 6012, anim]
type=changeanim
trigger1=anim=6012&&!animtime
value=6002
[State 6012, steps]
type=playsnd
trigger1=anim=6002
trigger1=animelem=2||animelem=5
value=0,100
[State 6012, turn]
type=turn
trigger1=anim=6002
persistent=0
[State 6012, vel]
type=velset
trigger1=anim=6002
x=8

[State 6012, snd]
type=playsnd
trigger1=anim=6012&&animelem=5
value=6,1
channel=0
[State 6012, snd]
type=playsnd
trigger1=anim=6002
value=6,2
channel=0
persistent=0

[State 6012, end]
type=destroyself
trigger1=anim=6002
trigger1=frontedgedist<-50


;========================<SHOE>=============================
[Statedef 1475]
type=A
physics=N
movetype=A
ctrl=0
velset=6,2
sprpriority=3
anim=1475

[State 1475, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NA,SA,HA,NP,SP,HP
stateno=1476
ignorehitpause=1
[State 1475, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NA,SA,HA,NP,SP,HP
ignorehitpause=1

[State 1475, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1475, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=10
[State 1475, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1475, vel]
type=veladd
trigger1=1
y=.5
[State 1475, dust]
type=explod
trigger1=pos y>=-ceil(vel y)&&time<=20
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
scale=.25,.25
ownpal=1
[State 1475, vel]
type=velmul
trigger1=pos y>=-ceil(vel y)
x=.5
y=-.5

[State 1475, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,4
persistent=0
ignorehitpause=1

[State 1475, hit]
type=hitdef
trigger1=1
priority=1,Hit
attr=S,SP
damage=ceil(30*root,fvar(12)),5
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
ground.velocity=-4,0
ground.cornerpush.veloff=0
air.velocity=-2,-2
p2facing=1
getpower=150*!(root,var(20))
envshake.time=12
envshake.freq=147
envshake.ampl=4
sprpriority=4

[State 1475, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=6,Hit
attr=S,SP
damage=20,5
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
ground.velocity=-4,0
ground.cornerpush.veloff=0
air.velocity=-2,-2
p2facing=1
getpower=150*!(root,var(20))
envshake.time=12
envshake.freq=147
envshake.ampl=4
sprpriority=4

[State 1475, sparks]
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
pausemovetime=147
supermovetime=147

[State 1475, end]
type=changestate
trigger1=movecontact||time>=60
trigger2=vel y<=1&&pos y>=-1
value=1476
ignorehitpause=1
[State 1475, end]
type=destroyself
trigger1=frontedgedist<-50||backedgedist<-50

[Statedef 1476]
type=A
physics=N
movetype=I
ctrl=0
velset=-vel x,vel y
sprpriority=4
[State 1476, anim]
type=changeanim
trigger1=vel y<=1&&pos y>=-1
value=6092
[State 1476, pos]
type=posset
trigger1=anim=6092
y=0
[State 1476, vel]
type=velset
trigger1=anim=6092
x=0
y=0
[State 1476, dust]
type=explod
trigger1=anim=6092
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
scale=.25,.25
ownpal=1
persistent=0
[State 1476, vel]
type=veladd
trigger1=1
y=.5
[State 1476, vel]
type=velmul
trigger1=pos y>=-ceil(vel y)
x=.5
y=-.5
[State 1476, fade]
type=trans
trigger1=1
trans=addalpha
alpha=ceil(256-8.53*time),ceil(8.53*time)
[State 1476, end]
type=destroyself
trigger1=time>=30


;---WIN POSE---
[Statedef 6091]
physics=N
velset=0,0
anim=6091
sprpriority=2
[State 6091, vel]
type=velset
trigger1=time=1
x=-(rootdist x-4)/-68.0
y=-5
[State 6091, grav]
type=veladd
trigger1=time
y=.15
[State 6091, vel]
type=velset
trigger1=anim=6091&&vel y>0&&rootdist y<=90
x=1.5*vel x
y=-.5*vel y
persistent=0
[State 6091, anim]
type=changeanim
trigger1=anim=6091&&vel y>0&&pos y>=-10
value=6092
[State 6091, pos]
type=posset
trigger1=anim=6092
y=0
[State 6091, vel]
type=velset
trigger1=anim=6092
x=0
y=0
[State 6091, dust]
type=explod
trigger1=anim=6092
anim=7104
ID=7104
sprpriority=-2
postype=p1
scale=.25,.25
ownpal=1
persistent=0


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