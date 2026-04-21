; ______________________________
;| Ryu by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===============================================================================================
;======================================<CUSTOM STATES>==========================================
;===============================================================================================

;========================<SHOCKED>=============================
[Statedef 7696]
type=U
movetype=H
ctrl=0
[State 7696, vel]
type=velset
trigger1=1
x=0
y=0
[State 7696, anim]
type=changeanim
trigger1=!time&&anim!=7696&&selfanimexist(7696)
value=7696
[State 7696, anim]
type=changeanim
trigger1=!time&&anim!=9010&&!selfanimexist(7696)&&selfanimexist(9010)
value=9010
[State 7696, anim]
type=changeanim
trigger1=!time&&!selfanimexist(7696)&&!selfanimexist(9010)
value=ifelse(statetype!=A,5002,5030)
[State 7696, var];doesn't work
type=varset
trigger1=(prevstateno!=[5000,5999])&&prevstateno!=7696
sysfvar(4)=0
ignorehitpause=1
[State 7696, var]
type=varadd
trigger1=!time
sysfvar(4)=45
ignorehitpause=1
[State 7696, nopalfx]
type=palfx
trigger1=!time&&(anim=7696||anim=9010)
add=0,0,0
time=1
[State 7696, end]
type=changestate
trigger1=alive&&(anim=7696||anim=9010)&&hitover
trigger2=alive&&(anim!=7696&&anim!=9010)&&hitshakeover
value=ifelse(statetype!=A,5300,1115020)
[State 7696, end]
type=selfstate
trigger1=!alive&&(anim!=7696||anim!=9010)&&hitshakeover
value=5030


;========================<HIT by METSU HADOUKEN>=============================
[Statedef 1113045]
type=U
movetype=H
ctrl=0
[State 1113045, var]
type=varset
trigger1=(prevstateno!=[5000,5999])&&prevstateno!=1113045
sysfvar(4)=0
ignorehitpause=1
[State 1113045, var]
type=varadd
trigger1=!time
sysfvar(4)=60
ignorehitpause=1
[State 1113045, end]
type=changestate
trigger1=hitshakeover&&alive
value=ifelse(statetype!=A,5300,1115020)
[State 1113045, end]
type=selfstate
trigger1=hitshakeover&&!alive
value=5030


;========================<DIZZY>=============================
[Statedef 5300]
type=S
movetype=I
physics=S
velset=0,0
ctrl=0
[State 5300, hitfall]
type=hitfallset
trigger1=hitfall
value=0
[State 5300, var]
type=varadd
trigger1=sysfvar(4)>0
sysfvar(4)=-1
[State 5300, var]
type=varadd
triggerall=sysfvar(4)>0
trigger1=command="x"||command="y"||command="z"
trigger2=command="a"||command="b"||command="c"
trigger3=command="up"||command="down"||command="back"||command="fwd"
sysfvar(4)=-1
[State 5300, anim]
type=changeanim
trigger1=!time&&selfanimexist(5300)
value=5300
[State 5300, anim]
type=changeanim2
trigger1=!time&&!selfanimexist(5300)
value=5301
[State 5300, Debug]
type=displaytoclipboard
trigger1=1
text="Time to recover: %f"
params=sysfvar(4)
[State 5300, var]
type=varset
trigger1=sysfvar(4)<=0||time>=180
sysfvar(4)=0
[State 5300, end]
type=selfstate
trigger1=sysfvar(4)<=0||time>=180
value=0
ctrl=1


;========================<KICKED by EX JOUDAN S.G.>=============================
[Statedef 1111300]
type=A
movetype=H
physics=N
velset=0,0
anim=5012
[State 1111300, grav]
type=veladd
trigger1=anim!=5030
y=gethitvar(yaccel)
[State 1111300, screen]
type=screenbound
trigger1=1
value=1
movecamera=0,1
[State 1111300, push]
type=playerpush
trigger1=1
value=0
[State 1111300, vel]
type=hitvelset
trigger1=anim!=5030
x=1
y=1
persistent=0
[State 1111300, anim]
type=changeanim
trigger1=vel y<=5
value=5012
[State 1111300, anim]
type=changeanim
trigger1=vel y>5&&selfanimexist(5035)
trigger2=anim=5035&&!animtime
value=ifelse((anim=5012),5035,5050)
[State 1111300, end]
type=changestate
trigger1=vel y<=5&&(backedgebodydist<=0||frontedgebodydist<=0)
value=1111301
[State 1111300, end]
type=selfstate
trigger1=vel y>0&&pos y>=0
value=5100

