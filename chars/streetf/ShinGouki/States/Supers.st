; _____________________________________
;| Shin Gouki by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;========================================<SUPER STATES>==========================================
;================================================================================================

;========================<MESSATSU GOU HADOU>=============================
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
trigger1=anim=3001&&animelemtime(7)<0
value=30,0

[State 3000, snd]
type=playsnd
trigger1=anim=3000&&!animelemtime(3)
value=4,5
channel=0
volume=200
[State 3000, aura]
type=helper
trigger1=anim=3000&&!animelemtime(3)
helpertype=normal
stateno=6000
ID=6000
name="Aura"
postype=p1
ownpal=1
persistent=0
supermovetime=9999

[State 3000, superchargehelper]
type=helper
trigger1=anim=3000&&!animelemtime(3)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=-22,-48
ownpal=1
persistent=0
supermovetime=9999
[State 3000, superchargepause]
type=superpause
trigger1=anim=3000&&!animelemtime(3)
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)
p2defmul=1
darken=0
movetime=45

[State 3000, nhb]
type=nothitby
trigger1=anim=3000&&animelemtime(3)>=0
trigger2=anim=3001&&animelemtime(2)<0
time=1
value=SCA

[State 3000, anim]
type=changeanim
trigger1=anim=3000&&time=48
value=3001

[State 3000, hadouken]
type=helper
trigger1=anim=3001&&!animelemtime(2)
helpertype=normal
stateno=3005
ID=3005
name="Hadouken"
postype=p1
pos=83,-68
ownpal=1

[State 3000, dust]
type=explod
trigger1=anim=3001&&!animelemtime(2)
vel=0,0
anim=7106
sprpriority=3
postype=p1
pos=42,0
ownpal=1
scale=.75,.75

[State 3000, snd]
type=playsnd
trigger1=anim=3001&&!animelemtime(2)
value=3,7
channel=0
[State 3000, snd]
type=playsnd
trigger1=anim=3001&&!animelemtime(2)
value=5,0

[State 3000, end]
type=changestate
trigger1=anim=3001&&!animtime
value=0
ctrl=1


;========================<TENMA GOU ZANKUU>=============================
[Statedef 3050]
type=A
physics=N
movetype=A
anim=3050
ctrl=0
velset=0,0
sprpriority=1
[State 3050, strengthvar]
type=varset
trigger1=var(10)!=5
var(10)=5

[State 3050, snd]
type=playsnd
trigger1=!animelemtime(2)
value=4,14
channel=0
volume=200
[State 3050, superchargehelper]
type=helper
trigger1=!animelemtime(2)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=61,-51
ownpal=1
persistent=0
supermovetime=9999
[State 3050, superchargepause]
type=superpause
trigger1=!animelemtime(2)
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)
p2defmul=1
darken=0
movetime=45

[State 3050, nhb]
type=nothitby
trigger1=animelemtime(2)>=0&&animelemtime(8)<0
time=1
value=SCA

[State 3050, hadouken]
type=helper
trigger1=!animelemtime(8)
helpertype=normal
stateno=3055
ID=3055
name="Hadouken"
postype=p1
pos=73,-43
ownpal=1

[State 3050, snd]
type=playsnd
trigger1=!animelemtime(8)
value=4,0
channel=0
[State 3050, snd]
type=playsnd
trigger1=!animelemtime(8)
value=5,0

[State 3050, vel]
type=velset
trigger1=animelem=8
x=-1.5
y=-6
[State 3050, sts]
type=statetypeset
trigger1=animelemtime(8)>0
physics=A


;========================<MESSATSU GOU SHORYUU>=============================
[Statedef 3100]
type=S
physics=S
movetype=A
ctrl=0
anim=3100
velset=0,0
juggle=5*!var(20)
sprpriority=1

[State 3100, strengthvar]
type=varset
trigger1=var(10)!=5
var(10)=5

[State 3100, snd]
type=playsnd
trigger1=anim=3100&&animelemtime(1)=2
value=4,4
channel=0
[State 3100, superchargehelper]
type=helper
trigger1=anim=3100&&animelemtime(1)=2
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=12,-54
ownpal=1
persistent=0
supermovetime=9999
[State 3100, superchargepause]
type=superpause
trigger1=anim=3100&&animelemtime(1)=2
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)
p2defmul=1
darken=0

[State 3100, nhb]
type=nothitby
trigger1=anim=3100&&animelemtime(1)>=2&&animelemtime(10)<0
time=1
value=SCA
ignorehitpause=1

[State 3100, vel]
type=velset
trigger1=anim=3100&&(animelem=2||animelem=14)
x=12
[State 3100, vel]
type=velset
trigger1=anim=3100&&animelem=26
x=19
[State 3100, dust]
type=explod
trigger1=anim=3100&&(animelem=2||animelem=14||animelem=26)
anim=7103
ID=7103
sprpriority=3
postype=p1
ownpal=1
[State 3100, vel]
type=velset
trigger1=anim=3100&&animelemtime(28)=1
x=18
y=-11

[State 3100, snd]
type=playsnd
trigger1=anim=3100&&(animelem=4||animelem=16)
value=1,5
[State 3100, snd]
type=playsnd
trigger1=anim=3100&&animelem=28
value=1,6
[State 3100, snd]
type=playsnd
trigger1=anim=3100&&(animelem=4||animelem=16||animelem=28)
value=3,ifelse((animelem=4),1,ifelse((animelem=16),9,11))
channel=0

[State 3100, dust]
type=helper
trigger1=anim=3100&&!animelemtime(28)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
[State 3100, snd]
type=playsnd
trigger1=anim=3100&&animelemtime(28)=1
value=0,41

[State 3100, vel]
type=velmul
trigger1=vel y<0
x=.86
[State 3100, vel]
type=velmul
trigger1=vel y>0
x=0

[State 3100, width]
type=width
trigger1=vel y<0
edge=const(size.air.front)

[State 3100, hitlow]
type=hitdef
trigger1=animelem=14&&anim=3100
attr=S,HA
damage=34,5
animtype=Medium 
fall.animtype=Medium 
guardflag=M 
hitflag=MAF
priority=7,Hit
pausetime=ifelse((animelem=24),18,6),ifelse((animelem=24),18,6)
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-52
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

