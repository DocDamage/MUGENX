; _____________________________________
;| Shin Gouki by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;================================================================================================
;=======================================<COMMAND FILE>==========================================
;================================================================================================

;===================<BUTTON REMAPPING>===================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================<DEFAULT VALUES>===================
[Defaults]
command.time=15
command.buffer.time=1


;===================<SINGLE BUTTON>===================
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1


;===================<HOLD DIR>===================
[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1


;===================<HOLD BUTTON>===================
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1


;===================<DIR>===================
[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1


;===================<SUPER MOTIONS>===================

[Command]
name="sgs"
command=x,x,F,a,z
time=45

[Command]
name="hcb2k"
command=~F,DF,D,DB,B,a+b
time=30
[Command]
name="hcb2k"
command=~F,DF,D,DB,B,a+c
time=30
[Command]
name="hcb2k"
command=~F,DF,D,DB,B,b+c
time=30

[Command]
name="3dp"
command=~D,D,D,x
time=30
[Command]
name="3dp"
command=~D,D,D,y
time=30
[Command]
name="3dp"
command=~D,D,D,z
time=30
[Command]
name="3dp"
command=~D,D,D,~x
time=30
[Command]
name="3dp"
command=~D,D,D,~y
time=30
[Command]
name="3dp"
command=~D,D,D,~z
time=30

[Command]
name="3dk"
command=~D,D,D,a
time=30
[Command]
name="3dk"
command=~D,D,D,b
time=30
[Command]
name="3dk"
command=~D,D,D,c
time=30
[Command]
name="3dk"
command=~D,D,D,~a
time=30
[Command]
name="3dk"
command=~D,D,D,~b
time=30
[Command]
name="3dk"
command=~D,D,D,~c
time=30

[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,z
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~z
time=30

[Command]
name="2dfp"
command=~D,DF,F,D,DF,x
time=30
[Command]
name="2dfp"
command=~D,DF,F,D,DF,y
time=30
[Command]
name="2dfp"
command=~D,DF,F,D,DF,z
time=30
[Command]
name="2dfp"
command=~D,DF,F,D,DF,~x
time=30
[Command]
name="2dfp"
command=~D,DF,F,D,DF,~y
time=30
[Command]
name="2dfp"
command=~D,DF,F,D,DF,~z
time=30

[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,a
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,b
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,c
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,~a
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,~b
time=30
[Command]
name="2qcfk"
command=~D,DF,F,D,DF,F,~c
time=30

[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,x
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,y
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,z
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~x
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~y
time=30
[Command]
name="2qcbp"
command=~D,DB,B,D,DB,B,~z
time=30

[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,a
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,b
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,c
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,~a
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,~b
time=30
[Command]
name="2qcbk"
command=~D,DB,B,D,DB,B,~c
time=30

[Command]
name="teamsuper"
command=~D,DF,F,D,DF,F,c+z
time=30


;===================<SPECIAL MOTIONS>===================

[Command]
name="hcbx"
command=~F,DF,D,DB,B,x
time=30
[Command]
name="hcby"
command=~F,DF,D,DB,B,y
time=30
[Command]
name="hcbz"
command=~F,DF,D,DB,B,z
time=30
[Command]
name="hcbx"
command=~F,DF,D,DB,B,~x
time=30
[Command]
name="hcby"
command=~F,DF,D,DB,B,~y
time=30
[Command]
name="hcbz"
command=~F,DF,D,DB,B,~z
time=30

[Command]
name="qcfx"
command=~D,DF,F,x
time=15
[Command]
name="qcfy"
command=~D,DF,F,y
time=15
[Command]
name="qcfz"
command=~D,DF,F,z
time=15
[Command]
name="qcfx"
command=~D,DF,F,~x
time=15
[Command]
name="qcfy"
command=~D,DF,F,~y
time=15
[Command]
name="qcfz"
command=~D,DF,F,~z
time=15

[Command]
name="qcbx"
command=~D,DB,B,x
time=15
[Command]
name="qcby"
command=~D,DB,B,y
time=15
[Command]
name="qcbz"
command=~D,DB,B,z
time=15
[Command]
name="qcbx"
command=~D,DB,B,~x
time=15
[Command]
name="qcby"
command=~D,DB,B,~y
time=15
[Command]
name="qcbz"
command=~D,DB,B,~z
time=15

[Command]
name="qcba"
command=~D,DB,B,a
time=15
[Command]
name="qcbb"
command=~D,DB,B,b
time=15
[Command]
name="qcbc"
command=~D,DB,B,c
time=15
[Command]
name="qcba"
command=~D,DB,B,~a
time=15
[Command]
name="qcbb"
command=~D,DB,B,~b
time=15
[Command]
name="qcbc"
command=~D,DB,B,~c
time=15

[Command]
name="dfx"
command=~F,D,DF,x
time=20
[Command]
name="dfy"
command=~F,D,DF,y
time=20
[Command]
name="dfz"
command=~F,D,DF,z
time=20
[Command]
name="dfx"
command=~F,D,DF,~x
time=20
[Command]
name="dfy"
command=~F,D,DF,~y
time=20
[Command]
name="dfz"
command=~F,D,DF,~z
time=20

[Command]
name="dfa"
command=~F,D,DF,a
time=20
[Command]
name="dfb"
command=~F,D,DF,b
time=20
[Command]
name="dfc"
command=~F,D,DF,c
time=20
[Command]
name="dfa"
command=~F,D,DF,~a
time=20
[Command]
name="dfb"
command=~F,D,DF,~b
time=20
[Command]
name="dfc"
command=~F,D,DF,~c
time=20

[Command]
name="df2p"
command=~F,D,DF,x+y
time=25
[Command]
name="df2p"
command=~F,D,DF,x+z
time=25
[Command]
name="df2p"
command=~F,D,DF,y+z
time=25
[Command]
name="db2p"
command=~B,D,DB,x+y
time=25
[Command]
name="db2p"
command=~B,D,DB,x+z
time=25
[Command]
name="db2p"
command=~B,D,DB,y+z
time=25

[Command]
name="df2k"
command=~F,D,DF,a+b
time=25
[Command]
name="df2k"
command=~F,D,DF,a+c
time=25
[Command]
name="df2k"
command=~F,D,DF,b+c
time=25

[Command]
name="db2k"
command=~B,D,DB,a+b
time=25
[Command]
name="db2k"
command=~B,D,DB,a+c
time=25
[Command]
name="db2k"
command=~B,D,DB,b+c
time=25

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20

[Command]
name="2d2p"
command=~D,D,x+y
time=15
[Command]
name="2d2p"
command=~D,D,x+z
time=15
[Command]
name="2d2p"
command=~D,D,y+z
time=15

[Command]
name="2d2k"
command=~D,D,a+b
time=15
[Command]
name="2dk"
command=~D,D,a+c
time=15
[Command]
name="2dk"
command=~D,D,b+c
time=15

[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20


;===================<OTHER>===================

[command]
name="superjump"
command=$D,$U
time=15


;===================<DOUBLE TAP>===================
[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10


;===================<2/3 BUTTON COMBINATION>===================

[Command]
name="recovery"
command=x+y
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=y+z
time=1

[Command]
name="2k"
command=a+b
time=1
[Command]
name="2k"
command=a+c
time=1
[Command]
name="2k"
command=b+c
time=1

[Command]
name="originalcombo"
command=c+z
time=1

[Command]
name="roll"
command=a+x
time=1


;===========================================================================
;===============================<-1 STATES>=================================
;===========================================================================
[Statedef -1]

[State -1, AIhelper]
type=changestate
trigger1=ishelper(9741)
value=9741

[State -1, shungokusatsu]
type=changestate
value=4000
triggerall=var(59)<=0&&roundstate=2&&(command="sgs")&&statetype!=A&&power>=3000&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,255])&&!movecontact
trigger3=stateno=1400&&animelemtime(6)>=0

[State -1, ashurasenkuu]
type=changestate
value=1400
triggerall=var(59)<=0&&roundstate=2&&(command="df2p"||command="db2p"||command="df2k"||command="db2k")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=stateno=195&&animelemtime(6)>=0&&animelemtime(20)<0
trigger4=stateno=1020&&animelemtime(3)>=0&&animelemtime(9)<0
trigger5=stateno=1500&&anim=1500&&animelemtime(3)>=0&&animelemtime(4)<0

[State -1, misogi]
type=changestate
value=4100
triggerall=var(59)<=0&&roundstate=2&&(command="hcb2k")&&statetype!=A&&power>=3000&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=(stateno=1100||stateno=1305||stateno=1505||stateno=3100||stateno=3300)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger4=helper(stateno+5),var(3)

[State -1, kkz]
type=changestate
value=4200
triggerall=var(59)<=0&&roundstate=2&&(command="3dp")&&statetype!=A&&power>=2000&&!var(20)
triggerall=!numhelper(4205)
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=(stateno=1100||stateno=1305||stateno=1505||stateno=3100||stateno=3300)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=4200
trigger4=helper(stateno+5),var(3)

[State -1, tenshoukairekijin]
type=changestate
value=4300
triggerall=var(59)<=0&&roundstate=2&&(command="3dk")&&statetype!=A&&power>=2000&&!var(20)
triggerall=!numhelper(4305)
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=(stateno=1100||stateno=1305||stateno=1505||stateno=3100||stateno=3300)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=4300
trigger4=helper(stateno+5),var(3)

[State -1, messatsugoushoryuu]
type=changestate
value=3100
triggerall=var(59)<=0&&roundstate=2&&(command="2dfp")&&statetype!=A&&power>=(1000*!var(20))
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=(stateno=1100||stateno=1505||stateno=1305||stateno=3300)&&movecontact
trigger4=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4
trigger5=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger5=helper(stateno+5),var(3)
trigger6=movecontact&&var(20)
trigger7=numhelper&&var(20)
trigger7=helper,movecontact

[State -1, messatsugousenpuu]
type=changestate
value=3250
triggerall=var(59)<=0&&roundstate=2&&(command="2qcbk")&&statetype=A&&power>=(1000*!var(20))
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact
trigger3=(stateno=1100||(stateno=[1200,1250])||stateno=3100||stateno=3300||(stateno=[1301,1303]))&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, messatsugourasen]
type=changestate
value=3200
triggerall=var(59)<=0&&roundstate=2&&(command="2qcbk")&&statetype!=A&&power>=(1000*!var(20))
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=(stateno=1100||stateno=1305||stateno=1505||stateno=3100||stateno=3300)&&movecontact
trigger4=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4
trigger5=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger5=helper(stateno+5),var(3)
trigger6=movecontact&&var(20)
trigger7=numhelper&&var(20)
trigger7=helper,movecontact

[State -1, tenmashinzuiwari]
type=changestate
value=3300
triggerall=var(59)<=0&&roundstate=2&&(command="2qcfk")&&statetype=A&&power>=(1000*!var(20))
trigger1=ctrl||(stateno=1300&&vel y>-3)
trigger2=(stateno=[260,285])&&movecontact
trigger3=(stateno=1100||(stateno=[1200,1250])||stateno=3100||(stateno=[3200,3250])||(stateno=[1301,1303]))&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, tenmagouzankuu]
type=changestate
value=3050
triggerall=var(59)<=0&&roundstate=2&&(command="2qcfp")&&statetype=A&&power>=(1000*!var(20))
triggerall=!numhelper(3005)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact
trigger3=(stateno=1100||(stateno=[1200,1250])||stateno=3100||stateno=3200||stateno=3250||stateno=3300||(stateno=[1301,1303]))&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=3050
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, messatsugouhadou]
type=changestate
value=3000
triggerall=var(59)<=0&&roundstate=2&&(command="2qcbp")&&statetype!=A&&power>=(1000*!var(20))
triggerall=!numhelper(3005)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=(stateno=1100||stateno=1505||stateno=1305||stateno=3100||stateno=3300)&&movecontact
trigger4=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=3000
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, shakunetsuhadouken]
type=changestate
value=1020
triggerall=var(59)<=0&&roundstate=2&&(command="hcbx"||command="hcby"||command="hcbz")&&statetype!=A
triggerall=ifelse(!var(20),(!numhelper(1005)&&!numhelper(1025)&&!numhelper(1055)),1)&&!numhelper(3005)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, goushoryuuken]
type=changestate
value=1100
triggerall=var(59)<=0&&roundstate=2&&(command="dfx"||command="dfy"||command="dfz")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4
trigger4=movecontact&&var(20)
trigger5=numhelper&&var(20)
trigger5=helper,movecontact

[State -1, kuuchuutatsumakizankuukyaku]
type=changestate
value=1250
triggerall=var(59)<=0&&roundstate=2&&(command="qcba"||command="qcbb"||command="qcbc")&&statetype=A
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, tatsumakizankuukyaku]
type=changestate
value=1200
triggerall=var(59)<=0&&roundstate=2&&(command="qcba"||command="qcbb"||command="qcbc")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4
trigger4=movecontact&&var(20)&&stateno!=1250
trigger5=numhelper&&var(20)&&stateno!=1250
trigger5=helper,movecontact