[Statedef 1111301]
type=A
movetype=H
physics=N
ctrl=0
[State 1111301, screen]
type=screenbound
trigger1=1
value=1
movecamera=0,1
[State 1111301, push]
type=playerpush
trigger1=1
value=0
[State 1111301, pos]
type=posadd;posset
trigger1=1
x=ifelse((frontedgebodydist>backedgebodydist),backedgebodydist,frontedgebodydist);-160*facing
[State 1111301, freeze]
type=posfreeze
trigger1=1
value=1
[State 1111301, grav]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 1111301, fx]
type=playsnd
trigger1=!time
value=f7,0
[State 1111301, fx]
type=explod
trigger1=!time
anim=f72
postype=back
pos=0,floor(screenpos y)-50
sprpriority=3
[State 1111301, shake]
type=envshake
trigger1=!time
time=12
fre=90
ampl=6
[State 1111301, end]
type=changestate
trigger1=!time
value=1111302

[Statedef 1111302]
type=A
movetype=H
physics=N
velset=0,0
anim=5030
[State 1111302, screen]
type=screenbound
trigger1=pos x!=[-80,80]
value=1
movecamera=0,1
[State 1111302, push]
type=playerpush
trigger1=1
value=0
[State 1111302, anim]
type=changeanim
trigger1=anim!=5052&&selfanimexist(5052)
value=5052
[State 1111302, anim]
type=changeanim
trigger1=anim=5030&&!animtime&&selfanimexist(5035)
trigger2=anim=5035&&!animtime
value=ifelse((anim=5030),5035,5050)
[State 1111302, turn]
type=turn
trigger1=!time
[State 1111302, grav]
type=veladd
trigger1=1
y=.35
[State 1111302, vel]
type=velset
trigger1=!time
x=-3
y=-6
persistent=0
[State 1111302, end]
type=selfstate
trigger1=vel y>0&&pos y>=0
value=5100


;========================<HIT BACK, then dizzy>=============================
[Statedef 1115020]
type=A
movetype=H
physics=N
velset=0,0
[State 1115020, anim]
type=changeanim
trigger1=1
value=5030
[State 1115020, end]
type=changestate
trigger1=hitshakeover
value=1115030

[Statedef 1115030]
type=A
movetype=H
physics=N
ctrl=0
[State 1115030, grav]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 1115030, vel]
type=hitvelset
trigger1=!time
x=1
y=1
[State 1115030, end]
type=changestate
trigger1=hitover
trigger2=vel y>0&&pos y>=10
value=1115050
[State 1115030, end]
type=changestate
trigger1=!animtime
value=1115035

[Statedef 1115035]
type=A
movetype=H
physics=N
[State 1115035, anim]
type=changeanim
trigger1=!time&&selfanimexist(5035)
value=5035
[State 1115035, grav]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 1115035, end]
type=changestate
trigger1=hitover
trigger2=!animtime
trigger3=vel y>0&&pos y>=10
trigger4=!time&&anim!=5035
value=1115050

[Statedef 1115050]
type=A
movetype=H
physics=N
[State 1115050, anim]
type=changeanim
trigger1=anim=5035&&!animtime
trigger2=anim!=5035&&!time
value=5050
[State 1115050, anim]
type=changeanim
trigger1=anim=[5050,5059]
trigger1=vel y>=ifelse(anim=5050,1,-2)
trigger1=selfanimexist(anim+10)
value=anim+10
persistent=0
[State 1115050, grav]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 1115050, end]
type=changestate
trigger1=vel y>0
trigger1=pos y>=ifelse((anim=[5051,5059])||(anim=[5061,5069]),0,25)
value=1115100