[State 3100, hitlow2]
type=hitdef
trigger1=(animelem=3||animelem=15)&&anim=3100
attr=S,HA
damage=34,5
animtype=Hard 
fall.animtype=Hard 
guardflag=M 
hitflag=MAF
priority=7,Hit
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-75
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

[State 3100, hitlow3]
type=hitdef
trigger1=animelem=26&&anim=3100
attr=S,HA
damage=34,5
animtype=Medium 
fall.animtype=Medium 
guardflag=M 
hitflag=MAF
priority=7,Hit
pausetime=18,18
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-52
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

[State 3100, hitlow4]
type=hitdef
trigger1=animelem=27&&anim=3100
attr=S,HA
damage=34,5
animtype=Hard 
fall.animtype=Hard 
guardflag=M 
hitflag=MAF
priority=7,Hit
pausetime=18,18
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-75
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

[State 3100, hithigh]
type=hitdef
trigger1=(animelem=4||animelem=16)&&anim=3100
attr=S,HA
damage=34,5
animtype=Hard 
guardflag=M 
hitflag=MAF
priority=7,Hit
pausetime=6,6
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-100
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

[State 3100, hitfinal]
type=hitdef
trigger1=animelem=28&&anim=3100
persistent=0
attr=A,HA
damage=34,5
animtype=Back 
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=2,2
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-100
hitsound=s2,3 
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-4.5,-9
air.velocity=-4.5,-9
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=7
fall=1
fall.recover=0

[State 3100, statetype]
type=statetypeset
trigger1=anim=3100&&animelemtime(28)>=2
statetype=A
physics=A
[State 3100, anim]
type=changeanim
trigger1=anim=3100&&animelemtime(28)>2&&vel y>-5.5
value=1101


;========================<MESSATSU GOU RASEN>=============================
[Statedef 3200]
type=S
physics=S
movetype=A
anim=3200
ctrl=0
velset=0,0
juggle=5*!var(20)
sprpriority=1

[State 3200, strengthvar]
type=varset
trigger1=var(10)!=5
var(10)=5

[State 3200, snd]
type=playsnd
trigger1=anim=3200&&!animelemtime(2)
value=4,4
channel=0
[State 3200, superchargehelper]
type=helper
trigger1=anim=3200&&!animelemtime(2)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=-32,-8
ownpal=1
persistent=0
supermovetime=9999
[State 3200, superchargepause]
type=superpause
trigger1=anim=3200&&!animelemtime(2)
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)
p2defmul=1
darken=0
movetime=45

[State 3200, nhb]
type=nothitby
trigger1=anim=3200&&animelemtime(2)>=0
trigger2=anim=3201&&animelemtime(7)<0
time=1
value=SCA
ignorehitpause=1

[State 3200, snd]
type=playsnd
trigger1=anim=3200&&animelem=7
trigger2=anim=3201&&animelem=55
value=3,ifelse((animelem=7),6,7)
channel=0
[State 3200, snd]
type=playsnd
trigger1=anim=3201
value=5,13
persistent=0

[State 3200, snd]
type=playsnd
trigger1=anim=3200&&!animelemtime(8)
value=0,41
[State 3200, dust]
type=helper
trigger1=anim=3200&&!animelemtime(8)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 3200, vel]
type=velset
trigger1=anim=3200&&!animelemtime(10)
x=0
y=-8
[State 3200, vel]
type=velset
trigger1=anim=3201&&vel y>0
y=0

[State 3200, vel]
type=veladd
trigger1=anim=3201&&vel y<0
y=.14

[State 3200, ctrlvel]
type=veladd
trigger1=anim=3201&&(vel x=[-1.33,1.33])&&vel y<0
x=ifelse(command="holdfwd",.15,ifelse(command="holdback",-.15,0))
[State 3200, ctrlvelAI]
type=veladd
trigger1=anim=3201&&(vel x=[-1.33,1.33])&&vel y<0&&var(59)>=1
x=ifelse(p2bodydist x>35,.15,ifelse(p2bodydist x<-35,-.15,0))

[State 3200, statetype]
type=statetypeset
trigger1=anim=3200&&animelemtime(8)>0
statetype=A
physics=N
[State 3200, anim]
type=changeanim
trigger1=anim=3200&&!animtime
value=3201
[State 3200, anim]
type=changeanim
trigger1=anim=3201&&!animtime
value=3205
persistent=0
[State 3200, statetype]
type=statetypeset
trigger1=anim=3205
statetype=A
physics=A

[State 3200, spin]
type=playsnd
triggerall=anim=3201
trigger1=animelem=1||animelem=7||animelem=13||animelem=19||animelem=25
trigger2=animelem=31||animelem=37||animelem=43||animelem=49||animelem=55
value=1,5

[State 3200, 1sthit]
type=hitdef
trigger1=anim=3200&&animelem=8
attr=S,HA
damage=23,5 
animtype=Hard 
guardflag=M
hitflag=MAF 
priority=7,Hit
pausetime=16,16
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-62
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=ifelse(p2bodydist x>15,2,0),-6
air.type=Low
air.velocity=ifelse(p2bodydist x>15,2,0),-5
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 3200, mainhits]
type=hitdef
triggerall=anim=3201
trigger1=animelem=2||animelem=8||animelem=14||animelem=20
trigger2=animelem=26||animelem=32||animelem=38||animelem=44||animelem=50
attr=A,HA
damage=23,5 
animtype=Up 
guardflag=MA
hitflag=MAF 
priority=7,Hit
pausetime=2,2
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-69
hitsound=s2,ifelse(random<500,6,5)
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=1
ground.velocity=ifelse(p2bodydist x>15,1.5,0),-10
air.type=Low
air.velocity=ifelse(p2bodydist x>15,1.5,0),ceil(vel y)-2
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 3200, mainhitsb]
type=hitdef
triggerall=anim=3201
trigger1=animelem=5||animelem=11||animelem=17||animelem=23
trigger2=animelem=29||animelem=35||animelem=41||animelem=47
attr=A,HA
damage=23,5 
animtype=Up
guardflag=MA
hitflag=MAF 
priority=7,Hit
pausetime=2,2
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-69
hitsound=s2,ifelse(random<500,6,5)
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=-1
ground.velocity=ifelse(p2bodydist x>15,1.5,0),-10
air.type=Low
air.velocity=ifelse(p2bodydist x>15,1.5,0),ceil(vel y)-2
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 3200, lasthit]
type=hitdef
trigger1=anim=3201&&animelem=56
attr=S,HA
damage=40,5 
animtype=Diagup 
guardflag=MA
hitflag=MAF 
priority=7,Hit
pausetime=24,24
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-70
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-7,-2
air.type=Low
air.velocity=-7,-2
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=7
fall=1
fall.recover=0


