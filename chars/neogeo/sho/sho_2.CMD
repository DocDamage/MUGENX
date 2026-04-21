; SHO CMD file (Capcom style).
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = "some_name"
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted


;-| Humanly impossible motions (useful only to detect the CPU) |-----------
[Command]
name = "AI_1"
command = D, U, B, B, B, U, D
time = 1
        
[Command]
name = "AI_2"
command = D, U, B, B, B, U, U
time = 1
        
[Command]
name = "AI_3"
command = D, U, B, B, B, U, B
time = 1
        
[Command]
name = "AI_4"
command = D, U, B, B, B, U, F
time = 1
        
[Command]
name = "AI_5"
command = D, U, B, B, B, D, D
time = 1
        
[Command]
name = "AI_6"
command = D, U, B, B, B, B, D
time = 1
        
[Command]
name = "AI_7"
command = D, U, B, B, B, F, D
time = 1
        
[Command]
name = "AI_8"
command = D, U, B, B, F, U, D
time = 1
        
[Command]
name = "AI_9"
command = D, U, B, B, U, U, D
time = 1
        
[Command]
name = "AI_10"
command = D, U, B, B, D, U, D
time = 1
        
[Command]
name = "AI_11"
command = D, U, B, F, B, U, D
time = 1
        
[Command]
name = "AI_12"
command = D, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_13"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_14"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_15"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_16"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_17"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_18"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_19"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_20"
command = U, U, B, U, B, U, D
time = 1
        
;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

; ShippuuShoKenTsuki
[Command]
name = "ShippuuShoKenTsuki"
command = ~F, B, F, x
time = 15

; ShippuuShoKenTsuki
[Command]
name = "ShippuuShoKenTsuki"
command = ~F, B, F, y
time = 15

; KurenaiSandanKeri Follow up (Y or B)
[Command]
name = "KurenaiSandanKeri_FollowUp"
command = a

[Command]
name = "KurenaiSandanKeri_FollowUp"
command = b

