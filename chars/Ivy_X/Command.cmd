; ______________________________
;| Ryu by Phantom.of.the.Server |
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
name="sgs"
command=x,x,F,a,z
time=45

[Command]
name="qcfhcbp"
command=~D,F,D,B,x
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,y
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,z
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,~x
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,~y
time=40
[Command]
name="qcfhcbp"
command=~D,F,D,B,~z
time=40

[Command]
name="qcfhcbk"
command=~D,F,D,B,a
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,b
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,c
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,~a
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,~b
time=40
[Command]
name="qcfhcbk"
command=~D,F,D,B,~c
time=40

[Command]
name="qcbhcfk"
command=~D,B,D,F,a
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,b
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,c
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,~a
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,~b
time=40
[Command]
name="qcbhcfk"
command=~D,B,D,F,~c
time=40

[Command]
name="2df2k"
command=~D,DF,F,D,DF,a+b
time=30
[Command]
name="2df2k"
command=~D,DF,F,D,DF,a+c
time=30
[Command]
name="2df2k"
command=~D,DF,F,D,DF,b+c
time=30

[Command]
name="hcf2k"
command=~B,DB,D,DF,F,a+b
time=30
[Command]
name="hcf2k"
command=~B,DB,D,DF,F,a+c
time=30
[Command]
name="hcf2k"
command=~B,DB,D,DF,F,b+c
time=30

[Command]
name="hcb2p"
command=~F,DF,D,DB,B,x+y
time=30
[Command]
name="hcb2p"
command=~F,DF,D,DB,B,x+z
time=30
[Command]
name="hcb2p"
command=~F,DF,D,DB,B,y+z
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

[Command]
name="teamsuper"
command=~D,DF,F,D,DF,F,c+z
time=20


;===================<SPECIAL MOTIONS>===================

[Command]
name="hcfx"
command=~B,DB,D,DF,F,x
time=25
[Command]
name="hcfy"
command=~B,DB,D,DF,F,y
time=25
[Command]
name="hcfz"
command=~B,DB,D,DF,F,z
time=25
[Command]
name="hcfx"
command=~B,DB,D,DF,F,~x
time=25
[Command]
name="hcfy"
command=~B,DB,D,DF,F,~y
time=25
[Command]
name="hcfz"
command=~B,DB,D,DF,F,~z
time=25

[Command]
name="hcba"
command=~F,DF,D,DB,B,a
time=30
[Command]
name="hcbb"
command=~F,DF,D,DB,B,b
time=30
[Command]
name="hcbc"
command=~F,DF,D,DB,B,c
time=30
[Command]
name="hcba"
command=~F,DF,D,DB,B,~a
time=30
[Command]
name="hcbb"
command=~F,DF,D,DB,B,~b
time=30
[Command]
name="hcbc"
command=~F,DF,D,DB,B,~c
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
name="db2p"
command=~B,D,DB,x+y
time=20
[Command]
name="db2p"
command=~B,D,DB,x+z
time=20
[Command]
name="db2p"
command=~B,D,DB,y+z
time=20

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
triggerall=var(59)<=0&&var(1)!=1&&roundstate=2&&(command="sgs")&&statetype!=A&&power>=3000&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])
trigger3=stateno=1400&&animelemtime(6)>=0

[State -1, shinshoryuuken]
type=changestate
value=3120
triggerall=var(59)<=0&&var(1)!=2&&roundstate=2&&statetype!=A&&power>=3000&&!var(20)
triggerall=(var(1)=1&&command="2df2k")||(var(1)=3&&command="qcbhcfk")
trigger1=ctrl
trigger2=((stateno=[210,214])||(stateno=240))&&movecontact

[State -1, ashurasenkuu]
type=changestate
value=1400
triggerall=var(59)<=0&&var(1)!=1&&roundstate=2&&(command="df2p"||command="db2p"||command="df2k"||command="db2k")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, metsushoryuukenevil]
type=changestate
value=3160
triggerall=var(59)<=0&&var(1)!=1&&roundstate=2&&command="qcfhcbk"&&statetype!=A&&power>=3000&&!var(20)
trigger1=ctrl

