; ________________________________
;|Sakura by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=====================================<EX SPECIAL STATES>========================================
;================================================================================================

;========================<HADOU SHOU>=============================
[Statedef 1010]
type=S
physics=S
movetype=A
anim=1010
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1

[State 1010, ECreset]
type=palfx
trigger1=var(20)>0
trigger1=var(20):=-1
time=1
[State 1010, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1010, width]
type=width
trigger1=anim=1010&&animelemtime(4)>=0&&animelemtime(5)<0
trigger2=anim=1011&&animelemtime(2)>=0&&animelemtime(3)<0
value=13
[State 1010, width]
type=width
trigger1=anim=1010&&animelemtime(5)>=0
trigger2=anim=1011&&animelemtime(2)<0
value=26

[State 1010, focus]
type=removeexplod
trigger1=anim=1010&&animelemtime(2)<0
ID=1012
[State 1010, focus]
type=explod
trigger1=anim=1010&&!animelemtime(2)
anim=1012
ID=1012
sprpriority=3
postype=p1
bindtime=-1
removetime=-2
removeongethit=1
ownpal=1

[State 1010, Hadoushou]
type=helper
trigger1=anim=1010&&!animelemtime(5)
helpertype=normal
stateno=1015
ID=1015
name="Hadoushou"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1

[State 1010, snd]
type=playsnd
trigger1=anim=1010&&!animelemtime(5)
value=3,5
channel=0
[State 1010, snd]
type=playsnd
trigger1=anim=1010&&!animelemtime(5)
value=5,0

[State 1010, end]
type=changeanim
trigger1=anim=1010&&animelemtime(5)>=0&&!numhelper(1015)
value=1011
[State 1010, end]
type=changestate
trigger1=anim=1011&&!animtime
value=0
ctrl=1


;========================<TENGYOU HADOU SHOU>=============================
[Statedef 1030]
type=S
physics=S
movetype=A
anim=1030
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1

[State 1030, ECreset]
type=palfx
trigger1=var(20)>0
trigger1=var(20):=-1
time=1
[State 1030, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1030, width]
type=width
trigger1=anim=1030&&animelemtime(4)>=0&&animelemtime(5)<0
trigger2=anim=1031&&animelemtime(2)>=0&&animelemtime(3)<0
value=13
[State 1030, width]
type=width
trigger1=anim=1030&&animelemtime(5)>=0
trigger2=anim=1031&&animelemtime(2)<0
value=26

[State 1030, focus]
type=removeexplod
trigger1=anim=1030&&animelemtime(2)<0
ID=1034
[State 1030, focus]
type=explod
trigger1=anim=1030&&!animelemtime(2)
anim=1034
ID=1034
sprpriority=3
postype=p1
bindtime=-1
removetime=-2
removeongethit=1
ownpal=1

[State 1030, Hadoushou]
type=helper
trigger1=anim=1030&&!animelemtime(5)
helpertype=normal
stateno=1015
ID=1035
name="Hadoushou"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1

[State 1030, snd]
type=playsnd
trigger1=anim=1030&&!animelemtime(5)
value=3,5
channel=0
[State 1030, snd]
type=playsnd
trigger1=anim=1030&&!animelemtime(5)
value=5,0

[State 1030, end]
type=changeanim
trigger1=anim=1030&&animelemtime(5)>=0&&!numhelper(1035)
value=1031
[State 1030, end]
type=changestate
trigger1=anim=1031&&!animtime
value=0
ctrl=1


;========================<SHOU'OU KEN>=============================
[Statedef 1110]
type=S
physics=N
movetype=A
anim=1110
ctrl=0
velset=0,0
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)   

