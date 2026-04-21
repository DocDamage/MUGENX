; _________________________________
;| Sakura by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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
name="teamsuper"
command=~D,DF,F,D,DF,F,c+z
time=30

[Command]
name="qcfhcbp"
command=~D,F,D,B,x
time=30
[Command]
name="qcfhcbp"
command=~D,F,D,B,y
time=30
[Command]
name="qcfhcbp"
command=~D,F,D,B,z
time=30
[Command]
name="qcfhcbp"
command=~D,F,D,B,~x
time=30
[Command]
name="qcfhcbp"
command=~D,F,D,B,~y
time=30
[Command]
name="qcfhcbp"
command=~D,F,D,B,~z
time=30

[Command]
name="2qcf2p"
command=~D,DF,F,D,DF,F,x+y
time=30
[Command]
name="2qcf2p"
command=~D,DF,F,D,DF,F,x+z
time=30
[Command]
name="2qcf2p"
command=~D,DF,F,D,DF,F,y+z
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
name="2dfk"
command=~D,DF,F,D,DF,a
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,b
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,c
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~a
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~b
time=30
[Command]
name="2dfk"
command=~D,DF,F,D,DF,~c
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


;===================<SPECIAL MOTIONS>===================

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
name="df2k"
command=~F,D,DF,a+b
time=20
[Command]
name="df2k"
command=~F,D,DF,a+c
time=20
[Command]
name="df2k"
command=~F,D,DF,b+c
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
name="qcfs"
command=~D,DF,F,s
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
name="qcfs"
command=~D,DF,F,~s
time=15

[Command]
name="qcf2k"
command=~D,DF,F,a+b
time=15
[Command]
name="qcf2k"
command=~D,DF,F,a+c
time=15
[Command]
name="qcf2k"
command=~D,DF,F,b+c
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
name="qcb2p"
command=~D,DB,B,x+y
time=15
[Command]
name="qcb2p"
command=~D,DB,B,x+z
time=15
[Command]
name="qcb2p"
command=~D,DB,B,y+z
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


;===================<OTHER>===================

[command]
name="superjump"
command=$D,$U
time=15

[Command]
name="taunt"
command=~D,D,s
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
name="roll"
command=a+x
time=1

[Command]
name="excelcombo"
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

;[State -1, Tag]
;type=tagin
;trigger1=numpartner=1&&power>=3000&&command="teamsuper"
;trigger1=partner,name="Sakura Kasugano"&&partner,authorname="Phantom.of.the.Server"
;trigger1=ctrl&&statetype!=A
;trigger1=partner,ctrl&&partner,statetype!=A
;stateno=3000
;partnerstateno=3000
;ctrl=0

;[State -1, Tag]
;type=changestate
;value=4900
;trigger1=numpartner=1&&power>=3000&&command="teamsuper"
;trigger1=partner,name="Sakura Kasugano"&&partner,authorname="Phantom.of.the.Server"
;trigger1=ctrl&&statetype!=A

[State -1, shungokusatsu]
type=changestate
value=4000
triggerall=var(59)<=0&&roundstate=2&&command="sgs"&&statetype!=A&&power>=3000&&(var(20)<=60)
triggerall=!numhelper(6000)
trigger1=ctrl
trigger2=(stateno=[200,250])

[State -1, haruissen]
type=changestate
value=4100
triggerall=var(59)<=0&&roundstate=2&&command="qcfhcbp"&&statetype!=A&&power>=2000&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230])||stateno=3100||stateno=3200)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, MVCharuichiban]
type=changestate
value=4200
triggerall=var(59)<=0&&roundstate=2&&command="hcb2k"&&statetype!=A&&power>=2000&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230])||stateno=3100||stateno=3200||stateno=4101)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, nekketsuhadouken]
type=changestate
value=4300
triggerall=var(59)<=0&&roundstate=2&&command="2qcf2p"&&statetype!=A&&power>=3000&&(var(20)<=60)
triggerall=!numhelper(4305)
trigger1=ctrl
trigger2=movecontact&&var(20)
trigger3=numhelper&&var(20)
trigger3=helper,movecontact