[State -1, metsuhadouken]
type=changestate
value=3040
triggerall=var(59)<=0&&var(1)!=1&&roundstate=2&&statetype!=A&&power>=3000&&!var(20)
triggerall=(var(1)=2&&command="2qcbp")||(var(1)=3&&command="hcb2p")
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
trigger1=ctrl

[State -1, reppujinraishou]
type=changestate
value=3180
triggerall=var(59)<=0&&roundstate=2&&statetype!=A&&power>=2000&&!var(20)
triggerall=var(1)!=2&&command="qcfhcbp"
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310])||stateno=3100||stateno=3140)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=5
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)

[State -1, messatsugoushoryuu]
type=changestate
value=3140
triggerall=var(59)<=0&&var(1)!=1&&roundstate=2&&(command="2dfk")&&statetype!=A&&power>=(1000*!var(20))
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310])||stateno=3100||stateno=3180)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=5
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, nidanshoryuutsuki]
type=changestate
value=3100
triggerall=var(59)<=0&&var(1)!=2&&roundstate=2&&statetype!=A&&power>=(1000*!var(20))
triggerall=(var(1)=1&&command="2dfk")||(var(1)=3&&command="hcf2k")
trigger1=ctrl
trigger2=(stateno=[200,250])&&stateno!=214&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310])||stateno=3140||stateno=3180)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=5
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, shinkuutatsumakisenpuukyakku]
type=changestate
value=3200
triggerall=var(59)<=0&&roundstate=2&&statetype!=A&&power>=(1000*!var(20))
triggerall=command="2qcbk"||(var(1)=3&&command="2qcbs")
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310])||stateno=3100||stateno=3140||stateno=3180)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&var(10)<=5
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, denjinhadouken]
type=changestate
value=3020
triggerall=var(59)<=0&&var(1)!=2&&roundstate=2&&(command="2qcbp")&&statetype!=A&&power>=(1000*!var(20))
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310])||stateno=3140||stateno=3180)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&stateno!=3020&&var(10)<=5
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, shinkuuhadouken]
type=changestate
value=3000
triggerall=var(59)<=0&&roundstate=2&&(command="2qcfp")&&statetype!=A&&power>=(1000*!var(20))
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310])||stateno=3140||stateno=3180)&&movecontact
trigger4=(stateno=[1000,3999])&&numhelper(stateno+5)&&stateno!=3000&&var(10)<=5
trigger4=helper(stateno+5),var(3)
trigger5=movecontact&&var(20)
trigger6=numhelper&&var(20)
trigger6=helper,movecontact

[State -1, EXshoryuken]
type=changestate
value=1110
triggerall=var(59)<=0&&var(1)=1&&roundstate=2&&(command="df2p")&&statetype!=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, EXkuuchuutatsumaki]
type=changestate
value=1260
triggerall=var(59)<=0&&var(1)=1&&roundstate=2&&command="qcb2k"&&statetype=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact

[State -1, EXtatsumaki]
type=changestate
value=1210
triggerall=var(59)<=0&&var(1)=1&&roundstate=2&&command="qcb2k"&&statetype!=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, EXjoudan]
type=changestate
value=1310
triggerall=var(59)<=0&&var(1)=1&&roundstate=2&&command="qcf2k"&&statetype!=A&&power>=500&&!var(20)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, EXhadouken]
type=changestate
value=1010
triggerall=var(59)<=0&&var(1)=1&&roundstate=2&&(command="qcf2p")&&statetype!=A&&power>=500&&!var(20)
triggerall=!numhelper(1005)&&!numhelper(1015)&&!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact

[State -1, shoryuken]
type=changestate
value=1100
triggerall=var(59)<=0&&roundstate=2&&(command="dfx"||command="dfy"||command="dfz")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, kuuchuutatsumaki]
type=changestate
value=1250
triggerall=var(59)<=0&&roundstate=2&&(command="qcba"||command="qcbb"||command="qcbc")&&statetype=A
trigger1=ctrl
trigger2=(stateno=[260,285])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, tatsumaki]
type=changestate
value=1200
triggerall=var(59)<=0&&roundstate=2&&(command="qcba"||command="qcbb"||command="qcbc")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, joudansokutougeri]
type=changestate
value=1300
triggerall=var(59)<=0&&roundstate=2&&(command="qcfa"||command="qcfb"||command="qcfc")&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, shakunetsuhadouken]
type=changestate
value=1020
triggerall=var(59)<=0&&var(1)!=1&&roundstate=2&&(command="hcfx"||command="hcfy"||command="hcfz")&&statetype!=A
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1025),1)&&!numhelper(1015)&&!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

