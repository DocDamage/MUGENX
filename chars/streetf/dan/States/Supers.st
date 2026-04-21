; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;========================================<SUPER STATES>==========================================
;================================================================================================

;========================<SHINKUU GADOU KEN>=============================
[Statedef 3000]
type=S
physics=S
movetype=A
anim=3000
ctrl=0
velset=0,0
sprpriority=1
[State 3000, strengthvar]
type=varset
trigger1=var(10)!=5
var(10)=5
[State 3000, width]
type=width
trigger1=animelemtime(3)>=0&&animelemtime(9)<0
value=floor(40*const(size.xscale))

[State 3000, snd]
type=playsnd
trigger1=animelemtime(1)=2
value=4,16
channel=0
volume=200
[State 3000, superchargehelper]
type=helper
trigger1=animelemtime(1)=2
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=floor(-44*const(size.xscale)),floor(-185*const(size.yscale))
ownpal=1
persistent=0
supermovetime=9999
size.xscale=1
size.yscale=1
[State 3000, superchargepause]
type=superpause
trigger1=animelemtime(1)=2
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)
p2defmul=1
darken=0

[State 3000, nhb]
type=nothitby
trigger1=animelemtime(1)>=2&&animelemtime(4)<0
time=1
value=SCA

[State 3000, gadouken]
type=helper
trigger1=!animelemtime(4)
helpertype=normal
stateno=3005
ID=3005
name="Shinkuu Gadouken"
postype=p1
pos=floor(120*const(size.xscale)),floor(-126*const(size.yscale))
size.xscale=1
size.yscale=.5
ownpal=1

[State 3000, snd]
type=playsnd
trigger1=!animelemtime(4)
value=4,20
channel=0
[State 3000, snd]
type=playsnd
trigger1=!animelemtime(4)
value=5,0

[State 3000, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<KOURYUU REKKA>=============================
[Statedef 3100]
type=S
physics=S
movetype=A
ctrl=0
anim=3100
velset=0,0
juggle=5
sprpriority=1

[State 3100, strengthvar]
type=varset
trigger1=var(10)!=5
var(10)=5

[State 3100, snd]
type=playsnd
trigger1=anim=3100&&animelemtime(1)=3
value=4,15
channel=0
[State 3100, superchargehelper]
type=helper
trigger1=anim=3100&&animelemtime(1)=3
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=floor(30*const(size.xscale)),floor(-98*const(size.yscale))
ownpal=1
persistent=0
supermovetime=9999
size.xscale=1
size.yscale=1
[State 3100, superchargepause]
type=superpause
trigger1=anim=3100&&animelemtime(1)=3
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)
p2defmul=1
darken=0

[State 3100, nhb]
type=nothitby
trigger1=anim=3100&&animelemtime(1)>=3&&animelemtime(3)<0
time=1
value=SCA
ignorehitpause=1

[State 3100, vel]
type=velset
trigger1=anim=3100&&animelem=2
x=12
[State 3100, dust]
type=explod
trigger1=anim=3100&&animelem=2
anim=7103
ID=7103
sprpriority=3
postype=p1
ownpal=1

[State 3100, snd]
type=playsnd
trigger1=anim=3100&&animelem=10
value=4,9
channel=0

[State 3100, vel]
type=velset
trigger1=anim=3100&&animelem=11
y=-11

[State 3100, snd]
type=playsnd
trigger1=anim=3100&&animelem=11
value=0,41
[State 3100, dust]
type=helper
trigger1=anim=3100&&animelem=11
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 3100, snd]
type=playsnd
trigger1=anim=3100&&(animelem=2||animelem=11)
value=1,3+(animelem=11)*3

[State 3100, vel]
type=velmul
trigger1=vel y<0
x=.8

[State 3100, width]
type=width
trigger1=vel y<0
edge=const(size.air.front)
[State 3100, statetype]
type=statetypeset
trigger1=anim=3100&&animelemtime(11)>=0
statetype=A
physics=A

[State 3100, anim]
type=changeanim
trigger1=anim=3100&&animelemtime(11)>0&&vel y>-2
value=3101
persistent=0

[State 3100, hitlow]
type=hitdef
trigger1=animelem=2&&anim=3100
attr=S,HA                   
damage=36,5
animtype=Medium        
fall.animtype=Medium        
guardflag=M          
hitflag=MAF           
priority=7,Hit             
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-69
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-4,0
air.velocity=-4,-1
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5

