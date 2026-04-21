;-| Super Motions |--------------------------------------------------------

[Command]
name = "qcfqcf_x"
command = ~D, F, D, F, x
time = 30

[Command]
name = "qcfqcf_y"
command = ~D,  F, D,  F, y
time = 30

[Command]
name = "qdfdb_a"
command = ~D,  F,  D, B, a
time = 30

[Command]
name = "qdfdb_b"
command = ~D, F,  D, B, b
time = 30

[Command]
name = "fdb2_x"
command = ~D, B, D, B, x
time = 30

[Command]
name = "fdb2_y"
command = ~D, B, D, B, y
time = 30

;-| Special Motions |------------------------------------------------------

[command]
name = "fdbf_x"
command = ~D, B, F, x
time = 15

[command]
name = "fdbf_y"
command = ~D, B, F, y
time = 15

[command]
name = "bdf_a"
command = ~B, D, F, a
time = 15

[command]
name = "bdf_b"
command = ~B, D, F, b
time = 15

[command]
name = "db_x"
command = ~D, B, x
time = 15

[command]
name = "db_y"
command = ~D, B, y
time = 15

[Command]
name = "dp_a"
command = ~F, D, DF, a
time = 15

[Command]
name = "dp_b"
command = ~F, D, DF, b
time = 15

[command]
name = "df_x"
command = ~D, F, x
time = 15

[command]
name = "df_y"
command = ~D, F, y
time = 15

[command]
name = "df_a"
command = ~D, F, a
time = 15

[command]
name = "df_b"
command = ~D, F, b
time = 15

[command]
name = "fdf_a"
command = ~F, D, F, a
time = 15

[command]
name = "fdf_b"
command = ~F, D, F, b
time = 15


[Command]
name = "charge_x"
command = ~30$B, F, x
time = 15

[Command]
name = "charge_y"
command = ~30$B, F, y
time = 15

[Command]
name = "longjump"
command = $D, $U
time = 18

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "knockdown"
command = a+b
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "back_x"
command = /B,x

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "back_y"
command = /B,y

[Command]
name = "fwd_roll"
command = /F, z
time = 1

[Command]
name = "back_roll"
command = /B, z
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "hold_b"
command = /$b
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
name = "hold_x"
command = /$x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd_y"
command = /$F, y
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;-|Commands|------------------------------------------------------------------------------

[Statedef -1]

;Áø½É¾Æ (DM)
[State -1]
type = ChangeState
value = 2500
triggerall = command = "fdb2_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Áø½É¾Æ (SDM)
[State -1]
type = ChangeState
value = 2900
triggerall = command = "fdb2_y"
triggerall = power >= 1000
triggerall = life <= 170
trigger1 = statetype != A
trigger1 = ctrl = 1

;Áø½É¾Æ (SDM)
[State -1]
type = ChangeState
value = 2800
triggerall = command = "fdb2_y"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;Áø½É¾Æ (DM)
[State -1]
type = ChangeState
value = 2500
triggerall = command = "fdb2_y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;´ëÃ¶ÀÎ (DM)
[State -1]
type = ChangeState
value = 1900
triggerall = command = "qdfdb_a"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;´ëÃ¶ÀÎ (SDM)
[State -1]
type = ChangeState
value = 1970
triggerall = command = "qdfdb_b"
triggerall = power >= 1000
triggerall = life <= 170
trigger1 = statetype != A
trigger1 = ctrl = 1

;´ëÃ¶ÀÎ (SDM)
[State -1]
type = ChangeState
value = 1960
triggerall = command = "qdfdb_b"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

;´ëÃ¶ÀÎ (DM)
[State -1]
type = ChangeState
value = 1900
triggerall = command = "qdfdb_b"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1650
trigger2 = movecontact

;ÃÊ¹é·æ (DM)
[State -1]
type = ChangeState
value = 1800
triggerall = command = "qcfqcf_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1650
trigger2 = ctrl = 1

;ÃÊ¹é·æ (SDM)
[State -1]
type = ChangeState
value = 1802
triggerall = command = "qcfqcf_y"
triggerall = power >= 1000
triggerall = life <= 170
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1650
trigger2 = ctrl = 1

;ÃÊ¹é·æ (SDM)
[State -1]
type = ChangeState
value = 1801
triggerall = command = "qcfqcf_y"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1650
trigger2 = movecontact
trigger2 = stateno = 1650
trigger2 = ctrl = 1

;ÃÊ¹é·æ (DM)
[State -1]
type = ChangeState
value = 1800
triggerall = command = "qcfqcf_y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1650
trigger2 = movecontact
trigger2 = stateno = 1650
trigger2 = ctrl = 1

; ¸¸¹ÚÈÄ¿¬
[State -1]
type = ChangeState
value = 1650
triggerall = command = "fdbf_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

; ¸¸¹ÚÈÄ¿¬
[State -1]
type = ChangeState
value = 1650
triggerall = command = "fdbf_y"
trigger1 = statetype = S
trigger1 = ctrl = 1

; ÃµºØ»ê light
[State -1]
type = ChangeState
value = 1500
triggerall = command = "dp_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movehit
trigger3 = stateno = 221
trigger3 = movehit
trigger4 = stateno = 230
trigger4 = movehit
trigger5 = stateno = 231
trigger5 = movehit
trigger6 = stateno = 420
trigger6 = movehit
trigger7 = stateno = 217
trigger7 = movehit
trigger8 = stateno = 236
trigger8 = movehit
trigger9 = stateno = 265

