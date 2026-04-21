
;============================================================
; HYPERS
;============================================================ 
[Command]
name = "groove_1"
Command = ~D,DB, B, D,DB, B, a
time = 25

[Command]
name = "groove_2"
Command = ~D,DB, B, D,DB, B, b
time = 25

;============================================================
; SUPERS
;============================================================ 

[Command]
name = "gaudy_x"
command = x, x, x, x
time = 30

[Command]
name = "gaudy_y"
command = y, y, y, y
time = 30

[Command]
name = "retro_x"
command = ~D, DB, B, x
time = 20

[Command]
name = "retro_y"
command = ~D, DB, B, y
time = 20

[Command]
name = "arc_a"
command = ~D, DB, B, a
time = 20

[Command]
name = "arc_b"
command = ~D, DB, B, b
time = 20

[Command]
name = "funky_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "funky_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "fly_a"
command = ~D, DF, F, a
time = 20

[Command]
name = "fly_b"
command = ~D, DF, F, b
time = 20

;============================================================
; DOUBLE TAP
;============================================================ 
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;============================================================
; 2/3 COMBINAÇÃO DE BOTÕES
;============================================================ 
[Command]
name = "recovery"    ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "xy"    
command = x+y
time = 1

[Command]
name = "ab"
Command = a+b
time = 1

[Command]
name = "ax"
Command = a+x
time = 1

[Command]
name = "bx"
Command = b+x
time = 1

[Command]
name = "by"
Command = b+y
time = 1

[Command]
name = "ay"
Command = a+y
time = 1

[Command]
name = "xy"
Command = x+y
time = 1

[Command]
name = "abcd"
Command = x+y+a+b
time = 1

[Command]
name = "abcd"
Command = c+z
time = 1

[Command]
name = "helper"    
command = x+b
time = 1

;============================================================
; DIRECIONAL + BOTÃO
;============================================================ 
[Command]
name = "dig_a"
Command = /DF,a
time = 1

[Command]
name = "dig_b"
Command = /DF,b
time = 1

[Command]
name = "fw_xy"    
command = /~F,x+y
time = 1

[Command]
name = "bk_xy"    
command = /B,x+y
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
name = "fwd_a"
Command = /F,a
time = 1

[Command]
name = "fwd_b"
Command = /F,b
time = 1

[Command]
name = "fwd_c"
Command = /F,c
time = 1

[Command]
name = "fwd_x"
Command = /F,x
time = 1

[Command]
name = "fwd_y"
Command = /F,y
time = 1

[Command]
name = "fwd_z"
Command = /F,z
time = 1

[Command]
name = "back_a"
Command = /B,a
time = 1

[Command]
name = "back_b"
Command = /B,b
time = 1

[Command]
name = "back_c"
Command = /B,c
time = 1

[Command]
name = "back_x"
Command = /B,x
time = 1

[Command]
name = "back_y"
Command = /B,y
time = 1

[Command]
name = "back_z"
Command = /B,z
time = 1

;============================================================
; SINGLE
;============================================================ 
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

;============================================================
; SEGURAR DIRECIONAL
;============================================================ 
[Command]
name = "holdfwd" ;Required (do not remove)
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
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

;============================================================
; SEGURAR BOTÃO
;============================================================ 
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
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
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

;============================================================
; INTELIGENCIA ARTIFICIAL
;============================================================ 

[Command]
name = "cpu_1"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_2"
command = B, B, B, B, B
time = 1

[Command]
name = "cpu_3"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_4"
command = F, F, F, F, F
time = 1

[Command]
name = "cpu_5"
command = a, a, a, a, a
time = 1

[Command]
name = "cpu_6"
command = b, b, b, b, b
time = 1

[Command]
name = "cpu_7"
command = c, c, c, c, c
time = 1

[Command]
name = "cpu_8"
command = x, y, x, z, x
time = 1

[Command]
name = "cpu_9"
command = y, x, y, z, y
time = 1