[State 3100, hithigh]
type=hitdef
trigger1=animelem=3&&anim=3100
trigger2=animelem=4&&anim=3100
attr=S,HA                   
damage=36,5
animtype=Hard        
guardflag=M          
hitflag=MAF           
priority=6,Hit             
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=3),-83,-97)
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-4,0
air.velocity=-4,-2
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5

[State 3100, hitlow2]
type=hitdef
trigger1=animelem=10&&anim=3100
attr=S,HA                   
damage=36,5
animtype=Medium        
fall.animtype=Medium        
guardflag=M          
hitflag=MAF           
priority=7,Hit             
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-69
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=.5,-6
air.velocity=.5,-6
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 3100, hithigh2]
type=hitdef
trigger1=animelem=11&&anim=3100
persistent=0
attr=S,HA                   
damage=36,5
animtype=Diagup        
guardflag=M          
hitflag=MAF           
priority=7,Hit             
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-83
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,-9
air.velocity=-2,-9
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=7
fall=1
fall.recover=0

[State 3100, hitfinal]
type=hitdef
trigger1=animelem=12&&anim=3100
persistent=0
attr=A,HA                   
damage=70,5
animtype=Diagup        
guardflag=MA          
hitflag=MAF           
priority=7,Hit             
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-97
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,-9
air.velocity=-2,-9
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=7
fall=1
fall.recover=0


;========================<HISHOU BURAIKEN>=============================
[Statedef 3200]
type=S
physics=S
movetype=A
ctrl=0
anim=3200
velset=0,0
juggle=5
sprpriority=1

[State 3200, strengthvar]
type=varset
trigger1=var(10)!=6
var(10)=6

[State 3200, snd]
type=playsnd
trigger1=anim=3200&&!animelemtime(3)
value=4,4
channel=0
[State 3200, superchargehelper]
type=helper
trigger1=anim=3200&&!animelemtime(3)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=floor(0*const(size.xscale)),floor(-155*const(size.yscale))
ownpal=1
persistent=0
supermovetime=9999
size.xscale=1
size.yscale=1
[State 3200, superchargepause]
type=superpause
trigger1=anim=3200&&!animelemtime(3)
time=53
anim=-1
sound=s7,0
poweradd=-2000
p2defmul=1
darken=0

[State 3200, nhb]
type=nothitby
trigger1=anim=3200&&animelemtime(3)>=0&&animelemtime(8)<0
time=1
value=SCA
ignorehitpause=1

[State 3200, snd]
type=playsnd
trigger1=anim=3200&&animelem=5
value=3,6
channel=0
[State 3200, snd]
type=playsnd
trigger1=anim=3200&&(animelem=48||animelem=54)
value=3,0
channel=0
[State 3200, snd]
type=playsnd
trigger1=anim=3200&&animelem=64
value=4,0
channel=0

[State 3200, snd]
type=playsnd
triggerall=anim=3200
trigger1=animelem=8||animelem=14||animelem=21||animelem=30||animelem=37
trigger2=animelem=43||animelem=49||animelem=55||animelem=61||animelem=66
value=1,ifelse((animelem=8||animelem=21||animelem=43||animelem=55),2,5)
[State 3200, snd]
type=playsnd
trigger1=anim=3200&&animelem=66
value=1,6

[State 3200, vel]
type=velset
trigger1=anim=3200&&animelem=66
y=-11
[State 3200, snd]
type=playsnd
trigger1=anim=3200&&animelem=66
value=0,41
[State 3200, dust]
type=helper
trigger1=anim=3200&&animelem=66
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1


[State 3200, vel]
type=velmul
trigger1=vel y<0
x=.8
[State 3200, width]
type=width
trigger1=vel y<0
edge=const(size.air.front)
[State 3200, statetype]
type=statetypeset
trigger1=anim=3200&&animelemtime(66)>=0
statetype=A
physics=A
[State 3200, anim]
type=changeanim
trigger1=anim=3200&&animelemtime(66)>0&&vel y>-2
value=3101
persistent=0

