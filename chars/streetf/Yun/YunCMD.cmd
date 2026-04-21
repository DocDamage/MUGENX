;==============================================
;"Yun Lee", from Street Fighter 3: 3rd Strike
;==============================================

;----------------------------------------
;Author:	FlowaGirl
;		flowergirl@cutey.com
;		http://blargh.i-xcell.com
;----------------------------------------

;===========================================================================
;-| Notes |-----------------------------------------------------------------

;-| Button Remapping |-------------------------------------------------

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |---------------------------------------------------

[Defaults]
command.time = 15
command.buffer.time = 5

;-| AI Motions |--------------------------------------------------------

[Command]
name = "AI"
command = U, U, U
time = 1

[Command]
name = "AI1"
command = D, D, D
time = 1

[Command]
name = "AI2"
command = F, F, F
time = 1

[Command]
name = "AI3"
command = B, B, B
time = 1

[Command]
name = "AI4"
command = U, U, U
time = 1

[Command]
name = "AI5"
command = D, D, D
time = 1

[Command]
name = "AI6"
command = F, F, F
time = 1

[Command]
name = "AI7"
command = B, B, B
time = 1

[Command]
name = "AI8"
command = U, U, U
time = 1

[Command]
name = "AI9"
command = D, D, D
time = 1

[Command]
name = "AI10"
command = F, F, F
time = 1

[Command]
name = "AI11"
command = D, D, D
time = 1

[Command]
name = "AI12"
command = F, F, F
time = 1

[Command]
name = "AI13"
command = B, B, B
time = 1

[Command]
name = "AI14"
command = U, U, U
time = 1

[Command]
name = "AI15"
command = D, D, D
time = 1

[Command]
name = "AI16"
command = F, F, F
time = 1

[Command]
name = "AI17"
command = B, B, B
time = 1

[Command]
name = "AI18"
command = U, U, U
time = 1

[Command]
name = "AI19"
command = D, D, D
time = 1

[Command]
name = "AI20"
command = F, F, F
time = 1

;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "Genei Jin"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "Genei Jin"
command = ~D, DB, B, D, DB, B, ~x
time = 20

[Command]
name = "Genei Jin"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "Genei Jin"
command = ~D, DB, B, D, DB, B, ~y
time = 20

[Command]
name = "Genei Jin"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "Genei Jin"
command = ~D, DB, B, D, DB, B, ~z
time = 20

;-| Special EX Motions |---------------------------------------------------

[Command]
name = "Zesshou Hohou EX"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "Zesshou Hohou EX"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "Zesshou Hohou EX"
command = ~D, DF, F, x+z
time = 15

[Command]
name = "Tetsuzan Kou EX"
command = ~F, D, $F, x+y
time = 15

[Command]
name = "Tetsuzan Kou EX"
command = ~F, D, $F, y+z
time = 15

[Command]
name = "Tetsuzan Kou EX"
command = ~F, D, $F, x+z
time = 15

[Command]
name = "Nishou Kyaku EX"
command = ~F, D, $F, a+b
time = 15

[Command]
name = "Nishou Kyaku EX"
command = ~F, D, $F, b+c
time = 15

[Command]
name = "Nishou Kyaku EX"
command = ~F, D, $F, a+c
time = 15

[Command]
name = "Senkyuutai EX"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "Senkyuutai EX"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "Senkyuutai EX"
command = ~D, DF, F, a+c
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "Zesshou Hohou"
command = ~D, DF, F, x
time = 15

[Command]
name = "Zesshou Hohou"
command = ~D, DF, F, ~x
time = 15

[Command]
name = "Zesshou Hohou"
command = ~D, DF, F, y
time = 15

[Command]
name = "Zesshou Hohou"
command = ~D, DF, F, ~y
time = 15

[Command]
name = "Zesshou Hohou"
command = ~D, DF, F, z
time = 15

[Command]
name = "Zesshou Hohou"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "Zesshou Hohou X"
command = ~D, DF, F, x
time = 15

[Command]
name = "Zesshou Hohou X"
command = ~D, DF, F, ~x
time = 15

[Command]
name = "Zesshou Hohou Y"
command = ~D, DF, F, y
time = 15

