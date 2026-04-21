;-| Hyper Motions |--------------------------------------------------------
[Command]
name = "RIP"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, x
time = 60

[Command]
name = "RIP"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, y
time = 60

[Command]
name = "RIP"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, z
time = 60

;-| Super Motions |--------------------------------------------------------
[Command]
name = "TK"
command = ~D, DB, B, DB, D, DF, F, x
time = 40

[Command]
name = "TK"
command = ~D, DB, B, DB, D, DF, F, y
time = 40

[Command]
name = "TK"
command = ~D, DB, B, DB, D, DF, F, z
time = 40

[Command]
name = "TKU"
command = ~D, DF, F, D, DF, F, a
time = 40

[Command]
name = "TKU"
command = ~D, DF, F, D, DF, F, b
time = 40

[Command]
name = "TKU"
command = ~D, DF, F, D, DF, F, c
time = 40

[Command]
name = "DS"
command = ~D, DB, B, D, DB, B, a
time = 40

[Command]
name = "DS"
command = ~D, DB, B, D, DB, B, b
time = 40

[Command]
name = "DS"
command = ~D, DB, B, D, DB, B, c
time = 40

;-| Special Motions |------------------------------------------------------
[Command]
name = "KU_a"
command = ~30$D, $U, a

[Command]
name = "KU_b"
command = ~30$D, $U, b

[Command]
name = "KU_c"
command = ~30$D, $U, c

[Command]
name = "UC_x"
command = ~D, DB, B, x

[Command]
name = "UC_y"
command = ~D, DB, B, y 

[Command]
name = "UC_z"
command = ~D, DB, B, z 

[Command]
name = "IC_a"
command = ~D, DF, F, a 

[Command]
name = "IC_b"
command = ~D, DF, F, b 

[Command]
name = "IC_c"
command = ~D, DF, F, c 

[Command]
name = "KS_a"
command = ~D, DB, B, a 

[Command]
name = "KS_b"
command = ~D, DB, B, b 

[Command]
name = "KS_c"
command = ~D, DB, B, c 

[Command]
name = "MC_x"
command = ~D, DF, F, x

[Command]
name = "MC_y"
command = ~D, DF, F, y

[Command]
name = "MC_z"
command = ~D, DF, F, z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ce";Required (do not remove)
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "c"
command = c
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;Rest In Peace
[State -1, Rest In Peace]
type = ChangeState
value = 3050
triggerall = command = "RIP"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;세 왕국의 위대한 영웅(기술명 센스하곤...-_-)
[State -1, 세 왕국의 위대한 영웅]
type = ChangeState
value = 3010
triggerall = command = "TK"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype != A 
trigger1 = ctrl

