;===========================================================================
;-| Super Motions |--------------------------------------------------------
[Command]
name = "HeFei1"
command = ~D,DF,F,D,DF,F,x
time = 40

[Command]
name = "HeFei2"
command = ~D,DF,F,D,DF,F,y
time = 40

[Command]
name = "HuaLanH"
command = ~D,DB,B,D,DF,F,a+b
time = 40

[Command]
name = "HuaLan1"
command = ~D,DB,B,D,DF,F,a
time = 40

[Command]
name = "HuaLan2"
command = ~D,DB,B,D,DF,F,b
time = 40

;-| Special Motions |------------------------------------------------------
[Command]
name = "WaiXiu1"
command = ~D,DF,F,a
time = 20

[Command]
name = "WaiXiu2"
command = ~D,DF,F,b
time = 20

[Command]
name = "YueDu1"
command = ~D,DB,B,x
time = 20

[Command]
name = "YueDu2"
command = ~D,DB,B,y
time = 20

[Command]
name = "XingDu1"
command = ~B,D,DB,a
time = 20

[Command]
name = "XingDu2"
command = ~B,D,DB,b
time = 20

[Command]
name = "YanFei1"
command = ~F,D,DF,x
time = 20

[Command]
name = "YanFei2"
command = ~F,D,DF,y
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"  ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"  ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "dodge"
command = a+x
time = 1

[Command]
name = "dodge"
command = z
time = 1

[Command]
name = "knock"
command = b+y
time = 1

[Command]
name = "knock"
command = c
time = 1

[Command]
name = "Helper"
command = x+b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "Cm"
command = x+y+z
time = 1

[Command]
name = "Am"
command = a+b+c
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"  ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1


[Statedef -1]
;---------------------------------------------------------------------------
;º×·É-ÖØ
[State -1]
type = ChangeState
value = 3210
triggerall = command = "HeFei2"
triggerall = statetype != A
triggerall=Var(2)=(0,1021)
trigger1 = ctrl || (movecontact && (hitdefattr = SC,NA,SA))

;º×·É-ÖØ
[State -1]
type = ChangeState
value = 3210
triggerall = command = "HeFei2"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = power >= 1000

;º×·É-Çá
[State -1]
type = ChangeState
value = 3200
triggerall = command = "HeFei1"
triggerall = statetype != A
triggerall=Var(2)=(0,1021)
trigger1 = ctrl || (movecontact && (hitdefattr = SC,NA,SA))

;º×·É-Çá
[State -1]
type = ChangeState
value = 3200
triggerall = command = "HeFei1"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = power >= 1000

;»¨á°-³¬
[State -1]
type = ChangeState
value = 3100
triggerall = command = "HuaLanH"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = power = 3000

;»¨á°-ÖØ
[State -1]
type = ChangeState
value = 3050
triggerall = command = "HuaLan2"
triggerall = statetype != A
triggerall=Var(2)=(0,1021)
trigger1 = ctrl || (movecontact && (hitdefattr = SC,NA,SA))

;»¨á°-ÖØ
[State -1]
type = ChangeState
value = 3050
triggerall = command = "HuaLan2"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = power >= 1000

;»¨á°-Çá
[State -1]
type = ChangeState
value = 3000
triggerall = command = "HuaLan1"
triggerall = statetype != A
triggerall=Var(2)=(0,1021)
trigger1 = ctrl || (movecontact && (hitdefattr = SC,NA,SA))

;»¨á°-Çá
[State -1]
type = ChangeState
value = 3000
triggerall = command = "HuaLan1"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = power >= 1000

;ÍâÐä-ÖØ-3
[State -1]
type = ChangeState
value = 1370
triggerall = command = "WaiXiu2"
triggerall = statetype != A
triggerall = (PrevStateNo = 1360)||(PrevStateNo = 1310)
trigger1 = ctrl = 1

;ÍâÐä-Çá-3
[State -1]
type = ChangeState
value = 1320
triggerall = command = "WaiXiu1"
triggerall = statetype != A
triggerall = (PrevStateNo = 1310)||(PrevStateNo = 1360)
trigger1 = ctrl = 1