[State -1, hyakkishuu]
type=changestate
value=1300
triggerall=var(59)<=0&&roundstate=2&&(command="dfa"||command="dfb"||command="dfc")&&statetype!=A
trigger1=ctrl
trigger2=stateno=1450&&anim=1450&&animelemtime(4)>=0
trigger3=(stateno=[200,255])&&movecontact
trigger4=movecontact&&var(20)
trigger5=numhelper&&var(20)
trigger5=helper,movecontact

[State -1, zankuuhadouken]
type=changestate
value=1050
triggerall=var(59)<=0&&roundstate=2&&(command="qcfx"||command="qcfy"||command="qcfz")&&statetype=A
triggerall=ifelse(!var(20),(!numhelper(1005)&&!numhelper(1025)&&!numhelper(1055)),1)&&!numhelper(3005)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact
;trigger3=stateno=1300&&vel y>-3
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, gouhadouken]
type=changestate
value=1000
triggerall=var(59)<=0&&roundstate=2&&(command="qcfx"||command="qcfy"||command="qcfz")&&statetype!=A
triggerall=ifelse(!var(20),(!numhelper(1005)&&!numhelper(1025)&&!numhelper(1055)),1)&&!numhelper(3005)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, tenmashurettou]
type=changestate
value=1500
triggerall=var(59)<=0&&roundstate=2&&(command="2d2p"||command="2d2k")&&statetype!=A
trigger1=ctrl