[State -1, midarezakura]
type=changestate
value=3100
triggerall=var(59)<=0&&roundstate=2&&command="2dfk"&&statetype!=A&&power>=1000&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230])||stateno=3200||stateno=4101)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, haruichiban]
type=changestate
value=3200
triggerall=var(59)<=0&&roundstate=2&&command="2qcbk"&&statetype!=A&&power>=1000&&(var(20)<=60)
trigger1=ctrl||(stateno=52&&anim=1205)
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230])||stateno=3100||stateno=4101)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, shinkuuhadouken]
type=changestate
value=3000
triggerall=var(59)<=0&&roundstate=2&&command="2qcfp"&&statetype!=A&&power>=1000&&(var(20)<=60)
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(4305)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230])||stateno=3100||stateno=3200||stateno=4101)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6&&(stateno!=[3000,3020])
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, shinkuutengyouhadouken]
type=changestate
value=3020
triggerall=var(59)<=0&&roundstate=2&&command="2qcbp"&&statetype!=A&&power>=1000&&(var(20)<=60)
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(4305)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230])||stateno=3100||stateno=3200||stateno=4101)&&movecontact
trigger4=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6&&(stateno!=[3000,3020])
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, EXshou'ouken]
type=changestate
value=1110
triggerall=var(59)<=0&&roundstate=2&&command="df2p"&&statetype!=A&&power>=500&&(var(20)<=60)
triggerall=!numhelper(1115)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, EXkuuchuushunpuukyaku]
type=changestate
value=1260
triggerall=var(59)<=0&&roundstate=2&&command="qcb2k"&&statetype=A&&power>=500&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, EXshunpuukyaku]
type=changestate
value=1210
triggerall=var(59)<=0&&roundstate=2&&command="qcb2k"&&statetype!=A&&power>=500&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[250,285])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, EXoukakyaku]
type=changestate
value=1410
triggerall=var(59)<=0&&roundstate=2&&command="qcf2k"&&statetype=A&&power>=500&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, EXhadoushou]
type=changestate
value=1010
triggerall=var(59)<=0&&roundstate=2&&command="qcf2p"&&statetype!=A&&power>=500&&(var(20)<=60)
triggerall=!numhelper(1015)&&!numhelper(1035)&&!numhelper(3005)&&!numhelper(3025)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, EXtengyouhadoushou]
type=changestate
value=1030
triggerall=var(59)<=0&&roundstate=2&&command="qcb2p"&&statetype!=A&&power>=500&&(var(20)<=60)
triggerall=!numhelper(1015)&&!numhelper(1035)&&!numhelper(3005)&&!numhelper(3025)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, shou'ouken]
type=changestate
value=1100
triggerall=var(59)<=0&&roundstate=2&&(command="dfx"||command="dfy"||command="dfz")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, sakuraotoshi]
type=changestate
value=1300
triggerall=var(59)<=0&&roundstate=2&&(command="dfa"||command="dfb"||command="dfc")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, kuuchuushunpukyaku]
type=changestate
value=1250
triggerall=var(59)<=0&&roundstate=2&&(command="qcba"||command="qcbb"||command="qcbc")&&statetype=A
trigger1=ctrl
trigger2=(stateno=[250,285])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, shunpukyaku]
type=changestate
value=1200
triggerall=var(59)<=0&&roundstate=2&&(command="qcba"||command="qcbb"||command="qcbc")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, oukakyaku]
type=changestate
value=1400
triggerall=var(59)<=0&&roundstate=2&&(command="qcfa"||command="qcfb"||command="qcfc")&&statetype=A&&vel y<=3
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, hadouken]
type=changestate
value=1000
triggerall=var(59)<=0&&roundstate=2&&(command="qcfx"||command="qcfy"||command="qcfz")&&statetype!=A
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1025),1)&&!numhelper(1015)&&!numhelper(1035)&&!numhelper(3005)&&!numhelper(3025)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, tengyouhadouken]
type=changestate
value=1020
triggerall=var(59)<=0&&roundstate=2&&(command="qcbx"||command="qcby"||command="qcbz")&&statetype!=A
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1025),1)&&!numhelper(1015)&&!numhelper(1035)&&!numhelper(3005)&&!numhelper(3025)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=3&&var(20)
trigger4=helper(stateno+5),var(3)

[State -1, zerocounter]
type=changestate
value=750
triggerall=var(59)<=0&&roundstate=2&&(command="bdx"||command="bdy"||command="bdz"||command="bda"||command="bdb"||command="bdc")&&(var(20)<=60)
triggerall=p2dist x>0&&power>=1000&&statetype!=A
trigger1=stateno=150||stateno=152

