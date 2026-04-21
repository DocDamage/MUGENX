; ______________________________
;| Ryu by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<SPECIAL STATES>=========================================
;================================================================================================

;========================<HADOU KEN>=============================
[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=45*!var(20)
sprpriority=1

[State 1000, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcfz",3,ifelse(command="qcfy",2,1))
[State 1000, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<650,2,1))

[State 1000, width]
type=width
trigger1=animelemtime(4)>=0&&animelemtime(10)<0
value=30,0

[State 1000, Hadouken]
type=helper
trigger1=!animelemtime(5)
helpertype=normal
stateno=1005
ID=1005
name="Hadouken"
postype=p1
pos=80,-68
size.xscale=.5
size.yscale=.5
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=!animelemtime(3)
value=4+(var(1)=2)*10,0
channel=0
[State 1000, snd]
type=playsnd
trigger1=!animelemtime(5)
value=5,0

[State 1000, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<SHAKUNETSU HADOU KEN>=============================
[Statedef 1020]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=45*!var(20)
sprpriority=1

[State 1020, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="qcfz",3,ifelse(command="qcfy",2,1))
[State 1020, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<650,2,1))

[State 1020, width]
type=width
trigger1=animelemtime(4)>=0&&animelemtime(10)<0
value=30,0

[State 1020, Hadouken]
type=helper
trigger1=!animelemtime(5)
helpertype=normal
stateno=1025
ID=1025
name="Shakunetsu Hadouken"
postype=p1
pos=80,-68
ownpal=1

[State 1020, snd]
type=playsnd
trigger1=!animelemtime(3)
value=4+(var(1)=2)*10,0
channel=0
[State 1020, snd]
type=playsnd
trigger1=!animelemtime(5)
value=5,0

[State 1020, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<SHORYUU KEN>=============================
[Statedef 1100]
type=S
physics=S
movetype=A
anim=1100
ctrl=0
velset=0,0
poweradd=115*(!var(20)*prevstateno!=750)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1100, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="dfz"||prevstateno=750),3,ifelse(command="dfy",2,1))
[State 1100, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse((random<500||prevstateno=750),3,ifelse(random<666,2,1))

[State 1100, nothitby]
type=nothitby
trigger1=anim=1100&&animelemtime(4)<0&&prevstateno!=750
value=SCA
time=1
ignorehitpause=1

[State 1100, vel]
type=velset
trigger1=anim=1100&&!animelemtime(4)
x=ifelse(var(10)=3,12,ifelse(var(10)=2,9,6))
y=ifelse(var(10)=3,-11,ifelse(var(10)=2,-8.5,-6))
[State 1100, vel]
type=velmul
trigger1=1
x=.88
[State 1100, vel]
type=velmul
trigger1=vel y>0
x=0

[State 1100, snd]
type=playsnd
trigger1=anim=1100&&!animelemtime(4)
value=0,41
[State 1100, dust]
type=helper
trigger1=anim=1100&&!animelemtime(4)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1100, snd]
type=playsnd
trigger1=anim=1100&&!animelemtime(3)
value=4+(var(1)=2)*10,1
channel=0
ignorehitpause=1
persistent=0

[State 1100, width]
type=width
trigger1=vel y<0
edge=const(size.air.front)

