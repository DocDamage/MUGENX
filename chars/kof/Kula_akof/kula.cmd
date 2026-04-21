;-| Super Motions |---------------------------

[command]
name = "ra_ca"
command = D,B,D,F,a+b
time = 40

[Command]
name = "freeze_execution"
command = ~D,DF,F,D,DF,F,a+b
time = 28

[Command]
name = "diamond_edge_MAX"
command = ~D,DF,F,D,DF,F,x+y
time = 24

[Command]
name = "diamond_edge_A"
command = ~D,DF,F,D,DF,F,x
time = 24

[Command]
name = "diamond_edge_C"
command = ~D,DF,F,D,DF,F,y
time = 24

[Command]
name = "diamond_edge_CM"
command = ~D,F,D,DF,x
time = 24

[Command]
name = "diamond_edge_CM"
command = ~D,F,D,DF,y
time = 24

[Command]
name = "heavensdrive"
command = ~D, F, D, F, a
time = 24

[Command]
name = "heavensdrive"
command = ~D, F, D, F, b
time = 24

;-| Special Motions |------------------------------------------------------
[Command]
name = "crow_bite_A"
command = ~F,D,DF,x
time = 12

[Command]
name = "crow_bite_C"
command = ~F,D,DF,y

[Command]
name = "counter_shell"
command = ~D,DB,B,x

[Command]
name = "counter_shell"
command = ~D,DB,B,y

[Command]
name = "diamond_breath_A"
command = ~D,DF,F,x

[Command]
name = "diamond_breath_C"
command = ~D,DF,F,y

[Command]
name = "ray_spin_B"
command = ~D,DB,B,a

[Command]
name = "ray_spin_D"
command = ~D,DB,B,b


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
command = a+b
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
command = c
time = 1

[Command]
name = "x"
command = y
time = 1

[Command]
name = "y"
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

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "left"
command = B
time = 1

[Command]
name = "right"
command = F
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

[Command]
name = "hold_a";Required (do not remove)
command = /$x
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /$a
time = 1

[Command]
name = "hold_x";Required (do not remove)
command = /$y
time = 1

[Command]
name = "hold_y";Required (do not remove)
command = /$b
time = 1


[Command]
name = "hold_c";Required (do not remove)
command = /$c
time = 1

[Command]
name = "hold_z";Required (do not remove)
command = /$z
time = 1

[Command]
name = "longjump"
command = D, $U

;===========================================================================
[Statedef -1]

;ラ☆カチョーラ　AKOF Ver.
[State -1]
type = ChangeState
value = 968
triggerall = command = "ra_ca"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = Life <= 800
trigger1 = ctrl = 1

[State -1, FREEZE EXECUTION]
type = ChangeState
value = 3200
triggerall = var(5) = 0 || var(6) = 0
triggerall = power >= 2000
triggerall = command = "freeze_execution" 
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])


[State -1, Diamond Edge MAX]
type = ChangeState
value = 3100
triggerall = var(5) = 0 || var(6) = 0
triggerall = power >= 2000
triggerall = command = "diamond_edge_MAX"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])



[State -1, CM Diamond Edge]
type = ChangeState
value = 3300
triggerall = var(6) = 0 && var(5) != 0
triggerall = command = "diamond_edge_A" || command = "diamond_edge_C" || command = "diamond_edge_CM"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 1000) && (animelemtime(7) >= 3)
trigger11 = (stateno = 1050) && (animelemtime(5) >= 3)
trigger12 = (stateno = 1500) || (stateno = 1501)
trigger13 = (stateno = 1550) || (stateno = 1551)
trigger14 = (stateno = 960) && (time = [4,6]) 
trigger15 = (stateno = 961) && (time = [6,9])




[State -1, Diamond Edge A]
type = ChangeState
value = 3000
triggerall = var(5) = 0 && var(6) = 0
triggerall = power >= 1000
triggerall = command = "diamond_edge_A"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])

[State -1, Diamond Edge C]
type = ChangeState
value = 3050
triggerall = var(5) = 0 && var(6) = 0
triggerall = power >= 1000
triggerall = command = "diamond_edge_C"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])