;ÍâÐä-ÖØ
[State -1]
type = ChangeState
value = 1350
triggerall = command = "WaiXiu2"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 1122)||(StateNo = 1132)) && MoveContact && Time>=16
trigger2 = Var(2) > 0
trigger3 = ((StateNo = 1200)||(StateNo = 1210)) && MoveContact && Time>=16
trigger3 = Var(2) > 0
trigger4 = ((StateNo = 1201)||(StateNo = 1211)) && MoveContact && Time>=12
trigger4 = Var(2) > 0
trigger5 = (StateNo = 1150) && MoveContact && Time>=6
trigger5 = Var(2) > 0

;ÍâÐä-Çá
[State -1]
type = ChangeState
value = 1300
triggerall = command = "WaiXiu1"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 1122)||(StateNo = 1132)) && MoveContact && Time>=16
trigger2 = Var(2) > 0
trigger3 = ((StateNo = 1200)||(StateNo = 1210)) && MoveContact && Time>=16
trigger3 = Var(2) > 0
trigger4 = ((StateNo = 1201)||(StateNo = 1211)) && MoveContact && Time>=12
trigger4 = Var(2) > 0
trigger5 = (StateNo = 1150) && MoveContact && Time>=6
trigger5 = Var(2) > 0

;ÔÂ¶Á-ÖØ
[State -1]
type = ChangeState
value = 1210
triggerall = command = "YueDu2"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 1122)||(StateNo = 1132)) && MoveContact && Time>=16
trigger2 = Var(2) > 0
trigger3 = ((StateNo = 1200)||(StateNo = 1210)) && MoveContact && Time>=16
trigger3 = Var(2) > 0
trigger4 = ((StateNo = 1201)||(StateNo = 1211)) && MoveContact && Time>=12
trigger4 = Var(2) > 0
trigger5 = (StateNo = 1150) && MoveContact && Time>=6
trigger5 = Var(2) > 0

;ÔÂ¶Á-Çá
[State -1]
type = ChangeState
value = 1200
triggerall = command = "YueDu1"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 1122)||(StateNo = 1132)) && MoveContact && Time>=16
trigger2 = Var(2) > 0
trigger3 = ((StateNo = 1200)||(StateNo = 1210)) && MoveContact && Time>=16
trigger3 = Var(2) > 0
trigger4 = ((StateNo = 1201)||(StateNo = 1211)) && MoveContact && Time>=12
trigger4 = Var(2) > 0
trigger5 = (StateNo = 1150) && MoveContact && Time>=6
trigger5 = Var(2) > 0

;ÐÇ¶Á-ÖØ
[State -1]
type = ChangeState
value = 1110
triggerall = command = "XingDu2"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 1122)||(StateNo = 1132)) && MoveContact && Time>=16
trigger2 = Var(2) > 0
trigger3 = ((StateNo = 1200)||(StateNo = 1210)) && MoveContact && Time>=16
trigger3 = Var(2) > 0
trigger4 = ((StateNo = 1201)||(StateNo = 1211)) && MoveContact && Time>=12
trigger4 = Var(2) > 0
trigger5 = (StateNo = 1150) && MoveContact && Time>=6
trigger5 = Var(2) > 0

;ÐÇ¶Á-Çá
[State -1]
type = ChangeState
value = 1100
triggerall = command = "XingDu1"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 1122)||(StateNo = 1132)) && MoveContact && Time>=16
trigger2 = Var(2) > 0
trigger3 = ((StateNo = 1200)||(StateNo = 1210)) && MoveContact && Time>=16
trigger3 = Var(2) > 0
trigger4 = ((StateNo = 1201)||(StateNo = 1211)) && MoveContact && Time>=12
trigger4 = Var(2) > 0
trigger5 = (StateNo = 1150) && MoveContact && Time>=6
trigger5 = Var(2) > 0

;Ñà·É-Çá
[State -1]
type = ChangeState
value = 1020
triggerall = command = "YanFei1"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 1122)||(StateNo = 1132)) && MoveContact && Time>=16
trigger2 = Var(2) > 0
trigger3 = ((StateNo = 1200)||(StateNo = 1210)) && MoveContact && Time>=16
trigger3 = Var(2) > 0
trigger4 = ((StateNo = 1201)||(StateNo = 1211)) && MoveContact && Time>=12
trigger4 = Var(2) > 0
trigger5 = (StateNo = 1150) && MoveContact && Time>=6
trigger5 = Var(2) > 0