[State 1110, ECreset]
type=palfx
trigger1=var(20)>0
trigger1=var(20):=-1
time=1
[State 1110, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4
[State 1110, nothitby]
type=nothitby
trigger1=numhelper(1115)
time=1
value=SCA,NP,SP,HP
ignorehitpause=1
[State 1110, nothitby]
type=nothitby
trigger1=time<=12
time=1
value=SCA
ignorehitpause=1

[State 1110, vel]
type=velset
trigger1=anim=1110&&animelem=2
x=1.25*const(velocity.run.fwd.x)
[State 1110, steps]
type=playsnd
trigger1=anim=1110
trigger1=animelem=3||animelem=6
value=0,100

[State 1110, shield]
type=helper
trigger1=anim=1110&&animelem=2
helpertype=normal
stateno=1115
ID=1115
name="Projectile Shield"
postype=p1
ownpal=1

[State 1110, snd]
type=playsnd
trigger1=anim=1110&&animelem=2
value=4,12
channel=0
ignorehitpause=1
persistent=0
[State 1110, width]
type=width
trigger1=vel y<0
edge=20

[State 1110, hitrunning]
type=hitdef
trigger1=animelem=2&&anim=1110
attr=S,SA
damage=30,5
animtype=Hard
guardflag=M  
hitflag=MAF
priority=7,Hit  
pausetime=4,4
guard.pausetime=8,8
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-55
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,0
air.type=Low
air.velocity=-2,.5
getpower=0
forcestand=1
envshake.time=16
envshake.freq=60
envshake.ampl=4

[State 1110, anim]
type=changeanim
trigger1=anim=1110&&animelemtime(2)>=0&&movehit
value=1111

[State 1110, hitlow]
type=hitdef
trigger1=(animelem=2||animelem=4)&&anim=1111
attr=S,SA
damage=15,5
animtype=Hard
guardflag=M  
hitflag=MAF
priority=7,Hit  
pausetime=4,4
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=4),-61,-30)
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,0
air.type=Low
air.velocity=-2,.5
getpower=0
forcestand=1
envshake.time=16
envshake.freq=60
envshake.ampl=4

[State 1100, hithigh]
type=hitdef
trigger1=(animelem=1||animelem=3)&&anim=1111
attr=S,SA
damage=15,5
animtype=Hard
guardflag=M  
hitflag=MAF
priority=7,Hit  
pausetime=4,4
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=5),-61,-30)
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,0
air.type=Low
air.velocity=-2,.5
getpower=0
forcestand=1
envshake.time=16
envshake.freq=60
envshake.ampl=4

[State 1100, hitfinal]
type=hitdef
trigger1=animelem=5&&anim=1111
attr=S,SA
damage=60,5
animtype=Diagup
guardflag=M  
hitflag=MAF
priority=5,Hit  
pausetime=4,4
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-92
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-3,-9
air.type=Low
air.velocity=-3,-9
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0

[State 1110, statetype]
type=statetypeset
trigger1=anim=1111
statetype=S
physics=S
[State 1110, missed]
type=changestate
trigger1=anim=1110&&animelemtime(2)>=0&&!movehit
trigger1=time>=40
value=1112
[State 1110, guarded]
type=changestate
trigger1=anim=1110&&animelemtime(2)>=0&&moveguarded
value=1113
[State 1110, end]
type=changestate
trigger1=anim=1111&&!animtime
value=0
ctrl=1


;---BREAK---
[Statedef 1112]
type=S
physics=S
movetype=I
anim=1112
ctrl=0
[State 1112, snd]
type=playsnd
trigger1=animelem=2
value=3,7
channel=0
persistent=0
[State 1112, snd]
type=playsnd
trigger1=animelem=2
value=0,101
persistent=0
[State 1112, dust]
type=explod
trigger1=animelem=2
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=18,0
vel=2,0
removetime=-2
ownpal=1
[State 1112, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---JUMP BACK---
[Statedef 1113]
type=A
physics=A
movetype=I
anim=43
ctrl=0
velset=const(velocity.jump.back.x),const(velocity.jump.y)
[State 1113, dust]
type=helper
trigger1=!time
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
[State 1113, snd]
type=playsnd
trigger1=!time
value=0,40
[State 1113, snd]
type=playsnd
trigger1=!time&&prevstateno=4100
value=3,7
channel=0


;========================<SHUNPUU KYAKU>=============================
[Statedef 1210]
type=S
physics=S
movetype=A
anim=1200
ctrl=0
velset=0,0
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)   