[State -1, airthrow]
type=changestate
value=850
triggerall=var(59)<=0&&roundstate=2&&command="2k"&&(command="holdfwd"||command="holdback")&&statetype=A
trigger1=ctrl
trigger2=stateno=1300||stateno=1305

[State -1, throw]
type=changestate
value=800
trigger1=var(59)<=0&&roundstate=2&&(command="recovery"||command="2k")&&(command="holdfwd"||command="holdback")&&statetype=S
trigger1=ctrl&&stateno!=100

[State -1, excelcombo]
type=changestate
value=760
triggerall=var(59)<=0&&roundstate=2&&(command="excelcombo")&&statetype!=C&&power>=1000&&!var(20)
trigger1=ctrl

[State -1, powercharge]
type=changestate
value=740
trigger1=var(59)<=0&&roundstate=2&&command="holdb"&&command="holdy"&&statetype!=A&&power<powermax&&ctrl&&!var(20)

[State -1, roll/dodge]
type=changestate
value=ifelse(command="holdfwd",720,ifelse(command="holdback",725,710))
triggerall=var(59)<=0&&roundstate=2&&(command="roll")&&statetype=S
trigger1=ctrl

[State -1, recoveryroll]
type=changestate
trigger1=stateno=5050&&vel y>-1&&alive
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
triggerall=var(59)<=0&&command="x"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=200||stateno=230)&&animelemtime(3)>=0
trigger3=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SMP]
type=changestate
value=205
triggerall=var(59)<=0&&command="y"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)<=0&&command="z"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SLK]
type=changestate
value=215
triggerall=var(59)<=0&&command="a"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=stateno=200&&movecontact
trigger3=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SMK2]
type=changestate
value=222
triggerall=var(59)<=0&&command="b"&&command="holdfwd"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)<=0&&command="b"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)<=0&&command="c"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CLP]
type=changestate
value=230
triggerall=var(59)<=0&&command="x"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=200||stateno=230)&&animelemtime(3)>=0
trigger3=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CMP]
type=changestate
value=235
triggerall=var(59)<=0&&command="y"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)<=0&&command="z"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CLK]
type=changestate
value=245
triggerall=var(59)<=0&&command="a"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=200||stateno=230)&&movecontact
trigger3=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CMK]
type=changestate
value=250
triggerall=var(59)<=0&&command="b"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)<=0&&command="c"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, ALP]
type=changestate
value=260
triggerall=var(59)<=0&&command="x"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, AMP]
type=changestate
value=265
triggerall=var(59)<=0&&command="y"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)<=0&&command="z"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)<=0&&command="a"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)<=0&&command="b"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)<=0&&command="c"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact&&var(20)

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
value=1470
triggerall=var(59)<=0&&roundstate=2&&command="qcfs"&&statetype=A
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact

[State -1, extaunt]
type=changestate
value=1195
triggerall=var(59)<=0&&command="taunt"&&statetype!=A&&power>=500&&(var(20)<=60)
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact

[State -1, humiliate]
type=null;changestate
value=197
triggerall=var(59)<=0&&command="taunt"&&command!="holddown"&&statetype=S
trigger1=ctrl

[State -1, taunt]
type=changestate
value=195
triggerall=var(59)<=0&&command="start"&&command!="holddown"&&statetype=S
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact


;===========================================================================
;=================================<A.I.>====================================
;===========================================================================

[State -1, grounddefend]
type=changestate
value=ifelse((enemynear,statetype=C),131,130)
trigger1=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=(stateno!=[700,701])
trigger1=!(enemynear,hitdefattr=SCA,AT)&&inguarddist&&random<750
persistent=0

[State -1, airdefend]
type=changestate
value=132
trigger1=var(59)>=1&&statetype=A&&roundstate=2&&ctrl&&stateno!=702
trigger1=!(enemynear,hitdefattr=SCA,AT)&&inguarddist&&random<750
persistent=0

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

[State -1, run]
type=changestate
value=100
trigger1=var(59)>=1&&statetype=S&&roundstate=2&&ctrl&&random<50
trigger1=(stateno!=[100,105])&&enemynear,movetype!=A&&p2bodydist x>120
persistent=0

[State -1, dash]
type=changestate
value=105
trigger1=var(59)>=1&&statetype=S&&roundstate=2&&ctrl&&random<200
trigger1=(stateno!=[100,105])&&enemynear,movetype=A&&backedgedist>120&&p2bodydist x<160
persistent=0