[State -1, zenpoutenshin]
type=changestate
value=1450
triggerall=var(59)<=0&&roundstate=2&&(command="qcbx"||command="qcby"||command="qcbz")&&statetype!=A
trigger1=ctrl

[State -1, originalcombo]
type=changestate
value=760
triggerall=var(59)<=0&&roundstate=2&&(command="originalcombo")&&statetype!=C&&power>=3000&&!var(20)
trigger1=ctrl

[State -1, zerocounter]
type=changestate
value=750
triggerall=var(59)<=0&&roundstate=2&&(command="bdx"||command="bdy"||command="bdz"||command="bda"||command="bdb"||command="bdc")
triggerall=p2dist x>0&&power>=1000
trigger1=stateno=[150,153]

[State -1, recoveryroll]
type=changestate
trigger1=stateno=5050&&vel y>-1&&alive
trigger1=var(59)<=0&&command="2k"
value=5220

[State -1, run/dash]
type=changestate
value=ifelse(command="FF",102,105)
trigger1=var(59)<=0&&roundstate=2&&(stateno!=[100,106])&&(command="FF"||command="BB")&&statetype=S
trigger1=ctrl&&stateno!=700

[State -1, roll/dodge]
type=changestate
value=ifelse(command="holdfwd",720,710)
triggerall=var(59)<=0&&roundstate=2&&(command="roll")&&statetype=S
trigger1=ctrl

