; ______________________________
;| Ryu by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=====================================<EX SPECIAL STATES>========================================
;================================================================================================

;========================<SHAKUNETSU HADOU KEN>=============================
[Statedef 1010]
type=S
physics=S
movetype=A
anim=1010
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1

[State 1010, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1010, width]
type=width
trigger1=animelemtime(4)>=0&&animelemtime(10)<0
value=30,0

[State 1010, Hadouken]
type=helper
trigger1=!animelemtime(5)
helpertype=normal
stateno=1015
ID=1015
name="Hadouken"
postype=p1
pos=80,-68
ownpal=1

[State 1010, snd]
type=playsnd
trigger1=!animelemtime(3)
value=4,5
channel=0
[State 1010, snd]
type=playsnd
trigger1=!animelemtime(5)
value=5,0

[State 1010, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<SHORYUU KEN>=============================
[Statedef 1110]
type=S
physics=S
movetype=A
anim=1100
ctrl=0
velset=0,0
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1110, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1110, nothitby]
type=nothitby
trigger1=anim=1100&&animelemtime(4)<0
value=SCA
time=1
ignorehitpause=1

[State 1110, vel]
type=velset
trigger1=anim=1100&&!animelemtime(4)
x=15
y=-12
[State 1110, vel]
type=velmul
trigger1=1
x=.88
[State 1110, vel]
type=velmul
trigger1=vel y>0
x=0

[State 1110, snd]
type=playsnd
trigger1=anim=1100&&!animelemtime(4)
value=0,41
[State 1110, dust]
type=helper
trigger1=anim=1100&&!animelemtime(4)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1110, snd]
type=playsnd
trigger1=anim=1100&&!animelemtime(3)
value=4,1
channel=0
ignorehitpause=1
persistent=0

[State 1110, width]
type=width
trigger1=vel y<0
edge=const(size.air.front)

[State 1110, hit]
type=hitdef
trigger1=(animelem=2)&&anim=1100
trigger2=(animelem=3)&&anim=1100
attr=S,SA                   
damage=53,5
animtype=Back        
guardflag=M          
hitflag=MAF           
priority=7,Hit             
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=2),-53,-79)
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=.5,-10
air.type=Low
air.velocity=.5,-10
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0
fall.animtype=Medium

[State 1110, hit2]
type=hitdef
trigger1=(animelem=4)&&anim=1100
attr=A,SA                   
damage=53+(!movehit*37),5
animtype=Up
guardflag=MA           
hitflag=MAF           
priority=6,Hit             
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-106
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-2.5,-12
air.type=Low
air.velocity=-2.5,-12
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 1110, statetype]
type=statetypeset
trigger1=anim=1100&&animelemtime(4)>=0
trigger2=anim=1101
statetype=A
physics=A
[State 1110, anim]
type=changeanim
trigger1=anim=1100&&animelemtime(4)>0&&vel y>(ifelse(var(10)=3,-5.3,ifelse(var(10)=2,-4,-2.7)))
value=1101
persistent=0


;========================<SHINKUU TATSUMAKI>=============================
[Statedef 1210]
type=A
physics=N
movetype=A
anim=1200
ctrl=0
velset=0,0
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1210, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1210, width]
type=width
trigger1=anim=1210&&movehit
edge=50,35
[State 1210, push]
type=playerpush
trigger1=anim=1210
value=0

[State 1210, snd]
type=playsnd
trigger1=anim=1200&&!animelemtime(1)
value=4,7
channel=0
[State 1210, snd]
type=playsnd
trigger1=anim=1200&&!animelemtime(1)
value=0,41
[State 1210, dust]
type=explod
trigger1=anim=1200&&!animelemtime(1)
anim=6022
ID=6022
sprpriority=3
postype=p1
pos=0,0
vel=0,0
removetime=-2
ownpal=1
scale=.75,.75

[State 1210, anim]
type=changeanim
trigger1=anim=1200&&!animtime
value=1210
[State 1210, vel]
type=velset
trigger1=anim=1200&&!animelemtime(1)
x=1.5
y=-3.9

[State 1210, vel]
type=velset
trigger1=anim=1210
x=0
y=.5

[State 1210, vel]
type=velset
trigger1=anim=1207
x=-1.5

[State 1210, spin]
type=playsnd
triggerall=anim=1210
trigger1=animelem=1||animelem=7||animelem=13
value=1,5

[State 1210, dust]
type=explod
trigger1=anim=1210&&!(time%6)
anim=3206
ID=3206
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
scale=1,1
removetime=-2
ownpal=1

[State 1210, anim]
type=changeanim
trigger1=anim=1210&&!animtime
value=1207
persistent=0
[State 1210, statetype]
type=statetypeset
trigger1=anim=1200&&animelemtime(1)>1
trigger2=anim=1207&&animelemtime(1)>1
statetype=A
physics=A
[State 1210, statetype]
type=statetypeset
trigger1=anim=1210
statetype=A
physics=N

[State 1210, hit]
type=hitdef
trigger1=anim=1210&&(animelem=2||animelem=8||animelem=14)
attr=S,SA                   
damage=27,5    
animtype=Hard        
guardflag=MA
hitflag=MAF           
priority=6,Hit             
pausetime=5,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=1
ground.velocity=ifelse(p2dist x>30,12,11),ifelse(p2dist y<(enemy,const(size.mid.pos.y))+60,0,-3)+vel y
air.type=Low
air.velocity=ifelse(p2dist x>30,12,11),ifelse(p2dist y<(enemy,const(size.mid.pos.y))+60,0,-3)+vel y
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0
sprpriority=-1

