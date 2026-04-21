; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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
name="otokomichi"
command=z,a,~B,x,x
time=45

[Command]
name="qcfhcbp"
command=~D,F,D,B,x
time=45
[Command]
name="qcfhcbp"
command=~D,F,D,B,y
time=45
[Command]
name="qcfhcbp"
command=~D,F,D,B,z
time=45
[Command]
name="qcfhcbp"
command=~D,F,D,B,~x
time=45
[Command]
name="qcfhcbp"
command=~D,F,D,B,~y
time=45
[Command]
name="qcfhcbp"
command=~D,F,D,B,~z
time=45

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
name="2qcfs"
command=~D,DF,F,D,DF,F,s
time=30
[Command]
name="2qcfs"
command=~D,DF,F,D,DF,F,~s
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
name="2qcbs"
command=~D,DB,B,D,DB,B,s
time=30
[Command]
name="2qcbs"
command=~D,DB,B,D,DB,B,~s
time=30


;===================<SPECIAL MOTIONS>===================

[Command]
name="fhcfx"
command=~F,B,D,F,x
time=30
[Command]
name="fhcfy"
command=~F,B,D,F,y
time=30
[Command]
name="fhcfz"
command=~F,B,D,F,z
time=30
[Command]
name="fhcfx"
command=~F,B,D,F,~x
time=30
[Command]
name="fhcfy"
command=~F,B,D,F,~y
time=30
[Command]
name="fhcfz"
command=~F,B,D,F,~z
time=30

[Command]
name="fhcf2p"
command=~F,B,D,F,x+y
time=30
[Command]
name="fhcf2p"
command=~F,B,D,F,x+z
time=30
[Command]
name="fhcf2p"
command=~F,B,D,F,y+z
time=30

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
name="df2p"
command=~F,D,DF,x+y
time=20
[Command]
name="df2p"
command=~F,D,DF,x+z
time=20
[Command]
name="df2p"
command=~F,D,DF,y+z
time=20

[Command]
name="dbx"
command=~B,D,DB,x
time=20
[Command]
name="dby"
command=~B,D,DB,y
time=20
[Command]
name="dbz"
command=~B,D,DB,z
time=20
[Command]
name="dbx"
command=~B,D,DB,~x
time=20
[Command]
name="dby"
command=~B,D,DB,~y
time=20
[Command]
name="dbz"
command=~B,D,DB,~z
time=20

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
name="qcf2p"
command=~D,DF,F,x+y
time=15
[Command]
name="qcf2p"
command=~D,DF,F,x+z
time=15
[Command]
name="qcf2p"
command=~D,DF,F,y+z
time=15

[Command]
name="qcfa"
command=~D,DF,F,a
time=15
[Command]
name="qcfb"
command=~D,DF,F,b
time=15
[Command]
name="qcfc"
command=~D,DF,F,c
time=15
[Command]
name="qcfa"
command=~D,DF,F,~a
time=15
[Command]
name="qcfb"
command=~D,DF,F,~b
time=15
[Command]
name="qcfc"
command=~D,DF,F,~c
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
name="qcb2k"
command=~D,DB,B,a+b
time=15
[Command]
name="qcb2k"
command=~D,DB,B,a+c
time=15
[Command]
name="qcb2k"
command=~D,DB,B,b+c
time=15

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

[Command]
name="qcfs"
command=~D,DF,F,s
time=15
[Command]
name="qcbs"
command=~D,DB,B,s
time=15
[Command]
name="qcfs"
command=~D,DF,F,~s
time=15
[Command]
name="qcbs"
command=~D,DB,B,~s
time=15


;===================<OTHER>===================

[command]
name="superjump"
command=$D,$U
time=15

[command]
name="jump"
command=$U
time=1


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
name="3p"
command=x+y+z
time=1

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
name="roll"
command=a+x
time=1

[Command]
name="originalcombo"
command=c+z
time=1


;===========================================================================
;===============================<-1 STATES>=================================
;===========================================================================
[Statedef -1]

[State -1, AIhelper]
type=changestate
trigger1=ishelper(9741)
value=9741

[State -1, otokomichi]
type=changestate
value=4000
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="otokomichi"&&statetype!=A&&power>=3000&&!var(20)
trigger1=ctrl
trigger2=stateno=[200,250]