;Ñà·É-ÖØ
[State -1]
type = ChangeState
value = 1000
triggerall = command = "YanFei2"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 1122)||(StateNo = 1132)) && MoveContact && Time>=16
trigger2 = Var(2) > 0
trigger3 = ((StateNo = 1200)||(StateNo = 1210)) && MoveContact && Time>=16
trigger3 = Var(2) > 0
trigger4 = ((StateNo = 1201)||(StateNo = 1211)) && MoveContact && Time>=12
trigger4 = Var(2) > 0
trigger5 = (StateNo = 1150) && MoveContact && Time>=6
trigger5 = Var(2) > 0

;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = Var(31) < Roundno+2
triggerall = Var(31) < 5
trigger1 = (Power >= 1000)&&(Var(2)=0)
trigger2 = Var(2) > 0

;Taunt
[State -1]
type = ChangeState
value = 196
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Am
[State -1]
type = ChangeState
value = 270
trigger1 = command = "Am"
trigger1 = Power = 3000
trigger1 = Statetype = S
trigger1 = Ctrl = 1

;Cm
[State -1]
type = ChangeState
value = 275
trigger1 = command = "Cm"
trigger1 = Power = 3000
trigger1 = Statetype = S
trigger1 = Ctrl = 1

[State -1,7]
type=Helper
trigger1=StateNo=811
trigger2=StateNo=804
trigger3=StateNo=803
triggerall=NumHelper(4000)=0
triggerall=Command="Helper"
triggerall=Power>=1000
triggerall=Var(31)>0
helpertype=normal
name="Cosplay"
ID=4000
postype=p2
stateno=4700
keyctrl=0
ownpal=1
pos=220,-ceil(Target,Pos Y)-200
facing=-1

;Helper
[State -1]
type = ChangeState
value = 280
triggerall = command = "Helper"
triggerall = Var(31)>0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = NumHelper(4000)=0

[State -1];Active
type=Helper
triggerall=NumHelper(4000)=0
triggerall=MoveType!=H
triggerall=Roundstate=2
triggerall=Var(31)>0
triggerall=command="Helper"
trigger1=Stateno<2999
trigger1=StateNo!=[130,160)
trigger1=StateNo!=[800,820)
trigger2=Anim=[5030,5040)
trigger2=CanRecover
name="CosPlay"
ID=4000
postype=back
stateno=4100
keyctrl=0
ownpal=1
pos=-5,-45

;Air Knock
[State -1]
type = ChangeState
value = 640
triggerall = command = "knock"
trigger1 = statetype = A
trigger1 = ctrl

;Stand Knock
[State -1]
type = ChangeState
value = 240
triggerall = command = "knock"
trigger1 = statetype != A
trigger1 = ctrl

;Dodge Back
[State -1]
type = ChangeState
value = 520
triggerall = command = "dodge"
trigger1 = stateNo = [5100,5110)
trigger1 = CanRecover

;Dodge Back
[State -1]
type = ChangeState
value = 510
triggerall = command = "dodge"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;Dodge Fwd
[State -1]
type = ChangeState
value = 500
triggerall = command = "dodge"
trigger1 = statetype != A
trigger1 = ctrl

;Throw_P
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 8
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = command = "b"
trigger1 = command = "holdfwd"
trigger1 = stateno != 100
trigger2 = command = "holdback"

;Throw_K
[State -1]
type = ChangeState
value = 810
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 8
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = command = "y"
trigger1 = command = "holdfwd"
trigger1 = stateno != 100
trigger2 = command = "holdback"

;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 195
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = (Power >= 1000)&&(Var(2)=0)
trigger2 = Var(2) != 0

;JumpY
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Crouch_Y
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1

;Stand_Y
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1

;Jump_B
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1

;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1

;Á÷²Ý
[State -1]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl = 1

;Jump_X
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Crouch_X
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1

;Stand_X_Close
[State -1]
type = ChangeState
value = 221
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = P2BodyDist X < 12
trigger1 = ctrl = 1

;Stand_X
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1

;ÂäÌÒ
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = hitdefattr = A,NA && StateNo != 300

;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1

;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
