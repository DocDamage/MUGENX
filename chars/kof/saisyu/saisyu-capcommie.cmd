;-| Super Motions |--------------------------------------------------------

; Sen Hyaku Ni Juu Nana Shiki Miyako Bougai
[Command]
name = "MiyakoBougai"
command = ~D, F, D, F, x
time = 30

[Command]
name = "MiyakoBougai"
command = ~D, F, D, F, y
time = 30

[Command]
name = "OrochiNagi"
command = ~D, B, D, F, x
time = 30

[Command]
name = "OrochiNagi"
command = ~D, B, D, F, y
time = 30

;-| Special Motions |------------------------------------------------------
;Yami Barai
[Command]
name = "YamiBaraiA"
command = ~D, F, x
time = 15

[Command]
name = "YamiBaraiC"
command = ~D, F, y
time = 15

;Nanahyakujuuni Shiki: EnJuu  (Style No. 702: Heavy Blaze)
[Command]
name = "EnJuuA"
command = ~D, B, x
time = 15

[Command]
name = "EnJuuC"
command = ~D, B, y
time = 15

;Shippuken
[Command]
name = "ShinKenB"
command = ~DF, B, a
;command = ~F, D, B, a
time = 25

[Command]
name = "ShinKenD"
command = ~DF, B, b
;command = ~F, D, B, b
time = 25

;OniYaki
[Command]
name = "OniYakiA"
command = ~F, D, DF, x
time = 15

[Command]
name = "OniYakiC"
command = ~F, D, DF, y
time = 15

;NataGuruma
[Command]
name = "NataGurumaB"
command = ~F, D, DF, a
time = 20

[Command]
name = "NataGurumaD"
command = ~F, D, DF, b
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "ab"
command = a+x
time = 1

[Command]
name = "cd"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,a
time = 1

[Command]
name = "fwd_c"
command = /F,y
time = 1

[Command]
name = "fwd_d"
command = /F,b
time = 1

[Command]
name = "back_a"
command = /B,x
time = 1

[Command]
name = "back_b"
command = /B,a
time = 1

[Command]
name = "back_c"
command = /B,y
time = 1

[Command]
name = "back_d"
command = /B,b
time = 1

[Command]
name = "down_a"
command = /$D,x
time = 1

[Command]
name = "down_b"
command = /$D,a
time = 1

[Command]
name = "down_c"
command = /$D,y
time = 1

[Command]
name = "fwd_ab"
command = /F, a+x
time = 1

[Command]
name = "back_ab"
command = /B, a+x
time = 1

[Command]
name = "back_ab"
command = /DB, a+x
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = a
time = 1

[Command]
name = "c"
command = y
time = 1

[Command]
name = "d"
command = b
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /$x
time = 1

[Command]
name = "hold_b"
command = /$a
time = 1

[Command]
name = "hold_c"
command = /$y
time = 1

[Command]
name = "hold_d"
command = /$b
time = 1

[Command]
name = "hold_z"
command = /$z
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]
;===========================================================================
;SUPER ATTACKS (Chou Hissatsu Waza)
;===========================================================================
;SDM MiyakoBougai
[State -1]
type = ChangeState
value = 3500
triggerall = power >= 1000
triggerall = var(7) > 0
triggerall = command = "MiyakoBougai"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;DM MiyakoBougai
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "MiyakoBougai"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;SDM OrochiNagi
[State -1]
type = ChangeState
value = 3600
triggerall = power >= 1000
triggerall = var(7) > 0
triggerall = command = "OrochiNagi"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;DM OrochiNagi
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = command = "OrochiNagi"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;===========================================================================
;SPECIAL ATTACKS (Hissatsu Waza)
;===========================================================================
;A Uppercut
[State -1]
type = ChangeState
value = 1100
triggerall = command = "OniYakiA"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;C Uppercut
[State -1]
type = ChangeState
value = 1150
triggerall = command = "OniYakiC"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;A Yami Barai
[State -1]
type = ChangeState
value = 1000
triggerall = numproj = 0
triggerall = command = "YamiBaraiA"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;C Yami Barai
[State -1]
type = ChangeState
value = 1010
triggerall = numproj = 0
triggerall = command = "YamiBaraiC"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;Enjuu A
[State -1]
type = ChangeState
value = 1200
triggerall = command = "EnJuuA"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;Enjuu C
[State -1]
type = ChangeState
value = 1250
triggerall = command = "EnJuuC"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;Nata Guruma B
[State -1]
type = ChangeState
value = 1400
triggerall = command = "NataGurumaB"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;Nata Guruma D
[State -1]
type = ChangeState
value = 1410
triggerall = command = "NataGurumaD"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;ShinKen B
[State -1]
type = ChangeState
value = 1300
triggerall = command = "ShinKenB"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;ShinKen D
[State -1]
type = ChangeState
value = 1310
triggerall = command = "ShinKenD"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 285
trigger9 = movecontact