; Uppercut
[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DP_c"
command = ~F, D, DF, c

[Command]
name = "DP_x"
command = ~F, D, DF, x

name = "DP_x"
command = ~F, D, F, x

[Command]
name = "DP_y"
command = ~F, D, DF, y

[Command]
name = "DP_y"
command = ~F, D, F, y

[Command]
name = "DP_z"
command = ~F, D, DF, z

;-----------------
; Reverse Uppercut
[Command]
name = "rDP_a"
command = ~B, D, DB, a

[Command]
name = "rDP_b"
command = ~B, D, DB, b

[Command]
name = "rDP_c"
command = ~B, D, DB, c

[Command]
name = "rDP_x"
command = ~B, D, DB, x

[Command]
name = "rDP_y"
command = ~B, D, DB, y

[Command]
name = "rDP_z"
command = ~B, D, DB, z

;-----------------
[Command]
name = "QCF_x"
command = ~D, DF, F, /x

[Command]
name = "QCF_y"
command = ~D, DF, F, /y

[Command]
name = "QCF_a"
command = ~D, DF, F, /a

[Command]
name = "QCF_b"
command = ~D, DF, F, /b

[Command]
name = "2xQCF_x"
command = ~D, DF, F, D, DF, /x
time = 20

[Command]
name = "2xQCF_x"
command = ~D, DF, F, D, DF, /y
time = 20

[Command]
name = "2xQCB_x"
command = ~D, DB, B, D, DB, /x
time = 20

[Command]
name = "2xQCB_x"
command = ~D, DB, B, D, DB, /y
time = 20

[Command]
name = "2xQCB_y"
command = ~D, DB, B, D, DB, /a
time = 20

[Command]
name = "2xQCB_y"
command = ~D, DB, B, D, DB, /b
time = 20

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

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
command = a+b
time = 1

[Command]
name = "kd_recovery"
command = x+y
time = 1

[Command]
name = "kd_recovery"
command = a+b
time = 1

[Command]
name = "strk"
command = a+x
time = 1

[Command]
name = "strk"
command = a+y
time = 1

[Command]
name = "strk"
command = b+x
time = 1

[Command]
name = "strk"
command = b+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "ya"
command = y+a
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "bslam_fwd"
command = /F,y
time = 1

[Command]
name = "bslam_fwd"
command = /DF,y
time = 1

[Command]
name = "bslam_fwd"
command = /UF,y
time = 1

[Command]
name = "bslam_fwd"
command = /F,b
time = 1

[Command]
name = "bslam_fwd"
command = /DF,b
time = 1

[Command]
name = "bslam_fwd"
command = /UF,b
time = 1

[Command]
name = "bslam_back"
command = /B,y
time = 1

[Command]
name = "bslam_back"
command = /DB,y
time = 1

[Command]
name = "bslam_back"
command = /UB,y
time = 1

[Command]
name = "bslam_back"
command = /B,b
time = 1

[Command]
name = "bslam_back"
command = /DB,b
time = 1

[Command]
name = "bslam_back"
command = /UB,b
time = 1

[Command]
name = "bslam_up"
command = /U,y
time = 1

[Command]
name = "bslam_up"
command = /U,b
time = 1

[Command]
name = "bslam_down"
command = /D,y
time = 1

[Command]
name = "bslam_down"
command = /D,b
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "back_a"
command = /B, a
time = 1

[Command]
name = "back_b"
command = /B, b
time = 1

[Command]
name = "back_x"
command = /B, x
time = 1

[Command]
name = "back_y"
command = /B, y
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

[Command]
name = "up_y"
command = /$U,y
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupright"
command = /$UF
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;KurenaiGansaiShuu
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 1000
triggerall = command = "2xQCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = A
trigger2 = ctrl = 1
trigger3 = stateno = [100, 101]
trigger4 = stateno = [670, 680]
trigger4 = movecontact
trigger5 = stateno = 272
trigger5 = movecontact
trigger6 = stateno = [600, 630]
trigger6 = movecontact
trigger7 = stateno = [640, 650]
trigger7 = movecontact
trigger8 = stateno = [200, 220]
trigger8 = movecontact
trigger9  = stateno = 240
trigger9  = movecontact
trigger10 = stateno = 250
trigger10 = movecontact
trigger10 = Time < 9
trigger11 = stateno = [260, 280]
trigger11 = movecontact
trigger12 = stateno = [400, 420]
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger13 = Time <= 15
trigger14 = stateno = 440
trigger14 = movecontact

;---------------------------------------------------------------------------
;Super Air Flash Wave
[State -1]
type = ChangeState
value = 3100
triggerall = statetype = A
triggerall = Power >= 1000
triggerall = command = "2xQCF_x"
trigger1 = ctrl = 1
trigger2 = stateno = [600, 630]
trigger2 = movecontact
trigger3 = stateno = [640, 650]
trigger3 = movecontact
trigger4 = stateno = [670, 680]
trigger4 = movecontact
trigger5 = stateno = 272
trigger5 = movecontact
trigger6 = stateno = 262
trigger6 = movecontact

;---------------------------------------------------------------------------
;Super Air Flash Wave (backwards)
[State -1]
type = ChangeState
value = 3101
triggerall = Power >= 1000
triggerall = command = "2xQCB_x"
triggerall = P2Dist X < 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = [1120, 1125]

;---------------------------------------------------------------------------
;SeikenShouha
[State -1]
type = ChangeState
value = 3000
triggerall = command = "2xQCF_x"
triggerall = Power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200, 220]
trigger2 = movecontact
trigger3  = stateno = 240
trigger3  = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger4 = Time < 9
trigger5 = stateno = [260, 271]
trigger5 = movecontact
trigger6 = stateno = [400, 420]
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger7 = Time <= 15
trigger8 = stateno = 440
trigger8 = movecontact
trigger9 = stateno = [100, 101]

;---------------------------------------------------------------------------
;KurenaiSandanKeri (short) - First Kick
[State -1]
type = ChangeState
value = 1360
triggerall = command = "QCB_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger8 = Time <= 15
trigger9 = stateno = [100, 101]
trigger10 = stateno = 270
trigger10 = movecontact
trigger11 = stateno = 271
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger13 = Time < 9
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 260
trigger15 = movecontact
trigger16 = stateno = 261
trigger16 = movecontact

;---------------------------------------------------------------------------
;KurenaiSandanKeri (short)  - Second Kick
[State -1]
type = ChangeState
value = 1310
triggerall = stateno = 1360
triggerall = command = "KurenaiSandanKeri_FollowUp"
trigger1 = Time = [7, 27]
trigger1 = MoveHit = 0
trigger2 = Time = [9, 27]
trigger2 = movehit

;---------------------------------------------------------------------------
;KurenaiSandanKeri (long) - First Kick
[State -1]
type = ChangeState
value = 1300
triggerall = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger8 = Time <= 15
trigger9 = stateno = [100, 101]
trigger10 = stateno = 270
trigger10 = movecontact
trigger11 = stateno = 271
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger13 = Time < 9
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 260
trigger15 = movecontact
trigger16 = stateno = 261
trigger16 = movecontact

;---------------------------------------------------------------------------
;KurenaiSandanKeri (long)  - Second Kick
[State -1]
type = ChangeState
value = 1310
triggerall = stateno = 1300
triggerall = command = "KurenaiSandanKeri_FollowUp"
trigger1 = Time = [7, 27]
trigger1 = MoveHit = 0
trigger2 = Time = [9, 27]
trigger2 = movehit