; ヘヴンズドライブ
[state -1]
type = changestate
value = 3340
triggerall = command = "heavensdrive"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])



;--------------------------
[State -1, Crow Bite A]
type = ChangeState
value = 1500
triggerall = command = "crow_bite_A"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])

[State -1, Crow Bite C]
type = ChangeState
value = 1550
triggerall = command = "crow_bite_C"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])


[State -1, Counter Shell]
type = ChangeState
value = 1100
triggerall = command = "counter_shell" && command != "freeze_execution"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])


[State -1, Diamond Breath A]
type = ChangeState
value = 1000
triggerall = command = "diamond_breath_A" && command != "diamond_edge_A"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])

[State -1, Diamond Breath C]
type = ChangeState
value = 1050
triggerall = command = "diamond_breath_C" && command != "diamond_edge_C"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])


[State -1, Ray Spin B]
type = ChangeState
value = 1300
triggerall = command = "ray_spin_B"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])
trigger12 = (stateno = 963); && (time = [5,10])

[State -1, Ray Spin B]
type = ChangeState
value = 1350
triggerall = command = "ray_spin_D"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)
trigger2 = stateno = 301 && movecontact && movetype = A
trigger3 = (stateno = 200) && (time = [5,12]) && movetype = A
trigger4 = (stateno = 220) && (time = [13,20]) && movetype = A
trigger5 = (stateno = 270) && (time = [2,5]) && movetype = A && movecontact
trigger6 = (stateno = 270) && (time = [14,19]) && movetype = A && movecontact
trigger7 = (stateno = 400) && (time = [6,13]) && movetype = A
trigger8 = (stateno = 410) && (time = [8,15]) && movetype = A
trigger9 = (stateno = 430) && (time = [7,14]) && movetype = A
trigger10 = (stateno = 960) && (time = [4,6]) 
trigger11 = (stateno = 961) && (time = [6,9])
trigger12 = (stateno = 963); && (time = [5,10])