[State 1210, hit]
type=hitdef
trigger1=anim=1210&&(animelem=5||animelem=11)
attr=S,SA                   
damage=27,5    
animtype=Hard        
guardflag=MA
hitflag=MAF           
priority=6,Hit             
pausetime=5,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=-1
ground.velocity=ifelse(p2dist x>30,-12,-11),ifelse(p2dist y<(enemy,const(size.mid.pos.y))+60,0,-3)+vel y
air.type=Low
air.velocity=ifelse(p2dist x>30,-12,-11),ifelse(p2dist y<(enemy,const(size.mid.pos.y))+60,0,-3)+vel y
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0
sprpriority=1

[State 1210, hit]
type=hitdef
trigger1=anim=1210&&animelem=17
attr=S,SA                   
damage=27,5    
animtype=Hard        
guardflag=MA
hitflag=MAF           
priority=6,Hit             
pausetime=5,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=-1
ground.velocity=-8,1
air.type=Low
air.velocity=-8,1
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0
sprpriority=1


;========================<KUUCHUU SHINKUU TATSUMAKI>=============================
[Statedef 1260]
type=A
physics=A
movetype=A
anim=1260
ctrl=0
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)           

[State 1260, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1260, width]
type=width
trigger1=movehit
edge=50,35
[State 1260, push]
type=playerpush
trigger1=animelemtime(22)<0
value=0

[State 1260, slow]
type=velmul
trigger1=animelemtime(4)>=0&&animelemtime(22)<0&&vel y>0
x=.95
y=.66
[State 1260, slow]
type=velset
trigger1=animelemtime(14)<0&&pos y>=-10
x=0
y=0

[State 1260, snd]
type=playsnd
trigger1=!animelemtime(1)
value=4,7
channel=0

[State 1260, spin]
type=playsnd
trigger1=animelem=4||animelem=10||animelem=16||animelem=22
value=1,6

[State 1260, dust]
type=explod
trigger1=animelemtime(4)>=0&&animelemtime(22)<0&&!(time%6)
anim=3206
ID=3206
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
scale=ifelse(pos y<-120,.5,ifelse(pos y<-60,.75,1)),ifelse(pos y<-120,.5,ifelse(pos y<-60,.75,1))
removetime=-2
ownpal=1

[State 1260, hit]
type=hitdef
trigger1=animelem=5||animelem=11||animelem=17
attr=A,SA                   
damage=27,5    
animtype=Hard        
guardflag=HA
hitflag=MAF           
priority=6,Hit             
pausetime=5,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=1
ground.velocity=ifelse(p2dist x>30,12,11)-vel x,ifelse(p2dist y<(enemy,const(size.mid.pos.y))+60,0,-3)
air.type=Low
air.velocity=ifelse(p2dist x>30,12,11)-vel x,ifelse(p2dist y<(enemy,const(size.mid.pos.y))+60,0,-3)+vel y
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0
sprpriority=-1

[State 1260, hit]
type=hitdef
trigger1=animelem=8||animelem=14
attr=A,SA                   
damage=27,5    
animtype=Hard        
guardflag=HA
hitflag=MAF           
priority=6,Hit             
pausetime=5,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=-1
ground.velocity=ifelse(p2dist x>30,-12,-11)-vel x,ifelse(p2dist y<(enemy,const(size.mid.pos.y))+60,0,-3)
air.type=Low
air.velocity=ifelse(p2dist x>30,-12,-11)-vel x,ifelse(p2dist y<(enemy,const(size.mid.pos.y))+60,0,-3)+vel y
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0
sprpriority=1

[State 1260, hit]
type=hitdef
trigger1=animelem=20
attr=A,SA                   
damage=27,5    
animtype=Hard        
guardflag=HA
hitflag=MAF           
priority=6,Hit             
pausetime=5,0
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=-1
ground.velocity=-8,1
air.type=Low
air.velocity=-8,1
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0
sprpriority=1

[State 1260, afterimageoff]
type=afterimagetime
trigger1=animelemtime(22)>=0
time=0
[State 1260, palfxoff]
type=palfx
trigger1=animelemtime(22)>=0
time=1
mul=256,256,256


;========================<JOUDAN SOKUTOU GERI>=============================
[Statedef 1310]
type=S
physics=S
movetype=A
anim=1301
ctrl=0
velset=0,0
poweradd=-500
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1310, strengthvar]
type=varset
trigger1=var(10)!=4
var(10)=4

[State 1310, vel]
type=velset
trigger1=(anim=[1301,1302])&&animelemtime(4)<0
trigger2=anim=1300&&animelemtime(2)<0
x=6.5

[State 1310, snd]
type=playsnd
trigger1=animelem=6
value=3,4
channel=0
[State 1310, snd]
type=playsnd
trigger1=animelem=6
value=1,6

[State 1310, hit]
type=hitdef
trigger1=!time
trigger1=var(11):=5&&var(12):=-10&&var(13):=-78
attr=S,SA                   
damage=140,5    
animtype=Hard        
guardflag=MA
hitflag=MAF           
priority=5,Hit             
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-78
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-9,-6
air.type=Low
air.velocity=-9,-6
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=6
p2facing=1
p2stateno=1111300
fall=1
fall.recover=0

[State 1310, pos]
type=posadd
trigger1=animelem=10||animelem=11
x=ifelse((animelem=10),15,10)
[State 1310, pos]
type=posadd
trigger1=!animtime
x=5
[State 1310, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1