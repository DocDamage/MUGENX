; _____________________________________
;| Shin Gouki by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;======================================<CUSTOM STATES>===========================================
;================================================================================================

;========================<MISOGI>=============================
;---TARGET STANDING---
[Statedef 1114100]
type=S
physics=S
movetype=H
ctrl=0
velset=gethitvar(xvel),0
sprpriority=1
[State 1114100, anim]
type=changeanim
trigger1=!time&&selfanimexist(5950)
value=5950
[State 1114100, anim]
type=changeanim2
trigger1=!time&&!selfanimexist(5950)
value=1114100

[State 1114100, stop]
type=posset
trigger1=1
y=0
[State 1114100, stop]
type=velset
trigger1=1
y=0
[State 1114100, dust]
type=gamemakeanim
trigger1=anim=1114100&&animelem=7
value=60
pos=0,0
under=sysvar(1)<=14
[State 1114100, snd]
type=playsnd
trigger1=anim=1114100&&animelem=7
value=f7,0

[State 1114100, end]
type=selfstate
trigger1=time>=110
value=ifelse(alive,5120,5150)


;---TARGET MID-AIR---
[Statedef 1114110]
type=A
physics=N
movetype=H
ctrl=0
velset=gethitvar(xvel),gethitvar(yvel)
sprpriority=1
[State 1114110, anim]
type=changeanim2
trigger1=!time
value=1114110

[State 1114110, grav]
type=gravity
trigger1=animelemtime(5)<0
[State 1114110, stop]
type=posset
trigger1=pos y>=0
y=0
[State 1114110, stop]
type=velset
trigger1=pos y>=0
y=0
[State 1114110, sts]
type=statetypeset
trigger1=pos y>=0
type=L
physics=C

[State 1114110, anim]
type=changeanim2
trigger1=pos y>=0
value=1114110
elem=5
persistent=0
[State 1114110, dust]
type=gamemakeanim
trigger1=animelem=5
value=62
pos=0,0
under=sysvar(1)<=14
[State 1114110, snd]
type=playsnd
trigger1=animelem=5
value=f7,2

[State 1114110, end]
type=selfstate
trigger1=animelemtime(7)>=110
value=ifelse(alive,5120,5150)