[State -1, airthrow]
type=changestate
value=850
triggerall=var(59)<=0&&roundstate=2&&statetype=A&&ctrl
trigger1=(command="recovery"||command="2k")&&(command="holdfwd"||command="holdback")&&p2statetype=A&&(p2bodydist x=[0,28])&&(p2dist y=[-15,115])&&p2movetype!=H

[State -1, throw]
type=null;changestate
value=800
trigger1=var(59)<=0&&roundstate=2&&(command="z"||command="y"||command="b"||command="c")&&(command="holdfwd"||command="holdback")
trigger1=statetype=S&&ctrl&&stateno!=100
trigger1=p2statetype!=A&&(p2bodydist x=[0,20])&&(p2dist y=[-100,100])&&p2movetype!=H

[State -1, throw]
type=changestate
value=800
trigger1=var(59)<=0&&roundstate=2&&(command="recovery"||command="2k")&&(command="holdfwd"||command="holdback")
trigger1=ctrl&&statetype=S&&stateno!=100

[State -1, powercharge]
type=changestate
value=740
trigger1=var(59)<=0&&roundstate=2&&command="holdb"&&command="holdy"&&statetype!=A&&power<powermax&&ctrl

[State -1, SLP]
type=changestate
value=200
triggerall=var(59)<=0&&command="x"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=stateno=200&&animelemtime(2)>0
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SMP2]
type=changestate
value=207
triggerall=var(59)<=0&&command="y"&&command="holdfwd"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SMP]
type=changestate
value=205
triggerall=var(59)<=0&&command="y"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=200||stateno=215||stateno=230||stateno=245)&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)<=0&&command="z"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=((stateno=[200,205])||(stateno=[230,235])||(stateno=[215,220])||(stateno=[245,250]))&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SLK]
type=changestate
value=215
triggerall=var(59)<=0&&command="a"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=stateno=200&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SMK2]
type=changestate
value=222
triggerall=var(59)<=0&&command="b"&&command="holdfwd"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=((stateno=[200,205])||stateno=215||(stateno=[230,235]))&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)<=0&&command="b"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=((stateno=[200,205])||stateno=215||(stateno=[230,235]))&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)<=0&&command="c"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=((stateno=[200,205])||(stateno=[230,235])||(stateno=[215,220])||(stateno=[245,250]))&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CLP]
type=changestate
value=230
triggerall=var(59)<=0&&command="x"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=stateno=230&&animelemtime(2)>0
trigger3=stateno=200&&movecontact
trigger4=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CMP]
type=changestate
value=235
triggerall=var(59)<=0&&command="y"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=((stateno=[200,205])||stateno=215||stateno=230||stateno=245)&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)<=0&&command="z"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=((stateno=[200,205])||(stateno=[230,235])||(stateno=[215,220])||(stateno=[245,250]))&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CLK]
type=changestate
value=245
triggerall=var(59)<=0&&command="a"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=200||stateno=230)&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CMK]
type=changestate
value=250
triggerall=var(59)<=0&&command="b"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=((stateno=[200,205])||stateno=215||(stateno=[230,235])||stateno=245)&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)<=0&&command="c"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=((stateno=[200,205])||(stateno=[230,235])||(stateno=[215,220])||(stateno=[245,250]))&&movecontact
trigger3=movecontact&&(stateno=[200,255])&&var(20)