[State 1100, hit]
type=hitdef
trigger1=(animelem=3)&&anim=1100&&var(1)=1
attr=S,SA                   
damage=95+var(10)*10,5
animtype=Back        
guardflag=M          
hitflag=MAF           
priority=7,Hit             
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-79
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=-1.5-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-1.5-(var(10)/2),-6-var(10)
getpower=(190+var(10)*20)*(!var(20)*prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=(var(10)=1)
fall.animtype=Medium
[State 1100, hit2]
type=hitdef
trigger1=(animelem=4)&&anim=1100&&var(1)=1&&!movecontact
attr=A,SA                   
damage=47+var(10)*5,5
animtype=Back        
guardflag=MA           
hitflag=MAF           
priority=5,Hit             
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-106
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-1.5-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-1.5-(var(10)/2),-6-var(10)
getpower=(94+var(10)*10)*(!var(20)*prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=(var(10)=1)

[State 1100, hit]
type=hitdef
trigger1=(animelem=2)&&anim=1100&&var(1)!=1
trigger2=(animelem=3)&&anim=1100&&var(1)!=1
attr=S,SA                   
damage=31+var(10)*4,5
animtype=Medium
fall.animtype=Medium
guardflag=M          
hitflag=MAF           
priority=7,Hit             
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=2),-52,-79)
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity=.5,-5.5
air.type=Low
air.velocity=.5,-5.5
getpower=(62+var(10)*8)*(!var(20)*prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=(var(10)=1)
fall.animtype=Medium
[State 1100, hithard2]
type=hitdef
trigger1=(animelem=4)&&anim=1100&&var(1)!=1
attr=A,SA                   
damage=ifelse(movecontact,31,52)+var(10)*4,5
animtype=Back        
guardflag=MA           
hitflag=MAF           
priority=5,Hit             
pausetime=16/((var(20)>0)+1),16/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-106
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-1.5-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-1.5-(var(10)/2),-6-var(10)
getpower=(ifelse(movecontact,62,104)+var(10)*8)*(!var(20)*prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=(var(10)=1)

[State 1100, statetype]
type=statetypeset
trigger1=anim=1100&&animelemtime(4)>=0
trigger2=anim=1101
statetype=A
physics=A
[State 1100, anim]
type=changeanim
trigger1=anim=1100&&animelemtime(4)>0&&vel y>(ifelse(var(10)=3,-5.3,ifelse(var(10)=2,-4,-2.7)))
value=1101
persistent=0


;========================<TATSUMAKI SENPUU KYAKU>=============================
[Statedef 1200]
type=A
physics=N
movetype=A
anim=1200
ctrl=0
velset=0,0
poweradd=ifelse(command="qcbc",120,ifelse(command="qcbb"=2,80,40))*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1200, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="qcbc"),3,ifelse(command="qcbb",2,1))
[State 1200, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1200, width]
type=width
trigger1=anim=1201
edge=35,0

[State 1200, snd]
type=playsnd
trigger1=anim=1200&&!animelemtime(1)
value=4+(var(1)=2)*10,2
channel=0
[State 1200, snd]
type=playsnd
trigger1=anim=1200&&!animelemtime(1)
value=0,40
[State 1200, dust]
type=helper
trigger1=anim=1200&&!animelemtime(1)
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 1200, anim]
type=changeanim
trigger1=anim=1200&&!animtime
value=1201
[State 1200, vel]
type=velset
trigger1=anim=1200&&!animelemtime(1)
x=3.5
y=-3.2

[State 1200, vel]
type=velset
trigger1=anim=1201
x=3.5
y=0

[State 1200, spin]
type=playsnd
trigger1=anim=1201&&!(animelemtime(1)%9)
value=1,6

[State 1200, anim]
type=changeanim
trigger1=var(1)!=2
trigger1=anim=1201&&ifelse(var(10)=3,animelemtime(18)>=0,ifelse(var(10)=2,animelemtime(12)>=0,animelemtime(6)>=0))
value=1205
persistent=0
[State 1200, anim]
type=changeanim
trigger1=var(1)!=1
trigger1=anim=1201&&ifelse(var(10)=3,!animtime,ifelse(var(10)=2,animelemtime(12)>=0,animelemtime(6)>=0))
value=1205
persistent=0

[State 1200, statetype]
type=statetypeset
trigger1=anim=1200&&animelemtime(1)>1
trigger2=anim=1205&&animelemtime(1)>1
statetype=A
physics=A
[State 1200, statetype]
type=statetypeset
trigger1=anim=1201
statetype=A
physics=N

[State 1200, hit]
type=hitdef
trigger1=var(1)=1&&!movehit
trigger1=anim=1201&&(animelem=2||animelem=8||animelem=14)
attr=S,SA                   
damage=90,5    
animtype=Hard        
guardflag=MA
hitflag=MAF           
priority=5,Hit             
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
p2facing=1
ground.velocity=-4,-6
air.type=Low
air.velocity=-3.5,-7
getpower=180*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=(var(10)=1)