[Command]
name = "Zesshou Hohou Y"
command = ~D, DF, F, ~y
time = 15

[Command]
name = "Kobokushi"
command = ~D, DB, B, x
time = 15

[Command]
name = "Kobokushi"
command = ~D, DB, B, ~x
time = 15

[Command]
name = "Kobokushi"
command = ~D, DB, B, y
time = 15

[Command]
name = "Kobokushi"
command = ~D, DB, B, ~y
time = 15

[Command]
name = "Kobokushi"
command = ~D, DB, B, z
time = 15

[Command]
name = "Kobokushi"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "Fake Kobokushi"
command = ~D, DB, B, x+y
time = 15

[Command]
name = "Fake Kobokushi"
command = ~D, DB, B, y+z
time = 15

[Command]
name = "Fake Kobokushi"
command = ~D, DB, B, x+z
time = 15

[Command]
name = "Tetsuzan Kou"
command = ~F, D, $F, x
time = 15

[Command]
name = "Tetsuzan Kou"
command = ~F, D, $F, ~x
time = 15

[Command]
name = "Tetsuzan Kou"
command = ~F, D, $F, y
time = 15

[Command]
name = "Tetsuzan Kou"
command = ~F, D, $F, ~y
time = 15

[Command]
name = "Tetsuzan Kou"
command = ~F, D, $F, z
time = 15

[Command]
name = "Tetsuzan Kou"
command = ~F, D, $F, ~z
time = 15

[Command]
name = "Tetsuzan Kou X"
command = ~F, D, $F, x
time = 15

[Command]
name = "Tetsuzan Kou X"
command = ~F, D, $F, ~x
time = 15

[Command]
name = "Tetsuzan Kou Y"
command = ~F, D, $F, y
time = 15

[Command]
name = "Tetsuzan Kou Y"
command = ~F, D, $F, ~y
time = 15

[Command]
name = "Nishou Kyaku"
command = ~F, D, $F, a
time = 15

[Command]
name = "Nishou Kyaku"
command = ~F, D, $F, ~a
time = 15

[Command]
name = "Nishou Kyaku"
command = ~F, D, $F, b
time = 15

[Command]
name = "Nishou Kyaku"
command = ~F, D, $F, ~b
time = 15

[Command]
name = "Nishou Kyaku"
command = ~F, D, $F, c
time = 15

[Command]
name = "Nishou Kyaku"
command = ~F, D, $F, ~c
time = 15

[Command]
name = "Nishou Kyaku A"
command = ~F, D, $F, a
time = 15

[Command]
name = "Nishou Kyaku A"
command = ~F, D, $F, ~a
time = 15

[Command]
name = "Nishou Kyaku B"
command = ~F, D, $F, b
time = 15

[Command]
name = "Nishou Kyaku B"
command = ~F, D, $F, ~b
time = 15

[Command]
name = "Zenpou Tenshin"
command = ~F, $D, $B, a
time = 15

[Command]
name = "Zenpou Tenshin"
command = ~F, $D, $B, ~a
time = 15

[Command]
name = "Zenpou Tenshin"
command = ~F, $D, $B, b
time = 15

[Command]
name = "Zenpou Tenshin"
command = ~F, $D, $B, ~b
time = 15

[Command]
name = "Zenpou Tenshin"
command = ~F, $D, $B, c
time = 15

[Command]
name = "Zenpou Tenshin"
command = ~F, $D, $B, ~c
time = 15

[Command]
name = "Senkyuutai"
command = ~D, DF, F, a
time = 15

[Command]
name = "Senkyuutai"
command = ~D, DF, F, ~a
time = 15

[Command]
name = "Senkyuutai"
command = ~D, DF, F, b
time = 15

[Command]
name = "Senkyuutai"
command = ~D, DF, F, ~b
time = 15

[Command]
name = "Senkyuutai"
command = ~D, DF, F, c
time = 15

[Command]
name = "Senkyuutai"
command = ~D, DF, F, ~c
time = 15

[Command]
name = "Senkyuutai A"
command = ~D, DF, F, a
time = 15

[Command]
name = "Senkyuutai A"
command = ~D, DF, F, ~a
time = 15

