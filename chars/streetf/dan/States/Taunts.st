; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<TAUNT STATES>==========================================
;================================================================================================

;===========<Standing>==========
[Statedef 400]
type=S                      
movetype=I                      
physics=S                      
anim=400
velset=0,0
poweradd=150*!var(20)   
sprpriority=1
ctrl=0

[State 400, snd]
type=playsnd
trigger1=animelem=3
value=4,13
channel=0
[State 400, snd]
type=playsnd
trigger1=animelem=3
value=1,1

[State 400, delay]
type=changeanim
trigger1=!animelemtime(19)&&prevstateno!=820&&command="holdstart"
value=400
elem=17
[State 400, afterthrow]
type=changeanim
trigger1=!animelemtime(10)&&prevstateno=820
value=400
elem=18
[State 400, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Crouching>==========
[Statedef 401]
type=C                      
movetype=I                      
physics=C                      
anim=401
velset=0,0
poweradd=150*!var(20)   
sprpriority=1
ctrl=0

[State 401, snd]
type=playsnd
trigger1=animelem=3
value=4,1
channel=0
[State 401, snd]
type=playsnd
trigger1=animelem=3
value=1,1

[State 401, delay]
type=changeanim
trigger1=!animelemtime(19)&&prevstateno!=810&&command="holdstart"
value=401
elem=17
[State 401, afterthrow]
type=changeanim
trigger1=!animelemtime(10)&&prevstateno=810
value=401
elem=18
[State 401, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Air>==========
[Statedef 402]
type=A                      
movetype=I                      
physics=A                      
anim=402
poweradd=150*!var(20)   
sprpriority=1
ctrl=0

[State 402, snd]
type=playsnd
trigger1=animelem=2
value=4,17
channel=0
[State 402, snd]
type=playsnd
trigger1=animelem=2
value=1,1


;===========<Rolling Forward>==========
[Statedef 403]
type=C                      
movetype=I                      
physics=C                      
anim=403
velset=0,0
poweradd=150*!var(20)   
sprpriority=1
ctrl=0
facep2=1

[State 403, push]
type=playerpush
trigger1=animelemtime(15)<0
value=0
[State 403, turn]
type=turn
trigger1=!animelemtime(16)&&p2dist x<0
[State 403, vel]
type=velset
trigger1=animelemtime(3)>=0&&animelemtime(14)<0
x=5

[State 403, snd]
type=playsnd
trigger1=animelem=3
value=0,40
[State 403, dust]
type=explod
trigger1=animelemtime(3)>=0&&animelemtime(15)<0&&!(time%5)
anim=7103
sprpriority=3
postype=p1
vel=-1,0
ownpal=1

[State 403, snd]
type=playsnd
trigger1=animelem=19
value=4,14
channel=0
[State 403, snd]
type=playsnd
trigger1=animelem=19
value=1,1

[State 403, sts]
type=statetypeset
trigger1=animelemtime(16)>=0
statetype=S
physics=S
[State 403, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Rolling Backward>==========
[Statedef 404]
type=C                      
movetype=I                      
physics=C                      
anim=404
velset=0,0
poweradd=150*!var(20)   
sprpriority=1
ctrl=0
facep2=1

[State 404, push]
type=playerpush
trigger1=animelemtime(15)<0
value=0
[State 404, turn]
type=turn
trigger1=!animelemtime(16)&&p2dist x<0
[State 404, vel]
type=velset
trigger1=animelemtime(3)>=0&&animelemtime(14)<0
x=-5

[State 404, snd]
type=playsnd
trigger1=animelem=3
value=0,40
[State 404, dust]
type=explod
trigger1=animelemtime(3)>=0&&animelemtime(15)<0&&!(time%5)
anim=7103
sprpriority=3
postype=p1
vel=1,0
ownpal=1

[State 404, snd]
type=playsnd
trigger1=animelem=19
value=4,2
channel=0
[State 404, snd]
type=playsnd
trigger1=animelem=19
value=1,1

[State 404, sts]
type=statetypeset
trigger1=animelemtime(16)>=0
statetype=S
physics=S
[State 404, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Chouhatsu Shinwa Standing>==========
[Statedef 410]
type=S                      
movetype=I                      
physics=S                      
anim=400
velset=0,0
poweradd=200*(prevstateno!=410)
sprpriority=1
ctrl=0

[State 410, buttonvar]
type=varset
trigger1=!time
var(34)=ifelse(command="x",1,ifelse(command="y",2,ifelse(command="z",3,ifelse(command="a",4,ifelse(command="b",5,ifelse(command="c",6,ceil(random/167)))))))

[State 410, snd]
type=playsnd
trigger1=animelem=3&&(var(34)=[1,3])
value=3,ifelse(var(34)=1,0,ifelse(var(34)=2,1,2))
channel=0
[State 410, snd]
type=playsnd
trigger1=animelem=3&&(var(34)=[4,6])
value=4,ifelse(var(34)=4,2,ifelse(var(34)=5,1,11))
channel=0
[State 410, snd]
type=playsnd
trigger1=animelem=3
value=1,1

[State 410, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;===========<Chouhatsu Shinwa Crouching>==========
[Statedef 411]
type=C                      
movetype=I                      
physics=C                      
anim=401
velset=0,0
poweradd=200*(prevstateno!=411)
sprpriority=1
ctrl=0

[State 411, buttonvar]
type=varset
trigger1=!time
var(34)=ifelse(command="x",1,ifelse(command="y",2,ifelse(command="z",3,ifelse(command="a",4,ifelse(command="b",5,ifelse(command="c",6,ceil(random/167)))))))

[State 411, snd]
type=playsnd
trigger1=animelem=3&&(var(34)=[1,3])
value=3,ifelse(var(34)=1,0,ifelse(var(34)=2,1,2))
channel=0
[State 411, snd]
type=playsnd
trigger1=animelem=3&&(var(34)=[4,6])
value=4,ifelse(var(34)=4,2,ifelse(var(34)=5,1,11))
channel=0
[State 411, snd]
type=playsnd
trigger1=animelem=3
value=1,1

[State 411, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Chouhatsu Shinwa Air>==========
[Statedef 412]
type=A                      
movetype=I                      
physics=A                      
anim=402
poweradd=200
sprpriority=1
ctrl=0

[State 412, buttonvar]
type=varset
trigger1=!time
var(34)=ifelse(command="x",1,ifelse(command="y",2,ifelse(command="z",3,ifelse(command="a",4,ifelse(command="b",5,ifelse(command="c",6,ceil(random/167)))))))

[State 412, snd]
type=playsnd
trigger1=animelem=2
value=4,ifelse(var(34)<=3,17,36)
channel=0
[State 412, snd]
type=playsnd
trigger1=animelem=2
value=1,1


;===========<Chouhatsu Shinwa Rolling Forward>==========
[Statedef 413]
type=C                      
movetype=I                      
physics=C                      
anim=413
velset=0,0
poweradd=200
sprpriority=1
ctrl=0

[State 413, buttonvar]
type=varset
trigger1=!time
var(34)=ifelse(command="x",1,ifelse(command="y",2,ifelse(command="z",3,ifelse(command="a",4,ifelse(command="b",5,ifelse(command="c",6,ceil(random/167)))))))

[State 413, push]
type=playerpush
trigger1=animelemtime(14)<0
value=0
[State 413, turn]
type=turn
trigger1=!animelemtime(14)&&p2dist x<0
[State 413, vel]
type=velset
trigger1=animelemtime(2)>=0&&animelemtime(13)<0
x=6

[State 413, snd]
type=playsnd
trigger1=animelem=2
value=0,40
[State 413, dust]
type=explod
trigger1=animelemtime(2)>=0&&animelemtime(14)<0&&!(time%4)
anim=7103
sprpriority=3
postype=p1
vel=-1,0
ownpal=1

[State 413, snd]
type=playsnd
trigger1=animelem=16&&(var(34)=[1,3])
value=4,ifelse(var(34)=1,11,ifelse(var(34)=2,13,17))
channel=0
[State 413, snd]
type=playsnd
trigger1=animelem=16&&(var(34)=[4,6])
value=4,ifelse(var(34)=4,14,ifelse(var(34)=5,28,4))
channel=0
[State 413, snd]
type=playsnd
trigger1=animelem=16
value=1,1

[State 413, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Chouhatsu Shinwa Rolling Backward>==========
[Statedef 414]
type=C                      
movetype=I                      
physics=C                      
anim=414
velset=0,0
poweradd=200
sprpriority=1
ctrl=0

[State 414, buttonvar]
type=varset
trigger1=!time
var(34)=ifelse(command="x",1,ifelse(command="y",2,ifelse(command="z",3,ifelse(command="a",4,ifelse(command="b",5,ifelse(command="c",6,ceil(random/167)))))))

[State 414, push]
type=playerpush
trigger1=animelemtime(14)<0
value=0
[State 414, turn]
type=turn
trigger1=!animelemtime(14)&&p2dist x<0
[State 414, vel]
type=velset
trigger1=animelemtime(2)>=0&&animelemtime(13)<0
x=-6

[State 414, snd]
type=playsnd
trigger1=animelem=2
value=0,40
[State 414, dust]
type=explod
trigger1=animelemtime(2)>=0&&animelemtime(14)<0&&!(time%4)
anim=7103
sprpriority=3
postype=p1
vel=-1,0
ownpal=1

[State 414, snd]
type=playsnd
trigger1=animelem=16&&(var(34)=[1,3])
value=4,ifelse(var(34)=1,11,ifelse(var(34)=2,13,17))
channel=0
[State 414, snd]
type=playsnd
trigger1=animelem=16&&(var(34)=[4,6])
value=4,ifelse(var(34)=4,14,ifelse(var(34)=5,28,4))
channel=0
[State 414, snd]
type=playsnd
trigger1=animelem=16
value=1,1

[State 414, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;===========<Chouhatsu Shinwa Special>==========
[Statedef 415]
type=S                      
movetype=I                      
physics=S                      
anim=415
velset=0,0
poweradd=200
sprpriority=1
ctrl=0
[State 415, snd]
type=playsnd
trigger1=animelem=2
value=4,5
channel=0
[State 415, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1