; ÃµºØ»ê Hard
[State -1]
type = ChangeState
value = 1510
triggerall = command = "dp_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movehit
trigger3 = stateno = 221
trigger3 = movehit
trigger4 = stateno = 230
trigger4 = movehit
trigger5 = stateno = 231
trigger5 = movehit
trigger6 = stateno = 420
trigger6 = movehit
trigger7 = stateno = 217
trigger7 = movehit
trigger8 = stateno = 236
trigger8 = movehit
trigger9 = stateno = 265

;¼¶¸®ÁÖÈ² light
[State -1]
type = ChangeState
value = 1600
triggerall = command = "df_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 265

;¼¶¸®ÁÖÈ² hard
[State -1]
type = ChangeState
value = 1601
triggerall = command = "df_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 265

;¿µÁÖ light
[State -1]
type = ChangeState
value = 1700
triggerall = command = "db_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 265

;¿µÁÖ Hard
[State -1]
type = ChangeState
value = 1701
triggerall = command = "db_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 265

; ³ª¸ùÆÄ
[State -1]
type = ChangeState
value = 2300
triggerall = command = "df_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movehit
trigger3 = stateno = 221
trigger3 = movehit
trigger4 = stateno = 230
trigger4 = movehit
trigger5 = stateno = 231
trigger5 = movehit
trigger6 = stateno = 420
trigger6 = movehit
trigger7 = stateno = 217
trigger7 = movehit
trigger8 = stateno = 236
trigger8 = movehit
trigger9 = stateno = 265
trigger10 = stateno = 1650
trigger10 = ctrl = 1

; ³ª¸ùÆÄ Hard
[State -1]
type = ChangeState
value = 2310
triggerall = command = "df_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movehit
trigger3 = stateno = 221
trigger3 = movehit
trigger4 = stateno = 230
trigger4 = movehit
trigger5 = stateno = 231
trigger5 = movehit
trigger6 = stateno = 420
trigger6 = movehit
trigger7 = stateno = 217
trigger7 = movehit
trigger8 = stateno = 236
trigger8 = movehit
trigger9 = stateno = 265
trigger10 = stateno = 1650
trigger10 = ctrl = 1

; Jumping knockdown attack
[State -1]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "knockdown"
trigger2 = command = "c"

; Hold type 1
[State -1]
type = ChangeState
value = 1850
trigger1 = command = "fwd_y"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

; Hold type 2
[State -1]
type = ChangeState
value = 1860
trigger1 = command = "fwd_b"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 605
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping forward light kick
[State -1]
type = ChangeState
value = 615
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping light kick
[State -1]
type = ChangeState
value = 610
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping forward hard punch
[State -1]
type = ChangeState
value = 625
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping hard punch
[State -1]
type = ChangeState
value = 620
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping forward hard kick
[State -1]
type = ChangeState
value = 635
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping hard kick
[State -1]
type = ChangeState
value = 630
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Crouching light punch
[State -1]
type = ChangeState
value = 400
trigger1 = statetype = C
trigger1 = command = "x"
trigger1 = ctrl = 1

; Crouching light kick
[State -1]
type = ChangeState
value = 410
trigger1 = statetype = C
trigger1 = command = "a"
trigger1 = ctrl = 1

; Crouching hard punch
[State -1]
type = ChangeState
value = 420
trigger1 = statetype = C
trigger1 = command = "y"
trigger1 = ctrl = 1

; Crouching forward hard kick
[State -1]
type = ChangeState
value = 436
triggerall = command = "holdfwd"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 430
trigger1 = statetype = C
trigger1 = command = "b"
trigger1 = ctrl = 1

; Guard cancel roll (backwards)
[State -1]
type = ChangeState
value = 260
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1500
triggerall = command = "holdback"
trigger1 = command = "dodge"
trigger2 = command = "z"

; Guard cancel roll (forward)
[State -1]
type = ChangeState
value = 250
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1500
trigger1 = command = "dodge"
trigger2 = command = "z"

; Guard cancel attack
[State -1]
type = ChangeState
value = 270
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1500
trigger1 = command = "knockdown"
trigger2 = command = "c"

; Standing knockdown attack
[State -1]
type = ChangeState
value = 240
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "knockdown"
trigger2 = command = "c"

; Forward light punch
[State -1]
type = ChangeState
value = 216
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Forward light punch skip
[State -1]
type = ChangeState
value = 217
triggerall = command = "fwd_x"
triggerall = Var(1) = 0
trigger1 = stateno = 220
trigger1 = movecontact
trigger2 = stateno = 221
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 420
trigger5 = movecontact

; Standing light punch (close)
[State -1]
type = ChangeState
value = 201
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 13

; Standing light punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing hard punch (close)
[State -1]
type = ChangeState
value = 221
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 15

; Standing hard punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Forward light kick
[State -1]
type = ChangeState
value = 235
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Forward light kick skipmode
[State -1]
type = ChangeState
value = 236
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 231
trigger5 = movecontact
trigger6 = stateno = 420
trigger6 = movecontact

; Standing light kick (close)
[State -1]
type = ChangeState
value = 211
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 45

; Standing light kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing hard kick (close)
[State -1]
type = ChangeState
value = 231
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 20

; Standing hard kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Run Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

; Run Backwards
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

; Roll forward
[State -1]
type = ChangeState
value = 255
trigger1 = command = "fwd_roll"
trigger1 = statetype != A
trigger1 = ctrl = 1

; Roll backwards
[State -1]
type = ChangeState
value = 265
trigger1 = command = "back_roll"
trigger1 = statetype != A
trigger1 = ctrl = 1

; Evade (attack)
[State -1]
type = ChangeState
value = 251
triggerall = stateno = 255
triggerall = AnimElem = 2, >= 0
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "a"
trigger4 = command = "b"


;---------------------------------------------------------------------------