;---------------------------------------------------------------------------
;KurenaiSandanKeri (long)  - Third Kick
[State -1]
type = ChangeState
value = 1320
triggerall = stateno = 1310
triggerall = command = "KurenaiSandanKeri_FollowUp"
trigger1 = Anim = 1310
trigger1 = Time > 3
trigger1 = MoveHit = 0
trigger2 = Anim = 1310
trigger2 = Time > 6
trigger2 = movehit

;---------------------------------------------------------------------------
;ShippuuShoKenTsuki
[State -1]
type = ChangeState
value = 1200
triggerall = command = "ShippuuShoKenTsuki"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger8 = Time <= 15
trigger9 = stateno = [100, 101]
trigger10 = stateno = 270
trigger10 = movecontact
trigger11 = stateno = 271
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger13 = Time < 9
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 260
trigger15 = movecontact
trigger16 = stateno = 261
trigger16 = movecontact

;---------------------------------------------------------------------------
;MidareKiryuuKeri - Short
[State -1]
type = ChangeState
value = 1100
triggerall = command = "QCF_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger8 = Time <= 15
trigger9 = stateno = [100, 101]
trigger10 = stateno = 270
trigger10 = movecontact
trigger11 = stateno = 271
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger13 = Time < 9
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 260
trigger15 = movecontact
trigger16 = stateno = 261
trigger16 = movecontact

;---------------------------------------------------------------------------
;MidareKiryuuKeri - Long
[State -1]
type = ChangeState
value = 1110
triggerall = command = "QCF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger8 = Time <= 15
trigger9 = stateno = [100, 101]
trigger10 = stateno = 270
trigger10 = movecontact
trigger11 = stateno = 271
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger13 = Time < 9
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 260
trigger15 = movecontact
trigger16 = stateno = 261
trigger16 = movecontact