[State -1, ALP]
type=changestate
value=260
triggerall=var(59)<=0&&command="x"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AMP]
type=changestate
value=265
triggerall=var(59)<=0&&command="y"&&statetype=A
trigger1=ctrl
trigger2=(stateno=260||stateno=275)&&movecontact&&var(9)!=2
trigger3=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)<=0&&command="z"&&statetype=A
trigger1=ctrl
trigger2=(stateno=260||(stateno=[275,280]))&&movecontact&&var(9)!=2
trigger3=movecontact&&(stateno=[260,285])&&var(20)

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)<=0&&command="a"&&statetype=A
trigger1=ctrl
trigger2=stateno=260&&movecontact&&var(9)!=2
trigger3=movecontact&&(stateno=[260,285])&&var(20)

[State -1, TKK]
type=changestate
value=282
triggerall=var(59)<=0&&command="holddown"&&command="b"&&statetype=A&&vel x>0
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)<=0&&command="b"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[260,265])&&movecontact&&var(9)!=2
trigger3=stateno=275&&anim=275&&movecontact&&var(9)!=2
trigger4=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)<=0&&command="c"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[260,265])&&movecontact&&var(9)!=2
trigger3=stateno=280&&anim=281&&movecontact&&var(9)!=2
trigger4=movecontact&&(stateno=[260,285])&&var(20)

