; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===============================================================================================
;======================================<CUSTOM STATES>==========================================
;===============================================================================================

;========================<HIT by EX UPPERCUT>=============================
[Statedef 1111150]
type=A
movetype=H
physics=N
velset=0,0
anim=5030
[State 1111150, pos]
type=posadd
trigger1=!time
y=const(size.mid.pos.y)
[State 1111150, anim]
type=changeanim2
trigger1=!time
value=1111150
[State 1111150, vel]
type=hitvelset
trigger1=!time
x=1
y=1
[State 1111150, grav]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 1111150, end]
type=selfstate
trigger1=vel y>0&&pos y>=-5
value=5100


;========================<KICKED by EX DANKUU KYAKU>=============================
[Statedef 1111200]
type=A
movetype=H
physics=N
velset=0,0
anim=5002
[State 1111200, grav]
type=veladd
trigger1=anim!=5030
y=gethitvar(yaccel)
[State 1111200, screen]
type=screenbound
trigger1=vel y>=0
value=1
movecamera=0,1
[State 1111200, vel]
type=hitvelset
trigger1=anim!=5030
x=1
y=1
persistent=0
[State 1111200, anim]
type=changeanim
trigger1=vel y<=5
value=5002
[State 1111200, anim]
type=changeanim
trigger1=vel y>5&&selfanimexist(5035)
trigger2=anim=5035&&!animtime
value=ifelse((anim=5002),5035,5050)
[State 1111200, end]
type=changestate
trigger1=vel y<=5&&(backedgebodydist<=0||frontedgebodydist<=0)
value=1111201
[State 1111200, end]
type=selfstate
trigger1=vel y>0&&pos y>=0
value=5100

[Statedef 1111201]
type=A
movetype=H
physics=N
ctrl=0
[State 1111201, screen]
type=screenbound
trigger1=1
value=1
movecamera=0,1
[State 1111201, pos]
type=posset
trigger1=1
x=-160*facing
[State 1111201, freeze]
type=posfreeze
trigger1=1
value=1
[State 1111201, grav]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 1111201, fx]
type=playsnd
trigger1=!time
value=f7,0
[State 1111201, fx]
type=explod
trigger1=!time
anim=f72
postype=back
pos=0,floor(screenpos y)-50
sprpriority=3
[State 1111201, shake]
type=envshake
trigger1=!time
time=12
fre=90
ampl=6
[State 1111201, end]
type=changestate
trigger1=!time
value=1111202

[Statedef 1111202]
type=A
movetype=H
physics=N
velset=0,0
anim=5030
[State 1111202, screen]
type=screenbound
trigger1=pos x!=[-80,80]
value=1
movecamera=0,1
[State 1111202, grav]
type=playerpush
trigger1=1
value=0
[State 1111202, anim]
type=changeanim
trigger1=anim!=5052&&selfanimexist(5052)
value=5052
[State 1111202, anim]
type=changeanim
trigger1=anim=5030&&!animtime&&selfanimexist(5035)
trigger2=anim=5035&&!animtime
value=ifelse((anim=5030),5035,5050)
[State 1111202, turn]
type=turn
trigger1=!time
[State 1111202, grav]
type=veladd
trigger1=1
y=.35
[State 1111202, vel]
type=velset
trigger1=!time
x=-1
y=-6
persistent=0
[State 1111202, end]
type=selfstate
trigger1=vel y>0&&pos y>=0
value=5100


;========================<DEAD by the SIGN>=============================
[Statedef 1111305]
type=S
physics=S
movetype=H
ctrl=0
velset=0,0
sprpriority=1
[State 1111305, self]
type=selfstate
trigger1=selfanimexist(5130)
value=5130
[State 1111305, anim]
type=changeanim
trigger1=!time&&selfanimexist(5950)
value=5950
[State 1111305, anim]
type=changeanim2
trigger1=!time&&!selfanimexist(5950)
value=1111305

[State 1111305, stop]
type=posset
trigger1=1
y=0
[State 1111305, stop]
type=velset
trigger1=1
y=0
[State 1111305, dust]
type=gamemakeanim
trigger1=anim=1111305&&animelem=7
value=60
pos=0,0
under=sysvar(1)<=14
[State 1111305, snd]
type=playsnd
trigger1=anim=1111305&&animelem=7
value=f7,0

[State 1111305, anim]
type=changeanim
trigger1=anim=5950&&time>=120
trigger1=selfanimexist(5112)
value=5112
[State 1111305, end]
type=selfstate
trigger1=!animtime||time>=120
value=ifelse(alive,5120,5150)