[Statedef 1115100]
type=L
movetype=H
physics=N
[State 1115100,1]
type=velset
trigger1=!time&&gethitvar(fall.yvel)=0&&vel x>1
x=1
[State 1115100, shake]
type=fallenvshake
trigger1=!time
[State 1115100, var]
type=varset
trigger1=!time
sysvar(1)=floor(vel y)
[State 1115100, anim]
type=ChangeAnim
trigger1=!time
value=5100
[State 1115100, pos]
type=posset
trigger1=!time
y=0
[State 1115100, vel]
type=velset
trigger1=!time
y=0
[State 1115100, vel]
type=velmul
trigger1=!time
x=0.75
[State 1115100, end]
type=changestate
trigger1=!time
trigger1=gethitvar(fall.yvel)=0
value=1115110
[State 1115100, fx]
type=gamemakeanim
trigger1=time=1
value=60+(sysvar(1)>5)+(sysvar(1)>14)
pos=0,0
under=sysvar(1)<=14
[State 1115100, hurt]
type=hitfalldamage
trigger1=time=3
[State 1115100, snd]
type=playsnd
trigger1=Time=1
value=F7,(sysvar(1)>5)+(sysvar(1)>14)
[State 1115100, freeze]
type=posfreeze
trigger1=1
[State 1115100, end]
type=changestate
trigger1=!animtime
value=1115101

[Statedef 1115101]
type=L
movetype=H
physics=N
[State 1115101, anim]
type=changeanim
trigger1=!time
value=5160
[State 1115101, vel]
type=hitfallvel
trigger1=!time
[State 1115101, pos]
type=posset
trigger1=!time
y=20
[State 1115101, accel]
type=veladd
trigger1=1
y=.4
[State 1115101, end]
type=changestate
trigger1=vel y>0&&pos y>=12
value=1115110

[Statedef 1115110]
type=L
movetype=H
physics=N
[State 1115110, shake]
type=fallenvshake
trigger1=!time

[State 1115110,2]
type=changeanim
trigger1=!time
value=5170
[State 1115110, hurt]
type=hitfalldamage
trigger1=!time
[State 1115110, pos]
type=posset
trigger1=!time
y=0
[State 1115110, var]
type=varset
trigger1=!time
trigger1=gethitvar(fall.yvel)!=0
sysvar(1)=floor(vel y)
[State 1115110, snd]
type=playsnd
trigger1=!time&&!sysvar(0)
value=F7,(sysvar(1)>5)+(sysvar(1)>14)
[State 1115110, fx]
type=gamemakeanim
trigger1=!time&&!sysvar(0)
value=60+(sysvar(1)>5)+(sysvar(1)>14)
pos=0,0
under=sysvar(1)<=14
[State 1115110, vel]
type=velset
trigger1=!time
y=0
[State 1115110, anim]
type=changeanim
persistent=0
triggerall=anim!=[5111,5119]
trigger1=!animtime
trigger2=sysvar(0)
value=5110

[State 1115110, ko]
type=selfstate
triggerall=!alive
trigger1=!animtime
trigger2=sysvar(0)
trigger3=anim=[5110,5119]
value=5150
[State 1115110, var]
type=varset
trigger1=sysvar(0)
trigger1=!time
sysvar(0)=0
[State 1115110, vel]
type=velmul
trigger1=1
x=.85
[State 1115110, getup]
type=changestate
trigger1=alive&&time>=const(data.liedown.time)
value=1115120
persistent=0

[Statedef 1115120]
type=L
movetype=H
physics=N
[State 1115120, anim]
type=changeanim
trigger1=!time
value=5120
[State 1115120, vel]
type=velset
trigger1=!time
x=0
[State 1115120, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
[State 1115120, hitfall]
type=hitfallset
trigger1=!animtime
value=1
[State 1115120, nhb]
type=nothitby
trigger1=!animtime
value=,NT,ST,HT
time=12
[State 1115120, nhb]
type=nothitby
trigger1=!animtime
value2=SCA
time=3
[State 1115120, dizzy]
type=changestate
trigger1=!animtime
value=5300