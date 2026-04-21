; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<NORMAL STATES>==========================================
;================================================================================================

;===========<Stand Light Punch>==========
[Statedef 200]
type=S  
movetype=A  
physics=S  
juggle=5
anim=200
velset=0,0
poweradd=7*!var(20)   
sprpriority=1
ctrl=0

[State 200, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,5)
channel=0
[State 200, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 200, hit]
type=hitdef
trigger1=animelem=2
attr=S,NA
damage=20,0
animtype=Light
guardflag=MA
hitflag=MAF
priority=2,Hit   
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-93
hitsound=s2,1      
guardsound=s2,0
ground.type=High
ground.hittime=10
ground.slidetime=10
ground.velocity=ifelse((prevstateno=200&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200&&!var(20)),-9,-6)
air.type=Low
air.velocity=-2,-2
getpower=60*!var(20)   
envshake.time=8
envshake.ampl=1

[State 200, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Medium Punch>==========
[Statedef 205]
type=S  
movetype=A  
physics=S  
juggle=5
anim=205
velset=0,0
poweradd=14*!var(20)   
sprpriority=1
ctrl=0  

[State 205, snd]
type=playsnd
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,5)
channel=0
[State 205, snd]
type=playsnd
trigger1=animelem=2
value=1,2

[State 205, hit]
type=hitdef
trigger1=animelem=3
attr=S,NA         
damage=40,0    
animtype=Medium       
guardflag=M
hitflag=MAF 
priority=3,Hit   
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)         
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-55
hitsound=s2,2      
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=10
envshake.ampl=2

[State 205, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Hard Punch>==========
[Statedef 210]
type=S
movetype=A
physics=S
juggle=5
anim=ifelse((prevstateno=710||p2bodydist x<25),211,210)
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0

[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 210, snd]
type=playsnd
trigger1=animelem=3
value=1,3

[State 210, hit]
type=hitdef
trigger1=anim=210&&animelem=3
attr=S,NA
damage=60,0    
animtype=Hard        
guardflag=MA 
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)    
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-75
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)
envshake.time=12
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=anim=210&&animelem=4&&!movecontact
attr=S,NA
damage=60,0    
animtype=Hard        
guardflag=M
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)    
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-42
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)   
envshake.time=12
envshake.ampl=3

[State 210, hit]
type=hitdef
trigger1=anim=211&&animelem=3
attr=S,NA
damage=60,0    
animtype=Hard        
guardflag=M
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)    
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-55
hitsound=s2,3      
guardsound=s2,0
ground.type=Low
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)   
envshake.time=12
envshake.ampl=3

[State 210, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Light Kick>==========
[Statedef 215]
type=S  
movetype=A  
physics=S  
juggle=5 
anim=215
velset=0,0   
poweradd=7*!var(20)
sprpriority=1
ctrl=0  

[State 215, snd]
type=playsnd
trigger1=animelem=4&&random<200
value=3,ifelse(random<500,1,5)
channel=0
[State 215, snd]
type=playsnd
trigger1=animelem=4
value=1,4

[State 215, hit]
type=hitdef
trigger1=animelem=4&&anim=215
attr=S,NA         
damage=20,0    
animtype=Light        
guardflag=M
hitflag=MAF 
priority=2,Hit   
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-50
hitsound=s2,4      
guardsound=s2,0
ground.type=High
ground.hittime=10
ground.slidetime=10
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
getpower=20*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1

[State 215, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;===========<Stand Medium Kick>==========
[Statedef 220]
type=S  
movetype=A  
physics=S  
juggle=5 
anim=220
velset=0,0   
poweradd=14*!var(20)   
sprpriority=1
ctrl=0  

[State 220, snd]
type=playsnd
trigger1=animelem=4&&random<350
value=3,ifelse(random<500,2,5)
channel=0
[State 220, snd]
type=playsnd
trigger1=animelem=4
value=1,5

[State 220, hit]
type=hitdef
trigger1=animelem=4
attr=S,NA         
damage=25,0    
animtype=Medium        
guardflag=M
hitflag=MAF 
priority=3,Hit   
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)  
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-50
hitsound=s2,5      
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 220, hit]
type=hitdef
trigger1=animelem=5
attr=S,NA         
damage=25,0    
animtype=Medium        
guardflag=MA
hitflag=MAF 
priority=3,Hit   
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)  
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-76
hitsound=s2,5      
guardsound=s2,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 220, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Stand Hard Kick>==========
[Statedef 225]
type=S
movetype=A
physics=S
juggle=5
anim=225
velset=ifelse((prevstateno=100),vel x,0),0
poweradd=20*!var(20)   
sprpriority=-1
ctrl=0