;========================<MESSATSU GOU SENPUU>=============================
[Statedef 3250]
type=A
physics=N
movetype=A
anim=3250
ctrl=0
velset=0,0
juggle=5*!var(20)
sprpriority=1

[State 3250, strengthvar]
type=varset
trigger1=var(10)!=5
var(10)=5

[State 3250, snd]
type=playsnd
trigger1=anim=3250&&!animelemtime(3)
value=4,4
channel=0
[State 3250, superchargehelper]
type=helper
trigger1=anim=3250&&!animelemtime(3)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=-34,-63
ownpal=1
persistent=0
supermovetime=9999
[State 3250, superchargepause]
type=superpause
trigger1=anim=3250&&!animelemtime(3)
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)
p2defmul=1
darken=0

[State 3250, nhb]
type=nothitby
trigger1=anim=3250&&animelemtime(3)>=0
trigger2=anim=3251&&animelemtime(7)<0
time=1
value=SCA
ignorehitpause=1

[State 3250, snd]
type=playsnd
trigger1=anim=3250&&animelem=4
trigger2=anim=3251&&animelem=61
value=3,ifelse((animelem=4),6,7)
channel=0
[State 3250, snd]
type=playsnd
trigger1=anim=3251
value=5,13
persistent=0

[State 3250, vel]
type=velset
trigger1=anim=3250
x=0
y=0
[State 3250, vel]
type=velset
trigger1=anim=3251&&animelemtime(15)<0&&pos y<-10
y=ifelse(animelemtime(9)<0,.33,.1)
[State 3250, vel]
type=velset
trigger1=anim=3251&&animelem=15
x=0
y=-4

[State 3250, vel]
type=veladd
trigger1=anim=3251&&animelemtime(15)>=0&&vel y<0
y=.05

[State 3250, ctrlvel]
type=veladd
trigger1=anim=3251&&(vel x=[-1.33,1.33])&&vel y<0
x=ifelse(command="holdfwd",.15,ifelse(command="holdback",-.15,0))
[State 3250, ctrlvelAI]
type=veladd
trigger1=anim=3251&&(vel x=[-1.33,1.33])&&vel y<0&&var(59)>=1
x=ifelse(p2bodydist x>50,.15,ifelse(p2bodydist x<-50,-.15,0))

[State 3250, anim]
type=changeanim
trigger1=anim=3250&&!animtime
value=3251
[State 3250, anim]
type=changeanim
trigger1=anim=3251&&!animtime
value=3205
persistent=0
[State 3250, statetype]
type=statetypeset
trigger1=anim=3205
statetype=A
physics=A

[State 3250, spin]
type=playsnd
triggerall=anim=3251
trigger1=animelem=1||animelem=7||animelem=13||animelem=19||animelem=25||animelem=31
trigger2=animelem=37||animelem=43||animelem=49||animelem=55||animelem=61
value=1,5

[State 3250, mainhits]
type=hitdef
triggerall=anim=3251
trigger1=animelem=2||animelem=8||animelem=14||animelem=20||animelem=26
trigger2=animelem=32||animelem=38||animelem=44||animelem=50||animelem=56
attr=A,HA
damage=23,5 
animtype=Up 
guardflag=MA
hitflag=MAF 
priority=7,Hit
pausetime=2,2
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-69
hitsound=s2,ifelse(random<500,6,5)
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=1
ground.velocity=ifelse(p2bodydist x>15,1.5,0),-10
air.type=Low
air.velocity=ifelse(p2bodydist x>15,1.5,0),ceil(vel y)-2
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 3250, mainhitsb]
type=hitdef
triggerall=anim=3201
trigger1=animelem=5||animelem=11||animelem=17||animelem=23||animelem=29
trigger2=animelem=35||animelem=41||animelem=47||animelem=53
attr=A,HA
damage=23,5 
animtype=Up 
guardflag=MA
hitflag=MAF 
priority=7,Hit
pausetime=2,2
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-69
hitsound=s2,ifelse(random<500,6,5)
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=-1
ground.velocity=ifelse(p2bodydist x>15,1.5,0),-10
air.type=Low
air.velocity=ifelse(p2bodydist x>15,1.5,0),ceil(vel y)-2
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0

[State 3250, lasthit]
type=hitdef
trigger1=anim=3251&&animelem=62
attr=S,HA
damage=40,5 
animtype=Diagup 
guardflag=MA
hitflag=MAF 
priority=7,Hit
pausetime=24,24
sparkno=s7030+(random%8)
guard.sparkno=s7001 
sparkxy=-10,-70
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-7,-2
air.type=Low
air.velocity=-7,-2
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=7
fall=1
fall.recover=0


;========================<TENMA SHINZUI WARI>=============================
[Statedef 3300]
type=A
physics=N
movetype=A
anim=3300
ctrl=0
velset=0,0
juggle=5*!var(20)
sprpriority=-1

[State 3300, strengthvar]
type=varset
trigger1=var(10)!=5
var(10)=5

[State 3300, comboposition]
type=posadd
trigger1=!time&&(prevstateno=[3200,3250])
y=-30