[Command]
name = "Senkyuutai B"
command = ~D, DF, F, b
time = 15

[Command]
name = "Senkyuutai B"
command = ~D, DF, F, ~b
time = 15

;-| Misc Motions |---------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "Long Jump"
command = $D, $U
time = 10

[Command]
name = "Gekihou Sui"
command = ~D, D, x
time = 15

[Command]
name = "Gekihou Sui"
command = ~D, D, y
time = 15

[Command]
name = "Gekihou Sui"
command = ~D, D, z
time = 15

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 5

[Command]
name = "recovery"
command = y+z
time = 5

[Command]
name = "recovery"
command = x+z
time = 5

[Command]
name = "recovery"
command = x+y+z
time = 5

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 5

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "ab"
command = a+b
time = 5

[Command]
name = "bc"
command = b+c
time = 5

[Command]
name = "ac"
command = a+c
time = 5

[Command]
name = "abc"
command = a+b+c
time = 5

[Command]
name = "xa"
command = x+a
time = 5

[Command]
name = "by"
command = b+y
time = 5

[Command]
name = "cz"
command = c+z
time = 5

;-| Dir + Button |---------------------------------------------------------

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 3

[Command]
name = "c"
command = c
time = 1
buffer.time = 3

[Command]
name = "x"
command = x
time = 1
buffer.time = 3

[Command]
name = "y"
command = y
time = 1
buffer.time = 3

[Command]
name = "z"
command = z
time = 1
buffer.time = 3

[Command]
name = "s"
command = s
time = 1

[Command]
name = "Fwd"
command = F
time = 1

[Command]
name = "Back"
command = B
time = 1

;-| Hold Dir |--------------------------------------------------------------

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

[Command]
name = "holdx" 
command = /x
time = 1

[Command]
name = "holdy" 
command = /y
time = 1

[Command]
name = "holdz" 
command = /z
time = 1

[Command]
name = "holda" 
command = /a
time = 1

[Command]
name = "holdb" 
command = /b
time = 1

[Command]
name = "holdc" 
command = /c
time = 1

[Command]
name = "holds" 
command = /s
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------

;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 			= 100
triggerall 		= (Command = "FF")
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type			= ChangeState
value 			= 105
triggerall 		= (Command = "BB")
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Personal Action
[State -1: 		PA]
type 			= ChangeState
value 			= 198
triggerall 		= (Command = "c") && (Command = "z")
trigger1		= ((StateType = S) && (Ctrl))  || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Gekihou Sui
[State -1: 		Gekihou Sui]
type 			= ChangeState
value 			= 700
triggerall 		= ((Command = "b") && (Command = "y") && (Var(20) != [4,5])) || ((Command = "Gekihou Sui") && (Var(20) = [4,5]))
trigger1		= ((StateType = S) && (Ctrl) && (Var(20) != [4,5])) || ((StateType != A) && (Ctrl) && (Var(20) = [4,5])) || ((StateNo = 7000) && (AnimElem = 3, > 5))
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Nage
[State -1: 		Nage]
type 			= ChangeState
value 			= 800
triggerall		= (Var(21) = 0)
triggerall 		= (Command = "a") && (Command = "x") && (Var(20) != [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Nage (2nd Impact)
[State -1: 		Nage]
type 			= ChangeState
value 			= 800
triggerall		= (Var(21) = 0)
triggerall 		= (P2BodyDist X <= 10) && (Var(20) = [4,5]) && (P2StateType != A) && (P2MoveType != H) && ((Command = "holdback") || (Command = "holdfwd")) && ((Command = "y") || (Command = "z") || (Command = "b") || (Command = "c"))
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
ignorehitpause 		= 1

;===========================================================================
;-| Hyper |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Genei Jin
[State -1: 		Genei Jin]
type 			= ChangeState
value 			= 3020
triggerall 		= (Command = "Genei Jin") && (Power >= 1000) && (Var(21) = 0)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5)) || (Var(3))
ignorehitpause 		= 1

;===========================================================================
;-| Special EX |------------------------------------------------------------