[State -1, hadouken]
type=changestate
value=1000
triggerall=var(59)<=0&&roundstate=2&&(command="qcfx"||command="qcfy"||command="qcfz")&&statetype!=A
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1025),1)&&!numhelper(1015)&&!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
trigger1=ctrl
trigger2=(stateno=[200,250])&&movecontact
trigger3=movecontact&&var(20)
trigger4=numhelper&&var(20)
trigger4=helper,movecontact

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
trigger1=stateno=150||stateno=152

[State -1, run/dash]
type=changestate
value=ifelse(command="FF",102,105)
trigger1=var(59)<=0&&roundstate=2&&(stateno!=[100,106])&&(command="FF"||command="BB")&&statetype=S
trigger1=ctrl

[State -1, roll/dodge]
type=changestate
value=ifelse(command="holdfwd",720,710)
triggerall=var(59)<=0&&roundstate=2&&(command="roll")&&statetype=S
trigger1=ctrl

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
trigger1=var(59)<=0&&roundstate=2&&command="b"&&command="y"&&statetype!=A&&power<powermax&&ctrl

[State -1, seichuunidantsuki]
type=changestate
value=214
triggerall=var(59)<=0&&command="recovery"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,250])&&var(20)

[State -1, SLP]
type=changestate
value=200
triggerall=var(59)<=0&&command="x"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=stateno=200&&animelemtime(2)>0
trigger3=stateno=230&&movecontact
trigger4=movecontact&&(stateno=[200,255])&&var(20)

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
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SHP2]
type=changestate
value=212
triggerall=var(59)<=0&&var(1)!=2&&command="z"&&command="holdfwd"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)<=0&&command="z"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

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
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)<=0&&command="b"&&command!="holdfwd"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)<=0&&command="c"&&command!="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

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
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)<=0&&command="z"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

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
trigger2=movecontact&&(stateno=[200,255])&&var(20)

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)<=0&&command="c"&&command="holddown"&&statetype!=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[200,255])&&var(20)

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
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)<=0&&command="z"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)<=0&&command="a"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, TKK]
type=changestate
value=282
triggerall=var(59)<=0&&var(1)!=1&&vel x>0&&command="holddown"&&command="b"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)<=0&&command="b"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)<=0&&command="c"&&statetype=A
trigger1=ctrl
trigger2=movecontact&&(stateno=[260,285])&&var(20)

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
triggerall=var(59)<=0&&command="start"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact
trigger3=movecontact&&var(20)


;===========================================================================
;=================================<A.I.>====================================
;===========================================================================

[State -1, grounddefend]
type=changestate
value=ifelse((enemynear,statetype=C),131,130)
trigger1=var(59)>=1&&statetype!=A&&roundstate=2&&ctrl&&inguarddist&&random<900
persistent=0

[State -1, airdefend]
type=changestate
value=132
trigger1=var(59)>=1&&statetype=A&&roundstate=2&&ctrl&&inguarddist&&random<900
persistent=0

[State -1, sparry]
type=hitoverride
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=(ctrl&&random<75)||((stateno=[700,701])&&random<333)
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
trigger1=(ctrl&&random<75)||((stateno=[700,701])&&random<333)
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
trigger1=(ctrl&&random<75)||(stateno=702&&random<333)
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
value=102
trigger1=var(59)>=1&&statetype=S&&roundstate=2&&ctrl&&random<200
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
value=ifelse(random<600,720,710)
trigger1=var(59)>=1&&roundstate=2&&statetype=S&&ctrl&&random<500
trigger1=enemynear,movetype=A&&p2bodydist x<80

[State -1, ashurasenkuu]
type=changestate
value=1400
triggerall=var(59)>=1&&var(1)!=1&&statetype!=A&&roundstate=2&&ctrl
trigger1=enemynear,movetype=A&&p2bodydist x<90&&random<500
trigger1=var(10):=2
trigger2=enemy,numproj>0&&random<250
trigger2=var(10):=3
trigger3=p2bodydist x<60&&enemy,hitdefattr=SC,AT&&random<750
trigger3=var(10):=2
trigger3=random<50
trigger3=var(10):=ifelse((random<500||backedgedist<100),3,-3)
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
trigger1=var(59)>=1&&roundstate=2&&power>=1000&&life<500&&random<10
trigger1=(p2dist x=[0,90])&&stateno=150||stateno=152
persistent=0