[State -1, chouhatsushinwa]
type=changestate
value=4100
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="2qcbs"&&statetype!=A&&power>=3000&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=(stateno=1100||stateno=1110||stateno=1150||stateno=1600||stateno=3200)&&movecontact

[State -1, hishouburaiken]
type=changestate
value=3200
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="2qcbk"&&statetype!=A&&power>=2000&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=(stateno=1100||stateno=1110||stateno=1150||stateno=3100)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)
trigger4=helper(stateno+5),var(3)

[State -1, kouryuurekka]
type=changestate
value=3100
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="2qcfk"&&statetype!=A&&power>=(1000*!var(20))
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=(stateno=1100||stateno=1110||stateno=1150||stateno=3200)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)

[State -1, shinkuugadouken]
type=changestate
value=3000
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="2qcfp"&&statetype!=A&&power>=(1000*!var(20))
triggerall=!numhelper(3005)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=(stateno=1100||stateno=1110||stateno=1150||stateno=3100||stateno=3200)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, chouhatsudensetsu]
type=changestate
value=3300
triggerall=var(59)<=0&&roundstate=2&&command="2qcfs"&&statetype!=A&&power>=(1000*!var(20)*!var(33))
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=(stateno=1100||stateno=1110||stateno=1150||stateno=1600||stateno=3200)&&movecontact

[State -1, EXkouryuuken]
type=changestate
value=1110
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="df2p"&&statetype!=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, EXdankuukyaku2]
type=changestate
value=1220
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="hcb2k"&&statetype!=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, EXkuuchuudankuukyaku]
type=changestate
value=1260
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="qcb2k"&&statetype=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact

[State -1, EXdankuukyaku]
type=changestate
value=1210
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="qcb2k"&&statetype!=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, EXgadouken]
type=changestate
value=1010
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="qcf2p"&&statetype!=A&&power>=500&&!var(20)
triggerall=!numhelper(1015)&&!numhelper(3005)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, EXsaikyouryuubougyo]
type=changestate
value=ifelse(statetype=S,1510,ifelse(statetype=C,1511,1512))
trigger1=var(59)<=0&&!var(33)&&roundstate=2&&command="3p"&&p2dist x>0&&power>=500&&!var(20)
trigger1=stateno=150||stateno=152||stateno=154

[State -1, EXuppercut]
type=changestate
value=1150
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="recovery"&&command="holddown"&&statetype!=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)

[State -1, zuki]
type=changestate
value=1600
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&command="2qcbp"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)

[State -1, gadoushoukouken]
type=changestate
value=1400
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&(command="fhcfx"||command="fhcfy"||command="fhcfz")&&statetype!=A
triggerall=!numhelper(1015)&&!numhelper(3005)
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1405),1)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, kouryuuken]
type=changestate
value=1100
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&(command="dfx"||command="dfy"||command="dfz")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)

[State -1, kuuchuudankuukyaku]
type=changestate
value=1250
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&(command="qcba"||command="qcbb"||command="qcbc")&&statetype=A
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact
trigger3=movecontact&&var(20)

[State -1, dankuukyaku]
type=changestate
value=1200
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&(command="qcba"||command="qcbb"||command="qcbc")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)

[State -1, gadouken]
type=changestate
value=1000
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&(command="qcfx"||command="qcfy"||command="qcfz")&&statetype!=A
triggerall=!numhelper(1015)&&!numhelper(3005)
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1405),1)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, premiumsign]
type=changestate
value=1300
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&(command="qcfa"||command="qcfb"||command="qcfc")&&statetype!=A
triggerall=ifelse(!var(20),!numhelper(1305),1)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)

[State -1, saikyouryuubougyo]
type=changestate
value=ifelse(statetype=S,1500,ifelse(statetype=C,1501,1502))
trigger1=var(59)<=0&&!var(33)&&roundstate=2&&command="recovery"&&p2dist x>0
trigger1=stateno=150||stateno=152||stateno=154

[State -1, zerocounter]
type=changestate
value=750
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&(command="bdx"||command="bdy"||command="bdz"||command="bda"||command="bdb"||command="bdc")
triggerall=p2dist x>0&&power>=1000&&statetype!=A
trigger1=stateno=150||stateno=152

[State -1, airthrow]
type=changestate
value=850
trigger1=var(59)<=0&&!var(33)&&roundstate=2&&command="recovery"&&(command="holdfwd"||command="holdback")&&statetype=A
trigger1=ctrl&&stateno!=100