;---------------------------------------------------------------------------
;Zesshou Hohou EX
[State -1: 		Zesshou Hohou EX]
type 			= ChangeState
value 			= 2000
triggerall 		= (Command = "Zesshou Hohou EX") && (Command != "Tetsuzan Kou EX") && (Power >= 333) && (Var(21) = 0)
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Tetsuzan Kou EX
[State -1: 		Tetsuzan Kou EX]
type 			= ChangeState
value 			= 2020
triggerall 		= (Command = "Tetsuzan Kou EX") && (Power >= 333) && (Var(21) = 0)
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Nishou Kyaku EX
[State -1: 		Nishou Kyaku EX]
type 			= ChangeState
value 			= 2030
triggerall 		= (Command = "Nishou Kyaku EX") && (Power >= 333) && (Var(21) = 0) && (Var(20) != [4,5])
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Senkyuutai EX
[State -1: 		Senkyuutai EX]
type 			= ChangeState
value 			= 2060
triggerall 		= (Command = "Senkyuutai EX") && (Command != "Nishou Kyaku EX") && (Power >= 333) && (Var(21) = 0) && (Var(20) = [4,5])
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;===========================================================================
;-| Special |---------------------------------------------------------------

;---------------------------------------------------------------------------
;Zesshou Hohou
[State -1: 		Zesshou Hohou]
type 			= ChangeState
value 			= 1000
triggerall 		= (Command = "Zesshou Hohou") && (Command != "Tetsuzan Kou")
triggerall		= (Var(4) := IfElse(Command = "Zesshou Hohou X",1,IfElse(Command = "Zesshou Hohou Y",2,3)))
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Kobokushi
[State -1: 		Kobokushi]
type 			= ChangeState
value 			= 1010
triggerall 		= (Command = "Kobokushi") && (Command != "Fake Kobokushi")
trigger1		= ((StateType != A) && (Ctrl)) || ((Var(3) = 1) && (StateNo != 1010)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Fake Kobokushi
[State -1: 		Fake Kobokushi]
type 			= ChangeState
value 			= 1011
triggerall 		= (Command = "Fake Kobokushi") && (Var(21) = 0)
trigger1		= ((StateType != A) && (Ctrl)) || ((Var(3) = 1) && (StateNo != 1010)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Tetsuzan Kou
[State -1: 		Tetsuzan Kou]
type 			= ChangeState
value 			= 1020
triggerall 		= (Command = "Tetsuzan Kou")
triggerall		= (Var(4) := IfElse(Command = "Tetsuzan Kou X",1,IfElse(Command = "Tetsuzan Kou Y",2,3)))
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Nishou Kyaku
[State -1: 		Nishou Kyaku]
type 			= ChangeState
value 			= 1030
triggerall 		= (Command = "Nishou Kyaku") && (Var(20) != [4,5])
triggerall		= (Var(4) := IfElse(Command = "Nishou Kyaku A",1,IfElse(Command = "Nishou Kyaku B",2,3)))
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Zenpou Tenshin
[State -1: 		Zenpou Tenshin]
type 			= ChangeState
value 			= 1040
triggerall 		= (Command = "Zenpou Tenshin")
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Raigeki Shuu
[State -1: 		Raigeki Shuu]
type 			= ChangeState
value 			= 1050
triggerall 		= ((Command = "a") || (Command = "b") || (Command = "c"))
triggerall		= (IfElse(P2Dist X > 0,(Command = "holdfwd"),(Command = "holdback"))) && (Command = "holddown")
triggerall		= (Var(4) := IfElse(Command = "a",1,IfElse(Command = "b",2,3)))
trigger1		= (StateType = A) && (Ctrl) && (Vel X > -2) && (Vel Y < 2.5) && (Pos Y <= -60)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Senkyuutai
[State -1: 		Senkyuutai]
type 			= ChangeState
value 			= 1060
triggerall 		= (Command = "Senkyuutai") && (Command != "Nishou Kyaku") && (Var(20) = [4,5])
triggerall		= (Var(4) := IfElse(Command = "Senkyuutai A",1,IfElse(Command = "Senkyuutai B",2,3)))
trigger1		= ((StateType != A) && (Ctrl)) || (Var(3) = 1) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;===========================================================================
;-| Basic |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Standing Weak Punch
[State -1: 		SWP]
type 			= ChangeState
value 			= 200
triggerall 		= (Command = "x") && (Command != "holddown") && (P2BodyDist X > 25) && (Var(20) != [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 200) && (AnimElem = 4, > 0) && (AnimElem = 8, < 0)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Weak Punch (Close)
[State -1: 		SWPC]
type 			= ChangeState
value 			= 205
triggerall 		= (Command = "x") && (Command != "holddown") && (Var(20) != [4,5])
trigger1		= ((StateType = S) && (Ctrl) && (P2BodyDist X <= 25)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 205) && (AnimElem = 4, > 1) && (AnimElem = 8, < 0) && (MoveContact)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Weak Punch (2nd Impact)
[State -1: 		SWP]
type 			= ChangeState
value 			= 201
triggerall 		= (Command = "x") && (Command != "holddown") && (Var(20) = [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 201) && (AnimElem = 7, > 0) && (AnimElem = 9, < 0)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Medium Punch
[State -1: 		SMP]
type 			= ChangeState
value 			= 210
triggerall 		= (Command = "y") && (Command != "holddown")
trigger1		= ((StateType = S) && (Ctrl) && (P2BodyDist X > 30)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 230) && (Anim = 231) && (PrevStateNo = 205) && (AnimElem = 3, > 0) && (AnimElem = 6, < 0) && (MoveContact)
trigger3		= (StateNo = 410) && (AnimElem = 7, > 0)
trigger4		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Medium Punch (Close)
[State -1: 		SMPC]
type 			= ChangeState
value 			= 215
triggerall 		= (Command = "y") && (Command != "holddown") && (P2BodyDist X <= 30)
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 410) && (AnimElem = 6, > 0)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Strong Punch
[State -1: 		SSP]
type 			= ChangeState
value 			= 220
triggerall 		= (Command = "z") && (Command != "holddown") && (Command != "holdfwd") && (P2BodyDist X > 30) && (Var(20) != [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
trigger3		= (Var(21) > 0) && (StateNo = 210) && (Time < 5)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Strong Punch (2nd Impact)
[State -1: 		SSP]
type 			= ChangeState
value 			= 220
triggerall 		= (Command = "z") && (Command != "holddown") && (P2BodyDist X > 30) && (Var(20) = [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
trigger3		= (Var(21) > 0) && (StateNo = 210) && (Time < 5)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Strong Punch (Target 1)
[State -1: 		SSP1]
type 			= ChangeState
value 			= 221
triggerall 		= (Command = "z") && (Command != "holddown") && (Command != "holdfwd") && (Command != "holdback") && (Var(21) <= 0)
trigger1		= (StateNo = 210) && (PrevStateNo != 230) && (AnimElem = 4, > 0) && (AnimElem = 6, < 0) && (MoveContact)
trigger2		= (StateNo = 215) && (AnimElem = 4, > 0) && (AnimElem = 7, < 0) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Strong Punch (Target 2)
[State -1: 		SSP2]
type 			= ChangeState
value 			= 222
triggerall 		= (Command = "z") && (Command != "holddown") && (Command != "holdfwd") && (Command = "holdback") && (Var(21) <= 0)
trigger1		= (StateNo = 221) && (AnimElem = 6, > 0) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Strong Punch (Close)
[State -1: 		SSPC]
type 			= ChangeState
value 			= 225
triggerall 		= (Command = "z") && (Command != "holddown") && (Command != "holdfwd") && (P2BodyDist X <= 30) && (Var(20) != [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Strong Punch (Close, 2nd Impact)
[State -1: 		SSPC]
type 			= ChangeState
value 			= 225
triggerall 		= (Command = "z") && (Command != "holddown") && (P2BodyDist X <= 30) && (Var(20) = [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Dakai
[State -1: 		Dakai]
type 			= ChangeState
value 			= 226
triggerall 		= (Command = "z") && (Command != "holddown") && (Command = "holdfwd") && (Var(20) != [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Weak Kick
[State -1: 		SWK]
type 			= ChangeState
value 			= 230
triggerall 		= (Command = "a") && (Command != "holddown")
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 205) && (AnimElem = 4, > 0) && (AnimElem = 8, < 0) && (MoveContact)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1: 		SMK]
type 			= ChangeState
value 			= 240
triggerall 		= (Command = "b") && (Command != "holddown") && (Command != "holdfwd") && (P2BodyDist X > 30) && (Var(20) != [4,5])
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Medium Kick (Close)
[State -1: 		SMKC]
type 			= ChangeState
value 			= 245
triggerall 		= (Command = "b") && (Command != "holddown") && (Command != "holdfwd") && (((P2BodyDist X <= 30) && (Var(20) != [4,5])) || (Var(20) = [4,5]))
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Senpuu Kyaku
[State -1: 		Senpuu Kyaku]
type 			= ChangeState
value 			= 246
triggerall 		= (Command = "b") && (Command != "holddown") && (Command = "holdfwd")
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1: 		SSK]
type 			= ChangeState
value 			= 250
triggerall 		= (Command = "c") && (Command != "holddown")
trigger1		= ((StateType = S) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 450) && (AnimElem = 7, > 0) && (AnimElem = 8, < 0) && (MoveContact) && (Var(21) = 0)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Crouching Weak Punch
[State -1: 		CWP]
type 			= ChangeState
value 			= 400
triggerall 		= (Command = "x") && (Command = "holddown")
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 400) && (AnimElem = 4, > 0) && (AnimElem = 6, < 0)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1: 		CMP]
type 			= ChangeState
value 			= 410
triggerall 		= (Command = "y") && (Command = "holddown")
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1: 		CSP]
type 			= ChangeState
value 			= 420
triggerall 		= (Command = "z") && (Command = "holddown")
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 410) && (AnimElem = 4, > 0) && (AnimElem = 6, < 2) && (MoveContact)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Crouching Weak Kick
[State -1: 		CWK]
type 			= ChangeState
value 			= 430
triggerall 		= (Command = "a") && (Command = "holddown")
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (StateNo = 430) && (AnimElem = 3, > 1) && (AnimElem = 5, < 0)
trigger3		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1: 		CMK]
type 			= ChangeState
value 			= 440
triggerall 		= (Command = "b") && (Command = "holddown")
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1: 		CSK]
type 			= ChangeState
value 			= (IfElse((Var(20) = [4,5]),451,450))
triggerall 		= (Command = "c") && (Command = "holddown")
trigger1		= ((StateType = C) && (Ctrl)) || ((StateNo = 7000) && (AnimElem = 3, > 5))
trigger2		= (Var(21) > 0) && (StateNo = [200,440]) && (StateNo != 250) && (MoveContact)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Jumping Weak Punch
[State -1: 		JWP]
type 			= ChangeState
value 			= 600
triggerall 		= (Command = "x")
trigger1		= (StateType = A) && (Ctrl)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Jumping Medium Punch
[State -1: 		JMP]
type 			= ChangeState
value 			= 610
triggerall 		= (Command = "y")
trigger1		= (StateType = A) && (Ctrl)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Jumping Strong Punch
[State -1: 		JSP]
type 			= ChangeState
value 			= 620
triggerall 		= (Command = "z")
trigger1		= (StateType = A) && (Ctrl) && (Vel X = [-2,2])
trigger2		= (StateNo = 600) && (AnimElem = 8, < 0) && (MoveContact) && (Command = "holdfwd")
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Jumping Strong Punch (Moving)
[State -1: 		JSPM]
type 			= ChangeState
value 			= 625
triggerall 		= (Command = "z")
trigger1		= (StateType = A) && (Ctrl) && ((Vel X < -2) || (Vel X > 2))
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Jumping Weak Kick
[State -1: 		JWK]
type 			= ChangeState
value 			= 630
triggerall 		= (Command = "a")
trigger1		= (StateType = A) && (Ctrl)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Jumping Medium Kick
[State -1: 		JMK]
type 			= ChangeState
value 			= 640
triggerall 		= (Command = "b")
trigger1		= (StateType = A) && (Ctrl)
ignorehitpause 		= 1

;---------------------------------------------------------------------------
;Jumping Strong Kick
[State -1: 		JSK]
type 			= ChangeState
value 			= 650
triggerall 		= (Command = "c")
trigger1		= (StateType = A) && (Ctrl)
ignorehitpause 		= 1