[Command]
name = "cpu_10"
command = z, z, z, z, z
time = 1

[Command]
name = "cpu_11"
command = a, b, a, b, a
time = 1

[Command]
name = "cpu_12"
command = x, y, x, y, x
time = 1

[Command]
name = "cpu_13"
command = b, c, b, c, a
time = 1

[Command]
name = "cpu_14"
command = y, z, y, z, x
time = 1

[Command]
name = "cpu_15"
command = U, F, F, F, U
time = 1

[Command]
name = "cpu_16"
command = B, F, F, F, B
time = 1

[Command]
name = "cpu_17"
command = a, x, a, b
time = 1

[Command]
name = "cpu_18"
command = a, b, a, c
time = 1
[Command]
name = "cpu_19"
command = a, c, a, x
time = 1
[Command]
name = "cpu_20"
command = a, x, a, y
time = 1
[Command]
name = "cpu_21"
command = a, y, a, z
time = 1

[Command]
name = "cpu_22"
command = a, z, a, b
time = 1

[Command]
name = "cpu_23"
command = D, a, D, a
time = 1

[Command]
name = "cpu_24"
command = D, c, D, b
time = 1

[Command]
name = "cpu_25"
command = D, b, D, x
time = 1

[Command]
name = "cpu_26"
command = U, x, D, a
time = 1

[Command]
name = "cpu_27"
command = D, z, U, z
time = 1

[Command]
name = "cpu_28"
command = D, y, B, y
time = 1

[Command]
name = "cpu_29"
command = D, b, F, b
time = 1

[Command]
name = "cpu_30"
command = D, c, U, c
time = 1

;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
; INTELIGENCIA ARTIFICIAL
;===========================================================================
[State -1, Ativar AI]
type = VarSet
trigger1 = command = "cpu_1"
trigger2 = command = "cpu_2"
trigger3 = command = "cpu_3"
trigger4 = command = "cpu_4"
trigger5 = command = "cpu_5"
trigger6 = command = "cpu_6"
trigger7 = command = "cpu_7"
trigger8 = command = "cpu_8"
trigger9 = command = "cpu_9"
trigger10 = command = "cpu_10"
trigger11 = command = "cpu_11"
trigger12 = command = "cpu_12"
trigger13 = command = "cpu_13"
trigger14 = command = "cpu_14"
trigger15 = command = "cpu_15"
trigger16 = command = "cpu_16"
trigger17 = command = "cpu_17"
trigger18 = command = "cpu_18"
trigger19 = command = "cpu_19"
trigger20 = command = "cpu_20"
trigger21 = command = "cpu_21"
trigger22 = command = "cpu_22"
trigger23 = command = "cpu_23"
trigger24 = command = "cpu_24"
trigger25 = command = "cpu_25"
trigger26 = command = "cpu_26"
trigger27 = command = "cpu_27"
trigger28 = command = "cpu_28"
trigger29 = command = "cpu_29"
trigger30 = command = "cpu_30"
v = 59
value = 1

;---------------------------------------------------------------------------
; AI Standing Guard
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 130
triggerall = Var(59) = 1
triggerall = ctrl
triggerall = random < 500
trigger1 = P2movetype = A
trigger1 = statetype = S
trigger1 = P2BodyDist X < 100
;---------------------------------------------------------------------------
; AI Crouching Guard
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 131
triggerall = Var(59) = 1
triggerall = ctrl
triggerall = random < 999
trigger1 = P2movetype = A
trigger1 = statetype = C
trigger1 = P2statetype != A
;---------------------------------------------------------------------------
; AI Air Guard
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 132
triggerall = Var(59) = 1
triggerall = ctrl
triggerall = pos Y != 0
triggerall = random < 999
trigger1 = P2movetype = A
trigger1 = statetype = A


;===========================================================================
; GOLPES HYPER
;===========================================================================