[State -1, throw]
type=changestate
value=800
trigger1=var(59)<=0&&!var(33)&&roundstate=2&&(command="recovery"||command="2k")&&(command="holdfwd"||command="holdback")&&statetype=S
trigger1=ctrl&&stateno!=100

[State -1, originalcombo]
type=changestate
value=760
triggerall=var(59)<=0&&!var(33)&&roundstate=2&&(command="originalcombo")&&statetype!=C&&power>=3000&&!var(20)
trigger1=ctrl

[State -1, powercharge]
type=changestate
value=740
trigger1=var(59)<=0&&!var(33)&&roundstate=2&&command="holdb"&&command="holdy"&&statetype!=A&&power<3000&&ctrl

[State -1, roll/dodge]
type=changestate
value=ifelse(command="holdfwd",720,ifelse(command="holdback",725,710))
triggerall=var(59)<=0&&roundstate=2&&(command="roll")&&statetype=S
trigger1=ctrl

[State -1, recoveryroll]
type=changestate
triggerall=stateno=5050&&vel y>-1&&alive&&!var(33)
trigger1=var(59)<=0&&command="2k"
value=5220

[State -1, run/dash]
type=changestate
value=ifelse(command="FF",100,105)
trigger1=var(59)<=0&&roundstate=2&&(stateno!=[100,106])&&(command="FF"||command="BB")&&statetype=S
trigger1=ctrl

[State -1, SLP]
type=changestate
value=200
triggerall=var(59)<=0&&!var(33)&&command="x"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SMP]
type=changestate
value=205
triggerall=var(59)<=0&&!var(33)&&command="y"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)<=0&&!var(33)&&command="z"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SLK]
type=changestate
value=215
triggerall=var(59)<=0&&!var(33)&&command="a"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)<=0&&!var(33)&&command="b"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)<=0&&!var(33)&&command="c"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CLP]
type=changestate
value=230
triggerall=var(59)<=0&&!var(33)&&command="x"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CMP]
type=changestate
value=235
triggerall=var(59)<=0&&!var(33)&&command="y"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)<=0&&!var(33)&&command="z"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CLK]
type=changestate
value=245
triggerall=var(59)<=0&&!var(33)&&command="a"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CMK]
type=changestate
value=250
triggerall=var(59)<=0&&!var(33)&&command="b"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)<=0&&!var(33)&&command="c"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, ALP]
type=changestate
value=260
triggerall=var(59)<=0&&!var(33)&&command="x"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, AMP]
type=changestate
value=265
triggerall=var(59)<=0&&!var(33)&&command="y"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)<=0&&!var(33)&&command="z"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)<=0&&!var(33)&&command="a"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)<=0&&!var(33)&&command="b"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)<=0&&!var(33)&&command="c"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, sparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2&&statetype=S
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl||stateno=700||stateno=701
trigger1=var(21):=1
trigger2=(stateno=[130,155])
trigger2=var(21):=-1
attr=SA,AA,AP
stateno=700
slot=0
time=ifelse((stateno=[130,155]),4,8)
ignorehitpause=1