[State 1200, hitb]
type=hitdef
trigger1=var(1)=1&&!movehit
trigger1=anim=1201&&(animelem=5||animelem=11||animelem=17)
attr=S,SA                   
damage=90,5    
animtype=Hard        
guardflag=MA
hitflag=MAF           
priority=5,Hit             
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=4,-6
air.type=Low
air.velocity=3.5,-7
getpower=180*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0

[State 1200, hit]
type=hitdef
trigger1=var(1)!=1&&hitcount<3
trigger1=anim=1201&&(animelem=2||animelem=8||animelem=14||animelem=20)
attr=S,SA                   
damage=40,5    
animtype=Hard        
guardflag=MA
hitflag=MAF           
priority=5,Hit             
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-2.5,-8
air.type=Low
air.velocity=-2.5,-6.5
getpower=80*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0

[State 1200, hitb]
type=hitdef
trigger1=var(1)!=1&&hitcount<3
trigger1=anim=1201&&(animelem=5||animelem=11||animelem=17||animelem=23)
attr=S,SA
damage=40,5    
animtype=Hard        
guardflag=MA
hitflag=MAF           
priority=5,Hit             
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=2.5,-8
air.type=Low
air.velocity=2.5,-6.5
getpower=80*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0


;========================<KUUCHUU TATSUMAKI SENPUU KYAKU>=============================
[Statedef 1250]
type=A
physics=A
movetype=A
anim=1250+10*(var(1)!=1&&(command="hcba"||command="hcbb"||command="hcbc"))
ctrl=0
velset=(vel x)+ifelse(vel x>=0,1,-1),(vel y)-1
poweradd=ifelse(command="qcbc",120,ifelse(command="qcbb"=2,80,40))*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)           

[State 1250, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="qcbc"),3,ifelse(command="qcbb",2,1))
[State 1250, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))

[State 1250, vel]
type=veladd
trigger1=!time&&anim=1260
x=ifelse(vel x>=0,3,-3)
y=-1

[State 1250, slow]
type=veladd
trigger1=anim=1250&&animelemtime(24)<0
y=-const(movement.yaccel)*.33
[State 1250, slow]
type=veladd
trigger1=anim=1260&&animelemtime(25)<0
y=-const(movement.yaccel)*.66

[State 1250, snd]
type=playsnd
trigger1=animelem=1&&anim=1250
value=4+(var(1)=2)*10,2
channel=0
[State 1250, snd]
type=playsnd
trigger1=animelem=1&&anim=1260
value=3+(var(1)=2)*10,2
channel=0

[State 1250, spin]
type=playsnd
trigger1=anim=1250&&!(animelemtime(4)%9)&&animelemtime(26)<0
trigger2=anim=1260&&!(animelemtime(4)%9)&&animelemtime(20)<0
value=1,6

[State 1250, hit]
type=hitdef
trigger1=animelem=5||animelem=11||animelem=17||animelem=23
trigger1=ifelse(var(1)!=2,!movehit,1)
attr=A,SA                   
damage=43,5    
animtype=Hard        
guardflag=HA
hitflag=MAF           
priority=5,Hit             
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-69
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,-7
air.type=Low
air.velocity=-2,-6
getpower=86*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0

[State 1250, hitb]
type=hitdef
trigger1=animelem=8||animelem=14||animelem=20||animelem=26
trigger1=ifelse(var(1)!=2,!movehit,1)
attr=A,SA                   
damage=43,5    
animtype=Hard        
guardflag=HA
hitflag=MAF           
priority=5,Hit             
pausetime=14/((var(20)>0)+1),14/((var(20)>0)+1)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-70
hitsound=s2,6     
guardsound=s2,0
ground.type=High
ground.slidetime=22
ground.hittime=22
ground.velocity=2,-7
air.type=Low
air.velocity=2,-6
getpower=86*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0


;========================<JOUDAN SOKUTOU GERI>=============================
[Statedef 1300]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
poweradd=ifelse(command="qcfc",110,ifelse(command="qcfb"=2,95,80))*!var(20)
juggle=ifelse((p2movetype=H&&p2statetype=A),10,5)

[State 1300, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="qcfc"),3,ifelse(command="qcfb",2,1))
[State 1300, strengthvarAI]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,3,ifelse(random<666,2,1))
[State 1300, anim]
type=changeanim
trigger1=!time
value=ifelse(var(10)=3,1302,ifelse(var(10)=2,1301,1300))