[State -1, powercharge]
type=changestate
value=740
trigger1=var(59)>=1&&roundstate=2&&statetype!=A&&power<3000&&ctrl
trigger1=random<200&&!inguarddist&&p2movetype!=A&&p2dist x>=160
persistent=0

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall=var(59)>=1&&roundstate=2&&stateno=5050
trigger1=vel y>-1&&alive&&canrecover&&random<200

[State -1, taunt]
type=changestate
value=195
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=p2dist x>160&&(enemynear,vel y>0)&&ctrl&&random<100
trigger1=!(enemynear,ctrl)&&(enemynear,movetype=H)

[State -1, SLP]
type=changestate
value=200
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,46])&&(p2bodydist y=[-50,50])&&p2statetype!=L
trigger1=ctrl&&random<50
persistent=0

[State -1, SMP2]
type=changestate
value=207
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,53])&&(p2bodydist y=[-50,50])&&(p2statetype=S)
trigger1=ctrl&&p2statetype=C&&random<150
persistent=0

[State -1, SMP]
type=changestate
value=205
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,53])&&(p2bodydist y=[-50,50])&&(p2statetype=S)
trigger1=ctrl&&random<75
persistent=0

[State -1, SHP3]
type=changestate
value=214
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,100])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<33
persistent=0

[State -1, SHP2]
type=changestate
value=212
triggerall=var(59)>=1&&var(1)!=2&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,50])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<25
persistent=0

[State -1, SHP]
type=changestate
value=210
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,46])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<100
persistent=0

[State -1, SLK]
type=changestate
value=215
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,59])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50
persistent=0

[State -1, SMK2]
type=changestate
value=222
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,50])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<33
persistent=0

[State -1, SMK]
type=changestate
value=220
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,20])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<75
persistent=0

[State -1, SHK]
type=changestate
value=225
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,59])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=C)
trigger1=ctrl&&random<100
persistent=0

[State -1, CLP]
type=changestate
value=230
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,40])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<50
trigger2=stateno=200&&movecontact&&random<100
persistent=0

[State -1, CMP]
type=changestate
value=235
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,45])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype!=A)
trigger1=ctrl&&random<75
persistent=0

[State -1, CHP]
type=changestate
value=240
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,33])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<100
persistent=0

[State -1, CLK]
type=changestate
value=245
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,54])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<50
persistent=0

[State -1, CMK]
type=changestate
value=250
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,62])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<75
persistent=0

[State -1, CHK]
type=changestate
value=255
triggerall=var(59)>=1&&statetype!=A&&roundstate=2
triggerall=(p2bodydist x=[0,56])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)&&(p2statetype=S)
trigger1=ctrl&&random<100
persistent=0

[State -1, ALP]
type=changestate
value=260
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,84])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, AMP]
type=changestate
value=265
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,78])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<75
persistent=0

[State -1, AHP]
type=changestate
value=270
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,110])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<100
persistent=0

[State -1, ALK]
type=changestate
value=275
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,70])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<50
persistent=0

[State -1, AMK2]
type=changestate
value=282
triggerall=var(59)>=1&&var(1)!=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x>0)&&(p2bodydist y>0)
trigger1=ctrl&&random<50
persistent=0

[State -1, AMK]
type=changestate
value=280
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,130])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<75
persistent=0

[State -1, AHK]
type=changestate
value=285
triggerall=var(59)>=1&&statetype=A&&roundstate=2
triggerall=(p2bodydist x=[0,130])&&(p2bodydist y=[-50,50])&&(p2statetype!=L)
trigger1=ctrl&&random<100
persistent=0

[State -1, throw]
type=changestate
value=800
triggerall=var(59)>=1&&roundstate=2&&statetype=S&&stateno!=100&&ctrl
triggerall=p2statetype!=A&&p2statetype!=A&&p2statetype!=L&&p2movetype!=H
trigger1=(p2bodydist x=[0,21])&&(p2bodydist y=[-25,25])&&random<500
trigger2=(p2stateno!=[120,155])&&(p2bodydist x=[0,36])&&(p2bodydist y=[-25,25])&&random<750
persistent=0