[State 3200, hitlow]
type=hitdef
trigger1=anim=3200
trigger1=animelem=8||animelem=14||animelem=21||animelem=37||animelem=55||animelem=61
attr=S,HA                   
damage=31,5
animtype=Hard        
guardflag=M          
hitflag=MAF           
priority=7,Hit             
pausetime=0,2
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=8),-43,ifelse((animelem=14),-50,ifelse((animelem=21),-65,ifelse((animelem=37),-6,ifelse((animelem=55),-54,-9)))))
hitsound=s2,ifelse((animelem=8||animelem=21||animelem=55),3,6)    
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=ifelse(p2bodydist x>20,2,0),0
air.velocity=-4,-1
air.fall=1
fall.recovery=0
forcestand=1
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5

[State 3200, hithigh]
type=hitdef
trigger1=anim=3200
trigger1=animelem=30||animelem=43||animelem=49
attr=S,HA                   
damage=31,5
animtype=Hard        
guardflag=M          
hitflag=MAF           
priority=6,Hit             
pausetime=0,2
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=43),-46,-43)
hitsound=s2,ifelse((animelem=43),3,6)    
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=ifelse(p2bodydist x>20,2,0),0
air.velocity=-4,-2
air.fall=1
fall.recovery=0
forcestand=1
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5

[State 3200, hitkouryuken]
type=hitdef
trigger1=animelem=65&&anim=3200
attr=S,HA                   
damage=40,5
animtype=Medium        
fall.animtype=Medium        
guardflag=M          
hitflag=MAF           
priority=7,Hit             
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-69
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=1,-6
air.velocity=1,-6
getpower=0
fall=1
fall.recover=0
forcestand=1
envshake.time=16
envshake.freq=60
envshake.ampl=5

[State 3200, hitfinal]
type=hitdef
trigger1=animelem=66&&anim=3200
persistent=0
attr=A,HA                   
damage=40,5
animtype=Up        
guardflag=MA          
hitflag=MAF           
priority=7,Hit             
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-97
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-1,-10
air.velocity=-1,-10
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=7
fall=1
fall.recover=0


;========================<CHOUHATSU DENSETSU>=============================
[Statedef 3300]
type=S
physics=S
movetype=I
ctrl=0
anim=3300
velset=0,0
juggle=5
sprpriority=1

[State 3300, strengthvar]
type=varset
trigger1=var(10)!=5
var(10)=5
[State 3300, anim]
type=changeanim
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
trigger1=time<=45&&var(33)
value=3300
elem=3

[State 3300, snd]
type=playsnd
trigger1=anim=3300&&animelem=3
value=4,2
channel=0
persistent=0
[State 3300, snd]
type=playsnd
trigger1=anim=3300&&animelem=3
value=5,5
persistent=0
[State 3300, superchargehelper]
type=helper
trigger1=anim=3300&&animelem=3&&!var(33)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=floor(85*const(size.xscale)),floor(-182*const(size.yscale))
ownpal=1
persistent=0
supermovetime=9999
size.xscale=1
size.yscale=1
[State 3300, superchargepause]
type=superpause
trigger1=anim=3300&&animelem=3&&!var(33)
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)*!var(33)
p2defmul=1
darken=0

[State 3300, nhb]
type=nothitby
trigger1=anim=3300&&animelemtime(3)>=0
time=1
value=SCA
ignorehitpause=1
[State 3300, push]
type=playerpush
trigger1=anim=3301
value=0

[State 3300, densetsuvar]
type=varset
trigger1=anim=3300||anim=3303
var(31)=0
[State 3300, densetsuvar]
type=varadd
trigger1=anim=3301&&!animtime
var(31)=1
[State 3300, densetsuvar]
type=varset
trigger1=anim>=3304&&roundstate!=2
var(31)=5

[State 3300, anim]
type=changeanim
trigger1=anim=3300&&!animtime
value=3301

[State 3300, anim]
type=changeanim
trigger1=anim=3301&&!animtime&&var(31)>=6
value=3302
[State 3300, anim]
type=changeanim
trigger1=anim=3301&&!animtime&&var(31)=5
value=ifelse(random<500,3304,3320)
[State 3300, anim]
type=changeanim
trigger1=anim=3301&&!animtime
value=3305+(random%10)
[State 3300, anim]
type=changeanim
trigger1=anim=3302&&vel y>0&&pos y>=-5
value=3303
[State 3300, anim]
type=changeanim
trigger1=anim>=3304&&!animtime
value=3301

