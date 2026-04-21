;-| ’´•KE‹Z |--------------------------------------------------------
;‚±‚±‚É‚Í’´•KE‹Z‚ğ‹Lq‚µ‚Ä‚­‚¾‚³‚¢A“¯‚¶–¼‘O‚ğuname =v—“‚É‘‚¯‚Ü‚·‚ª
;ƒRƒ}ƒ“ƒh‚Íâ‘Î‚Éˆá‚Á‚½‚à‚Ì‚É‚µ‚Ä‚­‚¾‚³‚¢B
;ƒJƒ“ƒt[ƒ}ƒ“‚Íãƒpƒ“ƒ`‚Æ‹­ƒpƒ“ƒ`‚Å‹Z‚ªo‚¹‚é‚æ‚¤‚É“¯‚¶–¼‘O‚ÌƒRƒ}ƒ“ƒh‚Å
;“à—e‚ªã‚Æ‹­‚É‚È‚Á‚Ä‚¢‚Ü‚·B
;utime=20v‚Æ‘‚­‚±‚Æ‚ÅuƒRƒ}ƒ“ƒh‚ğ20ƒtƒŒ[ƒ€ˆÈ“à‚É“ü—Ív‚Æİ’è‚Å‚«‚Ü‚·B


[Command]
name = "”’—…–Å¸"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "”’—…–Å¸"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "–½aw"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "–½aw"
command = ~D, DF, F, D, DF, F, x
time = 20

;-| •KE‹Z |------------------------------------------------------

[Command]
name = "–‚•‘gçN"
command = ~D,DB,B, b

[Command]
name = "–‚•‘gçN"
command = ~D,DB,B, a

[Command]
name = "¾‰ÎàŠw"
command = ~D,DF,F, b

[Command]
name = "¾‰ÎàŠw"
command = ~D,DF,F, a

[Command]
name = "ãÄ”e"
command = ~F,D,DF, y

[Command]
name = "™€‰å"
command = ~F,D,DF, x

[Command]
name = "E–‚"
command = ~D,DF,F, y

[Command]
name = "”¾‹¾"
command = ~D,DF,F, x

[Command]
name = "‹Ù‹}‰ñ”ğ‘O"
command = x+a
time = 1

[Command]
name = "‹Ù‹}‰ñ”ğŒã"
command = /$B,x+a
time = 1

;-| ‚Q‰ñ‰Ÿ‚µ‹Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ‚QE‚RŒÂ‚Ì“¯‰Ÿ‚µ‹Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "‚Ó‚Á”ò‚Î‚µ"
command = y+b
time = 1

[Command]
name = "ƒXƒgƒ‰ƒCƒJ["
command = a+y
time = 1

;-| •ûŒü‚Æƒ{ƒ^ƒ“‚Åo‚·‹Z |---------------------------------------------------------
[Command]
name = "Œ¶–‚Õ1"
command = /$F,x
time = 1

[Command]
name = "Œ¶–‚Õ2"
command = /$B,x
time = 1

[Command]
name = "ƒNƒŠƒUƒŠƒbƒh"
command = /$F,x
time = 1

[Command]
name = "ƒƒ“"
command = /$F,y
time = 1

[Command]
name = "‚®‚é‚ª‚ñ"
command = /$F,a
time = 1

[Command]
name = "ƒ[ƒŠƒ“ƒOƒ\ƒoƒbƒg‚P"
command = /$F,b
time = 1

[Command]
name = "ƒ[ƒŠƒ“ƒOƒ\ƒoƒbƒg‚Q"
command = /$B,b
time = 1



[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ƒ{ƒ^ƒ“İ’èi‚¢‚¶‚ç‚È‚¢j|---------------------------------------------------------
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

;-| ‰Ÿ‚µ‚Á‚Ï‚È‚µİ’èi‚¢‚¶‚ç‚È‚¢j-------------------------------------------------------
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


; ‰º‚Ì‹Lq«‚Íâ‘Î‚ÉÁ‚³‚È‚¢‚Å‚­‚¾‚³‚¢B
[Statedef -1]
;===========================================================================

;---------------------------------------------------------------------------
;”’—…–Å¸2001
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "”’—…–Å¸"
triggerall = power >= 1000
;triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 215
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
;–½aw2000
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2005
triggerall = command = "–½aw"
triggerall = power >= 1000
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 215
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
;–½aw2001
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "–½aw"
triggerall = power >= 1000
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 215
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;–‚•‘gçN
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = command = "–‚•‘gçN"
triggerall = var(1) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;¾‰ÎàŠw
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "¾‰ÎàŠw"
triggerall = var(1) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;a•—‰”jEãÄ”e
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1110
triggerall = command = "ãÄ”e"
triggerall = var(1) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;a•—‰”jE™€‰å(2001E‹­)
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1101
triggerall = command = "ãÄ”e"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;a•—‰”jE™€‰å
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "™€‰å"
;triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;a•—‰”jEE–‚(2001)
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "E–‚"
triggerall = var(1) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;a•—‰”jEE–‚
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1011
triggerall = command = "E–‚"
triggerall = var(1) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;a•—‰”jE”¾‹¾
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "”¾‹¾"
;triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;===========================================================================
;---------------------------------------------------------------------------
;‚Ó‚Á”ò‚Î‚µUŒ‚
[State -1, Stand Light Punch]
type = ChangeState
value = 290
triggerall = command = "‚Ó‚Á”ò‚Î‚µ"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;‹ó’†‚Ó‚Á”ò‚Î‚µUŒ‚
[State -1, Stand Light Punch]
type = ChangeState
value = 690
triggerall = command = "‚Ó‚Á”ò‚Î‚µ"
trigger1 = statetype = A
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
;‹Ù‹}‰ñ”ğŒã
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "‹Ù‹}‰ñ”ğŒã"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;‹Ù‹}‰ñ”ğ‘O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "‹Ù‹}‰ñ”ğ‘O"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Œã‘Şƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
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
;‚Q‚O‚O‚PƒXƒgƒ‰ƒCƒJ[ƒNƒŠƒUƒŠƒbƒh
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2996
triggerall = command = "ƒNƒŠƒUƒŠƒbƒh"
triggerall = command != "holddown"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;‚Q‚O‚O‚PƒXƒgƒ‰ƒCƒJ[‚®‚é‚ª‚ñ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2997
triggerall = command = "‚®‚é‚ª‚ñ"
triggerall = command != "holddown"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;‚Q‚O‚O‚PƒXƒgƒ‰ƒCƒJ[ƒƒ“
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2998
triggerall = command = "ƒƒ“"
triggerall = command != "holddown"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;---------------------------------------------------------------------------
;Œ¶–‚Õ1
[State -1, Taunt]
type = ChangeState
value = 250
triggerall = command = "Œ¶–‚Õ1"
triggerall = command != "holddown"
triggerall = var(1) != 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Œ¶–‚Õ1ƒLƒƒƒ“ƒZƒ‹”Å
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 251
triggerall = command = "Œ¶–‚Õ1"
triggerall = command != "holddown"
triggerall = var(1) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1

;---------------------------------------------------------------------------
;Œ¶–‚Õ2
[State -1, Taunt]
type = ChangeState
value = 250
triggerall = command = "Œ¶–‚Õ2"
triggerall = command != "holddown"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Œ¶–‚Õ2ƒLƒƒƒ“ƒZƒ‹”Å
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 251
triggerall = command = "Œ¶–‚Õ2"
triggerall = command != "holddown"
triggerall = var(1) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 251
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1
trigger9 = stateno = 245
trigger9 = movecontact = 1
trigger10= stateno = 215
trigger10= movecontact = 1
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;—§‚¿ãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;2000‰“‹——£—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
;triggerall = command != "holddown"
triggerall = P2bodydist X > 23
triggerall = var(1) =1 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
;---------------------------------------------------------------------------
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
;triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;—§‚¿ãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
;---------------------------------------------------------------------------
;2000‹ß‹——£—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 23
triggerall = var(1) !=0 
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = null;ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 12) 

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 12)

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‹­ƒLƒbƒN
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
;‹ó’†ãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†‹­ƒpƒ“ƒ`
[State -1, Jump Strong Punch]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†ãƒLƒbƒN
[State -1, Jump Light Kick]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl


;---------------------------------------------------------------------------
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