[State 1210, ECreset]
type=palfx
trigger1=var(20)>0
trigger1=var(20):=-1
time=1
[State 1210, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1210, shunpuuvar]
type=varset
triggerall=anim=1210
trigger1=command="qcba"||command="qcbb"||command="qcbc"
trigger2=var(59)>=1&&random<100
var(30)=1
ignorehitpause=1
[State 1210, shunpuuvar]
type=varset
triggerall=anim=1210
trigger1=command="qcb2k"
trigger2=var(59)>=1&&random<50
var(30)=2
ignorehitpause=1
[State 1210, shunpuuvar]
type=varset
trigger1=anim!=1210
trigger2=var(59)>=1&&(p2dist x<0||p2dist y<=-120)
var(30)=0

[State 1210, width]
type=width
trigger1=anim=1210
edge=35,0

[State 1210, snd]
type=playsnd
trigger1=anim=1200&&animelem=5
value=4,15
channel=0
[State 1210, snd]
type=playsnd
trigger1=anim=1200&&!animtime
value=0,40
persistent=0
[State 1210, dust]
type=helper
trigger1=anim=1200&&!animtime
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
persistent=0

[State 1210, anim]
type=changeanim
trigger1=anim=1200&&!animtime
value=1210
[State 1210, vel]
type=velset
trigger1=anim=1210&&animelem=1
x=6
y=-9

[State 1210, statetype]
type=statetypeset
trigger1=anim=1210
statetype=A
physics=N
[State 1210, grav]
type=veladd
trigger1=anim=1210
y=.6

[State 1210, spin]
type=playsnd
trigger1=anim=1210
trigger1=animelem=2||animelem=6||animelem=10||animelem=14||animelem=18
value=1,5

[State 1210, hit]
type=hitdef
trigger1=anim=1210&&(animelem=3||animelem=7||animelem=11||animelem=15||animelem=19)&&(hitcount<5)
attr=S,SA                   
damage=34,5    
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
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
air.fall=1
fall.recover=1
ID=1210
nochainID=1211

[State 1210, hit]
type=hitdef
trigger1=anim=1210&&(animelem=5||animelem=9||animelem=13||animelem=17)&&(hitcount<5)
attr=S,SA                   
damage=34,5    
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
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
air.fall=1
fall.recover=1
ID=1211
nochainID=1210

[State 1210, end]
type=changestate
trigger1=vel y>0&&pos y>=0
value=ifelse((var(30)=2&&power>=500&&!var(20)),1230,ifelse(var(30),1220,52))


;========================<SHUNPUU REN KYAKU>=============================
[Statedef 1230]
type=S
physics=S
movetype=A
anim=1220
ctrl=0
velset=0,0
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),5,0)