[State -1, shoryuuken]
type=changestate
value=ifelse((var(1)=1&&power>=500&&random<133),1110,1100)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x>0)&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&p2bodydist x<50&&random<200
trigger2=(stateno=[200,250])&&movehit&&p2bodydist x<30&&random<200
trigger3=ctrl&&p2bodydist x<100&&p2dist y<-120&&random<250
trigger4=ctrl&&var(1)!=1&&prevstateno=1200&&random<200
persistent=0

[State -1, joudansokutougeri]
type=changestate
value=ifelse((var(1)=1&&power>=500&&random<100),1310,1300)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(p2bodydist y=[-180,60])
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<200
persistent=0

[State -1, kuuchuutatsumakisenpuukyaku]
type=changestate
value=ifelse((var(1)=1&&power>=500&&random<100),1260,1250)
triggerall=var(59)>=1&&roundstate=2&&statetype=A&&vel y>-5
trigger1=ctrl&&p2bodydist x<160&&random<25
trigger2=(stateno=[260,285])&&movehit&&random<50
persistent=0

[State -1, tatsumakisenpuukyaku]
type=changestate
value=ifelse((var(1)=1&&power>=500&&random<100),1210,1200)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,90])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<150
trigger2=(stateno=[200,250])&&movehit&&random<200
trigger3=ctrl&&var(1)!=1&&prevstateno=1100&&random<150
persistent=0

[State -1, shakunetsuhadouken]
type=changestate
value=1020
triggerall=var(59)>=1&&var(1)!=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1025),1)&&!numhelper(1015)&&!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
trigger1=ctrl&&p2dist x<160&&random<100
trigger2=(stateno=210||stateno=230||stateno=240)&&movehit&&random<125
trigger2=(stateno=[200,214])||(stateno=[230,244])&&movehit&&random<125
persistent=0

[State -1, hadouken]
type=changestate
value=ifelse((var(1)=1&&power>=500&&random<100),1010,1000)
triggerall=var(59)>=1&&roundstate=2&&statetype!=A
triggerall=(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(enemynear,vel y>-1)
triggerall=ifelse(!var(20),!numhelper(1005)&&!numhelper(1025),1)&&!numhelper(1015)&&!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
trigger1=ctrl&&p2dist x>160&&random<150
trigger2=(stateno=[200,250])&&movehit&&random<200
persistent=0

[State -1, shinshoryuken]
type=changestate
value=3120
triggerall=var(59)>=1&&var(1)!=2&&roundstate=2&&statetype!=A&&power>=1000
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,30])&&p2dist y>-80&&(enemynear,vel y>-2)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<200
trigger2=((stateno=[210,214])||(stateno=240))&&movehit&&random<100
persistent=0

[State -1, shungokusatsu]
type=changestate
value=4000
triggerall=var(59)>=1&&var(1)!=1&&roundstate=2&&statetype!=A&power>=3000&&!var(20)
triggerall=!(enemynear,ctrl)&&(enemynear,movetype!=A)&&(enemynear,statetype!=L)&&(p2stateno!=[5030,5119])
triggerall=(p2dist x=[0,160])&&(p2stateno!=40)
triggerall=ifelse((enemynear,vel y>0),(enemynear,vel x<0),(enemynear,vel y>=0))
trigger1=ctrl&&(p2bodydist x=[0,90])&&(p2dist y=[-5,5])&&random<150
trigger2=ctrl&&(p2stateno=[120,155])&&p2statetype!=A&&random<250
trigger3=ctrl&&(p2bodydist x=[0,90])&&(p2dist y=[-5,5])&&random<150
trigger4=stateno=1400&&animelemtime(6)>=0&&random<50
persistent=0

[State -1, nidanshoryutsuki]
type=changestate
value=3180
triggerall=var(59)>=1&&var(1)!=2&&roundstate=2&&statetype!=A&&power>=2000&&!var(20)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,80])&&p2dist y>-120&&(enemynear,vel y>-2)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&movehit&&random<75
trigger3=stateno=3140&&movehit&&anim=3140&&animelemtime(26)>=0&&random<100
trigger4=stateno=3180&&movehit&&anim=3180&&animelemtime(34)>=0&&random<75
trigger5=(stateno=[1000,4999])&&numhelper(stateno+5)
trigger5=helper(stateno+5),var(3)&&random<50
persistent=0

