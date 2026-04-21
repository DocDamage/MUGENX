; _________________________________
;| Sakura by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===============================================================================================
;======================================<CUSTOM STATES>==========================================
;===============================================================================================

;========================<KICKED by EX SHUNPUU R.K.>=============================
[Statedef 1111230]
type=A
movetype=H
physics=N
velset=0,0
anim=5012
[State 1111230, grav]
type=veladd
trigger1=anim!=5030
y=gethitvar(yaccel)
[State 1111230, screen]
type=screenbound
trigger1=1
value=1
movecamera=0,1
[State 1111230, push]
type=playerpush
trigger1=1
value=0
[State 1111230, vel]
type=hitvelset
trigger1=anim!=5030
x=1
y=1
persistent=0
[State 1111230, anim]
type=changeanim
trigger1=vel y<=5
value=5012
[State 1111230, anim]
type=changeanim
trigger1=vel y>5&&selfanimexist(5035)
trigger2=anim=5035&&!animtime
value=ifelse((anim=5012),5035,5050)
[State 1111230, end]
type=changestate
trigger1=vel y<=5&&(backedgebodydist<=0||frontedgebodydist<=0)
value=1111231
[State 1111230, end]
type=selfstate
trigger1=vel y>0&&pos y>=0
value=5100

[Statedef 1111231]
type=A
movetype=H
physics=N
ctrl=0
[State 1111231, screen]
type=screenbound
trigger1=1
value=1
movecamera=0,1
[State 1111231, push]
type=playerpush
trigger1=1
value=0
[State 1111231, pos]
type=posadd;posset
trigger1=1
x=ifelse((frontedgebodydist>backedgebodydist),backedgebodydist,frontedgebodydist);-160*facing
[State 1111231, freeze]
type=posfreeze
trigger1=1
value=1
[State 1111231, grav]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 1111231, fx]
type=playsnd
trigger1=!time
value=f7,0
[State 1111231, fx]
type=explod
trigger1=!time
anim=f72
postype=back
pos=0,floor(screenpos y)-50
sprpriority=3
[State 1111231, shake]
type=envshake
trigger1=!time
time=12
fre=90
ampl=6
[State 1111231, end]
type=changestate
trigger1=!time
value=1111232

[Statedef 1111232]
type=A
movetype=H
physics=N
velset=0,0
anim=5030
[State 1111232, screen]
type=screenbound
trigger1=pos x!=[-80,80]
value=1
movecamera=0,1
[State 1111232, push]
type=playerpush
trigger1=1
value=0
[State 1111232, anim]
type=changeanim
trigger1=anim!=5052&&selfanimexist(5052)
value=5052
[State 1111232, anim]
type=changeanim
trigger1=anim=5030&&!animtime&&selfanimexist(5035)
trigger2=anim=5035&&!animtime
value=ifelse((anim=5030),5035,5050)
[State 1111232, turn]
type=turn
trigger1=!time
[State 1111232, grav]
type=veladd
trigger1=1
y=.35
[State 1111232, vel]
type=velset
trigger1=!time
x=-3
y=-6
persistent=0
[State 1111232, end]
type=selfstate
trigger1=vel y>0&&pos y>=0
value=5100