[State 3300, snd]
type=playsnd
trigger1=!time
value=4,14
channel=0
[State 3300, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=5,-45
ownpal=1
persistent=0
supermovetime=9999
[State 3300, superchargepause]
type=SuperPause
trigger1=!time
time=45
anim=-1
sound=s7,0
poweradd=ifelse(var(20)>0,-10*var(20),-1000)
p2defmul=1
darken=0

[State 3300, nhb]
type=nothitby
trigger1=anim=3300&&animelemtime(3)<0
time=1
value=SCA
ignorehitpause=1

[State 3300, push]
type=playerpush
trigger1=1
value=0
ignorehitpause=1

[State 3300, sprpriority]
type=sprpriority
trigger1=anim=3300
value=-1
ignorehitpause=1

[State 3300, trail]
type=helper
trigger1=anim=3300&&!animelemtime(2)
helpertype=normal
stateno=3305
ID=3305
name="Tenma trail"
postype=p1
ownpal=1
persistent=0
[State 3300, dust]
type=explod
trigger1=anim=3300&&!animelemtime(2)
anim=3306
ID=3306
sprpriority=2
postype=p1
ownpal=1
[State 3300, vel]
type=velset
trigger1=anim=3300&&animelem=2
x=14
y=14

[State 3300, snd]
type=playsnd
trigger1=anim=3300&&animelem=2
value=3,7
channel=0
[State 3300, snd]
type=playsnd
trigger1=anim=3300&&animelem=2
value=1,6
[State 3300, snd]
type=playsnd
trigger1=anim=3300&&animelem=2
value=1,7

[State 3300, hit]
type=hitdef
trigger1=animelem=2
attr=A,HA 
damage=260,5
animtype=Hard
guardflag=HA
hitflag=MAFD
priority=7,Hit
pausetime=2,30
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-15
hitsound=s2,11 
guardsound=s2,0
ground.type=Trip
ground.slidetime=24
ground.hittime=24
ground.velocity=-1,-3
air.velocity=-2,-2
getpower=0
envshake.time=24
envshake.freq=60
envshake.ampl=6
palfx.color=32
palfx.sinadd=40,20,60,8
palfx.mul=384,128,512
palfx.time=40
fall=1
fall.recover=0
sprpriority=-1

[State 3300, flames]
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

[State 3300, anim]
type=changeanim
trigger1=anim=3300&&animelemtime(2)>0&&pos y>=-5
value=3301
persistent=0

[State 3300, sts]
type=statetypeset
trigger1=anim=3301
statetype=C
physics=C
[State 3300, stop]
type=posset
trigger1=anim=3301
y=0
[State 3300, stop]
type=velset
trigger1=anim=3301
y=0

[State 3300, dust]
type=explod
trigger1=anim=3301&&!animelemtime(1)
anim=7102
ID=7102
sprpriority=-2
postype=p1
ownpal=1
ignorehitpause=1
[State 3300, dust]
type=explod
trigger1=anim=3301&&vel x>1&&!(time%5)
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=42,0
vel=-1,0
ownpal=1
ignorehitpause=1
[State 3300, snd]
type=playsnd
trigger1=anim=3301&&!animelemtime(1)
value=0,52
[State 3300, snd]
type=playsnd
trigger1=anim=3301&&!animelemtime(1)
value=5,14

[State 3300, end]
type=changestate
trigger1=anim=3301&&!animtime
value=0
ctrl=1


;========================<SHUN GOKU SATSU>=============================
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
trigger1=!time
value=4,13
channel=0
volume=200
[State 4000, superchargehelper]
type=helper
trigger1=!time
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=14,-104
ownpal=1
persistent=0
supermovetime=9999
[State 4000, superchargepause]
type=superpause
trigger1=!time
time=60
anim=-1
sound=s7,0
poweradd=-3000
p2defmul=1
darken=0

[State 4000, nhb]
type=nothitby
trigger1=time<10
time=1
value=SCA

[State 4000, vel]
type=velset
trigger1=1
x=8
[State 4000, snd]
type=playsnd
trigger1=animelemtime(1)>1
value=5,6
persistent=0

[State 4000, hit]
type=hitdef
trigger1=time
trigger1=p2movetype!=H&&p2stateno!=40
attr=S,HT
hitflag=M 
priority=7,Miss
numhits=0
sparkno=-1
p1facing=1
p2facing=1
p1stateno=4001
p2stateno=1114002
;guard.dist=0 
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
physics=N
movetype=A
anim=4001
ctrl=0
velset=0,0
sprpriority=1

[State 4001, grabsound]
type=playsnd
trigger1=!time
value=0,800
[State 4001, snd]
type=playsnd
trigger1=!time
value=5,8
[State 4001, snd]
type=playsnd
trigger1=!time
value=4,10
channel=0

[State 4001, vsothers]
type=varset
trigger1=!time
var(30)=234

[State 4001, vsgoukiorgen]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Gouki"||target(4000),name="Shin Gouki"||target,name="Akuma"||target(4000),name="Shin Akuma"
trigger2=target(4000),name="Mech Gouki"||target(4000),name="Cyber Akuma"||target(4000),name="Gen"
trigger3=target(4000),name="Pocket Shin Gouki"||target(4000),name="cvsgouki"||target(4000),name="SF3Gouki"
trigger4=target(4000),name="SoulGen"||target(4000),name="Gouki_Cota"||target(4000),name="Gouki CVS 3"
var(30)=40

[State 4001, vsevilryu]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Evil Ryu"||target(4000),name="ERyu"
trigger2=target(4000),name="Ryu"&&target(4000),authorname="Phantom.of.the.Server"&&target(4000),var(1)!=1
trigger3=target(4000),name="CVSEvilRyu"||target(4000),name="Destrudo Ryu"
trigger4=target(4000),name="Ryu"&&target(4000),authorname="N64Mario"&&target(4000),palno>=7
trigger5=target(4000),name="cvsryu"&&target(4000),authorname="Warusaki3"&&target(4000),var(12)=10
trigger6=target(4000),name="eRYU-SvsC"
var(30)=50

[State 4001, vsothersgsusers]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="God Rugal"||target(4000),name="Dark Sakura"
trigger2=target(4000),name="Oyaji"&&target(4000),authorname="Mr.Chainsaw & Phantom.of.the.Server"
trigger3=target(4000),name="cvsrugal"&&target(4000),authorname="Warusaki3"&&target(4000),var(12)=10
trigger4=target(4000),name="cvsg_rugal"&&target(4000),authorname="Warusaki3"
trigger5=target(4000),name="Tin's S_Gouki"||target(4000),name="Blaze Agent"
var(30)=50

[State 4001, vsCAPCOMbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Demitri"||target(4000),name="Jedah"
trigger2=target(4000),name="Vega"&&(target(4000),authorname="Phantom.of.the.Server"||target(4000),authorname="Messatsu")
trigger3=target(4000),name="cvsvega"&&(target(4000),authorname="Warusaki3"||target(4000),authorname="Gargoyle")
trigger4=target(4000),name="M. Bison"&&target(4000),authorname="VK, Updated by Terry Kuo, adapted by Tenebrous"
trigger5=target(4000),name="[Necromancer's] M. Bison"
trigger6=target(4000),name="CvSBison"&&target(4000),authorname="Team Kai (Saiai and Koga)"
trigger7=target(4000),name="Shadow DIO"||target(4000),name="Gill"
var(30)=456

[State 4001, vsSNKbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Geese"||target(4000),name="Orochi"||target(4000),name="Mukai"||target(4000),name="Ryuji Yamazaki"
trigger2=target(4000),name="Geese Howard"||target(4000),name="Yamazaki"
trigger3=target(4000),name="cvsgeese"||target(4000),name="DGeese"||target(4000),name="ORIGINAL ZERO"
trigger4=target(4000),name="cvsyamazaki"||target(4000),name="Orochi Rebirth"||target(4000),name="Tin's Mukai"
trigger5=target(4000),name="geese_mmx"||target(4000),name="Setsuna"
var(30)=456

[State 4001, vsrugal]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Rugal"||target(4000),name="Rugal Bernstein"||target(4000),name="Omega Rugal"
trigger2=target(4000),name="Rugal94"||target(4000),name="Rugal94(BOSS)"||target(4000),name="rugal_B"
trigger3=target(4000),name="Rugal_TLE"||target(4000),name="Omega Rugal Gb"||target(4000),name="Tin G_rugal"
trigger4=target(4000),name="Mech Rugal"||target(4000),name="Tin 2002_rugal" 
trigger5=target(4000),name="Rugal CvS" 
trigger6=target(4000),name="cvsrugal"&&target(4000),authorname="Warusaki3"&&target(4000),var(12)!=10
var(30)=456

[State 4001, vsMKbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Shao Kahn"||target(4000),name="Shang Tsung"||target(4000),name="Goro"
trigger2=target(4000),name="Kintaro"||target(4000),name="Motaro"
trigger3=target(4000),name="shaokahn"
var(30)=456

[State 4001, vsMARVELbadguys]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Dr.Doom"
trigger2=target(4000),name="Dr. Doom by WhiteMagic2002"
var(30)=456

[State 4001, vsrandombadguys >=)]
type=varset
triggerall=!time&&numtarget(4000)
trigger1=target(4000),name="Sevil Nahte"||target(4000),name="Perfect Weapon MB-02"
trigger2=target(4000),name="Jaian"; lol =D
var(30)=456

;NEED TO FINISH

[State 4001, recover]
type=varadd
triggerall=animelemtime(2)>0&&animelemtime(35)<0
triggerall=(var(30)=[1,99])&&numtarget(4000)
triggerall=target(4000),life>=.33*(target(4000),lifemax)
trigger1=(target(4000),command="x")||(target(4000),command="y")||(target(4000),command="z")
trigger2=(target(4000),command="a")||(target(4000),command="b")||(target(4000),command="c")
trigger3=(target(4000),command="up")||(target(4000),command="down")||(target(4000),command="back")||(target(4000),command="fwd")
var(30)=-1

[State 4001, Debug]
type=displaytoclipboard
trigger1=var(30)<100
text="%d button presses to recover"
params=var(30)
[State 4001, Debug]
type=displaytoclipboard
trigger1=var(30)=234
text="Normal Damage"
[State 4001, Debug]
type=displaytoclipboard
trigger1=var(30)=456
text="Extra Damage"

[State 4001, pause]
type=pause
trigger1=animelemtime(35)<0
time=2
movetime=2
[State 4001, push]
type=playerpush
trigger1=animelemtime(35)>=0
value=0
[State 4001, nothitby]
type=nothitby
trigger1=animelemtime(35)<0
value=SCA
time=1
[State 4001, imageoff]
type=afterimagetime
trigger1=animelemtime(5)>0
time=0

[State 4001, fadeout]
type=allpalfx
trigger1=animelemtime(1)=10
time=30
sinadd=-255,-255,-255,120
[State 4001, black]
type=envcolor
trigger1=animelemtime(2)>=0&&animelemtime(35)<0
time=4
value=0,0,0

[State 4001, assert]
type=assertspecial
trigger1=animelemtime(2)>=0&&animelemtime(35)<0
flag=nobardisplay
[State 4001, spr]
type=sprpriority
trigger1=animelemtime(35)>=0
value=1
[State 4001, bind]
type=targetbind
trigger1=animelemtime(35)<0
pos=45,0

[State 4001, hitadd]
type=hitadd
triggerall=var(30)>0
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15
trigger3=animelem=16||animelem=17||animelem=18||animelem=19||animelem=20||animelem=21||animelem=22||animelem=23||animelem=24||animelem=25
trigger4=animelem=26||animelem=27||animelem=28||animelem=29||animelem=30||animelem=31||animelem=32||animelem=33||animelem=34
value=1

[State 4001, hitdamage]
type=targetlifeadd
triggerall=numtarget(4000)
triggerall=target(4000),lifemax>=1000
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9||animelem=10
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16||animelem=17
trigger3=animelem=18||animelem=19||animelem=20||animelem=21||animelem=22||animelem=23||animelem=24||animelem=25||animelem=26
trigger4=animelem=27||animelem=28||animelem=29||animelem=30||animelem=31||animelem=32||animelem=33||animelem=34
value=-ceil(ifelse((var(30)=456),(target(4000),lifemax*.8),(target(4000),lifemax*.6))/33)
kill=animelem=34
absolute=1

[State 4001, hitdamage]
type=targetlifeadd
triggerall=numtarget(4000)
triggerall=target(4000),lifemax<1000
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9||animelem=10
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16||animelem=17
trigger3=animelem=18||animelem=19||animelem=20||animelem=21||animelem=22||animelem=23||animelem=24||animelem=25||animelem=26
trigger4=animelem=27||animelem=28||animelem=29||animelem=30||animelem=31||animelem=32||animelem=33||animelem=34
value=-ceil(ifelse((var(30)=456),800,600)/15)
kill=animelem=34
absolute=1

[State 4001, givepower]
type=targetpoweradd
triggerall=numtarget(4000)
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9||animelem=10
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16||animelem=17
trigger3=animelem=18||animelem=19||animelem=20||animelem=21||animelem=22||animelem=23||animelem=24||animelem=25||animelem=26
trigger4=animelem=27||animelem=28||animelem=29||animelem=30||animelem=31||animelem=32||animelem=33||animelem=34
value=ceil(ifelse((var(30)=456),(target(4000),lifemax*.48),(target(4000),lifemax*.36))/33)

[State 4001, hitsnd]
type=playsnd
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9||animelem=10
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16||animelem=17
trigger3=animelem=18||animelem=19||animelem=20||animelem=21||animelem=22||animelem=23||animelem=24||animelem=25||animelem=26
trigger4=animelem=27||animelem=28||animelem=29||animelem=30||animelem=31||animelem=32||animelem=33||animelem=34
value=2,ifelse(!var(30),0,ifelse((animelem=34),10,3))

[State 4001, sparks]
type=explod
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15
trigger3=animelem=16||animelem=17||animelem=18||animelem=19||animelem=20||animelem=21||animelem=22||animelem=23||animelem=24||animelem=25
trigger4=animelem=26||animelem=27||animelem=28||animelem=29||animelem=30||animelem=31||animelem=32||animelem=33||animelem=34
anim=ifelse(!var(30),7001,7030+(random%8))
ID=7000
sprpriority=5
postype=p2
pos=0,(target,const(size.mid.pos.y));-70
random=60,60
facing=-1
ownpal=1
ontop=1
pausemovetime=300
supermovetime=300

[State 4001, shake]
type=envshake
trigger1=animelem=2||animelem=3||animelem=4||animelem=5||animelem=6||animelem=7||animelem=8||animelem=9||animelem=10
trigger2=animelem=10||animelem=11||animelem=12||animelem=13||animelem=14||animelem=15||animelem=16||animelem=17
trigger3=animelem=18||animelem=19||animelem=20||animelem=21||animelem=22||animelem=23||animelem=24||animelem=25||animelem=26
trigger4=animelem=27||animelem=28||animelem=29||animelem=30||animelem=31||animelem=32||animelem=33||animelem=34
time=2
freq=90
ampl=-3

[State 4001, kanji]
type=explod
trigger1=animelem=35
anim=6013
ID=6013
sprpriority=2
postype=p1
facing=ifelse(facing=1,1,-1)
pos=ifelse(facing=1,0,32)
bindtime=-1
removeongethit=1
ownpal=1

[State 4001, snd]
type=playsnd
trigger1=animelemtime(35)=10
value=4,9
channel=0

[State 4001, throw]
type=targetstate
trigger1=animelemtime(34)>=0&&numtarget(4000)
value=1114003
ID=4000
persistent=0

[State 4001, interrupt]
type=changestate
triggerall=animelemtime(2)>0&&animelemtime(35)<0
trigger1=!var(30)&&numtarget(4000)
trigger2=target(4000),stateno=1114010
value=4009

[State 4001, end]
type=changestate
trigger1=animelemtime(34)>=0&&winko
value=183
[State 4001, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---TARGET---
[Statedef 1114002]
type=S
physics=N
movetype=H
velset=0,0
ctrl=0
[State 1114002, anim]
type=changeanim2
trigger1=!time
value=4002

[Statedef 1114003]
type=L
physics=C
movetype=H
velset=0,0
ctrl=0
[State 1114003, anim]
type=changeanim2
trigger1=!time
value=4003
[State 1114003, end]
type=selfstate
trigger1=!alive
value=5150
[State 1114003, end]
type=selfstate
trigger1=!animtime&&alive
value=5120


;---PLAYER---
[Statedef 4009]
type=S
physics=S
movetype=H
anim=5910
velset=-5,0
ctrl=0
[State 4009, target]
type=targetstate
trigger1=!time&&numtarget(4000)
value=1114010
ID=4000
[State 4009, imageoff]
type=afterimagetime
trigger1=1
time=0
[State 4009, snd]
type=playsnd
trigger1=!time
value=5000,4
channel=0
[State 4009, anim]
type=changeanim
trigger1=anim=5910&&time=45
value=5911

[State 4009, flash]
type=palfx
trigger1=!time
add=30,30,100
sinadd=30,30,100,8
time=8
[State 4009, snd]
type=playsnd
trigger1=!time
value=7,1
[State 4009, lightning]
type=helper
trigger1=!time
helpertype=normal
stateno=4012
ID=4012
postype=p1
pos=0,-60
ownpal=1
persistent=0
pausemovetime=99
supermovetime=99

[State 4009, end]
type=changestate
trigger1=anim=5911&&!animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 1114010]
type=S
physics=S
movetype=H
anim=0
velset=-5,0
ctrl=0
[State 1114010, anim]
type=changeanim
trigger1=!time&&selfanimexist(150)
value=150
[State 1114010, anim]
type=changeanim
trigger1=anim=150&&selfanimexist(140)&&time>=45
value=140
[State 1114010, flash]
type=palfx
trigger1=!time
add=30,30,100
sinadd=30,30,100,8
time=8
[State 1114010, end]
type=selfstate
trigger1=anim=140&&!animtime
trigger2=anim=0&&time>=54
value=0
ctrl=1


;========================<MISOGI>=============================
[Statedef 4100]
type=S
physics=S
movetype=A
anim=4100
ctrl=0
velset=0,0
juggle=5

[State 4100, strengthvar]
type=varset
trigger1=var(10)!=7
var(10)=7

[State 4100, snd]
type=playsnd
trigger1=anim=4100&&!animelemtime(3)
value=4,3
channel=0
[State 4100, superchargehelper]
type=helper
trigger1=anim=4100&&!animelemtime(3)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=-5,-45
ownpal=1
persistent=0
supermovetime=9999
[State 4100, superchargepause]
type=superpause
trigger1=anim=4100&&!animelemtime(3)
time=60
anim=-1
sound=s7,0
poweradd=-3000
p2defmul=1
darken=0
movetime=60

[State 4100, nhb]
type=nothitby
trigger1=anim=4100&&animelemtime(3)>=0
time=1
value=SCA

[State 4100, anim]
type=changeanim
trigger1=anim=4100&&time=63
value=4101
[State 4100, statetype]
type=statetypeset
trigger1=anim!=4101
statetype=S
physics=S
[State 4100, statetype]
type=statetypeset
trigger1=anim=4101
statetype=A
physics=N

[State 4100, push]
type=playerpush
trigger1=anim!=4100&&anim!=4103
value=0
ignorehitpause=1
[State 4100, sprpriority]
type=sprpriority
trigger1=anim!=4100
value=-1
ignorehitpause=1

[State 4100, illusions]
type=helper
trigger1=anim=4100&&time=61
helpertype=normal
stateno=4104
ID=4104
name="Misogi Illusion"
postype=p1
ownpal=1
persistent=0
pausemovetime=999
supermovetime=999

[State 4100, pos]
type=posadd
trigger1=anim=4101&&!animelemtime(1)
x=p2dist x-10
y=p2dist y-240
[State 4100, snd]
type=playsnd
trigger1=anim=4101&&!animelemtime(1)
value=5,9
persistent=0

[State 4100, vel]
type=velset
trigger1=anim=4101&&animelemtime(2)<0
x=0
y=0

[State 4100, vel]
type=velset
trigger1=anim=4101&&animelem=2
y=20
[State 4100, grav]
type=gravity
trigger1=anim=4101&&animelemtime(2)>0

[State 4100, anim]
type=changeanim
trigger1=anim=4101&&animelemtime(2)>3&&p2dist y<(enemynear,const(size.height)+20)
trigger2=anim=4101&&animelemtime(1)>0&&pos y>-30
value=4101
elem=3
persistent=0
[State 4100, snd]
type=playsnd
trigger1=anim=4101&&animelemtime(2)>3&&p2dist y<(enemynear,const(size.height)+20)
trigger2=anim=4101&&animelemtime(1)>0&&pos y>-30
value=4,11
channel=0
persistent=0

[State 4100, particles]
type=explod
trigger1=anim=4101&&animelemtime(2)>0
vel=0,-4
anim=4111
sprpriority=3
postype=p1
pos=3,-60
random=40,40
facing=-1+(random<500)*2
scale=.5,.5
ownpal=1

[State 4100, hit]
type=hitdef
trigger1=anim=4101&&animelem=3
trigger1=var(11):=6&&var(12):=-20&&var(13):=-55
attr=A,HA
damage=550,25
animtype=Hard 
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=0,0
guard.pausetime=0,30
sparkno=s7030+(random%8)
guard.sparkno=s7001
hitsound=s2,9 
guardsound=s2,0
ground.type=Trip
ground.slidetime=30
ground.hittime=45
ground.velocity=-2,0
air.velocity=-1,ceil(vel y)
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0
p2stateno=ifelse(p2statetype=A,1114110,1114100)
sprpriority=-1
ID=4100

[State 4100, cutFX]
type=explod
triggerall=anim=4101&&animelemtime(3)>=0&&movehit&&numtarget
trigger1=(target,time=0)&&(target,movetype=H)
anim=4107
sprpriority=4
postype=p2
facing=-1
pos=0,0
ownpal=1
ignorehitpause=1

[State 4100, anim]
type=changeanim
trigger1=anim=4101&&pos y>=-5
value=ifelse(movehit,4102,4103)
[State 4100, stop]
type=posset
trigger1=anim=[4102,4103]
y=0
[State 4100, stop]
type=velset
trigger1=anim=[4102,4103]
y=0

[State 4100, shake]
type=envshake
trigger1=(anim=4102||anim=4103)&&!animelemtime(1)
time=ifelse((anim=4102),30,15)
ampl=12

[State 4100, snd]
type=playsnd
trigger1=anim=4102&&!animelemtime(1)
value=5,7
[State 4100, fire]
type=explod
trigger1=anim=4102&&!animelemtime(1)
vel=0,0
anim=4105
sprpriority=4
postype=p1
pos=0,0
ownpal=1

[State 4100, snd]
type=playsnd
trigger1=anim=4103&&!animelemtime(1)
value=5,10
[State 4100, fire]
type=explod
trigger1=anim=4103&&!animelemtime(1)
vel=0,0
anim=4106
sprpriority=4
postype=p1
pos=0,0
ownpal=1

[State 4100, dust]
type=explod
trigger1=(anim=4102||anim=4103)&&!animelemtime(1)
anim=7104
ID=7104
sprpriority=-2
postype=p1
pos=0,0
vel=0,0
ownpal=1
ignorehitpause=1
[State 4100, dust]
type=explod
trigger1=anim=4102&&animelemtime(1)=13
vel=0,0
anim=7107
ID=7107
sprpriority=4
postype=p1
pos=0,0
ownpal=1

[State 4100, particles]
type=explod
trigger1=anim=4102&&animelemtime(1)>=5&&animelemtime(1)<17
vel=ceil(5+random/100),ceil(1+random/500)
accel=-.4,-.75
anim=4108
sprpriority=3
postype=p1
pos=2,-40
random=60,60
facing=-1+(random<500)*2
ownpal=1
scale=.5,.1
[State 4100, particles]
type=explod
trigger1=anim=4102&&animelemtime(1)>=3&&animelemtime(1)<15
vel=-ceil(5+random/100),ceil(1+random/500)
accel=.4,-.75
anim=4108
sprpriority=3
postype=p1
pos=2,-40
random=60,60
facing=-1+(random<500)*2
ownpal=1
scale=.5,.1

[State 4100, end]
type=changestate
trigger1=anim=4102&&animelemtime(17)>=0&&winko
value=184
persistent=0
[State 4100, end]
type=changestate
trigger1=(anim=[4102,4103])&&!animtime
value=0
ctrl=1


;========================<KONGOU KOKURETSU ZAN>=============================
[Statedef 4200]
type=S
physics=S
movetype=A
anim=4200
ctrl=0
velset=0,0
sprpriority=-1

[State 4200, strengthvar]
type=varset
trigger1=var(10)!=6
var(10)=6

[State 4200, superchargehelper]
type=helper
trigger1=!animelemtime(2)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=-18,-126
ownpal=1
persistent=0
supermovetime=9999
[State 4200, superchargepause]
type=superpause
trigger1=!animelemtime(2)
time=53
anim=-1
sound=s7,0
poweradd=-2000
p2defmul=1
darken=0
movetime=53

[State 4200, nhb]
type=nothitby
trigger1=animelemtime(15)<0
time=1
value=SCA
[State 4200, push]
type=playerpush
trigger1=animelemtime(17)<0
value=0
ignorehitpause=1

[State 4200, aura]
type=helper
trigger1=!animelemtime(4)
helpertype=normal
stateno=4203
ID=4203
name="KKZ Aura"
postype=p1
ownpal=1
supermovetime=46

[State 4200, shake]
type=envshake
trigger1=!animelemtime(15)
time=30
freq=60
ampl=10

[State 4200, snd]
type=playsnd
trigger1=!animelemtime(12)
value=4,6
channel=0
[State 4200, snd]
type=playsnd
trigger1=!animelemtime(15)
value=5,15

[State 4200, lightning]
type=helper
trigger1=!animelemtime(15)
helpertype=normal
stateno=4205
ID=4206
name="KKZ"
postype=p1
pos=-8,7
ownpal=1

[State 4200, shockwave1]
type=helper
trigger1=animelemtime(15)=6
helpertype=normal
stateno=4206
ID=4205
name="KKZ"
postype=p1
facing=1
pos=0,0
ownpal=1
[State 4200, shockwave2]
type=helper
trigger1=animelemtime(15)=6
helpertype=normal
stateno=4206
ID=4205
name="KKZ"
postype=p1
facing=-1
pos=0,0
ownpal=1

[State 4200, shockwave3]
type=explod
trigger1=animelemtime(15)=6
anim=4207
ID=4207
sprpriority=-3
facing=1
pos=0,0
ownpal=1
[State 4200, shockwave4]
type=explod
trigger1=animelemtime(15)=6
anim=4207
ID=4207
sprpriority=-3
facing=-1
pos=0,0
ownpal=1

[State 4200, dust]
type=helper
trigger1=!animelemtime(15)
helpertype=normal
stateno=4210
ID=4210
name="Purple Dust"
postype=p1
pos=-8,0
ownpal=1

[State 4200, imageoff]
type=afterimagetime
trigger1=animelemtime(17)>=0
time=0
[State 4200, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<TENSHOU KAIREKI JIN>=============================
[Statedef 4300]
type=S
physics=S
movetype=A
anim=4300
ctrl=0
velset=0,0
juggle=5
sprpriority=1

[State 4300, strengthvar]
type=varset
trigger1=var(10)!=6
var(10)=6

[State 4300, snd]
type=playsnd
trigger1=anim=4300&&!animelemtime(2)
value=4,4
channel=0
[State 4300, superchargehelper]
type=helper
trigger1=anim=4300&&!animelemtime(2)
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=-17,-5
ownpal=1
persistent=0
supermovetime=9999
[State 4300, superchargepause]
type=superpause
trigger1=anim=4300&&!animelemtime(2)
time=53
anim=-1
sound=s7,0
poweradd=-2000
p2defmul=1
darken=0
movetime=53

[State 4300, nhb]
type=nothitby
trigger1=anim=4300&&animelemtime(2)>=0&&animelemtime(11)<0
time=1
value=SCA
ignorehitpause=1

[State 4300, snd]
type=playsnd
trigger1=anim=4300&&animelem=10
value=3,7
channel=0

[State 4300, snd]
type=playsnd
trigger1=anim=4300&&!animelemtime(8)
value=0,41
[State 4300, dust]
type=helper
trigger1=anim=4300&&!animelemtime(8)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 4300, vel]
type=velset
trigger1=anim=4300&&!animelemtime(8)
x=-1.5
y=-20
[State 4300, vel]
type=veladd
trigger1=anim=4300&&animelemtime(8)>0
y=.25
[State 4300, vel]
type=velmul
trigger1=anim=4301
x=.95

[State 4300, camera]
type=screenbound
trigger1=anim=4300&&animelemtime(8)>=0
trigger2=anim=4301
value=1
movecamera=1,0

[State 4300, snd]
type=playsnd
trigger1=anim=4300&&!animelemtime(8)
value=5,18
[State 4300, fx]
type=helper
trigger1=anim=4300&&!animelemtime(8)
helpertype=normal
stateno=4305
ID=4305
name="Tenshou Kaireki Jin"
postype=p1
pos=60,-ceil(pos y)
ownpal=1

[State 4300, dust]
type=explod
trigger1=anim=4300&&!animelemtime(8)
anim=7106
sprpriority=3
postype=p1
pos=60,-ceil(pos y)+33
facing=1
ownpal=1
[State 4300, dust]
type=explod
trigger1=anim=4300&&!animelemtime(8)
anim=7106
sprpriority=3
postype=p1
pos=60,-ceil(pos y)+33
facing=-1
ownpal=1

[State 4300, anim]
type=changeanim
trigger1=anim=4300&&animelemtime(11)>0&&vel y>=-3
value=4301
[State 4300, statetype]
type=statetypeset
trigger1=anim=4300&&animelemtime(8)>=0
trigger2=anim=4301
statetype=A
physics=A