;---------------------------------------------------------------------------
; GOOVE MASTER - LEVEL 2
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "groove_2" 
triggerall = StateType = S && Power >= 2000
trigger1 = Ctrl = 1 || StateNo = 105
;---------------------------------------------------------------------------
; GOOVE MASTER - LEVEL 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "groove_1"
triggerall = StateType = S && Power >= 1000
trigger1 = Ctrl = 1 || StateNo = 105
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "groove_2"
triggerall = StateType = S && Power >= 1000
trigger1 = Ctrl = 1 || StateNo = 105

;===========================================================================
; GOLPES ESPECIAIS
;===========================================================================

;---------------------------------------------------------------------------
; GAUDY PUNCH - FRACO
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
trigger1 = command = "gaudy_x"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; GAUDY PUNCH - FORTE
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
trigger1 = command = "gaudy_y"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; RETRO KNUCKLE - FRACO
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
trigger1 = command = "retro_x"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; RETRO KNUCKLE - FORTE
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1101
trigger1 = command = "retro_y"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; ARC FLIENGEN - FRACO
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
trigger1 = command = "arc_a"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; ARC FLIENGEN - FORTE
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1201
trigger1 = command = "arc_b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; FUNKY IMPACT - FRACO
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1300
trigger1 = command = "funky_x"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; FUNKY IMPACT - FORTE
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1301
trigger1 = command = "funky_y"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
; MOVIMENTOS COMUNS
;---------------------------------------------------------------------------
; CORRIDA
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; RECUO
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Esquiva
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 320
triggerall = command = "z" && command != "holdfwd" && command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Esquiva/Rolada Frente
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 330
triggerall = command = "fwd_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 100
;---------------------------------------------------------------------------
; Esquiva/Rolada Trás
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 340
triggerall = command = "back_z"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
; ARREMESSOS
;---------------------------------------------------------------------------
; Arremesso com Soco
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = P2BodyDist X < 8
triggerall = statetype = S
triggerall = command = "fwd_y" || command = "back_y"
trigger1 = ctrl

;===========================================================================
; GOLPES PARTICULARES
;---------------------------------------------------------------------------
; ADITIONAL ATTACK 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 300
triggerall = command = "holddown"
triggerall = Command = "dig_a"
trigger1 = StateType = C
trigger1 = Ctrl = 1 || StateNo = 100
;---------------------------------------------------------------------------
; ADITIONAL ATTACK 2
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 310
triggerall = Command = "fwd_x"
trigger1 = StateType = S
trigger1 = Ctrl = 1 
;---------------------------------------------------------------------------
; FIRST IMPACT
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 350
triggerall = Command = "c" && P2BodyDist X > 10
trigger1 = StateType = S
trigger1 = Ctrl = 1 


;===========================================================================
; SOCOS E CHUTES
;---------------------------------------------------------------------------
; SOCO FRACO EM PÉ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,205,200)
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100
;---------------------------------------------------------------------------
; CHUTE FRACO EM PÉ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,235,230)
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100
;---------------------------------------------------------------------------
; SOCO FORTE EM PÉ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100
;---------------------------------------------------------------------------
; CHUTE FORTE EM PÉ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,245,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100
;---------------------------------------------------------------------------
; PROVOCAÇÃO
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; SOCO FRACO ABAIXADO
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; SOCO FORTE ABAIXADO
;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
; CHUTE FRACO ABAIXADO
;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 
trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
; CHUTE FORTE ABAIXADO
;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
; SOCO FRACO NO AR
;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
;---------------------------------------------------------------------------
; SOCO FORTE NO AR 
;---------------------------------------------------------------------------
[State -1, Soco Forte no ar]
type = ChangeState
value = ifelse (!Var(4) && !Vel X, 610, 615)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; CHUTE FRACO NO AR
;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = ifelse (!Var(4) && !Vel X, 630, 640)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; CHUTE FORTE NO AR 
;---------------------------------------------------------------------------
[State -1, Chute Forte no Ar]
type = ChangeState
value = ifelse (!Var(4) && !Vel X, 640, 645)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