;---------------------------------------------------------------------------
;트리플 니 어퍼
[State -1, 트리플 니 어퍼]
type = ChangeState
value = 3020
triggerall = command = "TKU"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;드릴 스매셔
[State -1, 드릴 스매셔]
type = ChangeState
value = 3000
triggerall = command = "DS"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;니 어퍼 1
[State -1, 니 어퍼 1]
type = ChangeState
value = 1042
triggerall = command = "KU_a"
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 430
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;니 어퍼 2
[State -1, 니 어퍼 2]
type = ChangeState
value = 1043
triggerall = command = "KU_b"
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 430
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;니 어퍼 3
[State -1, 니 어퍼 3]
type = ChangeState
value = 1045
triggerall = command = "KU_c"
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 430
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;언더그라운드 클로우 1
[State -1, 언더그라운드 클로우 1]
type = ChangeState
value = 1070
triggerall = command = "UC_x"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;언더그라운드 클로우 2
[State -1, 언더그라운드 클로우 2]
type = ChangeState
value = 1071
triggerall = command = "UC_y"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;언더그라운드 클로우 3
[State -1, 언더그라운드 클로우 3]
type = ChangeState
value = 1072
triggerall = command = "UC_z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;아이론 크로울 1
[State -1, 아이론 크로울 1]
type = ChangeState
value = 1050
triggerall = command = "IC_a"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;아이론 크로울 2
[State -1, 아이론 크로울 2]
type = ChangeState
value = 1051
triggerall = command = "IC_b"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;아이론 크로울 3
[State -1, 아이론 크로울 3]
type = ChangeState
value = 1052
triggerall = command = "IC_c"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;니 스매셔 1
[State -1, 니 스매셔 1]
type = ChangeState
value = 1060
triggerall = command = "KS_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;니 스매셔 1 (공중)
[State -1, 니 스매셔 1 (공중)]
type = ChangeState
value = 1063
triggerall = command = "KS_a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;니 스매셔 2
[State -1, 니 스매셔 2]
type = ChangeState
value = 1061
triggerall = command = "KS_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;니 스매셔 2 (공중)
[State -1, 니 스매셔 2 (공중)]
type = ChangeState
value = 1064
triggerall = command = "KS_b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;니 스매셔 3
[State -1, 니 스매셔 3]
type = ChangeState
value = 1062
triggerall = command = "KS_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;니 스매셔 3 (공중)
[State -1, 니 스매셔 3 (공중)]
type = ChangeState
value = 1065
triggerall = command = "KS_c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;믹서 크러쉬 1
[State -1, 믹서 크러쉬 1]
type = ChangeState
value = 1000
triggerall = command = "MC_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;믹서 크러쉬 2
[State -1, 믹서 크러쉬 2]
type = ChangeState
value = 1010
triggerall = command = "MC_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;믹서 크러쉬 3
[State -1, 믹서 크러쉬 3]
type = ChangeState
value = 1020
triggerall = command = "MC_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;뒤로 굴파기
[State -1, 뒤로 굴파기]
type = ChangeState
value = 4002
triggerall = command = "ce" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;앞으로 굴파기
[State -1, 앞으로 굴파기]
type = ChangeState
value = 4001
triggerall = command = "ce" && command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;제자리 굴파기
[State -1, 굴파기]
type = ChangeState
value = 4000
triggerall = command = "ce"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;잡기 1
[State -1, 잡기1]
type = ChangeState
value = 800
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;잡기 2
[State -1, 잡기2]
type = ChangeState
value = 801
triggerall = command = "a"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;서서 약손
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;중손 특수기1
[State -1, Stand Middle Punch Special]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;중손 특수기2
[State -1, Stand Middle Punch Special]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;서서 중손
[State -1, Stand Middle Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 211
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;서서 강손
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;서서 약발
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;서서 중발
[State -1, Standing Middle Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = statetime >= 38

;---------------------------------------------------------------------------
;강발 특수기 1
[State -1, Standing Strong Kick Special]
type = ChangeState
value = 251
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 251
trigger2 = statetime >= 24

;---------------------------------------------------------------------------
;강발 특수기 2
[State -1, Standing Strong Kick Special]
type = ChangeState
value = 251
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 251
trigger2 = statetime >= 24

;---------------------------------------------------------------------------
;서서 강발
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = statetime >= 24

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;앉아 약손
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;앉아 중손
[State -1, Crouching Middle Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;앉아 강손
[State -1, Crouching Middle Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 220
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;앉아 약발
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;앉아 중발
[State -1, Crouching Middle Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;앉아 강발
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;점프 약손
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger2 = statetime >= 12
trigger3 = stateno = 630
trigger3 = statetime >= 10

;---------------------------------------------------------------------------
;점프 중손
[State -1, Jump Middle Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = statetime >= 30
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = statetime >= 10

;---------------------------------------------------------------------------
;점프 강손
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 620
trigger2 = statetime >= 30
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;점프 약발
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger2 = statetime >= 30
trigger3 = stateno = 600
trigger3 = statetime >= 10

;---------------------------------------------------------------------------
;점프 중발
[State -1, Jump Middle Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = statetime >= 30

;---------------------------------------------------------------------------
;점프 강발
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 650
trigger2 = statetime >= 30