[State 3300, snd]
type=playsnd
trigger1=anim=3302&&animelem=5
value=4,17
channel=0
[State 3300, snd]
type=playsnd
trigger1=anim=3303&&animelem=2
value=4,32
channel=0
[State 3300, snd]
type=playsnd
trigger1=anim=3304&&animelem=5
value=4,24
channel=0
[State 3300, snd]
type=playsnd
trigger1=anim=3305&&animelem=5
trigger2=anim=3306&&animelem=4
trigger3=anim=3307&&animelem=3
trigger4=anim=3308&&animelem=5
trigger5=anim=3309&&animelem=4
trigger6=anim=3310&&animelem=3
trigger7=anim=3311&&animelem=3
trigger8=anim=3312&&animelem=3
trigger9=anim=3313&&animelem=3
trigger10=anim=3314&&animelem=3
trigger11=anim=3320&&animelem=4
value=4,ifelse(random<200,1,ifelse(random<250,2,ifelse(random<333,3,ifelse(random<500,10,11))))
channel=0
[State 3300, snd]
type=playsnd
triggerall=random<500
trigger1=anim=3305&&animelem=5
trigger2=anim=3306&&animelem=4
trigger3=anim=3307&&animelem=3
trigger4=anim=3308&&animelem=5
trigger5=anim=3309&&animelem=4
trigger6=anim=3310&&animelem=3
trigger7=anim=3311&&animelem=3
trigger8=anim=3312&&animelem=3
trigger9=anim=3313&&animelem=3
trigger10=anim=3314&&animelem=3
trigger11=anim=3320&&animelem=4
value=4,ifelse(random<250,13,ifelse(random<333,14,ifelse(random<500,17,21)))
channel=0

[State 3300, snd]
type=playsnd
trigger1=anim=3320&&animelem=4
value=5,11

[State 3300, full]
type=palfx
trigger1=anim=3303&&animelem=1&&roundstate=2
time=20
add=255,100,0
sinadd=-255,-100,0,80
[State 3300, full]
type=playsnd
trigger1=anim=3303&&animelem=1&&roundstate=2
value=7,8
[State 3300, snd]
type=playsnd
trigger1=anim=3303&&animelem=1&&roundstate=2
value=6,0
channel=5
[State 3300, power]
type=powerset
trigger1=anim=3303&&animelem=1&&roundstate=2
value=powermax

[State 3300, flashsnd]
type=playsnd
trigger1=anim=3302&&animelemtime(3)>=0&&!(time%6)
value=6,2+(random%3)
[State 3300, flashes]
type=explod
trigger1=anim=3302&&animelemtime(3)>=0&&!(time%2)
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
[State 3300, flashpalfx]
type=bgpalfx
trigger1=anim=3302&&animelemtime(3)>=0&&!(time%9)
time=6
add=128,128,128
sinadd=-128,-128,-128,24

[State 3300, turn]
type=turn
triggerall=p2dist x<0
trigger1=anim=3302&&animelem=3
trigger2=anim=3304&&animelem=3
trigger3=anim=3305&&animelem=3
trigger4=anim=3306&&animelem=2
trigger5=anim=3307&&animelem=3
trigger6=anim=3308&&animelem=3
trigger7=anim=3309&&animelem=3
trigger8=anim=3310&&animelem=3
trigger9=anim=3311&&animelem=3
trigger10=anim=3312&&animelem=3
trigger11=anim=3313&&animelem=3
trigger12=anim=3314&&animelem=3
trigger13=anim=3320&&animelem=3

[State 3300, vel]
type=velset
trigger1=anim=3301
x=5;3
[State 3300, vel]
type=velset
trigger1=anim=3312
x=-2
[State 3300, vel]
type=posset
trigger1=anim=3301||anim=3303
y=0
[State 3300, vel]
type=velset
trigger1=anim=3303
x=0
y=0
[State 3300, vel]
type=velset
trigger1=anim=3302&&animelem=3
x=4
y=-12
[State 3300, grav]
type=gravity
trigger1=anim=3302&&animelemtime(3)>=0