[State 1230, ECreset]
type=palfx
trigger1=var(20)>0
trigger1=var(20):=-1
time=1
[State 1230, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4
[State 1230, shunpuuvar]
type=varset
trigger1=1
var(30)=0
[State 1230, width]
type=width
trigger1=animelemtime(2)>=0&&animelemtime(6)<0
value=25,0

[State 1230, snd]
type=playsnd
trigger1=time=1
value=0,52
[State 1230, dust]
type=explod
trigger1=!time
anim=7102
ID=7102
sprpriority=-2
postype=p1
pos=15,0
scale=.5,.5
ownpal=1
[State 1230, stop]
type=velset
trigger1=1
y=0
[State 1230, pos]
type=posset
trigger1=1
y=0

[State 1230, snd]
type=playsnd
trigger1=animelem=4
value=3,6
channel=0
[State 1230, snd]
type=playsnd
trigger1=animelem=4
value=1,6

[State 1230, hit]
type=hitdef
trigger1=animelem=4
attr=S,SA                   
damage=75,5    
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
ground.velocity=-8,-6
air.type=Low
air.velocity=-8,-6
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=6
fall=1
fall.recover=0
p2stateno=1111230

[State 1230, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<KUUCHUU SHUNPUU KYAKU>=============================
[Statedef 1260]
type=A
physics=N
movetype=A
anim=1260
ctrl=0
velset=(vel x)+ifelse(vel x>=0,2,-2),(vel y)-2
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1260, ECreset]
type=palfx
trigger1=var(20)>0
trigger1=var(20):=-1
time=1
[State 1260, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1260, shunpuuvar]
type=varset
triggerall=animelemtime(3)>=0
trigger1=var(59)<=0&&(command="qcba"||command="qcbb"||command="qcbc")
trigger2=var(59)>=1&&random<100
var(30)=1
ignorehitpause=1
[State 1260, shunpuuvar]
type=varset
triggerall=animelemtime(3)>=0
trigger1=var(59)<=0&&command="qcb2k"&&!var(20)
trigger2=var(59)>=1&&random<50
var(30)=2
ignorehitpause=1
[State 1260, shunpuuvar]
type=varset
trigger1=animelemtime(3)<0
trigger2=var(59)>=1&&(p2dist x<0||p2dist y<=-120)
var(30)=0

[State 1260, width]
type=width
trigger1=1
edge=35,0

[State 1260, snd]
type=playsnd
trigger1=animelem=1
value=3,5
channel=0

[State 1260, grav]
type=veladd
trigger1=animelemtime(15)<0&&vel y>-2
y=-const(movement.yaccel)*.5
[State 1260, grav]
type=gravity
trigger1=1

[State 1260, spin]
type=playsnd
trigger1=animelem=3||animelem=7||animelem=11
value=1,5

[State 1260, hit]
type=hitdef
trigger1=(animelem=4||animelem=8||animelem=12)&&hitcount<3
attr=A,SA 
damage=ifelse(movehit,35,80),5
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
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1
ID=1260
nochainID=1261

[State 1260, hit]
type=hitdef
trigger1=(animelem=6||animelem=10)&&hitcount<3
attr=A,SA 
damage=ifelse(movehit,35,80),5
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
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1
ID=1261
nochainID=1260

[State 1260, posfix]
type=posadd
trigger1=animelem=15
x=10
y=-5
[State 1260, statetype]
type=statetypeset
trigger1=animelemtime(15)>=0
movetype=I
[State 1260, end]
type=changestate
trigger1=vel y>0&&pos y>=0
value=ifelse(var(30)&&random<500,1252,ifelse(var(30)=2,1230,ifelse(var(30)=1,1220,52)))


;==========<TAUNT>==========
[Statedef 1195]
type=S
movetype=A
physics=S
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)   
anim=1195
velset=0,0
sprpriority=1
poweradd=-500
ctrl=0

[State 1195, ECreset]
type=palfx
trigger1=var(20)>0
trigger1=var(20):=-1
time=1
[State 1195, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4
[State 1195, hit]
type=hitdef
trigger1=animelem=4
attr=S,SA 
damage=25,0
animtype=Hard
guardflag=MA 
hitflag=MA
priority=4,Hit
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7000
sparkxy=-10,-79
hitsound=s5,7
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-10,0
air.velocity=-4,-4
getpower=0
givepower=0
[State 1195, snd]
type=playsnd
trigger1=animelem=4
value=4,4
channel=0
[State 1195, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<OUKA KYAKU>=============================
[Statedef 1410]
type=A
physics=A
movetype=A
anim=1400
ctrl=0
velset=0,0
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)   

[State 1410, ECreset]
type=palfx
trigger1=var(20)>0
trigger1=var(20):=-1
time=1
[State 1410, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1410, width]
type=width
trigger1=1
edge=40,0

[State 1410, snd]
type=playsnd
trigger1=animelem=3
value=3,2
channel=0
[State 1410, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 1410, freeze]
type=velset
trigger1=animelemtime(3)<0
x=0
y=0
[State 1410, vel]
type=velset
trigger1=animelem=3
x=7
y=7

[State 1410, hit]
type=hitdef
trigger1=animelem=3
attr=A,SA 
damage=120,5
animtype=Hard
guardflag=MA
hitflag=MAFD
priority=6,Hit 
pausetime=12,12
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
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
air.fall=1
fall.recovery=1