[State -1, sparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2&&statetype=S
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl||stateno=700||stateno=701
trigger1=var(21):=1
trigger2=(stateno=[150,153])
trigger2=var(21):=-1
attr=SA,AA,AP
stateno=700
slot=0
time=ifelse((stateno=[150,153]),4,8)

[State -1, cparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2&&statetype!=A
triggerall=(statetype=S&&command="down")||(statetype=C&&command="fwd")&&command!="back"&&command!="up"
trigger1=ctrl||stateno=700||stateno=701
trigger1=var(21):=2
trigger2=(stateno=[150,153])
trigger2=var(21):=-2
attr=C,AA,AP
stateno=701
slot=0
time=ifelse((stateno=[150,153]),4,8)

[State -1, aparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2&&statetype=A
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl||stateno=702
trigger1=var(21):=3
trigger2=(stateno=[154,155])
trigger2=var(21):=-3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=ifelse((stateno=[154,155]),4,8)

[State -1, resetparry]
type=hitoverride
trigger1=(statetype=S||statetype=C)&&var(21)!=1&&var(21)!=-1&&var(21)!=2&&var(21)!=-2
trigger2=statetype=A&&var(21)!=3&&var(21)!=-3
trigger3=movetype=A||(movetype=H&&(stateno!=[120,155]))
trigger4=!ctrl
slot=0
time=0

[State -1, taunt]
type=changestate
value=195
triggerall=var(59)<=0&&command="start"&&command!="holddown"&&statetype=S
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact


;===========================================================================
;=================================<A.I.>====================================
;===========================================================================

[State -1, sparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=(ctrl&&random<75)||((stateno=[700,701])&&random<250)
trigger1=var(21):=1
trigger2=(stateno=[150,153])&&random<25
trigger2=var(21):=-1
attr=SA,AA,AP
stateno=700
slot=0
time=ifelse((stateno=[150,153]),4,8)

[State -1, cparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=(ctrl&&random<75)||((stateno=[700,701])&&random<250)
trigger1=var(21):=2
trigger2=(stateno=[150,153])&&random<25
trigger2=var(21):=-2
attr=C,AA,AP
stateno=701
slot=0
time=ifelse((stateno=[150,153]),4,8)

[State -1, aparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype=A
trigger1=(ctrl&&random<75)||(stateno=702&&random<250)
trigger1=var(21):=3
trigger2=(stateno=[154,155])&&random<25
trigger2=var(21):=-3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=ifelse((stateno=[154,155]),4,8)

[State -1, backdash]
type=changestate
value=ifelse(backedgebodydist<50,720,105)
triggerall=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl&&(stateno!=[700,701])&&random<500
trigger1=enemynear,movetype=A&&p2bodydist x<90
persistent=1

[State -1, roll/dodge]
type=changestate
value=ifelse(random<600,720,710)
trigger1=var(59)>=1&&roundstate=2&&statetype=S&&ctrl&&random<500
trigger1=enemynear,movetype=A&&p2bodydist x<80

[State -1, guard]
type=changestate
value=120
trigger1=var(59)>=1&&roundstate=2&&ctrl
trigger1=(stateno!=[120,155])&&(stateno!=[700,702])
trigger1=!(enemynear,hitdefattr=SCA,AT)&&inguarddist

[State -1, zenpoutenshin]
type=changestate
value=1450
trigger1=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=p2bodydist x<60&&enemy,hitdefattr=SC,AT&&random<750

[State -1, ashurasenkuu]
type=changestate
value=1400
triggerall=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=enemynear,movetype=A&&p2bodydist x<90&&random<500
trigger1=var(10):=2
trigger2=enemy,numproj>0&&random<250
trigger2=var(10):=3
trigger3=p2bodydist x<60&&enemy,hitdefattr=SC,AT&&random<750
trigger3=var(10):=2
trigger3=random<50
trigger3=var(10):=ifelse((random<500||backedgedist<100),3,-3)
persistent=1

[State -1, tenmashurettou]
type=changestate
value=1500
trigger1=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=enemynear,movetype=A&&p2bodydist x<90&&random<100
persistent=1

[State -1, run/dash]
type=changestate
value=102
triggerall=var(59)>=1&&statetype=S&&roundstate=2&&ctrl&&(stateno!=[700,701])&&random<200
trigger1=(stateno!=[100,105])&&enemynear,movetype!=A&&p2bodydist x>120
persistent=1

[State -1, jump]
type=changestate
value=40
triggerall=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=ctrl&&p2bodydist x>160&&p2dist y<-100&&random<200
trigger2=enemynear,movetype=A&&p2bodydist x<160&&enemynear,hitdefattr=SC,AT
persistent=1

[State -1, zerocounter]
type=changestate
value=750
trigger1=var(59)>=1&&roundstate=2&&power>=1000&&life<500&&random<75
trigger1=(p2dist x=[0,90])&&stateno=150||stateno=152
persistent=1

[State -1, powercharge]
type=changestate
value=740
trigger1=var(59)>=1&&roundstate=2&&statetype!=A&&power<3000&&!var(20)&&ctrl
trigger1=random<100&&!inguarddist&&p2movetype!=A&&p2dist x>=160
persistent=1

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall=var(59)>=1&&roundstate=2&&stateno=5050
trigger1=vel y>-1&&alive&&canrecover&&random<200

[State -1, recoveryroll]
type=changestate
trigger1=stateno=5050&&vel y>-1&&alive
trigger1=var(59)>=1&&pos y>=-30&&random<250
value=5220

[State -1, taunt]
type=changestate
value=195
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&fvar(11)<=.16
trigger1=p2dist x>160&&(enemynear,vel y>0)&&ctrl&&random<500
trigger1=!(enemynear,ctrl)&&(enemynear,movetype=H)

[State -1, SLP]
type=changestate
value=200
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,53])&&(p2bodydist y=[-50,50])&&p2statetype!=L
trigger1=ctrl&&random<50
trigger2=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, SMP]
type=changestate
value=205
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,58])&&(p2bodydist y=[-50,50])&&(p2statetype=S)
trigger1=ctrl&&random<100
trigger2=(stateno=200||stateno=215||stateno=230||stateno=245)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, SMP2]
type=changestate
value=207
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,70])&&(p2bodydist y=[-50,50])&&(p2statetype=C)
trigger1=ctrl&&random<100
trigger2=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,73])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<200
trigger2=(stateno=205||stateno=220||stateno=235||stateno=250)&&movehit&&random<250
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, SLK]
type=changestate
value=215
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,55])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50
trigger2=(stateno=200||stateno=230)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, SMK2]
type=changestate
value=222
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,75])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<100
trigger2=stateno=215&&movehit&&random<100
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,53])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<100
trigger2=(stateno=205||stateno=215||stateno=235||stateno=245)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,68])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<200
trigger2=(stateno=205||stateno=220||stateno=235||stateno=250)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, CLP]
type=changestate
value=230
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,49])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50
trigger2=(stateno=200||stateno=215)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, CMP]
type=changestate
value=235
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,47])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<100
trigger2=(stateno=205||stateno=220||stateno=230||stateno=245)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,41])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<200
trigger2=(stateno=205||stateno=220||stateno=235||stateno=250)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, CLK]
type=changestate
value=245
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,62])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<50
trigger2=(stateno=200||stateno=215||stateno=230)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, CMK]
type=changestate
value=250
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,68])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<100
trigger2=(stateno=205||stateno=220||stateno=235||stateno=245)&&movehit&&random<200
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,63])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<200
trigger2=(stateno=205||stateno=220||stateno=235||stateno=250)&&movehit&&random<250
trigger3=movehit&&(stateno=[200,255])&&var(20)&&random<250
persistent=1

[State -1, ALP]
type=changestate
value=260
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,45])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=1

[State -1, AMP]
type=changestate
value=265
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,55])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<100
trigger2=(stateno=260||stateno=275)&&movehit&&var(9)!=2&&random<200
persistent=1

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,55])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<200
trigger2=(stateno=260||stateno=280)&&movehit&&var(9)!=2&&random<200
persistent=1

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,37])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
trigger2=stateno=260&&movehit&&var(9)!=2&&random<200
persistent=1

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,65])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<100
trigger2=(stateno=265||stateno=275)&&movehit&&var(9)!=2&&random<200
persistent=1

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,65])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<200
trigger2=(stateno=265||stateno=275)&&movehit&&var(9)!=2&&random<200
persistent=1