[State 3300, snd]
type=playsnd
trigger1=anim=3301&&animelem=3
trigger2=anim=3311&&animelem=3
value=0,40
[State 3300, snd]
type=playsnd
trigger1=anim=3302&&animelem=3
value=0,41
[State 3300, dust]
type=explod
trigger1=anim=3301&&animelemtime(3)>=0&&!(time%5)
anim=7103
sprpriority=3
postype=p1
vel=-1,0
ownpal=1
[State 3300, dust]
type=explod
trigger1=anim=3311&&animelem=3
anim=7100
ID=7100
sprpriority=3
postype=p1
pos=0,0
vel=0,0
ownpal=1
scale=.5,.5
[State 3300, dust]
type=helper
trigger1=anim=3302&&animelem=3
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 3300, snd]
type=playsnd
trigger1=anim=3303&&animelem=1
value=0,52
[State 3300, snd]
type=playsnd
trigger1=anim=3313&&animelem=6
value=5,6
[State 3300, dust]
type=explod
trigger1=anim=3303&&animelem=1
anim=7102
ID=7102
sprpriority=-2
postype=p1
removetime=-2
ownpal=1
scale=.5,.5
[State 3300, dust]
type=explod
trigger1=anim=3313&&animelem=6
anim=7102
ID=7102
sprpriority=-2
postype=p1
removetime=-2
ownpal=1
scale=.75,.75
[State 3300, shake]
type=envshake
trigger1=anim=3313&&animelem=6
time=18
freq=60
ampl=4

[State 3300, turnoffCS]
type=varset
trigger1=var(33)&&anim=3303
var(33)=0

[State 3300, statetype]
type=statetypeset
trigger1=anim=3300||anim=3303
trigger2=anim=3301&&animelemtime(2)<0
trigger3=anim=3305&&animelemtime(3)>=0&&animelemtime(20)<0
trigger4=anim=3307&&animelemtime(3)>=0&&animelemtime(10)<0
trigger5=anim=3308&&animelemtime(3)>=0&&animelemtime(16)<0
trigger6=anim=3309&&animelemtime(3)>=0&&animelemtime(11)<0
trigger7=anim=3310&&animelemtime(3)>=0&&animelemtime(11)<0
trigger8=anim=3311&&animelemtime(11)>=0
trigger9=anim=3312&&animelemtime(3)>=0&&animelemtime(10)<0
trigger10=anim=3314&&animelemtime(3)>=0&&animelemtime(12)<0
trigger11=anim=3320&&animelemtime(3)>=0&&animelemtime(9)<0
statetype=S
physics=S
[State 3300, statetype]
type=statetypeset
trigger1=anim=3301&&animelemtime(2)>=0
trigger2=anim=3302&&animelemtime(3)<0
trigger3=anim=3304&&(animelemtime(3)<0||animelemtime(7)>=0)
trigger4=anim=3305&&(animelemtime(3)<0||animelemtime(20)>=0)
trigger5=anim=3306
trigger6=anim=3307&&(animelemtime(3)<0||animelemtime(10)>=0)
trigger7=anim=3308&&(animelemtime(3)<0||animelemtime(16)>=0)
trigger8=anim=3309&&(animelemtime(3)<0||animelemtime(11)>=0)
trigger9=anim=3310&&(animelemtime(3)<0||animelemtime(11)>=0)
trigger10=anim=3311&&(animelemtime(3)<0||animelemtime(12)>=0)
trigger11=anim=3312&&(animelemtime(3)<0||animelemtime(10)>=0)
trigger12=anim=3313&&(animelemtime(3)<0||animelemtime(6)>=0)
trigger13=anim=3314&&(animelemtime(3)<0||animelemtime(12)>=0)
trigger14=anim=3320&&(animelemtime(3)<0||animelemtime(9)>=0)
statetype=C
physics=C
[State 3300, statetype]
type=statetypeset
trigger1=anim=3313&&animelemtime(3)>=0&&animelemtime(6)<0
statetype=L
physics=C
[State 3300, statetype]
type=statetypeset
trigger1=anim=3302&&animelemtime(3)>=0
trigger2=anim=3311&&animelemtime(3)>=0&&animelemtime(11)<0
trigger3=anim=3313&&animelemtime(3)>=0&&animelemtime(6)<0
statetype=A
physics=N
[State 3300, end]
type=changestate
trigger1=anim=3303&&!animtime
value=0
ctrl=1


;========================<OTOKO MICHI>=============================
[Statedef 4000]
type=S
physics=S
movetype=A
anim=4000
ctrl=0
velset=0,0
juggle=15
[State 4000, strengthvar]
type=varset
trigger1=var(10)!=7
var(10)=7