[State -1, roll/dodge]
type=changestate
value=ifelse((backedgebodydist>40&&random<200),725,ifelse(random<600,720,710))
trigger1=var(59)>=1&&roundstate=2&&statetype=S&&ctrl&&random<250
trigger1=enemynear,movetype=A&&p2bodydist x<80
persistent=0

[State -1, jump]
type=changestate
value=40
triggerall=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=ctrl&&p2bodydist x>160&&p2dist y<-100&&random<200
trigger2=enemynear,movetype=A&&p2bodydist x<160&&enemynear,hitdefattr=SC,AT
persistent=0

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
trigger1=var(59)>=1&&pos y=-30&&random<250
value=5220

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall=var(59)>=1&&roundstate=2&&stateno=5050
trigger1=vel y>-1&&alive&&canrecover&&random<250
persistent=0

[State -1, taunt]
type=changestate
value=195
trigger1=var(59)>=1&&roundstate=2&&statetype!=A&&life>=(enemynear,life)
trigger1=p2dist x>160&&(enemynear,vel y>0)&&ctrl&&random<100
trigger1=!(enemynear,ctrl)&&(enemynear,movetype=H)
persistent=0

[State -1, airthrow]
type=changestate
value=850
trigger1=var(59)>=1&&roundstate=2&&statetype=A&&ctrl
trigger1=p2statetype=A&&p2movetype!=H
trigger1=(p2bodydist x=[0,36])&&(p2bodydist y=[-25,25])&&random<500
persistent=0

[State -1, throw]
type=changestate
value=800
triggerall=var(59)>=1&&roundstate=2&&statetype=S&&stateno!=100&&ctrl
triggerall=p2statetype!=A&&p2statetype!=L&&p2movetype!=H
trigger1=(p2bodydist x=[0,21])&&(p2bodydist y=[-25,25])&&random<500
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

[State -1, SMK2]
type=changestate
value=222
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,98])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<ifelse((p2statetype=C),100,25)
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
trigger2=stateno=200&&movecontact&&random<50
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

[State -1, shou'ouken]
type=changestate
value=ifelse((power>=500&&(var(20)<=60)&&random<133),1110,1100)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x>0)&&(p2bodydist y>=-240)&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&p2bodydist x<80&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<50
persistent=0

[State -1, kuuchuutatsumakisenpuukyaku]
type=changestate
value=ifelse((power>=500&&(var(20)<=60)&&random<100),1260,1250)
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&vel y>-5
trigger1=ctrl&&((vel x>=0&&(p2bodydist x=[0,160]))||(vel x<=0&&(p2bodydist x=[-160,0])))&&random<25
trigger2=(stateno=[260,285])&&movehit&&random<50
persistent=0

[State -1, shunpuukyaku]
type=changestate
value=ifelse((power>=500&&(var(20)<=60)&&random<100),1210,1200)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,80])&&(p2bodydist y>=-240)&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<50
persistent=0

[State -1, sakuraotoshi]
type=changestate
value=1300
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,120])&&(p2bodydist y>=-240)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
persistent=0

[State -1, oukakyaku]
type=changestate
value=ifelse((power>=500&&(var(20)<=60)&&random<100),1410,1400)
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&pos y<=-60&&vel y>-5
triggerall=(p2bodydist x=[0,120])&&(p2bodydist y>=0)
trigger1=ctrl&&random<50
trigger2=(stateno=[260,285])&&movehit&&random<25
persistent=0

[State -1, tengyouhadouken]
type=changestate
value=ifelse((power>=500&&(var(20)<=60)&&(p2bodydist x=[0,80])&&random<150),1030,1020)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype=A)&&(enemynear,vel y>-1)
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1025),1)&&!numhelper(1015)&&!numhelper(1035)&&!numhelper(3005)&&!numhelper(3025)
trigger1=ctrl&&(p2bodydist x=[0,120])&&p2dist y<-80&&random<75
persistent=0

[State -1, hadouken]
type=changestate
value=ifelse((power>=500&&(var(20)<=60)&&(p2bodydist x=[0,80])&&random<150),1010,1000)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)&&(enemynear,vel y>-1)
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1025),1)&&!numhelper(1015)&&!numhelper(1035)&&!numhelper(3005)&&!numhelper(3025)
trigger1=ctrl&&p2bodydist x>120&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<50
persistent=0