;======================================
; Combo cancel Vars set..buffer?
[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = power >= 3000
trigger1 = var(2) = 0
trigger1 = command = "freeze_execution" && Command != "counter_shell"
var(2) = 3200

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = power >= 3000
trigger1 = var(2) = 0
trigger1 = command = "diamond_edge_MAX"
var(2) = 3100

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = power >= 1000
trigger1 = var(2) = 0
trigger1 = command = "diamond_edge_A"
var(2) = 3000

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = power >= 1000
trigger1 = var(2) = 0
trigger1 = command = "diamond_edge_C"
var(2) = 3050

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = var(2) = 0
trigger1 = command = "crow_bite_A"
var(2) = 1500

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = var(2) = 0
trigger1 = command = "crow_bite_C"
var(2) = 1550

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = var(2) = 0
trigger1 = Command = "counter_shell" && command != "freeze_execution"
var(2) = 1100

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = var(2) = 0
trigger1 = Command = "diamond_breath_A" && command != "diamond_edge_A"
var(2) = 1000

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = var(2) = 0
trigger1 = Command = "diamond_breath_C" && command != "diamond_edge_C"
var(2) = 1050

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = var(2) = 0
trigger1 = Command = "ray_spin_B"
var(2) = 1300

[State -1]
type = varset
trigger1 = stateno != 702
trigger1 = var(2) = 0
trigger1 = Command = "ray_spin_D"
var(2) = 1350


;----------------------------
; ICE COFFIN
[State -1, ice coffin]
type = ChangeState
value = 700
triggerall = statetype = S && P2statetype != A && P2movetype != H
triggerall = (command = "holdfwd" || command = "holdback") && command = "x"
triggerall = stateno != 100 && P2stateno != 5120
trigger1 = P2bodydist X <= 2
trigger1 = ctrl = 1

[State -1,Behind Slash]
type = ChangeState
value = 750
triggerall = statetype = S && P2statetype != A && P2movetype != H
triggerall = (command = "holdfwd" || command = "holdback") && command = "y"
triggerall = stateno != 100 && P2stateno != 5120
trigger1 = P2bodydist X <= 2
trigger1 = ctrl = 1

;-------------------
; Launch Counter mode
;[State -1]
;type = ChangeState
;value = 2000
;triggerall = power >= 3000
;triggerall = var(5) = 0
;triggerall = statetype != A
;triggerall = command = "a" && command = "b" && command = "x"
;trigger1 = ctrl = 1

;-------------------
; Launch Armor mode
;[State -1]
;type = ChangeState
;value = 2600
;triggerall = power >= 3000
;triggerall = var(6) = 0
;triggerall = statetype != A
;triggerall = command = "b" && command = "x" && command = "y"
;trigger1 = ctrl = 1


;------------------------
;Dodge back during guard
[State -1, dodge back]
type = changestate
value = 361
triggerall = stateno = 150 || stateno = 152
triggerall = Statetype != A
triggerall = power >= 1000
triggerall = (command = "holdback") && (command = "a") && (command = "b")
trigger1 = ctrl = 0

;Dodge back
[State -1, dodge back]
type = changestate
value = 360
triggerall = Statetype != A
triggerall = (command = "holdback") && (command = "a") && (command = "b")
trigger1 = ctrl || (stateno = 100 && time >= 3)

;--------------------------
; dodge fwd during guard
[State -1, dodge back]
type = changestate
value = 351
triggerall = stateno = 150 || stateno = 152
triggerall = Statetype != A
triggerall = power >= 1000
triggerall = (command = "a") && (command = "b")
trigger1 = ctrl = 0

;Dodge fwd
[State -1, dodge fwd]
type = changestate
value = 350
triggerall = Statetype != A
triggerall = (command = "a") && (command = "b")
trigger1 = ctrl || (stateno = 100 && time >= 3)


;--------------------------
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

;--------------------------
;taunt
[State -1, taunt]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl || (stateno = 100 && time >= 3)


;C ice 
[State -1]
type = ChangeState
value = 964
triggerall = command = "holddown" && command = "holdfwd" && command = "x"
triggerall = statetype != A
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)
trigger2 = stateno = 270 && movecontact
trigger3 = (stateno = 200) && (time = [5,12])
trigger4 = (stateno = 220) && (time = [13,20])
trigger5 = (stateno = 270) && (time = [2,4])
trigger6 = (stateno = 270) && (time = [14,19])
trigger7 = (stateno = 400) && (time = [6,10])
trigger8 = (stateno = 410) && (time >= 8)

;---------------------
; One inch
[State -1]
type = changestate
value = 300
triggerall = statetype != A
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)
trigger2 = (stateno = 200) && (time = [5,12]) && movetype = A && !movecontact
trigger3 = (stateno = 220) && (time = [13,20]) && movetype = A && !movecontact
trigger4 = (stateno = 270) && (time = [4,6]) && movetype = A
trigger5 = (stateno = 270) && (time = [16,19]) && movetype = A
trigger6 = (stateno = 400) && (time = [6,13]) && movetype = A && !movecontact
trigger7 = (stateno = 410) && (time = [8,15]) && movetype = A && !movecontact
trigger8 = (stateno = 430) && (time = [7,14]) && movetype = A && !movecontact
trigger9 = (stateno = 960) && (time = [4,6])

;---------------------
; One inch cancel
[State -1]
type = changestate
value = 301
triggerall = statetype != A
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = (stateno = 200) && (time = [5,12]) && movetype = A && movecontact
trigger2 = (stateno = 220) && (time = [13,20]) && movetype = A && movecontact
trigger3 = (stateno = 270) && (time = [2,3]) && movetype = A && movecontact
trigger4 = (stateno = 270) && (time = [14,15]) && movetype = A && movecontact
trigger5 = (stateno = 400) && (time = [6,13]) && movetype = A && movecontact
trigger6 = (stateno = 410) && (time = [8,15]) && movetype = A && movecontact
trigger7 = (stateno = 430) && (time = [7,14]) && movetype = A && movecontact
trigger8 = (stateno = 960) && (time = [4,6])


[State -1]
type = changestate
value = 200
triggerall = statetype != A
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)
trigger2 = (stateno = 200) && (time = [5,8])
trigger3 = (stateno = 960) && (time = [4,6])