;---------------------------------------------------------------------------
;RekkoHa - Slow
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = NumProjID(1000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger8 = Time <= 15
trigger9 = stateno = [100, 101]
trigger10 = stateno = 270
trigger10 = movecontact
trigger11 = stateno = 271
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger13 = Time < 9
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 260
trigger15 = movecontact
trigger16 = stateno = 261
trigger16 = movecontact

;---------------------------------------------------------------------------
;RekkoHa - Fast
[State -1]
type = ChangeState
value = 1001
triggerall = command = "QCF_y"
trigger1 = NumProjID(1000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger8 = Time <= 15
trigger9 = stateno = [100, 101]
trigger10 = stateno = 270
trigger10 = movecontact
trigger11 = stateno = 271
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger13 = Time < 9
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 260
trigger15 = movecontact
trigger16 = stateno = 261
trigger16 = movecontact

;---------------------------------------------------------------------------
; Shoulder Throw (forward)
[State -1]
type = ChangeState
value = 700
triggerall = command = "fwd_y"
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [-5, 10]
triggerall = p2movetype != H
trigger1 = ctrl = 1
trigger1 = p2statetype = S
trigger2 = ctrl = 1
trigger2 = p2statetype = C

;---------------------------------------------------------------------------
; Shoulder Throw (backwards)
[State -1]
type = ChangeState
value = 730
triggerall = command = "back_y"
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [-5, 10]
triggerall = p2movetype != H
trigger1 = ctrl = 1
trigger1 = p2statetype = S
trigger2 = ctrl = 1
trigger2 = p2statetype = C

;---------------------------------------------------------------------------
; Body Slam (Back)
[State -1]
type = ChangeState
value = 752
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [-5, 15]
triggerall = p2bodydist Y = [-15, 15]
triggerall = p2movetype != H
trigger1 = command = "bslam_back"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Body Slam (Forward)
[State -1]
type = ChangeState
value = 753
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [-5, 15]
triggerall = p2bodydist Y = [-15, 15]
triggerall = p2movetype != H
trigger1 = command = "bslam_fwd"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Body Slam (Neutral) - Up
[State -1]
type = ChangeState
value = 750
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [-5, 15]
triggerall = p2bodydist Y = [-15, 15]
triggerall = p2movetype != H
trigger1 = command = "bslam_up"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Body Slam (Neutral) - Down
[State -1]
type = ChangeState
value = 751
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = p2bodydist X = [-5, 15]
triggerall = p2bodydist Y = [-15, 15]
triggerall = p2movetype != H
trigger1 = command = "bslam_down"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Knockdown Recovery
[State -1]
type = ChangeState
value = 900
trigger1 = stateno = 5110
trigger1 = command = "kd_recovery"
trigger1 = Alive

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = command = "FF"
trigger1 = StateNo != 100

;---------------------------------------------------------------------------
;Hop back
[State -1]
type = ChangeState
value = 105
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = command = "BB"

;Standing YB
[State -1]
type = ChangeState
value = 270
triggerall = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = [100, 101]
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger10 = Time <= 15
trigger11 = stateno = 220
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger12 = Time < 9
trigger13 = stateno = 260
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 261
trigger15 = movecontact

;Standing XA
[State -1]
type = ChangeState
value = 271
triggerall = command = "xy"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = [100, 101]
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger10 = Time <= 15
trigger11 = stateno = 220
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger12 = Time < 9
trigger13 = stateno = 260
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 261
trigger15 = movecontact

;Standing YA
[State -1]
type = ChangeState
value = 272
triggerall = command = "ya"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = [100, 101]
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger10 = Time <= 15
trigger11 = stateno = 220
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger12 = Time < 9
trigger13 = stateno = 260
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 261
trigger15 = movecontact

;Standing X
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = Time >= 5
trigger3 = stateno = 210
trigger3 = Time >= 6
trigger4 = stateno = 400
trigger4 = Time >= 5
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Standing Y (far)
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = Time >= 6
trigger3 = stateno = 200
trigger3 = Time >= 5
trigger4 = stateno = 400
trigger4 = Time >= 5
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Standing A (far)
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = Time >= 5
trigger3 = stateno = 210
trigger3 = Time >= 6
trigger4 = stateno = 400
trigger4 = Time >= 5
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Standing B (far)
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = Time >= 5
trigger3 = stateno = 210
trigger3 = Time >= 6
trigger4 = stateno = 400
trigger4 = Time >= 5
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Standing B (close)
[State -1]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = Time >= 5
trigger3 = stateno = 210
trigger3 = Time >= 6
trigger4 = stateno = 400
trigger4 = Time >= 5
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Standing Y (close)
[State -1]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = Time >= 6
trigger3 = stateno = 200
trigger3 = Time >= 5
trigger4 = stateno = 400
trigger4 = Time >= 5
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Standing A (close) - First punch
[State -1]
type = ChangeState
value = 260
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = Time >= 5
trigger3 = stateno = 210
trigger3 = Time >= 6
trigger4 = stateno = 400
trigger4 = Time >= 5
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Standing A (close) - Second punch
[State -1]
type = ChangeState
value = 261
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno = 260
trigger1 = Time >= 8
trigger2 = movecontact

;Standing A (close) - Third punch
[State -1]
type = ChangeState
value = 262
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno = 261
trigger1 = Time >= 6
trigger2 = movecontact

;Crouching X (far)
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = P2BodyDist X > 20
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = Time >= 5
trigger3 = stateno = 200
trigger3 = Time >= 5
trigger4 = stateno = 210
trigger4 = Time >= 6
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Crouching Y
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = Time >= 5
trigger3 = stateno = 200
trigger3 = Time >= 5
trigger4 = stateno = 210
trigger4 = Time >= 6
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Crouching X (close)
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = P2BodyDist X <= 20
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = Time >= 5
trigger3 = stateno = 200
trigger3 = Time >= 5
trigger4 = stateno = 210
trigger4 = Time >= 6
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Crouching A
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = Time >= 5
trigger3 = stateno = 200
trigger3 = Time >= 5
trigger4 = stateno = 210
trigger4 = Time >= 6
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Crouching B
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = Time >= 5
trigger3 = stateno = 200
trigger3 = Time >= 5
trigger4 = stateno = 210
trigger4 = Time >= 6
trigger5 = stateno = 410
trigger5 = Time >= 5
trigger6 = stateno = 240
trigger6 = Time >= 6
trigger7 = stateno = 420
trigger7 = Time >= 6
trigger8 = stateno = [100, 101]

;Jumping X
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger2 = Time >= 8
trigger3 = stateno = 600
trigger3 = Time >= 6

;Jumping Y (Down)
[State -1]
type = ChangeState
value = 630
triggerall = command = "down_a"
triggerall = statetype = A
trigger1 = ctrl = 1

;Jumping Y (Up)
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = Vel X = 0
trigger2 = Vel X = 1.5
trigger3 = Vel X = 2

;Jumping Y (Forward/Backwards)
[State -1]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = Vel X != 0
trigger1 = Vel X != 1.5
trigger1 = Vel X != 2

;Jumping A (Up)
[State -1]
type = ChangeState
value = 650
triggerall = command = "up_y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping A
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping B (Down)
[State -1]
type = ChangeState
value = 680
triggerall = command = "down_b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping B (Forward/Backwards)
[State -1]
type = ChangeState
value = 670
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = Vel X != 0
trigger1 = Vel X != 1.5
trigger1 = Vel X != 2

;Jumping B (Up)
[State -1]
type = ChangeState
value = 660
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = Vel X = 0
trigger2 = Vel X = 1.5
trigger3 = Vel X = 2

;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = Var(15) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [100, 101]