[State -1, cparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2&&statetype!=A
triggerall=(statetype=S&&command="down")||(statetype=C&&command="fwd")&&command!="back"&&command!="up"
trigger1=ctrl||stateno=700||stateno=701
trigger1=var(21):=2
trigger2=(stateno=[130,155])
trigger2=var(21):=-2
attr=C,AA,AP
stateno=701
slot=0
time=ifelse((stateno=[130,155]),4,8)
ignorehitpause=1

[State -1, aparry]
type=hitoverride
triggerall=var(59)<=0&&roundstate=2&&statetype=A
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl||stateno=702
trigger1=var(21):=3
trigger2=(stateno=[130,155])
trigger2=var(21):=-3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=ifelse((stateno=[130,155]),4,8)
ignorehitpause=1

[State -1, resetparry]
type=hitoverride
trigger1=(statetype=S||statetype=C)&&var(21)!=-2&&var(21)!=-1&&var(21)!=1&&var(21)!=2
trigger2=statetype=A&&var(21)!=-3&&var(21)!=3
trigger3=(movetype=H||!ctrl)&&(stateno!=[130,155])
trigger4=movetype=A
slot=0
time=0

[State -1, rollingtaunt]
type=changestate
value=ifelse(command="qcbs",404,403)
triggerall=var(59)<=0&&!var(33)&&(command="qcfs"||command="qcbs")&&roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&var(20)

[State -1, taunt]
type=changestate
value=ifelse(statetype=A,402,ifelse(statetype=C,401,400))
triggerall=var(59)<=0&&!var(33)&&command="start"
trigger1=ctrl
trigger2=(stateno=[200,285])&&movecontact
trigger3=movecontact&&var(20)

[State -1, chouhatsushinwareset]
type=changestate
value=4101
trigger1=var(33)<0&&statetype!=A&&movetype!=H

[State -1, specialtaunt]
type=changestate
value=415
triggerall=var(59)<=0&&var(33)&&command="start"&&roundstate=2&&statetype!=A
trigger1=ctrl
trigger2=stateno=[410,411]
trigger3=(stateno=[413,414])&&animelemtime(16)>=0

[State -1, rollingtaunt]
type=changestate
value=ifelse(command="holdback",414,413)
triggerall=var(59)<=0&&var(33)&&(command="holddown")&&(command="holdfwd"||command="holdback")&&roundstate=2&&statetype!=A
triggerall=(command="x"||command="y"||command="z"||command="a"||command="b"||command="c")
trigger1=ctrl
trigger2=stateno=410
trigger3=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=1&&command="x"
trigger4=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=2&&command="y"
trigger5=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=3&&command="z"
trigger6=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=4&&command="a"
trigger7=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=5&&command="b"
trigger8=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=6&&command="c"

[State -1, taunt]
type=changestate
value=410
triggerall=var(59)<=0&&var(33)&&command!="holddown"&&roundstate=2&&statetype!=A
triggerall=(command="x"||command="y"||command="z"||command="a"||command="b"||command="c")
trigger1=ctrl
trigger2=stateno=411
trigger3=(stateno=[413,414])&&animelemtime(16)>=0
trigger4=stateno=410&&var(34)!=1&&command="x"
trigger5=stateno=410&&var(34)!=2&&command="y"
trigger6=stateno=410&&var(34)!=3&&command="z"
trigger7=stateno=410&&var(34)!=4&&command="a"
trigger8=stateno=410&&var(34)!=5&&command="b"
trigger9=stateno=410&&var(34)!=6&&command="c"

[State -1, taunt]
type=changestate
value=411
triggerall=var(59)<=0&&var(33)&&command="holddown"&&roundstate=2&&statetype!=A
triggerall=(command="x"||command="y"||command="z"||command="a"||command="b"||command="c")
trigger1=ctrl
trigger2=stateno=410
trigger3=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=1&&command="x"
trigger4=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=2&&command="y"
trigger5=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=3&&command="z"
trigger6=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=4&&command="a"
trigger7=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=5&&command="b"
trigger8=((stateno=411)||((stateno=[413,414])&&animelemtime(16)>=0))&&var(34)!=6&&command="c"

[State -1, taunt]
type=changestate
value=412
triggerall=var(59)<=0&&var(33)&&roundstate=2&&statetype=A
triggerall=(command="x"||command="y"||command="z"||command="a"||command="b"||command="c")
trigger1=ctrl

[State -1, jump]
type=changestate
value=40
trigger1=var(59)<=0&&var(33)&&command="jump"&&roundstate=2&&statetype!=A
trigger1=(stateno=[410,414])


;===========================================================================
;=================================<A.I.>====================================
;===========================================================================

[State -1, sparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=(ctrl&&random<75)||((stateno=[700,701])&&random<150)
trigger1=var(21):=1
trigger2=(stateno=[130,155])&&random<25
trigger2=var(21):=-1
attr=SA,AA,AP
stateno=700
slot=0
time=ifelse((stateno=[130,155]),4,8)
ignorehitpause=1

[State -1, cparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=(ctrl&&random<75)||((stateno=[700,701])&&random<150)
trigger1=var(21):=2
trigger2=(stateno=[130,155])&&random<25
trigger2=var(21):=-2
attr=C,AA,AP
stateno=701
slot=0
time=ifelse((stateno=[130,155]),4,8)
ignorehitpause=1

[State -1, aparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype=A
trigger1=(ctrl&&random<75)||(stateno=702&&random<150)
trigger1=var(21):=3
trigger2=(stateno=[130,155])&&random<25
trigger2=var(21):=-3
attr=SA,AA,AP
stateno=702
forceair=1
slot=0
time=ifelse((stateno=[130,155]),4,8)
ignorehitpause=1

[State -1, run]
type=changestate
value=100
trigger1=var(59)>=1&&statetype=S&&roundstate=2&&ctrl&&random<50
trigger1=(stateno!=[100,105])&&enemynear,movetype!=A&&p2bodydist x>120
persistent=0

[State -1, dash]
type=changestate
value=105
trigger1=var(59)>=1&&statetype=S&&roundstate=2&&ctrl&&random<150
trigger1=(stateno!=[100,105])&&enemynear,movetype=A&&backedgedist>120&&p2bodydist x<160
persistent=0

[State -1, roll/dodge]
type=changestate
value=ifelse((backedgebodydist>40&&random<200),725,ifelse(random<600,720,710))
trigger1=var(59)>=1&&roundstate=2&&statetype=S&&ctrl&&random<200
trigger1=enemynear,movetype=A&&p2bodydist x<80
persistent=0

[State -1, jump]
type=changestate
value=40
triggerall=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=ctrl&&p2bodydist x>160&&p2dist y<-100&&random<50
trigger2=enemynear,movetype=A&&p2bodydist x<160&&enemynear,hitdefattr=SC,AT
persistent=0

[State -1, guard]
type=changestate
value=120
trigger1=var(59)>=1&&roundstate=2&&ctrl
trigger1=(stateno!=[120,155])&&(stateno!=[700,702])
trigger1=!(enemynear,hitdefattr=SCA,AT)&&inguarddist

[State -1, zerocounter]
type=changestate
value=750
trigger1=var(59)>=1&&roundstate=2&&power>=1000&&(var(20)<=60)&&life<500&&random<50
trigger1=(p2dist x=[0,90])&&stateno=150||stateno=152
persistent=1
persistent=0

[State -1, powercharge]
type=changestate
value=740
trigger1=var(59)>=1&&roundstate=2&&statetype!=A&&power<3000&&!var(20)&&ctrl
trigger1=random<50&&!inguarddist&&p2movetype!=A&&p2dist x>=160
persistent=0

[State -1, recoveryroll]
type=changestate
trigger1=stateno=5050&&vel y>-1&&alive
trigger1=var(59)>=1&&pos y=-30&&random<200
value=5220

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall=var(59)>=1&&roundstate=2&&stateno=5050
trigger1=vel y>-1&&alive&&canrecover&&random<200
persistent=0

[State -1, airthrow]
type=changestate
value=850
trigger1=var(59)>=1&&roundstate=2&&statetype=A&&ctrl
trigger1=p2statetype=A&&p2movetype!=H
trigger1=(p2bodydist x=[0,36])&&(p2bodydist y=[-25,25])&&random<333
persistent=0

[State -1, throw]
type=changestate
value=800
triggerall=var(59)>=1&&roundstate=2&&statetype=S&&stateno!=100&&ctrl
triggerall=p2statetype!=A&&p2statetype!=L&&p2movetype!=H
trigger1=(p2bodydist x=[0,21])&&(p2bodydist y=[-25,25])&&random<333
trigger2=(p2stateno=[120,155])&&(p2bodydist x=[0,36])&&(p2bodydist y=[-25,25])&&random<750
persistent=0

[State -1, SLP]
type=changestate
value=200
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,47])&&(p2bodydist y=[-50,50])&&p2statetype!=L
trigger1=ctrl&&random<50
persistent=0

[State -1, SMP]
type=changestate
value=205
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,59])&&(p2bodydist y=[-50,50])&&(p2statetype=S)
trigger1=ctrl&&random<50
persistent=0

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,75])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, SLK]
type=changestate
value=215
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,77])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50
persistent=0

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,81])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<50
persistent=0

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,83])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<50
persistent=0