[State -1, metsuhadouken]
type=changestate
value=3040
triggerall=var(59)>=1&&var(1)!=1&&roundstate=2&&statetype!=A&&power>=3000&&!inguarddist
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=p2dist x>=160&&p2dist y>-120&&(enemynear,vel y>-2)
trigger1=ctrl&&random<20
trigger2=ctrl&&p2dist x>=240&&random<30
persistent=0

[State -1, messatsugoushoryuu]
type=changestate
value=3140
triggerall=var(59)>=1&&var(1)!=1&&roundstate=2&&statetype!=A&&power>=1000
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,60])&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=((stateno=[200,250]))&&movehit&&random<75
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310]))&&movehit&&random<75
trigger4=stateno=3100&&movehit&&anim=3101&&animelemtime(6)>=0&&random<100
trigger5=stateno=3180&&movehit&&anim=3180&&animelemtime(34)>=0&&random<75
trigger6=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=3000
trigger6=helper(stateno+5),var(3)&&random<50
persistent=0

[State -1, nidanshoryutsuki]
type=changestate
value=3100
triggerall=var(59)>=1&&var(1)!=2&&roundstate=2&&statetype!=A&&power>=1000
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[0,80])&&p2dist y>-120&&(enemynear,vel y>-2)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=(stateno=[200,250])&&stateno!=214&&movehit&&random<75
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310]))&&movehit&&random<75
trigger4=stateno=3140&&movehit&&anim=3140&&animelemtime(26)>=0&&random<100
trigger5=stateno=3180&&movehit&&anim=3180&&animelemtime(34)>=0&&random<75
trigger6=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=3000
trigger6=helper(stateno+5),var(3)&&random<50
persistent=0

[State -1, shinkuutatsumakisenpuukyaku]
type=changestate
value=3200
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x=[-75,75])&&p2dist y>-180&&(enemynear,vel y>-1)&&(enemynear,vel x>-2)
trigger1=ctrl&&random<50
trigger2=((stateno=[200,250]))&&movehit&&random<75
trigger3=((stateno=[1100,1110])||stateno=1310)&&movehit&&random<75
trigger4=stateno=3100&&movehit&&anim=3101&&animelemtime(6)>=0&&random<100
trigger5=stateno=3140&&movehit&&anim=3140&&animelemtime(26)>=0&&random<100
trigger6=stateno=3180&&movehit&&anim=3180&&animelemtime(34)>=0&&random<75
trigger7=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=3000
trigger7=helper(stateno+5),var(3)&&random<50
persistent=0

[State -1, denjinhadouken]
type=changestate
value=3020
triggerall=var(59)>=1&&var(1)!=2&&roundstate=2&&statetype!=A&&power>=1000&&!inguarddist
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
triggerall=!(enemynear,ctrl)&&p2dist x>=160&&p2dist y>-180&&(enemynear,vel y>-2)
trigger1=ctrl&&random<25
trigger2=ctrl&&p2statetype=L&&random<100
persistent=0

[State -1, shinkuuhadouken]
type=changestate
value=3000
triggerall=var(59)>=1&&roundstate=2&&statetype!=A&&power>=1000
triggerall=!numhelper(3005)&&!numhelper(3025)&&!numhelper(3045)&&!numhelper(3055)
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2dist x=[0,120])&&p2dist y>-240&&(enemynear,vel y>-1)
trigger1=ctrl&&(p2bodydist x=[15,125])&&random<50
trigger2=((stateno=[200,250]))&&movehit&&random<50
trigger3=((stateno=[1100,1110])||(stateno=[1300,1310]))&&movehit&&random<50
trigger4=stateno=3100&&movehit&&anim=3101&&animelemtime(6)>=0&&random<100
trigger5=stateno=3140&&movehit&&anim=3140&&animelemtime(26)>=0&&random<100
trigger6=stateno=3180&&movehit&&anim=3180&&animelemtime(34)>=0&&random<75
trigger7=(stateno=[1000,4999])&&numhelper(stateno+5)&&stateno!=3000
trigger7=helper(stateno+5),var(3)&&random<50
persistent=0