[State 4000, snd]
type=playsnd
trigger1=!animelemtime(3)
value=4,27
channel=0
volume=200
[State 4000, superchargehelper]
type=helper
trigger1=!animelemtime(3)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=floor(7*const(size.xscale)),floor(-132*const(size.yscale))
ownpal=1
persistent=0
supermovetime=9999
size.xscale=1
size.yscale=1
[State 4000, superchargepause]
type=superpause
trigger1=!animelemtime(3)
time=60
anim=-1
sound=s7,0
poweradd=-3000
p2defmul=1
darken=0

[State 4000, omg!!!]
type=nothitby
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
time=1
value=SCA
[State 4000, sts]
type=statetypeset
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
physics=N
[State 4000, vel]
type=velset
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
x=3
[State 4000, sts]
type=statetypeset
trigger1=animelemtime(5)>=0
physics=S

[State 4000, hit]
type=hitdef
trigger1=animelem=4
attr=S,HT         
hitflag=M
priority=7,Miss
numhits=0  
sparkno=-1          
p1facing=1
p2facing=1
p1stateno=4001       
p2stateno=4002     
animtype=Up
ground.velocity=-1.5,-32
yaccel=.75
sprpriority=1
fall=1      
fall.recover=0
ID=4000

[State 4000, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 4001]
type=S
physics=S
movetype=A
anim=4001
ctrl=0
velset=0,0
sprpriority=1

[State 4001, grabsound]
type=playsnd
trigger1=!time
value=5,11;0,800
[State 4001, snd]
type=playsnd
trigger1=!time
value=4,28
channel=0

[State 4001, push]
type=playerpush
trigger1=1
value=0
[State 4001, nothitby]
type=nothitby
trigger1=1
value=SCA
time=1

[State 4001, imageoff]
type=afterimagetime
trigger1=animelemtime(4)>=0
time=0
[State 4001, spr]
type=sprpriority
trigger1=animelemtime(4)>=0
value=-1