[State 225, width]
type=width
trigger1=animelemtime(4)>0&&animelemtime(8)<0
value=floor(45*const(size.xscale)),0
[State 225, vel]
type=velset
trigger1=animelem=5
x=3

[State 225, snd]
type=playsnd
trigger1=animelem=5&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 225, snd]
type=playsnd
trigger1=animelem=5
value=1,6

[State 225, hit]
type=hitdef
trigger1=animelem=6&&prevstateno!=710
attr=S,NA
damage=60,0    
animtype=Hard        
guardflag=MA 
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-86
hitsound=s2,6      
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)   
envshake.time=12
envshake.freq=60
envshake.ampl=3
sprpriority=-1

[State 225, hit]
type=hitdef
trigger1=animelem=6&&prevstateno=710
attr=S,NA
damage=60,0    
animtype=Hard        
guardflag=MA 
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-86
hitsound=s2,6      
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-6,-3
air.type=Low
air.velocity=-6,-3
getpower=180*!var(20)   
envshake.time=12
envshake.freq=60
envshake.ampl=3
sprpriority=-1
fall=1

[State 225, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Crouch Light Punch>==========
[Statedef 230]
type=C  
movetype=A  
physics=C  
juggle=5 
anim=230
velset=0,0
poweradd=7*!var(20)
sprpriority=1
ctrl=0  

[State 230, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,5)
channel=0
[State 230, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 230, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA         
damage=20,0    
animtype=Light        
guardflag=M 
hitflag=MAF 
priority=2,Hit   
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-65
hitsound=s2,1      
guardsound=s2,0
ground.type=Low
ground.hittime=10
ground.slidetime=10
ground.velocity=ifelse((prevstateno=200&&!var(20)),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200&&!var(20)),-9,-6)
air.type=Low
air.velocity=-2,-2
getpower=60*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1

[State 230, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Medium Punch>==========
[Statedef 235]
type=C  
movetype=A  
physics=C  
juggle=5 
anim=235
velset=0,0
poweradd=14*!var(20)   
sprpriority=1
ctrl=0  

[State 235, snd]
type=playsnd
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,5)
channel=0
[State 235, snd]
type=playsnd
trigger1=animelem=3
value=1,2

[State 235, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA         
damage=40,0    
animtype=Medium       
guardflag=M 
hitflag=MAF 
priority=3,Hit   
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-59
hitsound=s2,2      
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 235, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Hard Punch>==========
[Statedef 240]
type=C
movetype=A
physics=C
juggle=5
anim=240
velset=0,0
poweradd=20*!var(20)   
sprpriority=1
ctrl=0

[State 240, snd]
type=playsnd
trigger1=animelem=2&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 240, snd]
type=playsnd
trigger1=animelem=2
value=1,3

[State 240, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA
damage=60,0    
animtype=Hard        
guardflag=M        
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)     
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-90
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)   
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 240, hit]
type=hitdef
trigger1=animelem=3&&!movecontact
attr=C,NA
damage=60,0    
animtype=Hard        
guardflag=MA  
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)     
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-115
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=Low
air.velocity=-4,-4
getpower=180*!var(20)   
envshake.time=12
envshake.freq=60
envshake.ampl=3