[State -1]
type = changestate
value = 210
triggerall = statetype != A
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)
trigger2 = (stateno = 200) && (time = [5,8])
trigger3 = (stateno = 961) && (time = [6,9])



;--------------------------
; stand CD attack during guard
[State -1, CD]
type = changestate
value = 245
triggerall = Statetype != A
triggerall = power >= 1000
triggerall = stateno = 150 || stateno = 152
triggerall = (command = "x") && (command = "y")
trigger1 = !ctrl

;--------------------------
; stand CD attack
[State -1, CD]
type = changestate
value = 240
triggerall = Statetype != A
triggerall = (command = "x") && (command = "y")
trigger1 = ctrl || (stateno = 100 && time >= 3)


[State -1]
type = changestate
value = 270
triggerall = P2dist X <= 59
triggerall = statetype != A
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)

[State -1]
type = changestate
value = 220
triggerall = P2dist X > 59
triggerall = statetype != A
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)

[State -1]
type = changestate
value = 230
;triggerall = P2dist X > 64
triggerall = statetype != A
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)




; sliding kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "holddown" && command = "holdfwd" && command = "b"
triggerall = statetype != A
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)
trigger2 = stateno = 270 && movecontact
trigger3 = (stateno = 200) && (time = [5,12])
trigger4 = (stateno = 220) && (time = [13,20])
trigger5 = (stateno = 270) && (time = [2,4])
trigger6 = (stateno = 270) && (time = [14,19])
trigger7 = (stateno = 400) && (time = [6,10])
trigger8 = (stateno = 410) && (time >= 8)

; Crouching A
[State -1]
type = ChangeState
value = 400
triggerall = command = "holddown" && command = "a"
triggerall = statetype != A
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)
trigger2 = stateno = 410 && time >= 8

; Crouching B
[State -1]
type = ChangeState
value = 410
triggerall = command = "holddown" && command = "b" && command != "holdfwd"
triggerall = statetype != A
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)
trigger2 = stateno = 410 && time >= 8
trigger3 = stateno = 962 && time >= 5

; Crouching C
[State -1]
type = ChangeState
value = 420
triggerall = command = "holddown" && command = "x"
triggerall = statetype != A
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)

; Crouching D
[State -1]
type = ChangeState
value = 430
triggerall = command = "holddown" && command = "y"
triggerall = statetype != A
trigger1 = ctrl = 1 || (stateno = 100 && time >= 3)


; Jumping light punch
[State -1]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = command = "a"
trigger1 = ctrl = 1

; Jumping light kick
[State -1]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = command = "b"
trigger1 = ctrl = 1

; Jumping CD attack
[State -1]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = command = "x" && command = "y"
trigger1 = ctrl = 1

; Jumping hard punch
[State -1]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = command = "x"
trigger1 = ctrl = 1

; Jumping hard kick
[State -1]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = command = "y"
trigger1 = ctrl = 1


;============================
; ICE WALLS
[STATE HELPER-StandIceWall]
type = helper
triggerall = numhelper(123) = 0
trigger1 = statetype = S
trigger1 = stateno = 120 || stateno = 130 || stateno = 150
trigger2 = numhelper(123) = 0
trigger2 = stateno = 150 || anim = 150
persistent = 0
pos = 0,0
postype = P1
name = "Ice wall"
stateno = 123
ownpal = 1
shadow = 128,128,128
ignorehitpause = 1
ID = 123

[STATE HELPER-CrouchIceWall]
type = helper
triggerall = statetype = C
triggerall = numhelper(124) = 0
trigger1 = stateno = 120 || stateno = 131 || stateno = 152
persistent = 0
pos = 0,0
postype = P1
name = "Ice wall"
stateno = 124
ownpal = 1
shadow = 128,128,128
ignorehitpause = 1
ID = 124

[STATE HELPER-AirIceWall]
type = helper
triggerall = numhelper(125) = 0
triggerall = statetype = A
trigger1 = stateno = 120 || stateno = 132 || stateno = 154
persistent = 0
pos = 0,0
postype = P1
name = "Ice wall"
stateno = 125
ownpal = 1
shadow = 128,128,128
ignorehitpause = 1
ID = 125


;-------------オリジナル