[State 4001, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=floor(120*const(size.xscale)),0
[State 4001, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=floor(90*const(size.xscale)),0
[State 4001, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=floor(60*const(size.xscale)),0
[State 4001, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0&&animelemtime(6)<0
pos=floor(30*const(size.xscale)),0

[State 4001, exclamation]
type=explod
trigger1=!time&&numtarget(4000)
anim=4007
ID=4007
sprpriority=2
postype=p2
pos=(target(4000),const(size.head.pos.x))-5,(target(4000),const(size.head.pos.y))-10
facing=-1
scale=.5,.5
ownpal=1

[State 4001, charge]
type=helper
trigger1=animelemtime(5)>=0&&animelemtime(6)<0&&!numhelper(4006)
helpertype=normal
stateno=4006
ID=4006
name="Otoko Charge"
postype=p1
pos=floor(15*const(size.xscale)),floor(-95*const(size.yscale))
ownpal=1
persistent=0
size.xscale=1
size.yscale=1
[State 4001, palfx]
type=palfx
trigger1=animelem=5
time=120
sinadd=64,64,192,480

[State 4001, hitadd]
type=hitadd
trigger1=animelem=6
value=1
[State 4001, hitdamage]
type=targetlifeadd
trigger1=animelem=6
value=-510
[State 4001, hitdamage]
type=targetpoweradd
trigger1=animelem=6
value=306
[State 4001, throw]
type=targetstate
trigger1=animelem=6
value=4004

[State 4001, snd]
type=playsnd
trigger1=!animelemtime(6)
value=5,7
[State 4001, snd]
type=playsnd
trigger1=!animelemtime(6)
value=5,9
[State 4001, shake]
type=envshake
trigger1=!animelemtime(6)
time=12
fre=120
ampl=12
[State 4001, explosion]
type=explod
trigger1=animelemtime(6)=-3
anim=4005
ID=4005
sprpriority=4
postype=p1
removetime=-2
ownpal=1

[State 4001, ohnoes]
type=helper
trigger1=!animelemtime(6)
helpertype=normal
stateno=4008
ID=4008
name="Otoko Portrait"
postype=back
ownpal=1
persistent=0
size.xscale=.5
size.yscale=.5

[State 4001, palfx]
type=palfx
trigger1=!animelemtime(6)
time=100
color=32
sinadd=80,25,0,8
mul=512,256,128
[State 4001, flames]
type=helper
trigger1=!animelemtime(6)&&!numhelper(7181)
helpertype=normal
stateno=7181
ID=7181
name="flames"
postype=p1
ownpal=1
facing=-1
size.xscale=.5
size.yscale=.5
ignorehitpause=1
persistent=0
[State 4001, flames]
type=helper
trigger1=!animelemtime(6)&&numtarget&&!numhelper(7180)
helpertype=normal
stateno=7180
ID=7180
name="flames"
postype=p2
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
size.xscale=.5
size.yscale=.5
ignorehitpause=1
persistent=0

[State 4001, reducelife]
type=lifeset;add
trigger1=animelem=6
value=1;-260
kill=0
[State 4001, snd]
type=playsnd
trigger1=animelem=6
value=4,23
channel=0

[State 4001, vel]
type=velset
trigger1=animelem=6
x=-1.5
y=-32
[State 4001, sts]
type=statetypeset
trigger1=animelemtime(6)>=0
statetype=A
physics=N
movetype=H
[State 4001, grav]
type=veladd
trigger1=animelemtime(6)>=0
y=.75
[State 4001, shake]
type=envshake
trigger1=animelemtime(6)>=0&&vel y>0&&pos y>=5
time=12
fre=120
ampl=12
[State 4001, end]
type=changestate
trigger1=animelemtime(6)>=0&&vel y>0&&pos y>=5
value=5100


;---TARGET---
[Statedef 4002]
type=S
physics=N
movetype=H
velset=0,0
ctrl=0
[State 4002, anim]
type=changeanim2
trigger1=!time
value=4002
[State 4002, palfx]
type=palfx
trigger1=time=76
time=120
sinadd=64,64,192,480

[Statedef 4004]
type=S
physics=N
movetype=H
ctrl=0
[State 4004, palfx]
type=palfx
trigger1=!time
time=100
color=32
sinadd=80,25,0,8
mul=512,256,128
[State 4004, end]
type=selfstate
trigger1=1
value=5020


;===================<CHOUHATSU SHINWA>===================
[Statedef 4100]
type=S
physics=S
movetype=I
anim=4100
ctrl=0
velset=0,0
sprpriority=1
[State 4100, strengthvar]
type=varset
trigger1=var(10)!=7
var(10)=7

[State 4100, snd]
type=playsnd
trigger1=!time
value=4,5
channel=0
volume=200
[State 4100, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=floor(-52*const(size.xscale)),floor(-160*const(size.yscale))
ownpal=1
persistent=0
supermovetime=9999
size.xscale=1
size.yscale=1
[State 4100, superchargepause]
type=superpause
trigger1=!time
time=60
movetime=60
anim=-1
sound=s7,0
poweradd=-3000
p2defmul=1
darken=0
[State 4100, theme]
type=playsnd
trigger1=time=61
value=6,5
channel=5
loop=1

[State 4100, var]
type=varset
trigger1=time
var(33)=901

[State 4100, end]
type=changestate
trigger1=time>=61
value=0
ctrl=1


;---<RESET>---
[Statedef 4101]
type=S
physics=S
movetype=I
anim=4101
ctrl=0
velset=0,0
sprpriority=1
[State 4101, snd]
type=playsnd
trigger1=animelem=2
value=4,32
channel=0
[State 4101, snd]
type=playsnd
trigger1=!time
value=6,0
channel=5
[State 4101, snd]
type=playsnd
trigger1=animelem=2
value=5,10
[State 4101, teeth]
type=explod
trigger1=animelem=2
anim=4105
ID=4105
sprpriority=2
postype=p1
pos=floor(-9*const(size.xscale)),floor(-172*const(size.yscale))
ownpal=1
scale=.5,.5
[State 4101, flashes]
type=explod
trigger1=1
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
[State 4101, flashsnd]
type=playsnd
trigger1=!(gametime%6)
value=6,2+(random%3)
[State 4101, flashpalfx]
type=allpalfx
trigger1=!(gametime%9)
time=3
add=128,128,128
sinadd=-128,-128,-128,12
[State 4101, imageoff]
type=afterimagetime
trigger1=animelemtime(2)>=0
time=0
[State 4101, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1