[State 1300, vel]
type=velset
trigger1=(anim=[1301,1302])&&animelemtime(4)<0
trigger2=anim=1300&&animelemtime(2)<0
x=4

[State 1300, snd]
type=playsnd
triggerall=var(1)!=2
trigger1=(anim=[1301,1302])&&animelem=6
trigger2=anim=1300&&animelem=4
value=3,ifelse(var(10)=3,2,ifelse(var(10)=2,7,6))
channel=0
[State 1300, snd]
type=playsnd
triggerall=var(1)=2
trigger1=(anim=[1301,1302])&&animelem=6
trigger2=anim=1300&&animelem=4
value=13,ifelse(var(10)=3,2,ifelse(var(10)=2,1,3))
channel=0
[State 1300, snd]
type=playsnd
trigger1=(anim=[1301,1302])&&animelem=6
trigger2=anim=1300&&animelem=4
value=1,6

[State 1300, hit]
type=hitdef
trigger1=(anim=[1301,1302])&&animelem=6
trigger2=anim=1300&&animelem=4
attr=S,SA                   
damage=(65+var(10)*15),5
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
ground.velocity=-2-var(10)*2,-3
air.type=Low
air.velocity=-2-var(10)*2,-3
getpower=(130+var(10)*30)*!var(20)
envshake.time=16
envshake.freq=60
envshake.ampl=6
fall=1
fall.recover=(var(10)=1)

[State 1300, pos]
type=posadd
trigger1=(anim=1300&&animelem=8)||((anim=[1301,1302])&&animelem=10)
x=15
[State 1300, pos]
type=posadd
trigger1=(anim=1300&&animelem=9)||((anim=[1301,1302])&&animelem=11)
x=10
[State 1300, pos]
type=posadd
trigger1=!animtime
x=5

[State 1300, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;========================<ASHURA SENKUU>=============================
[Statedef 1400]
type=S
physics=N
movetype=I
anim=1400
velset=0,0
ctrl=0
sprpriority=-1

[State 1400, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse(command="df2p",3,ifelse(command="df2k",2,ifelse(command="db2p",-3,-2)))

[State 1400, afterimage]
type=afterimage
trigger1=animelem=3
time=2
timegap=1
framegap=6
length=ifelse((var(10)=3||var(10)=-3),24,18)
palbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
palcontrast=160,160,160
palpostbright=0,0,0
trans=add1

[State 1400, vel]
type=velset
trigger1=animelemtime(2)>0&&animelemtime(6)<0
x=ifelse(var(10)=3,-7,ifelse(var(10)=2,-4,ifelse(var(10)=-3,7,4)))*sin((time-2)/2)
[State 1400, vel]
type=velset
trigger1=animelem=6
x=ifelse(var(10)=3,12,ifelse(var(10)=2,7.5,ifelse(var(10)=-3,-12,-7.5)))
[State 1400, vel]
type=velmul
trigger1=animelemtime(6)>ifelse((var(10)=3||var(10)=-3),16,9)
x=.9

[State 1400, snd]
type=playsnd
trigger1=animelem=2
value=3+(var(1)=2)*10,4*(var(1)!=2)
channel=0
[State 1400, snd]
type=playsnd
trigger1=animelem=6
value=5,4
persistent=0

[State 1400, push]
type=playerpush
trigger1=animelemtime(3)>=0
value=0
[State 1400, nothitby]
type=nothitby
trigger1=animelemtime(5)>=0&&animelemtime(6)<=ifelse((var(10)=3||var(10)=-3),35,20)
value=SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time=1
ignorehitpause=1
[State 1400, turn]
type=turn
trigger1=animelemtime(6)>0&&p2dist x<0

[State 1400, end]
type=changestate
trigger1=animelemtime(6)=ifelse((var(10)=3||var(10)=-3),40,25)
trigger2=animelemtime(6)>0&&vel x<0&&backedgebodydist<=const(size.ground.back)
trigger3=animelemtime(6)>0&&vel x>0&&frontedgebodydist<=const(size.ground.front)
value=0
ctrl=1