[State -1, airthrow]
type=changestate
value=850
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&ctrl
triggerall=p2statetype=A&&(p2bodydist x=[0,28])&&(p2dist y=[-15,115])&&p2movetype!=H
trigger1=random<500
trigger2=(p2stateno=[120,155])&&random<750

[State -1, throw]
type=changestate
value=800
triggerall=var(59)>=1&&roundstate=2&&statetype=S&&stateno!=100&&ctrl
triggerall=p2statetype!=A&&p2statetype!=L&&p2movetype!=H
trigger1=(p2bodydist x=[0,30])&&random<500
trigger2=(p2stateno=[120,155])&&(p2bodydist x=[0,45])&&random<750
persistent=1

[State -1, shakunetsuhadouken]
type=changestate
value=1020
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall=!numhelper(1005)&&!numhelper(1025)&&!numhelper(1055)&&!numhelper(3005)&&!numhelper(3055)
trigger1=ctrl&&p2dist x>180&&random<75
persistent=1

[State -1, goushoryuuken]
type=changestate
value=1100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x>0)&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&p2bodydist x<50&&random<200
trigger2=(stateno=210||stateno=240)&&movehit&&p2bodydist x<30&&random<250
trigger3=ctrl&&p2bodydist x<100&&p2dist y>120&&random<350
trigger4=ctrl&&(prevstateno=1450||prevstateno=1200)&&random<200
trigger5=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4&&random<100
persistent=1

[State -1, kuuchuutatsumakizankuukyaku]
type=changestate
value=1250
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&vel y>-5
trigger1=ctrl&&p2bodydist x<160&&random<25
trigger2=(stateno=260||stateno=285)&&movehit&&random<50
persistent=1

[State -1, tatsumakizankuukyaku]
type=changestate
value=1200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=225||stateno=255)&&movehit&&random<250
trigger3=ctrl&&(prevstateno=1450||prevstateno=1100)&&random<200
trigger4=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4&&random<75
persistent=1

[State -1, hyakkishuu]
type=changestate
value=1300
trigger1=var(59)>=1&&roundstate=2&&(command="dfa"||command="dfb"||command="dfc")&&statetype!=A
trigger1=(ctrl||(stateno=210||stateno=225)&&movehit)&&random<50
trigger1=var(10):=ifelse(p2dist x>=180,3,ifelse(p2dist x>=100,2,1))
persistent=1

[State -1, zankuuhadouken]
type=changestate
value=1050
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&vel y>-1
triggerall=(enemynear,vel y>-1)
triggerall=!numhelper(1005)&&!numhelper(1025)&&!numhelper(1055)&&!numhelper(3005)&&!numhelper(3055)
trigger1=ctrl&&p2dist x>0&&p2dist y>0&&random<250
trigger2=(stateno=260||stateno=285)&&movehit&&random<200
persistent=1

[State -1, gouhadouken]
type=changestate
value=1000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall=!numhelper(1005)&&!numhelper(1025)&&!numhelper(1055)&&!numhelper(3005)&&!numhelper(3055)
trigger1=ctrl&&p2dist x>160&&random<100
trigger2=(stateno=210||stateno=230||stateno=240)&&movehit&&random<200
trigger3=ctrl&&prevstateno=1450&&random<200
persistent=1

[State -1, shungokusatsu]
type=changestate
value=4000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&power>=3000&&!var(20)
triggerall=!(enemynear,ctrl)&&(enemynear,movetype!=A)&&(enemynear,statetype!=L)&&(p2stateno!=[5030,5119])
triggerall=(p2dist x=[0,160])&&(p2stateno!=40)
triggerall=ifelse((enemynear,vel y>0),(enemynear,vel x<0),(enemynear,vel y>=0))
trigger1=ctrl&&(p2bodydist x=[0,90])&&(p2dist y=[-5,5])&&random<150
trigger2=ctrl&&(p2stateno=[120,155])&&p2statetype!=A&&random<250
trigger3=ctrl&&(p2bodydist x=[0,90])&&(p2dist y=[-5,5])&&random<150
trigger4=stateno=1400&&animelemtime(6)>=0&&(p2stateno=[120,155])&&p2statetype!=A&&random<250
persistent=1

[State -1, misogi]
type=changestate
value=4100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=3000&&!var(20)
triggerall=!(enemynear,ctrl)&&(enemynear,movetype!=H)&&(p2stateno!=[120,155])
trigger1=ctrl&&(enemynear,vel x=[-2,2])&&(enemynear,vel y<-5)&&random<200
persistent=1