[State 240, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Light Kick>==========
[Statedef 245]
type=C  
movetype=A  
physics=C  
juggle=5 
anim=245
velset=0,0
poweradd=7*!var(20)
sprpriority=1
ctrl=0  

[State 245, snd]
type=playsnd
trigger1=animelem=3&&random<200
value=3,ifelse(random<500,1,5)
channel=0
[State 245, snd]
type=playsnd
trigger1=animelem=3
value=1,4

[State 245, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA         
damage=20,0    
animtype=Light        
guardflag=L        
hitflag=MAFD
priority=2,Hit   
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-8
hitsound=s2,4      
guardsound=s2,0
ground.type=Low
ground.hittime=10
ground.slidetime=10
ground.velocity=-4
air.type=Low
air.velocity=-2,-2
down.velocity=-2,-2
getpower=20*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1

[State 245, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Medium Kick>==========
[Statedef 250]
type=C  
movetype=A  
physics=C  
juggle=5 
anim=250
velset=0,0   
poweradd=14*!var(20)   
sprpriority=1
ctrl=0  

[State 250, snd]
type=playsnd
trigger1=animelem=2&&random<350
value=3,ifelse(random<500,2,5)
channel=0
[State 250, snd]
type=playsnd
trigger1=animelem=2
value=1,5

[State 250, hit]
type=hitdef
trigger1=animelem=3
attr=C,NA         
damage=40,0    
animtype=Medium        
guardflag=L 
hitflag=MAFD
priority=3,Hit   
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-8
hitsound=s2,5      
guardsound=s2,0
ground.type=Low
ground.hittime=14
ground.slidetime=14
ground.velocity=-7,0
air.type=Low
air.velocity=-3,-3
down.velocity=-3,-3
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2

[State 250, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Crouch Hard Kick>==========
[Statedef 255]
type=C
movetype=A
physics=C
juggle=5
anim=255
velset=0,0
poweradd=20*(prevstateno!=520)*!var(20)
sprpriority=1
ctrl=0

[State 255, snd]
type=playsnd
trigger1=animelem=2&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 255, snd]
type=playsnd
trigger1=animelem=2
value=1,6

[State 255, hit]
type=hitdef
trigger1=animelem=2
attr=C,NA
damage=60,0    
animtype=Hard        
guardflag=L         
hitflag=MAFD
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-10
hitsound=s2,6      
guardsound=s2,0
ground.type=Trip
ground.hittime=18
ground.slidetime=18
ground.velocity=-2,-2
air.type=Trip
air.velocity=-4.5,-2
down.velocity=-4,-4
getpower=180*(prevstateno!=520)*!var(20)
envshake.time=12
envshake.freq=60
envshake.ampl=3
fall=1
fall.recovery=0

[State 255, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Air Light Punch>==========
[Statedef 260]
type=A  
movetype=A  
physics=A  
juggle=5 
anim=260
poweradd=7*!var(20)
sprpriority=1
ctrl=0  

[State 260, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,5)
channel=0
[State 260, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 260, hit]
type=hitdef
trigger1=animelem=2
attr=A,NA         
damage=25,0    
animtype=Light        
guardflag=HA 
hitflag=MAF 
priority=2,Hit   
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-60
hitsound=s2,1      
guardsound=s2,0
ground.type=High
ground.hittime=10
ground.slidetime=10
ground.velocity=-4
air.type=Low
air.velocity=-2,-4
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1


;===========<Air Medium Punch>==========
[Statedef 265]
type=A  
movetype=A  
physics=A  
juggle=5 
anim=265
poweradd=14*!var(20)   
sprpriority=1
ctrl=0  

[State 265, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,2,5)
channel=0
[State 265, snd]
type=playsnd
trigger1=animelem=3
value=1,2

[State 265, hit]
type=hitdef
trigger1=animelem=3
attr=A,NA         
damage=40,0    
animtype=Medium       
guardflag=HA 
hitflag=MAF 
priority=3,Hit   
pausetime=10/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-54
hitsound=s2,2      
guardsound=s2,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity=-7
air.type=Low
air.velocity=-3,-5
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2


;===========<Air Hard Punch>==========
[Statedef 270]
type=A
movetype=A
physics=A
juggle=5
anim=270
poweradd=20*!var(20)   
sprpriority=1
ctrl=0

[State 270, snd]
type=playsnd
trigger1=animelem=4&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 270, snd]
type=playsnd
trigger1=animelem=4
value=1,3

[State 270, hit]
type=hitdef
trigger1=animelem=3
trigger1=var(11):=3&&var(12):=-10&&var(13):=-124
attr=A,NA
damage=60,0    
animtype=Hard        
guardflag=HA 
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-62
hitsound=s2,3      
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-10
air.type=High
air.velocity=-4,-6
getpower=180*!var(20)   
envshake.time=12
envshake.freq=60
envshake.ampl=3


;===========<Air Light Kick>==========
[Statedef 275]
type=A  
movetype=A  
physics=A  
juggle=5 
anim=275
poweradd=7*!var(20)
sprpriority=1
ctrl=0  

[State 275, snd]
type=playsnd
trigger1=animelem=3&&random<200
value=3,ifelse(random<500,1,5)
channel=0
[State 275, snd]
type=playsnd
trigger1=animelem=3
value=1,4

[State 275, hit]
type=hitdef
trigger1=animelem=3
attr=A,NA         
damage=25,0    
animtype=Light        
guardflag=HA 
hitflag=MAF 
priority=2,Hit   
pausetime=8/((var(20)>0)+1),8/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-38
hitsound=s2,4      
guardsound=s2,0
ground.type=High
ground.hittime=10
ground.slidetime=10
ground.velocity=-4
air.type=High
air.velocity=-2,-4
getpower=75*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=1


;===========<Air Medium Kick>==========
[Statedef 280]
type=A  
movetype=A  
physics=A  
juggle=5 
anim=280
poweradd=14*!var(20)   
sprpriority=1
ctrl=0  

[State 280, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,2,5)
channel=0
[State 280, snd]
type=playsnd
trigger1=animelem=3
value=1,5

[State 280, hit]
type=hitdef
trigger1=animelem=3
trigger1=var(11):=2&&var(12):=-10&&var(13):=-90
attr=A,NA         
damage=40,0    
animtype=Medium       
guardflag=HA 
hitflag=MAF 
priority=3,Hit   
pausetime=10/((var(20)>0)+1),10/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-45
hitsound=s2,5      
guardsound=s2,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity=-3
air.type=High
air.velocity=-2.5,-5
getpower=120*!var(20)
envshake.time=9
envshake.freq=60
envshake.ampl=2


;===========<Air Hard Kick>==========
[Statedef 285]
type=A
movetype=A
physics=A
juggle=5
anim=285
poweradd=60*!var(20)   
sprpriority=1
ctrl=0

[State 285, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,ifelse(random<500,2,5)
channel=0
[State 285, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 285, hit]
type=hitdef
trigger1=animelem=3
attr=A,NA
damage=60,0    
animtype=Hard        
guardflag=HA 
hitflag=MAF 
priority=4,Hit   
pausetime=12/((var(20)>0)+1),12/((var(20)>0)+1)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-51
hitsound=s2,6      
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity=-5
air.type=High
air.velocity=-5,0
getpower=180*!var(20)   
envshake.time=12
envshake.freq=60
envshake.ampl=3


;===========================================================================
;=================================<THROWS>==================================
;===========================================================================
;==========<GROUND THROW CONTROLLER>==========
[Statedef 800]
type=S
movetype=A
physics=S
juggle=0
velset=0,0
ctrl=0
anim=800
sprpriority=-1

[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=ifelse((command="a"||command="b"||command="c"),2,1)
[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)>=1
var(10)=ifelse(random<500,2,1)

[State 800, hit]
type=hitdef
trigger1=animelem=2&&var(10)=1
attr=S,NT         
hitflag=M-
priority=1,Miss    
sparkno=-1
p1facing=ifelse(command="holdfwd",-1,1)
p2facing=1
p1stateno=ifelse(command="holdfwd",803,801)       
p2stateno=ifelse(command="holdfwd",804,802)      
guard.dist=0        
fall=1    
ID=800
[State 800, hit]
type=hitdef
trigger1=animelem=2&&var(10)=2
attr=S,NT         
hitflag=M-
priority=1,Miss    
sparkno=-1
p1facing=ifelse(command="holdfwd",1,-1)
p2facing=1
p1stateno=ifelse(command="holdfwd",801,803)       
p2stateno=ifelse(command="holdfwd",802,804)
animtype=Up
ground.velocity=-3,-7
guard.dist=0        
fall=1
ID=800
numhits=0   

[State 800, misssnd]
type=playsnd
trigger1=animelem=4
value=5000,5
channel=0
[State 800, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 801]
type=S
movetype=A
physics=S
anim=ifelse(var(10)=1,801,805)
ctrl=0
sprpriority=-1
[State 801, grab snd]
type=playsnd
trigger1=!time
value=4,29
channel=0
[State 801, grab snd]
type=playsnd
trigger1=!time
value=0,800
[State 801, bind 1]
type=targetbind
trigger1=1
pos=floor(80*const(size.xscale)),0
[State 801, end]
type=changestate
trigger1=!animtime
value=ifelse(var(10)=1,810,820)
ctrl=0


;---PLAYER TURNS---
[Statedef 803]
type=S
movetype=A
physics=S
anim=ifelse(var(10)=1,803,807)
ctrl=0
sprpriority=-1
[State 803, grab snd]
type=playsnd
trigger1=!time
value=4,29
channel=0
[State 803, grab snd]
type=playsnd
trigger1=!time
value=0,800
[State 803, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=floor(-80*const(size.xscale)),0
[State 803, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=floor(-20*const(size.xscale)),0
[State 803, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=floor(30*const(size.xscale)),0
[State 803, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0
pos=floor(80*const(size.xscale))
[State 803, end]
type=changestate
trigger1=!animtime
value=ifelse(var(10)=1,810,820)
ctrl=0


;---TARGET---
[Statedef 802]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 802, anim]
type=changeanim2
trigger1=!time
value=802
[Statedef 804]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 804, anim]
type=changeanim2
trigger1=!time
value=804


;==========<SEOI NAGE>==========
;---PLAYER---
[Statedef 810]
type=S
movetype=A
physics=S
anim=810
juggle=5
sprpriority=1
ctrl=0

[State 810, throw]
type=targetstate
trigger1=!time
value=811
[State 810, throw]
type=targetfacing
trigger1=!time
value=-1
[State 810, width]
type=width
trigger1=animelemtime(3)>0
edge=0,floor(60*const(size.xscale))

[State 810, throwsnd]
type=playsnd
trigger1=animelem=2
value=3,3
channel=0
[State 810, throwsnd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 810, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=floor(72*const(size.xscale)),floor(-186*const(size.yscale))
[State 810, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=floor(17*const(size.xscale)),floor(-194*const(size.yscale))
[State 810, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=floor(-80*const(size.xscale)),floor(-160*const(size.yscale))

[State 810, hurt]
type=targetlifeadd
trigger1=animelem=4
value=-100
[State 810, hurt]
type=targetpoweradd
trigger1=animelem=4
value=60
[State 810, hurt]
type=poweradd
trigger1=animelem=4
value=200*!var(20)
[State 810, throw]
type=targetstate
trigger1=animelem=4
value=812

[State 810, pos]
type=posadd
trigger1=animelem=5
x=floor(25*const(size.xscale))
[State 810, turn]
type=turn
trigger1=!animtime
[State 810, end]
type=changestate
trigger1=!animtime
value=401
ctrl=1


;---TARGET---
[Statedef 811]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 811, anim]
type=changeanim2
trigger1=!time
value=811
[State 811, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0
[State 811, pos]
type=posadd
trigger1=anim=811&&animelem=8
x=-floor(const(size.head.pos.y)-const(size.mid.pos.y))
persistent=0

[Statedef 812]
type=A
movetype=H
physics=N
velset=6,-3
[State 812, grav]
type=gravity
trigger1=1
[State 812, pos]
type=posadd
trigger1=anim=811&&animelem=8
x=-floor(const(size.head.pos.y)-const(size.mid.pos.y))
persistent=0
[State 812, recover]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)
[State 812, hitground]
type=selfstate
trigger1=vel y>0&&pos y>=0
value=5100


;==========<OTOKO NAGE>==========
;---PLAYER---
[Statedef 820]
type=S
movetype=A
physics=S
anim=820
juggle=5
ctrl=0

[State 820, throw]
type=targetstate
trigger1=!time
value=821
[State 820, throw]
type=targetfacing
trigger1=!time
value=-1
[State 820, width]
type=width
trigger1=1
edge=floor(30*const(size.xscale)),floor(30*const(size.xscale))

[State 820, bind 1]
type=targetbind
trigger1=animelemtime(2)<0
pos=floor(60*const(size.xscale)),0
[State 820, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=floor(61*const(size.xscale)),floor(-146*const(size.yscale))
[State 820, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=floor(97*const(size.xscale)),floor(-186*const(size.yscale))

[State 820, spr]
type=sprpriority
trigger1=1
value=ifelse(animelemtime(7)<0,-1,1)

[State 820, throwsnd]
type=playsnd
trigger1=animelem=8
value=3,0
channel=0
[State 820, hitsnd]
type=playsnd
trigger1=animelem=8
value=2,3
[State 820, sparks]
type=explod
trigger1=animelem=8&&numtarget(800)
anim=7010+(random%8)
ID=7000
sprpriority=5
postype=p2
pos=(target,const(size.ground.front)-10),floor(p2dist y)
removetime=-2
ownpal=1
facing=-1
persistent=0
pausemovetime=100
supermovetime=100

[State 820, shake]
type=envshake
trigger1=animelem=8
time=12
ampl=3

[State 820, hitadd]
type=hitadd
trigger1=animelem=8
value=1
[State 820, hurt]
type=targetlifeadd
trigger1=animelem=8
value=-120
[State 820, hurt]
type=targetpoweradd
trigger1=animelem=8
value=72
[State 820, hurt]
type=poweradd
trigger1=animelem=8
value=240*!var(20)
[State 820, throw]
type=targetstate
trigger1=animelem=8
value=822

[State 820, end]
type=changestate
trigger1=!animtime
value=400
ctrl=1


;---TARGET---
[Statedef 821]
type=A
movetype=H
physics=N
velset=0,0
[State 821, anim]
type=changeanim2
trigger1=!time
value=821
[State 821, vel]
type=velset
trigger1=animelemtime(4)>=0
x=1
y=1
[State 821, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,1

[Statedef 822]
type=A
movetype=H
physics=N
poweradd=40
[State 822, pos]
type=posadd
trigger1=!time
y=-floor(const(size.mid.pos.y))
[State 822, end]
type=selfstate
trigger1=1
value=5020


;==========<OTOKO NAGE>==========
[Statedef 850]
type=A
movetype=A
physics=A
juggle=0
ctrl=0
anim=850
sprpriority=-1
[State 850, hit]
type=hitdef
trigger1=!time
attr=A,NT         
hitflag=A-          
priority=1,Miss    
sparkno=-1          
p1facing=ifelse(command="holdback",1,-1)
p2facing=1
p1stateno=855     
p2stateno=856     
guard.dist=0        
fall=1              
ID=800
[State 850, misssnd]
type=playsnd
trigger1=animelem=4
value=5000,5
channel=0


;---PLAYER---
[Statedef 855]
type=A
movetype=A
physics=N
anim=855
juggle=5
poweradd=80*!var(20)
sprpriority=1
ctrl=0

[State 855, grab snd]
type=playsnd
trigger1=!time
value=4,29
channel=0
[State 855, grab snd]
type=playsnd
trigger1=!time
value=0,800

[State 855, grav]
type=gravity
trigger1=pos y<0&&vel y<0
[State 855, grav]
type=veladd
trigger1=pos y<0&&vel y>=0
y=.25
[State 855, vel]
type=velmul
trigger1=1
x=.95

[State 855, throw]
type=targetstate
trigger1=!time
value=856
[State 855, throw]
type=targetfacing
trigger1=!time
value=-1
[State 855, width]
type=width
trigger1=animelemtime(4)<0
edge=floor(60*const(size.xscale)),0
[State 855, width]
type=width
trigger1=animelemtime(4)>0
edge=0,floor(60*const(size.xscale))

[State 855, throwsnd]
type=playsnd
trigger1=animelem=4
value=3,2
channel=0
[State 855, throwsnd]
type=playsnd
trigger1=animelem=4
value=1,6

[State 801, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=floor(80*const(size.xscale)),0
[State 855, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=floor(72*const(size.xscale)),floor(-186*const(size.yscale))
[State 855, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=floor(17*const(size.xscale)),floor(-194*const(size.yscale))
[State 855, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
pos=floor(-80*const(size.xscale)),floor(-160*const(size.yscale))

[State 855, hurt]
type=targetlifeadd
trigger1=animelem=5
value=-100
[State 855, hurt]
type=targetpoweradd
trigger1=animelem=5
value=60
[State 855, hurt]
type=poweradd
trigger1=animelem=5
value=200*!var(20)
[State 855, throw]
type=targetstate
trigger1=animelem=5
value=857

[State 855, pos]
type=posset
trigger1=animelemtime(5)<16&&pos y>=-5
y=0
[State 855, vel]
type=velset
trigger1=animelemtime(5)<16&&pos y>=-5
y=0
[State 105, sts]
type=statetypeset
trigger1=animelemtime(5)<16&&pos y>=-5
type=S
physics=S
[State 855, snd]
type=playsnd
trigger1=animelemtime(5)<16&&pos y>=-5
value=0,52
persistent=0
[State 855, dust]
type=explod
trigger1=animelemtime(5)<16&&pos y>=-5
anim=7102
ID=7102
sprpriority=-2
postype=p1
vel=0,0
removetime=-2
ownpal=1
scale=.5,.5
persistent=0

[State 855, turn]
type=turn
trigger1=vel y>=0&&pos y>=0&&animelemtime(5)>=16
persistent=0
[State 855, end]
type=changestate
trigger1=vel y>0&&pos y>=0&&animelemtime(5)>=16
value=52
[State 855, end]
type=changestate
trigger1=!vel y&&pos y>=0&&animelemtime(5)>=16
value=0
ctrl=1


;---TARGET---
[Statedef 856]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 856, anim]
type=changeanim2
trigger1=!time
value=856
[State 856, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[Statedef 857]
type=A
movetype=H
physics=N
velset=6,-4
poweradd=40
[State 857, grav]
type=gravity
trigger1=1
[State 857, recover]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)
[State 857, hitground]
type=selfstate
trigger1=vel y>0&&pos y>=0
value=5100