;===========================================================================
;DASH/BACKHOP
;===========================================================================
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;NORMAL THROWS (Nage)
;===========================================================================
;C THROW (close dir+Strong Punch)
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 10 ;Near P2
trigger1 = command = "fwd_c";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_c";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_c";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_c";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;D THROW (close dir+Strong Kick)
[State -1]
type = ChangeState
value = 850
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 10 ;Near P2
trigger1 = command = "fwd_d";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_d";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_d";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_d";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;===========================================================================
;POW EXPLODE
;===========================================================================
[State -1]
type = ChangeState
value = 780
trigger1 = command = "a"
trigger1 = command = "b"
trigger1 = command = "c"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = var(7) = 0
trigger1 = power >= 1000

;===========================================================================
;CD ATTACKS
;===========================================================================
; Standing CD
[State -1]
type = ChangeState
value = 240
triggerall = command = "cd"
trigger1 = statetype != A
trigger1 = ctrl = 1

; CD Counter
[State -1]
type = ChangeState
value = 1560
triggerall = command = "cd"
trigger1 = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;===========================================================================
;ROLLS
;===========================================================================
; Guard Cancel Roll backward
[State -1]
type = ChangeState
value = 1500
triggerall = command = "back_ab"
trigger1 = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153

; Guard Cancel Roll Forward
[State -1]
type = ChangeState
value = 1530
triggerall = command = "ab"
trigger1 = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;Roll Backward
[State -1]
type = ChangeState
value = 740
triggerall = command = "back_ab"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Recovery Roll
[State -1]
type = ChangeState
value = 750
trigger1 = command = "ab"
trigger1 = movetype = H
trigger1 = ctrl = 0
trigger1 = canrecover = 1
trigger1 = statetype = A
trigger1 = pos Y >= -12
trigger1 = vel Y > 0

;Roll Forward
[State -1]
type = ChangeState
value = 700
triggerall = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;CLOSE STANDING NORMAL ATTACKS
;===========================================================================
;Forward + A
[State -1]
type = ChangeState
value = 280
triggerall = command = "fwd_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Forward + A
[State -1]
type = ChangeState
value = 285
triggerall = command = "fwd_a"
trigger1 = stateno = 205
trigger1 = movecontact
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 225
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 420
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;Close A
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = p2bodydist x < 10
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Forward + B
[State -1]
type = ChangeState
value = 290
triggerall = command = "fwd_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact

;Close B
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = p2bodydist x < 10
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Close C
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = p2bodydist x < 10
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Close D
[State -1]
type = ChangeState
value = 235
triggerall = command = "d"
triggerall = p2bodydist x < 10
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;STANDING NORMAL ATTACKS
;===========================================================================
;Standing A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Standing B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Standing C
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Standing D
[State -1]
type = ChangeState
value = 230
triggerall = command = "d"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;CROUCHING NORMAL ATTACKS
;===========================================================================
;Crouching A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouching B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouching C
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouching D
[State -1]
type = ChangeState
value = 430
triggerall = command = "d"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;===========================================================================
;JUMPING NORMAL ATTACKS
;===========================================================================
;Jumping CD
[State -1]
type = ChangeState
value = 640
triggerall = command = "cd"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping Up C
[State -1]
type = ChangeState
value = 625
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = vel x = 0

;Jumping C
[State -1]
type = ChangeState
value = 620
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping D
[State -1]
type = ChangeState
value = 630
trigger1 = command = "d"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===========================================================================
;TAUNT
;===========================================================================
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