[State -1, kkz]
type=changestate
value=4200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=2000&&!var(20)&&!numhelper(4205)
triggerall=(p2stateno!=[120,155])&&(p2dist x=[0,120])&&(enemynear,vel y>-1)&&!(enemynear,ctrl)
trigger1=ctrl&&(enemynear,vel x>2)&&p2statetype=A&&random<150
trigger2=stateno=3300&&movehit&&random<250
persistent=1

[State -1, tkj]
type=changestate
value=4300
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=2000&&!var(20)&&!numhelper(4305)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,80])&&(enemynear,vel y>-5)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<100
trigger2=ctrl&&p2dist y<-80&&random<150
trigger3=(stateno=1100||stateno=1305)&&movehit&&random<50
trigger4=stateno=3100&&movehit&&animelemtime(17)>=0&&random<50
persistent=1

[State -1, messatsugoushoryuu]
type=changestate
value=3100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&prevstateno!=3100
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,60])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=210||stateno=240)&&movehit&&random<50
trigger3=(stateno=1100||stateno=1305)&&movehit&&random<150
trigger4=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4&&random<100
trigger5=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger5=helper(stateno+5),var(3)&&random<75
persistent=1

[State -1, messatsugousenpu]
type=changestate
value=3250
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&power>=1000&&prevstateno!=3250
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,40])&&p2dist y<0&&(enemynear,vel y>-1)&&(enemynear,vel x>-1)
trigger1=ctrl&&p2dist y<-50&&random<50
trigger2=(stateno=260||stateno=285)&&movehit&&random<50
trigger3=(stateno=1100||(stateno=[1200,1250])||stateno=1305)&&movehit&&random<150
trigger4=stateno=1100&&movehit&&random<75
trigger5=stateno=3100&&movehit&&random<75
trigger6=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger6=helper(stateno+5),var(3)&&random<75
persistent=1

[State -1, messatsugourasen]
type=changestate
value=3200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&prevstateno!=3200
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,40])&&(enemynear,vel y>-1)&&(enemynear,vel x>-1)
trigger1=ctrl&&p2dist y<-75&&random<50
trigger2=(stateno=225||stateno=255)&&movehit&&random<50
trigger3=(stateno=1100||stateno=1305)&&movehit&&random<100
trigger4=stateno=1321&&numtarget(1320)&&animelemtime(2)>=4&&random<100
trigger5=stateno=3100&&movehit&&animelemtime(17)>=0&&random<150
trigger6=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger6=helper(stateno+5),var(3)&&random<50
persistent=1

[State -1, tenmashinzuiwari]
type=changestate
value=3300
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&power>=1000&&vel y>-1&&prevstateno!=3300
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])
triggerall=(p2dist x=[0,180])&&p2dist y>0&&(enemynear,vel y>-1)
trigger1=(ctrl||(stateno=1300&&vel y>-3))&&(p2dist x=[p2dist y*.8,p2dist y*1.2])&&random<75
trigger2=(stateno=260||stateno=285||stateno=1250||(stateno=[1301,1303]))&&movehit&&random<75
trigger3=stateno=1100&&movehit&&random<75
trigger4=stateno=3100&&movehit&&random<150
trigger5=stateno=3200&&anim=3205&&movehit&&random<100
trigger6=stateno=3250&&anim=3205&&movehit&&random<100
trigger7=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger7=helper(stateno+5),var(3)&&random<150
persistent=1

[State -1, tenmagouzankuu]
type=changestate
value=3050
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&power>=1000&&vel y>-1&&prevstateno!=3050
triggerall=!numhelper(3005)&&!numhelper(3055)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])
triggerall=(p2dist x=[0,180])&&p2dist y>0&&(enemynear,vel y>-1)
trigger1=ctrl&&(p2dist x=[p2dist y*.75,p2dist y*1.25])&&random<75
trigger2=(stateno=260||stateno=282||(stateno=[1301,1303]))&&movehit&&random<100
trigger3=stateno=1100&&movehit&&random<100
trigger4=stateno=3100&&movehit&&random<100
trigger5=stateno=3200&&anim=3205&&movehit&&random<100
trigger6=stateno=3250&&anim=3205&&movehit&&random<100
trigger7=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=3050
trigger7=helper(stateno+5),var(3)&&random<75
persistent=1

[State -1, messatsugouhadou]
type=changestate
value=3000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&prevstateno!=3000
triggerall=!numhelper(3005)&&!numhelper(3055)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2dist x=[0,160])&&p2dist y>-120&&(enemynear,vel y>-1)
trigger1=ctrl&&(p2dist x=[60,120])&&random<50
trigger2=(stateno=210||stateno=240||stateno=1305)&&movehit&&random<75
trigger3=stateno=1100&&movehit&&random<10
trigger4=stateno=3100&&movehit&&animelemtime(17)>=0&&random<100
trigger5=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=3000
trigger5=helper(stateno+5),var(3)&&random<75
persistent=1