[State -1, shungokusatsu]
type=changestate
value=4000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&power>=3000&&(var(20)<=60)
triggerall=(enemynear,movetype!=A)&&(enemynear,statetype!=L)
triggerall=(p2dist x=[0,80])&&(p2dist y=[-5,5])&&(p2stateno!=40)
triggerall=ifelse((enemynear,vel y>0),(enemynear,vel x>0),(enemynear,vel y>=0))
trigger1=ctrl&&random<100
trigger2=ctrl&&(p2stateno=[120,155])&&p2statetype!=A&&random<250
persistent=0

[State -1, nekketsuhadouken]
type=changestate
value=3000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=3000&&(var(20)<=60)
triggerall=!numhelper(4305)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2dist x=[0,120])&&p2dist y>-180&&(enemynear,vel y>-2)
trigger1=ctrl&&(p2bodydist x=[1,90])&&random<50
persistent=0

[State -1, haruissen]
type=changestate
value=4100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=2000&&(var(20)<=60)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)&&(p2statetype!=A)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=((stateno=[200,250]))&&movehit&&random<50
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230]))&&movehit&&random<50
trigger4=stateno=3100&&animelemtime(19)>=0&&movehit&&random<50
trigger5=stateno=3200&&animelemtime(25)>=0&&movehit&&random<50
trigger6=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger6=helper(stateno+5),var(3)
persistent=0

[State -1, MSHharuichiban]
type=changestate
value=4200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=2000&&(var(20)<=60)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)&&(p2statetype!=A)
triggerall=(p2bodydist x=[0,70])&&(enemynear,vel y>-5)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<ifelse((p2dist y<=-60),150,50)
trigger2=((stateno=[200,250]))&&movehit&&random<50
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230]))&&movehit&&random<50
trigger4=stateno=3200&&animelemtime(25)>=0&&movehit&&random<50
trigger5=stateno=4101&&animelemtime(52)>=0&&movehit&&random<50
trigger6=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger6=helper(stateno+5),var(3)
persistent=0

[State -1, midarezakura]
type=changestate
value=3100
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&(var(20)<=60)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,60])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=((stateno=[200,250]))&&movehit&&random<50
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230]))&&movehit&&random<50
trigger4=stateno=3200&&animelemtime(25)>=0&&movehit&&random<50
trigger5=stateno=4101&&animelemtime(52)>=0&&movehit&&random<50
trigger6=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger6=helper(stateno+5),var(3)
persistent=0

[State -1, haruichiban]
type=changestate
value=3200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&(var(20)<=60)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,60])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=((stateno=[200,250]))&&movehit&&random<50
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230]))&&movehit&&random<50
trigger4=stateno=3100&&animelemtime(19)>=0&&movehit&&random<50
trigger5=stateno=4101&&animelemtime(52)>=0&&movehit&&random<50
trigger6=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6
trigger6=helper(stateno+5),var(3)
persistent=0

[State -1, shinkuutengyouhadouken]
type=changestate
value=3000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&(var(20)<=60)
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(4305)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2dist x=[0,90])&&(p2dist y=[-260,-80])&&(enemynear,vel y>-2)
trigger1=ctrl&&(p2bodydist x=[15,125])&&random<50
trigger2=((stateno=[200,250]))&&movehit&&random<50
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230]))&&movehit&&random<50
trigger4=stateno=3100&&animelemtime(19)>=0&&movehit&&random<50
trigger5=stateno=3200&&animelemtime(25)>=0&&movehit&&random<50
trigger6=stateno=4101&&animelemtime(52)>=0&&movehit&&random<50
trigger7=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6&&(stateno!=[3000,3020])
trigger7=helper(stateno+5),var(3)
persistent=0

[State -1, shinkuuhadouken]
type=changestate
value=3000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000&&(var(20)<=60)
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(4305)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2dist x=[0,120])&&p2dist y>-180&&(enemynear,vel y>-2)
trigger1=ctrl&&(p2bodydist x=[15,125])&&random<50
trigger2=((stateno=[200,250]))&&movehit&&random<50
trigger3=((stateno=[1100,1110])||(stateno=[1220,1230]))&&movehit&&random<50
trigger4=stateno=3100&&animelemtime(19)>=0&&movehit&&random<50
trigger5=stateno=3200&&animelemtime(25)>=0&&movehit&&random<50
trigger6=stateno=4101&&animelemtime(52)>=0&&movehit&&random<50
trigger7=(stateno=[1000,4999])&&numhelper(stateno+5)&&var(10)<=6&&(stateno!=[3000,3020])
trigger7=helper(stateno+5),var(3)
persistent=0