[State -1, CLP]
type=changestate
value=230
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,55])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50
persistent=0

[State -1, CMP]
type=changestate
value=235
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,61])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50
persistent=0

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,50])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, CLK]
type=changestate
value=245
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,63])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<50
persistent=0

[State -1, CMK]
type=changestate
value=250
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,57])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<50
persistent=0

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,92])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<50
persistent=0

[State -1, ALP]
type=changestate
value=260
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,36])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, AMP]
type=changestate
value=265
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,58])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,53])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,69])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,63])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,47])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, taunt]
type=changestate
value=ifelse(statetype=A,402,ifelse(statetype=C,401,400))
triggerall=var(59)>=1&&roundstate=2&&ctrl
triggerall=life>=(enemynear,life)-200&&p2movetype!=A
trigger1=p2bodydist x>=120&&random<50
trigger2=(stateno=[200,250])&&movecontact&&random<50
trigger3=p2statetype=L&&random<100
persistent=0

[State -1, zuki]
type=changestate
value=1600
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)&&(p2bodydist x=[0,80])
trigger1=ctrl&&(enemynear,movetype=A)&&(enemynear,vel x>=0)&&random<100
persistent=0

[State -1, gadouken]
type=changestate
value=ifelse((power>=500&&random<200),1010,1000)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)&&(p2bodydist x=[0,120])
triggerall=(enemynear,vel y>-1)
triggerall=!numhelper(1005)&&!numhelper(1015)&&!numhelper(1405)&&!numhelper(3005)
trigger1=ctrl&&(p2dist x=[80,160])&&random<50
trigger2=(stateno=[200,250])&&movecontact&&random<50
persistent=0

[State -1, kouryuuken]
type=changestate
value=ifelse((power>=500&&random<200),1110,1100)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x>0)&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&p2bodydist x<50&&random<50
trigger2=(stateno=[200,250])&&movecontact&&random<50
trigger3=ctrl&&p2bodydist x<100&&p2dist y>120&&random<50
persistent=0

[State -1, uppercut]
type=changestate
value=1150
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=500
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,85])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<25
trigger2=ctrl&&p2movetype=A&&random<150
persistent=0

[State -1, kuuchuudankuukyaku]
type=changestate
value=ifelse((power>=500&&random<100),1260,1250)
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&vel y>-5
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,160])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[260,285])&&movecontact&&random<50
persistent=0

[State -1, dankuukyaku]
type=changestate
value=ifelse((power>=500&&random<200),1210,1200)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,160])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movecontact&&random<50
persistent=0

[State -1, gadoushoukouken]
type=changestate
value=1400
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)&&(p2bodydist x=[0,120])
triggerall=!numhelper(1005)&&!numhelper(1015)&&!numhelper(1405)&&!numhelper(3005)
trigger1=ctrl&&(p2dist x=[80,160])&&random<50
persistent=0

[State -1, chouhatsushinwa]
type=changestate
value=4100
triggerall=var(59)>=1&&!var(33)&&roundstate=2&&statetype!=A&&power>=3000&&!var(20)
triggerall=p2bodydist x>=120&&p2movetype!=A
triggerall=life>=750&&(enemynear,life<=100)
trigger1=ctrl&&random<50
persistent=0

[State -1, chouhatsudensetsu]
type=changestate
value=3300
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000
triggerall=p2bodydist x>=120&&p2movetype!=A
triggerall=life>=500&&(enemynear,life<=250)
trigger1=ctrl&&random<50
persistent=0

[State -1, otokomichi]
type=changestate
value=4000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=3000&&!var(20)
triggerall=(life<=250||(enemynear,life<=500))
triggerall=!(enemynear,ctrl)&&(enemynear,movetype=I)&&(p2dist x=[0,160])
trigger1=ctrl&&(p2bodydist x=[0,90])&&(p2dist y=[-5,5])&&random<100
trigger2=ctrl&&(p2stateno=[120,155])&&p2statetype!=A&&random<750
persistent=0

[State -1, hishouburaiken]
type=changestate
value=3200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=2000&&!var(20)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,60])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movecontact&&random<50
trigger3=(stateno=3100)&&movecontact&&random<50
persistent=0

[State -1, kouryurekka]
type=changestate
value=3100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,60])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movecontact&&random<50
trigger3=(stateno=1100||stateno=1110||stateno=1150||stateno=3200)&&movecontact&&random<50
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)
trigger4=helper(stateno+5),var(3)&&random<50
persistent=0

[State -1, shinkuugadouken]
type=changestate
value=3000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,120])&&(enemynear,vel y>-1)
triggerall=!numhelper(3005)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movecontact&&random<50
trigger3=(stateno=1100||stateno=1110||stateno=1150||stateno=3200)&&movecontact&&random<50
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&stateno!=3000
trigger4=helper(stateno+5),var(3)&&random<50
persistent=0