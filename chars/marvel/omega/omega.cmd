;|====================|
;|Omega Red's commands|
;|====================|
;Created By OnslaughtX

;-| Super Motions |--------------------------------------------------------

[Command]
name = "super"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "super"
command = ~D, DF, F, y+z
time = 30

[Command]
name = "super"
command = ~D, DF, F, z+x
time = 30

[Command]
name = "super2"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "super2"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "super2"
command = ~D, DB, B, z+x
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb"
command = ~D, DB, B

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "dash"
command = x+y+z
time = 1

[Command]
name = "abc"
command = a+b+c
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

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
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

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x

[Command]
name = "hold_y"
command = /y

[Command]
name = "hold_z"
command = /z

[Command]
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

[Command]
name = "hold_c"
command = /c

;-| CPU Only |----------------------------------------------------------------------------
;All possible forward combinations
[Command]
name = "cpu"
command = F, F, F, F
time = 1

[Command]
name = "cpu"
command = F, F, F, B
time = 1

[Command]
name = "cpu"
command = F, F, F, U
time = 1

[Command]
name = "cpu"
command = F, F, F, D
time = 1

[Command]
name = "cpu"
command = F, F, F, a
time = 1

[Command]
name = "cpu"
command = F, F, F, b
time = 1

[Command]
name = "cpu"
command = F, F, F, c
time = 1

[Command]
name = "cpu"
command = F, F, F, x
time = 1

[Command]
name = "cpu"
command = F, F, F, y
time = 1

[Command]
name = "cpu"
command = F, F, F, z
time = 1

[Command]
name = "cpu"
command = F, F, F, s
time = 1

[Command]
name = "cpu"
command = F, F, B, F
time = 1

[Command]
name = "cpu"
command = F, F, B, B
time = 1

[Command]
name = "cpu"
command = F, F, B, U
time = 1

[Command]
name = "cpu"
command = F, F, B, D
time = 1

[Command]
name = "cpu"
command = F, F, B, a
time = 1

[Command]
name = "cpu"
command = F, F, B, b
time = 1

[Command]
name = "cpu"
command = F, F, B, c
time = 1

[Command]
name = "cpu"
command = F, F, B, x
time = 1

[Command]
name = "cpu"
command = F, F, B, y
time = 1

[Command]
name = "cpu"
command = F, F, B, z
time = 1

[Command]
name = "cpu"
command = F, F, B, s
time = 1

[Command]
name = "cpu"
command = F, F, U, F
time = 1

[Command]
name = "cpu"
command = F, F, U, B
time = 1

[Command]
name = "cpu"
command = F, F, U, U
time = 1

[Command]
name = "cpu"
command = F, F, U, D
time = 1

[Command]
name = "cpu"
command = F, F, U, a
time = 1

[Command]
name = "cpu"
command = F, F, U, b
time = 1

[Command]
name = "cpu"
command = F, F, U, c
time = 1

[Command]
name = "cpu"
command = F, F, U, x
time = 1

[Command]
name = "cpu"
command = F, F, U, y
time = 1

[Command]
name = "cpu"
command = F, F, U, z
time = 1

[Command]
name = "cpu"
command = F, F, U, s
time = 1

[Command]
name = "cpu"
command = F, F, D, F
time = 1

[Command]
name = "cpu"
command = F, F, D, B
time = 1

[Command]
name = "cpu"
command = F, F, D, U
time = 1

[Command]
name = "cpu"
command = F, F, D, D
time = 1

[Command]
name = "cpu"
command = F, F, D, a
time = 1

[Command]
name = "cpu"
command = F, F, D, b
time = 1

[Command]
name = "cpu"
command = F, F, D, c
time = 1

[Command]
name = "cpu"
command = F, F, D, x
time = 1

[Command]
name = "cpu"
command = F, F, D, y
time = 1

[Command]
name = "cpu"
command = F, F, D, z
time = 1

[Command]
name = "cpu"
command = F, F, D, s
time = 1

[Command]
name = "cpu"
command = F, F, a, F
time = 1

[Command]
name = "cpu"
command = F, F, a, B
time = 1

[Command]
name = "cpu"
command = F, F, a, U
time = 1

[Command]
name = "cpu"
command = F, F, a, D
time = 1

[Command]
name = "cpu"
command = F, F, a, a
time = 1

[Command]
name = "cpu"
command = F, F, a, b
time = 1

[Command]
name = "cpu"
command = F, F, a, c
time = 1

[Command]
name = "cpu"
command = F, F, a, x
time = 1

[Command]
name = "cpu"
command = F, F, a, y
time = 1

[Command]
name = "cpu"
command = F, F, a, z
time = 1

[Command]
name = "cpu"
command = F, F, a, s
time = 1

[Command]
name = "cpu"
command = F, F, b, F
time = 1

[Command]
name = "cpu"
command = F, F, b, B
time = 1

[Command]
name = "cpu"
command = F, F, b, U
time = 1

[Command]
name = "cpu"
command = F, F, b, D
time = 1

[Command]
name = "cpu"
command = F, F, b, a
time = 1

[Command]
name = "cpu"
command = F, F, b, b
time = 1

[Command]
name = "cpu"
command = F, F, b, c
time = 1

[Command]
name = "cpu"
command = F, F, b, x
time = 1

[Command]
name = "cpu"
command = F, F, b, y
time = 1

[Command]
name = "cpu"
command = F, F, b, z
time = 1

[Command]
name = "cpu"
command = F, F, b, s
time = 1

[Command]
name = "cpu"
command = F, F, c, F
time = 1

[Command]
name = "cpu"
command = F, F, c, B
time = 1

[Command]
name = "cpu"
command = F, F, c, U
time = 1

[Command]
name = "cpu"
command = F, F, c, D
time = 1

[Command]
name = "cpu"
command = F, F, c, a
time = 1

[Command]
name = "cpu"
command = F, F, c, b
time = 1

[Command]
name = "cpu"
command = F, F, c, c
time = 1

[Command]
name = "cpu"
command = F, F, c, x
time = 1

[Command]
name = "cpu"
command = F, F, c, y
time = 1

[Command]
name = "cpu"
command = F, F, c, z
time = 1

[Command]
name = "cpu"
command = F, F, c, s
time = 1

[Command]
name = "cpu"
command = F, F, x, F
time = 1

[Command]
name = "cpu"
command = F, F, x, B
time = 1

[Command]
name = "cpu"
command = F, F, x, U
time = 1

[Command]
name = "cpu"
command = F, F, x, D
time = 1

[Command]
name = "cpu"
command = F, F, x, a
time = 1

[Command]
name = "cpu"
command = F, F, x, b
time = 1

[Command]
name = "cpu"
command = F, F, x, c
time = 1

[Command]
name = "cpu"
command = F, F, x, x
time = 1

[Command]
name = "cpu"
command = F, F, x, y
time = 1

[Command]
name = "cpu"
command = F, F, x, z
time = 1

[Command]
name = "cpu"
command = F, F, x, s
time = 1

[Command]
name = "cpu"
command = F, F, y, F
time = 1

[Command]
name = "cpu"
command = F, F, y, B
time = 1

[Command]
name = "cpu"
command = F, F, y, U
time = 1

[Command]
name = "cpu"
command = F, F, y, D
time = 1

[Command]
name = "cpu"
command = F, F, y, a
time = 1

[Command]
name = "cpu"
command = F, F, y, b
time = 1

[Command]
name = "cpu"
command = F, F, y, c
time = 1

[Command]
name = "cpu"
command = F, F, y, x
time = 1

[Command]
name = "cpu"
command = F, F, y, y
time = 1

[Command]
name = "cpu"
command = F, F, y, z
time = 1

[Command]
name = "cpu"
command = F, F, y, s
time = 1

[Command]
name = "cpu"
command = F, F, z, F
time = 1

[Command]
name = "cpu"
command = F, F, z, B
time = 1

[Command]
name = "cpu"
command = F, F, z, U
time = 1

[Command]
name = "cpu"
command = F, F, z, D
time = 1

[Command]
name = "cpu"
command = F, F, z, a
time = 1

[Command]
name = "cpu"
command = F, F, z, b
time = 1

[Command]
name = "cpu"
command = F, F, z, c
time = 1

[Command]
name = "cpu"
command = F, F, z, x
time = 1

[Command]
name = "cpu"
command = F, F, z, y
time = 1

[Command]
name = "cpu"
command = F, F, z, z
time = 1

[Command]
name = "cpu"
command = F, F, z, s
time = 1

[Command]
name = "cpu"
command = F, F, s, F
time = 1

[Command]
name = "cpu"
command = F, F, s, B
time = 1

[Command]
name = "cpu"
command = F, F, s, U
time = 1

[Command]
name = "cpu"
command = F, F, s, D
time = 1

[Command]
name = "cpu"
command = F, F, s, a
time = 1

[Command]
name = "cpu"
command = F, F, s, b
time = 1

[Command]
name = "cpu"
command = F, F, s, c
time = 1

[Command]
name = "cpu"
command = F, F, s, x
time = 1

[Command]
name = "cpu"
command = F, F, s, y
time = 1

[Command]
name = "cpu"
command = F, F, s, z
time = 1

[Command]
name = "cpu"
command = F, F, s, s
time = 1

[Command]
name = "cpu"
command = F, B, F, F
time = 1

[Command]
name = "cpu"
command = F, B, F, B
time = 1

[Command]
name = "cpu"
command = F, B, F, U
time = 1

[Command]
name = "cpu"
command = F, B, F, D
time = 1

[Command]
name = "cpu"
command = F, B, F, a
time = 1

[Command]
name = "cpu"
command = F, B, F, b
time = 1

[Command]
name = "cpu"
command = F, B, F, c
time = 1

[Command]
name = "cpu"
command = F, B, F, x
time = 1

[Command]
name = "cpu"
command = F, B, F, y
time = 1

[Command]
name = "cpu"
command = F, B, F, z
time = 1

[Command]
name = "cpu"
command = F, B, F, s
time = 1

[Command]
name = "cpu"
command = F, B, B, F
time = 1

[Command]
name = "cpu"
command = F, B, B, B
time = 1

[Command]
name = "cpu"
command = F, B, B, U
time = 1

[Command]
name = "cpu"
command = F, B, B, D
time = 1

[Command]
name = "cpu"
command = F, B, B, a
time = 1

[Command]
name = "cpu"
command = F, B, B, b
time = 1

[Command]
name = "cpu"
command = F, B, B, c
time = 1

[Command]
name = "cpu"
command = F, B, B, x
time = 1

[Command]
name = "cpu"
command = F, B, B, y
time = 1

[Command]
name = "cpu"
command = F, B, B, z
time = 1

[Command]
name = "cpu"
command = F, B, B, s
time = 1

[Command]
name = "cpu"
command = F, B, U, F
time = 1

[Command]
name = "cpu"
command = F, B, U, B
time = 1

[Command]
name = "cpu"
command = F, B, U, U
time = 1

[Command]
name = "cpu"
command = F, B, U, D
time = 1

[Command]
name = "cpu"
command = F, B, U, a
time = 1

[Command]
name = "cpu"
command = F, B, U, b
time = 1

[Command]
name = "cpu"
command = F, B, U, c
time = 1

[Command]
name = "cpu"
command = F, B, U, x
time = 1

[Command]
name = "cpu"
command = F, B, U, y
time = 1

[Command]
name = "cpu"
command = F, B, U, z
time = 1

[Command]
name = "cpu"
command = F, B, U, s
time = 1

[Command]
name = "cpu"
command = F, B, D, F
time = 1

[Command]
name = "cpu"
command = F, B, D, B
time = 1

[Command]
name = "cpu"
command = F, B, D, U
time = 1

[Command]
name = "cpu"
command = F, B, D, D
time = 1

[Command]
name = "cpu"
command = F, B, D, a
time = 1

[Command]
name = "cpu"
command = F, B, D, b
time = 1

[Command]
name = "cpu"
command = F, B, D, c
time = 1

[Command]
name = "cpu"
command = F, B, D, x
time = 1

[Command]
name = "cpu"
command = F, B, D, y
time = 1

[Command]
name = "cpu"
command = F, B, D, z
time = 1

[Command]
name = "cpu"
command = F, B, D, s
time = 1

[Command]
name = "cpu"
command = F, B, a, F
time = 1

[Command]
name = "cpu"
command = F, B, a, B
time = 1

[Command]
name = "cpu"
command = F, B, a, U
time = 1

[Command]
name = "cpu"
command = F, B, a, D
time = 1

[Command]
name = "cpu"
command = F, B, a, a
time = 1

[Command]
name = "cpu"
command = F, B, a, b
time = 1

[Command]
name = "cpu"
command = F, B, a, c
time = 1

[Command]
name = "cpu"
command = F, B, a, x
time = 1

[Command]
name = "cpu"
command = F, B, a, y
time = 1

[Command]
name = "cpu"
command = F, B, a, z
time = 1

[Command]
name = "cpu"
command = F, B, a, s
time = 1

[Command]
name = "cpu"
command = F, B, b, F
time = 1

[Command]
name = "cpu"
command = F, B, b, B
time = 1

[Command]
name = "cpu"
command = F, B, b, U
time = 1

[Command]
name = "cpu"
command = F, B, b, D
time = 1

[Command]
name = "cpu"
command = F, B, b, a
time = 1

[Command]
name = "cpu"
command = F, B, b, b
time = 1

[Command]
name = "cpu"
command = F, B, b, c
time = 1

[Command]
name = "cpu"
command = F, B, b, x
time = 1

[Command]
name = "cpu"
command = F, B, b, y
time = 1

[Command]
name = "cpu"
command = F, B, b, z
time = 1

[Command]
name = "cpu"
command = F, B, b, s
time = 1

[Command]
name = "cpu"
command = F, B, c, F
time = 1

[Command]
name = "cpu"
command = F, B, c, B
time = 1

[Command]
name = "cpu"
command = F, B, c, U
time = 1

[Command]
name = "cpu"
command = F, B, c, D
time = 1

[Command]
name = "cpu"
command = F, B, c, a
time = 1

[Command]
name = "cpu"
command = F, B, c, b
time = 1

[Command]
name = "cpu"
command = F, B, c, c
time = 1

[Command]
name = "cpu"
command = F, B, c, x
time = 1

[Command]
name = "cpu"
command = F, B, c, y
time = 1

[Command]
name = "cpu"
command = F, B, c, z
time = 1

[Command]
name = "cpu"
command = F, B, c, s
time = 1

[Command]
name = "cpu"
command = F, B, x, F
time = 1

[Command]
name = "cpu"
command = F, B, x, B
time = 1

[Command]
name = "cpu"
command = F, B, x, U
time = 1

[Command]
name = "cpu"
command = F, B, x, D
time = 1

[Command]
name = "cpu"
command = F, B, x, a
time = 1

[Command]
name = "cpu"
command = F, B, x, b
time = 1

[Command]
name = "cpu"
command = F, B, x, c
time = 1

[Command]
name = "cpu"
command = F, B, x, x
time = 1

[Command]
name = "cpu"
command = F, B, x, y
time = 1

[Command]
name = "cpu"
command = F, B, x, z
time = 1

[Command]
name = "cpu"
command = F, B, x, s
time = 1

[Command]
name = "cpu"
command = F, B, y, F
time = 1

[Command]
name = "cpu"
command = F, B, y, B
time = 1

[Command]
name = "cpu"
command = F, B, y, U
time = 1

[Command]
name = "cpu"
command = F, B, y, D
time = 1

[Command]
name = "cpu"
command = F, B, y, a
time = 1

[Command]
name = "cpu"
command = F, B, y, b
time = 1

[Command]
name = "cpu"
command = F, B, y, c
time = 1

[Command]
name = "cpu"
command = F, B, y, x
time = 1

[Command]
name = "cpu"
command = F, B, y, y
time = 1

[Command]
name = "cpu"
command = F, B, y, z
time = 1

[Command]
name = "cpu"
command = F, B, y, s
time = 1

[Command]
name = "cpu"
command = F, B, z, F
time = 1

[Command]
name = "cpu"
command = F, B, z, B
time = 1

[Command]
name = "cpu"
command = F, B, z, U
time = 1

[Command]
name = "cpu"
command = F, B, z, D
time = 1

[Command]
name = "cpu"
command = F, B, z, a
time = 1

[Command]
name = "cpu"
command = F, B, z, b
time = 1

[Command]
name = "cpu"
command = F, B, z, c
time = 1

[Command]
name = "cpu"
command = F, B, z, x
time = 1

[Command]
name = "cpu"
command = F, B, z, y
time = 1

[Command]
name = "cpu"
command = F, B, z, z
time = 1

[Command]
name = "cpu"
command = F, B, z, s
time = 1

[Command]
name = "cpu"
command = F, B, s, F
time = 1

[Command]
name = "cpu"
command = F, B, s, B
time = 1

[Command]
name = "cpu"
command = F, B, s, U
time = 1

[Command]
name = "cpu"
command = F, B, s, D
time = 1

[Command]
name = "cpu"
command = F, B, s, a
time = 1

[Command]
name = "cpu"
command = F, B, s, b
time = 1

[Command]
name = "cpu"
command = F, B, s, c
time = 1

[Command]
name = "cpu"
command = F, B, s, x
time = 1

[Command]
name = "cpu"
command = F, B, s, y
time = 1

[Command]
name = "cpu"
command = F, B, s, z
time = 1

[Command]
name = "cpu"
command = F, B, s, s
time = 1

[Command]
name = "cpu"
command = F, U, F, F
time = 1

[Command]
name = "cpu"
command = F, U, F, B
time = 1

[Command]
name = "cpu"
command = F, U, F, U
time = 1

[Command]
name = "cpu"
command = F, U, F, D
time = 1

[Command]
name = "cpu"
command = F, U, F, a
time = 1

[Command]
name = "cpu"
command = F, U, F, b
time = 1

[Command]
name = "cpu"
command = F, U, F, c
time = 1

[Command]
name = "cpu"
command = F, U, F, x
time = 1

[Command]
name = "cpu"
command = F, U, F, y
time = 1

[Command]
name = "cpu"
command = F, U, F, z
time = 1

[Command]
name = "cpu"
command = F, U, F, s
time = 1

[Command]
name = "cpu"
command = F, U, B, F
time = 1

[Command]
name = "cpu"
command = F, U, B, B
time = 1

[Command]
name = "cpu"
command = F, U, B, U
time = 1

[Command]
name = "cpu"
command = F, U, B, D
time = 1

[Command]
name = "cpu"
command = F, U, B, a
time = 1

[Command]
name = "cpu"
command = F, U, B, b
time = 1

[Command]
name = "cpu"
command = F, U, B, c
time = 1

[Command]
name = "cpu"
command = F, U, B, x
time = 1

[Command]
name = "cpu"
command = F, U, B, y
time = 1

[Command]
name = "cpu"
command = F, U, B, z
time = 1

[Command]
name = "cpu"
command = F, U, B, s
time = 1

[Command]
name = "cpu"
command = F, U, U, F
time = 1

[Command]
name = "cpu"
command = F, U, U, B
time = 1

[Command]
name = "cpu"
command = F, U, U, U
time = 1

[Command]
name = "cpu"
command = F, U, U, D
time = 1

[Command]
name = "cpu"
command = F, U, U, a
time = 1

[Command]
name = "cpu"
command = F, U, U, b
time = 1

[Command]
name = "cpu"
command = F, U, U, c
time = 1

[Command]
name = "cpu"
command = F, U, U, x
time = 1

[Command]
name = "cpu"
command = F, U, U, y
time = 1

[Command]
name = "cpu"
command = F, U, U, z
time = 1

[Command]
name = "cpu"
command = F, U, U, s
time = 1

[Command]
name = "cpu"
command = F, U, D, F
time = 1

[Command]
name = "cpu"
command = F, U, D, B
time = 1

[Command]
name = "cpu"
command = F, U, D, U
time = 1

[Command]
name = "cpu"
command = F, U, D, D
time = 1

[Command]
name = "cpu"
command = F, U, D, a
time = 1

[Command]
name = "cpu"
command = F, U, D, b
time = 1

[Command]
name = "cpu"
command = F, U, D, c
time = 1

[Command]
name = "cpu"
command = F, U, D, x
time = 1

[Command]
name = "cpu"
command = F, U, D, y
time = 1

[Command]
name = "cpu"
command = F, U, D, z
time = 1

[Command]
name = "cpu"
command = F, U, D, s
time = 1

[Command]
name = "cpu"
command = F, U, a, F
time = 1

[Command]
name = "cpu"
command = F, U, a, B
time = 1

[Command]
name = "cpu"
command = F, U, a, U
time = 1

[Command]
name = "cpu"
command = F, U, a, D
time = 1

[Command]
name = "cpu"
command = F, U, a, a
time = 1

[Command]
name = "cpu"
command = F, U, a, b
time = 1

[Command]
name = "cpu"
command = F, U, a, c
time = 1

[Command]
name = "cpu"
command = F, U, a, x
time = 1

[Command]
name = "cpu"
command = F, U, a, y
time = 1

[Command]
name = "cpu"
command = F, U, a, z
time = 1

[Command]
name = "cpu"
command = F, U, a, s
time = 1

[Command]
name = "cpu"
command = F, U, b, F
time = 1

[Command]
name = "cpu"
command = F, U, b, B
time = 1

[Command]
name = "cpu"
command = F, U, b, U
time = 1

[Command]
name = "cpu"
command = F, U, b, D
time = 1

[Command]
name = "cpu"
command = F, U, b, a
time = 1

[Command]
name = "cpu"
command = F, U, b, b
time = 1

[Command]
name = "cpu"
command = F, U, b, c
time = 1

[Command]
name = "cpu"
command = F, U, b, x
time = 1

[Command]
name = "cpu"
command = F, U, b, y
time = 1

[Command]
name = "cpu"
command = F, U, b, z
time = 1

[Command]
name = "cpu"
command = F, U, b, s
time = 1

[Command]
name = "cpu"
command = F, U, c, F
time = 1

[Command]
name = "cpu"
command = F, U, c, B
time = 1

[Command]
name = "cpu"
command = F, U, c, U
time = 1

[Command]
name = "cpu"
command = F, U, c, D
time = 1

[Command]
name = "cpu"
command = F, U, c, a
time = 1

[Command]
name = "cpu"
command = F, U, c, b
time = 1

[Command]
name = "cpu"
command = F, U, c, c
time = 1

[Command]
name = "cpu"
command = F, U, c, x
time = 1

[Command]
name = "cpu"
command = F, U, c, y
time = 1

[Command]
name = "cpu"
command = F, U, c, z
time = 1

[Command]
name = "cpu"
command = F, U, c, s
time = 1

[Command]
name = "cpu"
command = F, U, x, F
time = 1

[Command]
name = "cpu"
command = F, U, x, B
time = 1

[Command]
name = "cpu"
command = F, U, x, U
time = 1

[Command]
name = "cpu"
command = F, U, x, D
time = 1

[Command]
name = "cpu"
command = F, U, x, a
time = 1

[Command]
name = "cpu"
command = F, U, x, b
time = 1

[Command]
name = "cpu"
command = F, U, x, c
time = 1

[Command]
name = "cpu"
command = F, U, x, x
time = 1

[Command]
name = "cpu"
command = F, U, x, y
time = 1

[Command]
name = "cpu"
command = F, U, x, z
time = 1

[Command]
name = "cpu"
command = F, U, x, s
time = 1

[Command]
name = "cpu"
command = F, U, y, F
time = 1

[Command]
name = "cpu"
command = F, U, y, B
time = 1

[Command]
name = "cpu"
command = F, U, y, U
time = 1

[Command]
name = "cpu"
command = F, U, y, D
time = 1

[Command]
name = "cpu"
command = F, U, y, a
time = 1

[Command]
name = "cpu"
command = F, U, y, b
time = 1

[Command]
name = "cpu"
command = F, U, y, c
time = 1

[Command]
name = "cpu"
command = F, U, y, x
time = 1

[Command]
name = "cpu"
command = F, U, y, y
time = 1

[Command]
name = "cpu"
command = F, U, y, z
time = 1

[Command]
name = "cpu"
command = F, U, y, s
time = 1

[Command]
name = "cpu"
command = F, U, z, F
time = 1

[Command]
name = "cpu"
command = F, U, z, B
time = 1

[Command]
name = "cpu"
command = F, U, z, U
time = 1

[Command]
name = "cpu"
command = F, U, z, D
time = 1

[Command]
name = "cpu"
command = F, U, z, a
time = 1

[Command]
name = "cpu"
command = F, U, z, b
time = 1

[Command]
name = "cpu"
command = F, U, z, c
time = 1

[Command]
name = "cpu"
command = F, U, z, x
time = 1

[Command]
name = "cpu"
command = F, U, z, y
time = 1

[Command]
name = "cpu"
command = F, U, z, z
time = 1

[Command]
name = "cpu"
command = F, U, z, s
time = 1

[Command]
name = "cpu"
command = F, U, s, F
time = 1

[Command]
name = "cpu"
command = F, U, s, B
time = 1

[Command]
name = "cpu"
command = F, U, s, U
time = 1

[Command]
name = "cpu"
command = F, U, s, D
time = 1

[Command]
name = "cpu"
command = F, U, s, a
time = 1

[Command]
name = "cpu"
command = F, U, s, b
time = 1

[Command]
name = "cpu"
command = F, U, s, c
time = 1

[Command]
name = "cpu"
command = F, U, s, x
time = 1

[Command]
name = "cpu"
command = F, U, s, y
time = 1

[Command]
name = "cpu"
command = F, U, s, z
time = 1

[Command]
name = "cpu"
command = F, U, s, s
time = 1

[Command]
name = "cpu"
command = F, D, F, F
time = 1

[Command]
name = "cpu"
command = F, D, F, B
time = 1

[Command]
name = "cpu"
command = F, D, F, U
time = 1

[Command]
name = "cpu"
command = F, D, F, D
time = 1

[Command]
name = "cpu"
command = F, D, F, a
time = 1

[Command]
name = "cpu"
command = F, D, F, b
time = 1

[Command]
name = "cpu"
command = F, D, F, c
time = 1

[Command]
name = "cpu"
command = F, D, F, x
time = 1

[Command]
name = "cpu"
command = F, D, F, y
time = 1

[Command]
name = "cpu"
command = F, D, F, z
time = 1

[Command]
name = "cpu"
command = F, D, F, s
time = 1

[Command]
name = "cpu"
command = F, D, B, F
time = 1

[Command]
name = "cpu"
command = F, D, B, B
time = 1

[Command]
name = "cpu"
command = F, D, B, U
time = 1

[Command]
name = "cpu"
command = F, D, B, D
time = 1

[Command]
name = "cpu"
command = F, D, B, a
time = 1

[Command]
name = "cpu"
command = F, D, B, b
time = 1

[Command]
name = "cpu"
command = F, D, B, c
time = 1

[Command]
name = "cpu"
command = F, D, B, x
time = 1

[Command]
name = "cpu"
command = F, D, B, y
time = 1

[Command]
name = "cpu"
command = F, D, B, z
time = 1

[Command]
name = "cpu"
command = F, D, B, s
time = 1

[Command]
name = "cpu"
command = F, D, U, F
time = 1

[Command]
name = "cpu"
command = F, D, U, B
time = 1

[Command]
name = "cpu"
command = F, D, U, U
time = 1

[Command]
name = "cpu"
command = F, D, U, D
time = 1

[Command]
name = "cpu"
command = F, D, U, a
time = 1

[Command]
name = "cpu"
command = F, D, U, b
time = 1

[Command]
name = "cpu"
command = F, D, U, c
time = 1

[Command]
name = "cpu"
command = F, D, U, x
time = 1

[Command]
name = "cpu"
command = F, D, U, y
time = 1

[Command]
name = "cpu"
command = F, D, U, z
time = 1

[Command]
name = "cpu"
command = F, D, U, s
time = 1

[Command]
name = "cpu"
command = F, D, D, F
time = 1

[Command]
name = "cpu"
command = F, D, D, B
time = 1

[Command]
name = "cpu"
command = F, D, D, U
time = 1

[Command]
name = "cpu"
command = F, D, D, D
time = 1

[Command]
name = "cpu"
command = F, D, D, a
time = 1

[Command]
name = "cpu"
command = F, D, D, b
time = 1

[Command]
name = "cpu"
command = F, D, D, c
time = 1

[Command]
name = "cpu"
command = F, D, D, x
time = 1

[Command]
name = "cpu"
command = F, D, D, y
time = 1

[Command]
name = "cpu"
command = F, D, D, z
time = 1

[Command]
name = "cpu"
command = F, D, D, s
time = 1

[Command]
name = "cpu"
command = F, D, a, F
time = 1

[Command]
name = "cpu"
command = F, D, a, B
time = 1

[Command]
name = "cpu"
command = F, D, a, U
time = 1

[Command]
name = "cpu"
command = F, D, a, D
time = 1

[Command]
name = "cpu"
command = F, D, a, a
time = 1

[Command]
name = "cpu"
command = F, D, a, b
time = 1

[Command]
name = "cpu"
command = F, D, a, c
time = 1

[Command]
name = "cpu"
command = F, D, a, x
time = 1

[Command]
name = "cpu"
command = F, D, a, y
time = 1

[Command]
name = "cpu"
command = F, D, a, z
time = 1

[Command]
name = "cpu"
command = F, D, a, s
time = 1

[Command]
name = "cpu"
command = F, D, b, F
time = 1

[Command]
name = "cpu"
command = F, D, b, B
time = 1

[Command]
name = "cpu"
command = F, D, b, U
time = 1

[Command]
name = "cpu"
command = F, D, b, D
time = 1

[Command]
name = "cpu"
command = F, D, b, a
time = 1

[Command]
name = "cpu"
command = F, D, b, b
time = 1

[Command]
name = "cpu"
command = F, D, b, c
time = 1

[Command]
name = "cpu"
command = F, D, b, x
time = 1

[Command]
name = "cpu"
command = F, D, b, y
time = 1

[Command]
name = "cpu"
command = F, D, b, z
time = 1

[Command]
name = "cpu"
command = F, D, b, s
time = 1

[Command]
name = "cpu"
command = F, D, c, F
time = 1

[Command]
name = "cpu"
command = F, D, c, B
time = 1

[Command]
name = "cpu"
command = F, D, c, U
time = 1

[Command]
name = "cpu"
command = F, D, c, D
time = 1

[Command]
name = "cpu"
command = F, D, c, a
time = 1

[Command]
name = "cpu"
command = F, D, c, b
time = 1

[Command]
name = "cpu"
command = F, D, c, c
time = 1

[Command]
name = "cpu"
command = F, D, c, x
time = 1

[Command]
name = "cpu"
command = F, D, c, y
time = 1

[Command]
name = "cpu"
command = F, D, c, z
time = 1

[Command]
name = "cpu"
command = F, D, c, s
time = 1

[Command]
name = "cpu"
command = F, D, x, F
time = 1

[Command]
name = "cpu"
command = F, D, x, B
time = 1

[Command]
name = "cpu"
command = F, D, x, U
time = 1

[Command]
name = "cpu"
command = F, D, x, D
time = 1

[Command]
name = "cpu"
command = F, D, x, a
time = 1

[Command]
name = "cpu"
command = F, D, x, b
time = 1

[Command]
name = "cpu"
command = F, D, x, c
time = 1

[Command]
name = "cpu"
command = F, D, x, x
time = 1

[Command]
name = "cpu"
command = F, D, x, y
time = 1

[Command]
name = "cpu"
command = F, D, x, z
time = 1

[Command]
name = "cpu"
command = F, D, x, s
time = 1

[Command]
name = "cpu"
command = F, D, y, F
time = 1

[Command]
name = "cpu"
command = F, D, y, B
time = 1

[Command]
name = "cpu"
command = F, D, y, U
time = 1

[Command]
name = "cpu"
command = F, D, y, D
time = 1

[Command]
name = "cpu"
command = F, D, y, a
time = 1

[Command]
name = "cpu"
command = F, D, y, b
time = 1

[Command]
name = "cpu"
command = F, D, y, c
time = 1

[Command]
name = "cpu"
command = F, D, y, x
time = 1

[Command]
name = "cpu"
command = F, D, y, y
time = 1

[Command]
name = "cpu"
command = F, D, y, z
time = 1

[Command]
name = "cpu"
command = F, D, y, s
time = 1

[Command]
name = "cpu"
command = F, D, z, F
time = 1

[Command]
name = "cpu"
command = F, D, z, B
time = 1

[Command]
name = "cpu"
command = F, D, z, U
time = 1

[Command]
name = "cpu"
command = F, D, z, D
time = 1

[Command]
name = "cpu"
command = F, D, z, a
time = 1

[Command]
name = "cpu"
command = F, D, z, b
time = 1

[Command]
name = "cpu"
command = F, D, z, c
time = 1

[Command]
name = "cpu"
command = F, D, z, x
time = 1

[Command]
name = "cpu"
command = F, D, z, y
time = 1

[Command]
name = "cpu"
command = F, D, z, z
time = 1

[Command]
name = "cpu"
command = F, D, z, s
time = 1

[Command]
name = "cpu"
command = F, D, s, F
time = 1

[Command]
name = "cpu"
command = F, D, s, B
time = 1

[Command]
name = "cpu"
command = F, D, s, U
time = 1

[Command]
name = "cpu"
command = F, D, s, D
time = 1

[Command]
name = "cpu"
command = F, D, s, a
time = 1

[Command]
name = "cpu"
command = F, D, s, b
time = 1

[Command]
name = "cpu"
command = F, D, s, c
time = 1

[Command]
name = "cpu"
command = F, D, s, x
time = 1

[Command]
name = "cpu"
command = F, D, s, y
time = 1

[Command]
name = "cpu"
command = F, D, s, z
time = 1

[Command]
name = "cpu"
command = F, D, s, s
time = 1

[Command]
name = "cpu"
command = F, a, F, F
time = 1

[Command]
name = "cpu"
command = F, a, F, B
time = 1

[Command]
name = "cpu"
command = F, a, F, U
time = 1

[Command]
name = "cpu"
command = F, a, F, D
time = 1

[Command]
name = "cpu"
command = F, a, F, a
time = 1

[Command]
name = "cpu"
command = F, a, F, b
time = 1

[Command]
name = "cpu"
command = F, a, F, c
time = 1

[Command]
name = "cpu"
command = F, a, F, x
time = 1

[Command]
name = "cpu"
command = F, a, F, y
time = 1

[Command]
name = "cpu"
command = F, a, F, z
time = 1

[Command]
name = "cpu"
command = F, a, F, s
time = 1

[Command]
name = "cpu"
command = F, a, B, F
time = 1

[Command]
name = "cpu"
command = F, a, B, B
time = 1

[Command]
name = "cpu"
command = F, a, B, U
time = 1

[Command]
name = "cpu"
command = F, a, B, D
time = 1

[Command]
name = "cpu"
command = F, a, B, a
time = 1

[Command]
name = "cpu"
command = F, a, B, b
time = 1

[Command]
name = "cpu"
command = F, a, B, c
time = 1

[Command]
name = "cpu"
command = F, a, B, x
time = 1

[Command]
name = "cpu"
command = F, a, B, y
time = 1

[Command]
name = "cpu"
command = F, a, B, z
time = 1

[Command]
name = "cpu"
command = F, a, B, s
time = 1

[Command]
name = "cpu"
command = F, a, U, F
time = 1

[Command]
name = "cpu"
command = F, a, U, B
time = 1

[Command]
name = "cpu"
command = F, a, U, U
time = 1

[Command]
name = "cpu"
command = F, a, U, D
time = 1

[Command]
name = "cpu"
command = F, a, U, a
time = 1

[Command]
name = "cpu"
command = F, a, U, b
time = 1

[Command]
name = "cpu"
command = F, a, U, c
time = 1

[Command]
name = "cpu"
command = F, a, U, x
time = 1

[Command]
name = "cpu"
command = F, a, U, y
time = 1

[Command]
name = "cpu"
command = F, a, U, z
time = 1

[Command]
name = "cpu"
command = F, a, U, s
time = 1

[Command]
name = "cpu"
command = F, a, D, F
time = 1

[Command]
name = "cpu"
command = F, a, D, B
time = 1

[Command]
name = "cpu"
command = F, a, D, U
time = 1

[Command]
name = "cpu"
command = F, a, D, D
time = 1

[Command]
name = "cpu"
command = F, a, D, a
time = 1

[Command]
name = "cpu"
command = F, a, D, b
time = 1

[Command]
name = "cpu"
command = F, a, D, c
time = 1

[Command]
name = "cpu"
command = F, a, D, x
time = 1

[Command]
name = "cpu"
command = F, a, D, y
time = 1

[Command]
name = "cpu"
command = F, a, D, z
time = 1

[Command]
name = "cpu"
command = F, a, D, s
time = 1

[Command]
name = "cpu"
command = F, a, a, F
time = 1

[Command]
name = "cpu"
command = F, a, a, B
time = 1

[Command]
name = "cpu"
command = F, a, a, U
time = 1

[Command]
name = "cpu"
command = F, a, a, D
time = 1

[Command]
name = "cpu"
command = F, a, a, a
time = 1

[Command]
name = "cpu"
command = F, a, a, b
time = 1

[Command]
name = "cpu"
command = F, a, a, c
time = 1

[Command]
name = "cpu"
command = F, a, a, x
time = 1

[Command]
name = "cpu"
command = F, a, a, y
time = 1

[Command]
name = "cpu"
command = F, a, a, z
time = 1

[Command]
name = "cpu"
command = F, a, a, s
time = 1

[Command]
name = "cpu"
command = F, a, b, F
time = 1

[Command]
name = "cpu"
command = F, a, b, B
time = 1

[Command]
name = "cpu"
command = F, a, b, U
time = 1

[Command]
name = "cpu"
command = F, a, b, D
time = 1

[Command]
name = "cpu"
command = F, a, b, a
time = 1

[Command]
name = "cpu"
command = F, a, b, b
time = 1

[Command]
name = "cpu"
command = F, a, b, c
time = 1

[Command]
name = "cpu"
command = F, a, b, x
time = 1

[Command]
name = "cpu"
command = F, a, b, y
time = 1

[Command]
name = "cpu"
command = F, a, b, z
time = 1

[Command]
name = "cpu"
command = F, a, b, s
time = 1

[Command]
name = "cpu"
command = F, a, c, F
time = 1

[Command]
name = "cpu"
command = F, a, c, B
time = 1

[Command]
name = "cpu"
command = F, a, c, U
time = 1

[Command]
name = "cpu"
command = F, a, c, D
time = 1

[Command]
name = "cpu"
command = F, a, c, a
time = 1

[Command]
name = "cpu"
command = F, a, c, b
time = 1

[Command]
name = "cpu"
command = F, a, c, c
time = 1

[Command]
name = "cpu"
command = F, a, c, x
time = 1

[Command]
name = "cpu"
command = F, a, c, y
time = 1

[Command]
name = "cpu"
command = F, a, c, z
time = 1

[Command]
name = "cpu"
command = F, a, c, s
time = 1

[Command]
name = "cpu"
command = F, a, x, F
time = 1

[Command]
name = "cpu"
command = F, a, x, B
time = 1

[Command]
name = "cpu"
command = F, a, x, U
time = 1

[Command]
name = "cpu"
command = F, a, x, D
time = 1

[Command]
name = "cpu"
command = F, a, x, a
time = 1

[Command]
name = "cpu"
command = F, a, x, b
time = 1

[Command]
name = "cpu"
command = F, a, x, c
time = 1

[Command]
name = "cpu"
command = F, a, x, x
time = 1

[Command]
name = "cpu"
command = F, a, x, y
time = 1

[Command]
name = "cpu"
command = F, a, x, z
time = 1

[Command]
name = "cpu"
command = F, a, x, s
time = 1

[Command]
name = "cpu"
command = F, a, y, F
time = 1

[Command]
name = "cpu"
command = F, a, y, B
time = 1

[Command]
name = "cpu"
command = F, a, y, U
time = 1

[Command]
name = "cpu"
command = F, a, y, D
time = 1

[Command]
name = "cpu"
command = F, a, y, a
time = 1

[Command]
name = "cpu"
command = F, a, y, b
time = 1

[Command]
name = "cpu"
command = F, a, y, c
time = 1

[Command]
name = "cpu"
command = F, a, y, x
time = 1

[Command]
name = "cpu"
command = F, a, y, y
time = 1

[Command]
name = "cpu"
command = F, a, y, z
time = 1

[Command]
name = "cpu"
command = F, a, y, s
time = 1

[Command]
name = "cpu"
command = F, a, z, F
time = 1

[Command]
name = "cpu"
command = F, a, z, B
time = 1

[Command]
name = "cpu"
command = F, a, z, U
time = 1

[Command]
name = "cpu"
command = F, a, z, D
time = 1

[Command]
name = "cpu"
command = F, a, z, a
time = 1

[Command]
name = "cpu"
command = F, a, z, b
time = 1

[Command]
name = "cpu"
command = F, a, z, c
time = 1

[Command]
name = "cpu"
command = F, a, z, x
time = 1

[Command]
name = "cpu"
command = F, a, z, y
time = 1

[Command]
name = "cpu"
command = F, a, z, z
time = 1

[Command]
name = "cpu"
command = F, a, z, s
time = 1

[Command]
name = "cpu"
command = F, a, s, F
time = 1

[Command]
name = "cpu"
command = F, a, s, B
time = 1

[Command]
name = "cpu"
command = F, a, s, U
time = 1

[Command]
name = "cpu"
command = F, a, s, D
time = 1

[Command]
name = "cpu"
command = F, a, s, a
time = 1

[Command]
name = "cpu"
command = F, a, s, b
time = 1

[Command]
name = "cpu"
command = F, a, s, c
time = 1

[Command]
name = "cpu"
command = F, a, s, x
time = 1

[Command]
name = "cpu"
command = F, a, s, y
time = 1

[Command]
name = "cpu"
command = F, a, s, z
time = 1

[Command]
name = "cpu"
command = F, a, s, s
time = 1

[Command]
name = "cpu"
command = F, b, F, F
time = 1

[Command]
name = "cpu"
command = F, b, F, B
time = 1

[Command]
name = "cpu"
command = F, b, F, U
time = 1

[Command]
name = "cpu"
command = F, b, F, D
time = 1

[Command]
name = "cpu"
command = F, b, F, a
time = 1

[Command]
name = "cpu"
command = F, b, F, b
time = 1

[Command]
name = "cpu"
command = F, b, F, c
time = 1

[Command]
name = "cpu"
command = F, b, F, x
time = 1

[Command]
name = "cpu"
command = F, b, F, y
time = 1

[Command]
name = "cpu"
command = F, b, F, z
time = 1

[Command]
name = "cpu"
command = F, b, F, s
time = 1

[Command]
name = "cpu"
command = F, b, B, F
time = 1

[Command]
name = "cpu"
command = F, b, B, B
time = 1

[Command]
name = "cpu"
command = F, b, B, U
time = 1

[Command]
name = "cpu"
command = F, b, B, D
time = 1

[Command]
name = "cpu"
command = F, b, B, a
time = 1

[Command]
name = "cpu"
command = F, b, B, b
time = 1

[Command]
name = "cpu"
command = F, b, B, c
time = 1

[Command]
name = "cpu"
command = F, b, B, x
time = 1

[Command]
name = "cpu"
command = F, b, B, y
time = 1

[Command]
name = "cpu"
command = F, b, B, z
time = 1

[Command]
name = "cpu"
command = F, b, B, s
time = 1

[Command]
name = "cpu"
command = F, b, U, F
time = 1

[Command]
name = "cpu"
command = F, b, U, B
time = 1

[Command]
name = "cpu"
command = F, b, U, U
time = 1

[Command]
name = "cpu"
command = F, b, U, D
time = 1

[Command]
name = "cpu"
command = F, b, U, a
time = 1

[Command]
name = "cpu"
command = F, b, U, b
time = 1

[Command]
name = "cpu"
command = F, b, U, c
time = 1

[Command]
name = "cpu"
command = F, b, U, x
time = 1

[Command]
name = "cpu"
command = F, b, U, y
time = 1

[Command]
name = "cpu"
command = F, b, U, z
time = 1

[Command]
name = "cpu"
command = F, b, U, s
time = 1

[Command]
name = "cpu"
command = F, b, D, F
time = 1

[Command]
name = "cpu"
command = F, b, D, B
time = 1

[Command]
name = "cpu"
command = F, b, D, U
time = 1

[Command]
name = "cpu"
command = F, b, D, D
time = 1

[Command]
name = "cpu"
command = F, b, D, a
time = 1

[Command]
name = "cpu"
command = F, b, D, b
time = 1

[Command]
name = "cpu"
command = F, b, D, c
time = 1

[Command]
name = "cpu"
command = F, b, D, x
time = 1

[Command]
name = "cpu"
command = F, b, D, y
time = 1

[Command]
name = "cpu"
command = F, b, D, z
time = 1

[Command]
name = "cpu"
command = F, b, D, s
time = 1

[Command]
name = "cpu"
command = F, b, a, F
time = 1

[Command]
name = "cpu"
command = F, b, a, B
time = 1

[Command]
name = "cpu"
command = F, b, a, U
time = 1

[Command]
name = "cpu"
command = F, b, a, D
time = 1

[Command]
name = "cpu"
command = F, b, a, a
time = 1

[Command]
name = "cpu"
command = F, b, a, b
time = 1

[Command]
name = "cpu"
command = F, b, a, c
time = 1

[Command]
name = "cpu"
command = F, b, a, x
time = 1

[Command]
name = "cpu"
command = F, b, a, y
time = 1

[Command]
name = "cpu"
command = F, b, a, z
time = 1

[Command]
name = "cpu"
command = F, b, a, s
time = 1

[Command]
name = "cpu"
command = F, b, b, F
time = 1

[Command]
name = "cpu"
command = F, b, b, B
time = 1

[Command]
name = "cpu"
command = F, b, b, U
time = 1

[Command]
name = "cpu"
command = F, b, b, D
time = 1

[Command]
name = "cpu"
command = F, b, b, a
time = 1

[Command]
name = "cpu"
command = F, b, b, b
time = 1

[Command]
name = "cpu"
command = F, b, b, c
time = 1

[Command]
name = "cpu"
command = F, b, b, x
time = 1

[Command]
name = "cpu"
command = F, b, b, y
time = 1

[Command]
name = "cpu"
command = F, b, b, z
time = 1

[Command]
name = "cpu"
command = F, b, b, s
time = 1

[Command]
name = "cpu"
command = F, b, c, F
time = 1

[Command]
name = "cpu"
command = F, b, c, B
time = 1

[Command]
name = "cpu"
command = F, b, c, U
time = 1

[Command]
name = "cpu"
command = F, b, c, D
time = 1

[Command]
name = "cpu"
command = F, b, c, a
time = 1

[Command]
name = "cpu"
command = F, b, c, b
time = 1

[Command]
name = "cpu"
command = F, b, c, c
time = 1

[Command]
name = "cpu"
command = F, b, c, x
time = 1

[Command]
name = "cpu"
command = F, b, c, y
time = 1

[Command]
name = "cpu"
command = F, b, c, z
time = 1

[Command]
name = "cpu"
command = F, b, c, s
time = 1

[Command]
name = "cpu"
command = F, b, x, F
time = 1

[Command]
name = "cpu"
command = F, b, x, B
time = 1

[Command]
name = "cpu"
command = F, b, x, U
time = 1

[Command]
name = "cpu"
command = F, b, x, D
time = 1

[Command]
name = "cpu"
command = F, b, x, a
time = 1

[Command]
name = "cpu"
command = F, b, x, b
time = 1

[Command]
name = "cpu"
command = F, b, x, c
time = 1

[Command]
name = "cpu"
command = F, b, x, x
time = 1

[Command]
name = "cpu"
command = F, b, x, y
time = 1

[Command]
name = "cpu"
command = F, b, x, z
time = 1

[Command]
name = "cpu"
command = F, b, x, s
time = 1

[Command]
name = "cpu"
command = F, b, y, F
time = 1

[Command]
name = "cpu"
command = F, b, y, B
time = 1

[Command]
name = "cpu"
command = F, b, y, U
time = 1

[Command]
name = "cpu"
command = F, b, y, D
time = 1

[Command]
name = "cpu"
command = F, b, y, a
time = 1

[Command]
name = "cpu"
command = F, b, y, b
time = 1

[Command]
name = "cpu"
command = F, b, y, c
time = 1

[Command]
name = "cpu"
command = F, b, y, x
time = 1

[Command]
name = "cpu"
command = F, b, y, y
time = 1

[Command]
name = "cpu"
command = F, b, y, z
time = 1

[Command]
name = "cpu"
command = F, b, y, s
time = 1

[Command]
name = "cpu"
command = F, b, z, F
time = 1

[Command]
name = "cpu"
command = F, b, z, B
time = 1

[Command]
name = "cpu"
command = F, b, z, U
time = 1

[Command]
name = "cpu"
command = F, b, z, D
time = 1

[Command]
name = "cpu"
command = F, b, z, a
time = 1

[Command]
name = "cpu"
command = F, b, z, b
time = 1

[Command]
name = "cpu"
command = F, b, z, c
time = 1

[Command]
name = "cpu"
command = F, b, z, x
time = 1

[Command]
name = "cpu"
command = F, b, z, y
time = 1

[Command]
name = "cpu"
command = F, b, z, z
time = 1

[Command]
name = "cpu"
command = F, b, z, s
time = 1

[Command]
name = "cpu"
command = F, b, s, F
time = 1

[Command]
name = "cpu"
command = F, b, s, B
time = 1

[Command]
name = "cpu"
command = F, b, s, U
time = 1

[Command]
name = "cpu"
command = F, b, s, D
time = 1

[Command]
name = "cpu"
command = F, b, s, a
time = 1

[Command]
name = "cpu"
command = F, b, s, b
time = 1

[Command]
name = "cpu"
command = F, b, s, c
time = 1

[Command]
name = "cpu"
command = F, b, s, x
time = 1

[Command]
name = "cpu"
command = F, b, s, y
time = 1

[Command]
name = "cpu"
command = F, b, s, z
time = 1

[Command]
name = "cpu"
command = F, b, s, s
time = 1

[Command]
name = "cpu"
command = F, c, F, F
time = 1

[Command]
name = "cpu"
command = F, c, F, B
time = 1

[Command]
name = "cpu"
command = F, c, F, U
time = 1

[Command]
name = "cpu"
command = F, c, F, D
time = 1

[Command]
name = "cpu"
command = F, c, F, a
time = 1

[Command]
name = "cpu"
command = F, c, F, b
time = 1

[Command]
name = "cpu"
command = F, c, F, c
time = 1

[Command]
name = "cpu"
command = F, c, F, x
time = 1

[Command]
name = "cpu"
command = F, c, F, y
time = 1

[Command]
name = "cpu"
command = F, c, F, z
time = 1

[Command]
name = "cpu"
command = F, c, F, s
time = 1

[Command]
name = "cpu"
command = F, c, B, F
time = 1

[Command]
name = "cpu"
command = F, c, B, B
time = 1

[Command]
name = "cpu"
command = F, c, B, U
time = 1

[Command]
name = "cpu"
command = F, c, B, D
time = 1

[Command]
name = "cpu"
command = F, c, B, a
time = 1

[Command]
name = "cpu"
command = F, c, B, b
time = 1

[Command]
name = "cpu"
command = F, c, B, c
time = 1

[Command]
name = "cpu"
command = F, c, B, x
time = 1

[Command]
name = "cpu"
command = F, c, B, y
time = 1

[Command]
name = "cpu"
command = F, c, B, z
time = 1

[Command]
name = "cpu"
command = F, c, B, s
time = 1

[Command]
name = "cpu"
command = F, c, U, F
time = 1

[Command]
name = "cpu"
command = F, c, U, B
time = 1

[Command]
name = "cpu"
command = F, c, U, U
time = 1

[Command]
name = "cpu"
command = F, c, U, D
time = 1

[Command]
name = "cpu"
command = F, c, U, a
time = 1

[Command]
name = "cpu"
command = F, c, U, b
time = 1

[Command]
name = "cpu"
command = F, c, U, c
time = 1

[Command]
name = "cpu"
command = F, c, U, x
time = 1

[Command]
name = "cpu"
command = F, c, U, y
time = 1

[Command]
name = "cpu"
command = F, c, U, z
time = 1

[Command]
name = "cpu"
command = F, c, U, s
time = 1

[Command]
name = "cpu"
command = F, c, D, F
time = 1

[Command]
name = "cpu"
command = F, c, D, B
time = 1

[Command]
name = "cpu"
command = F, c, D, U
time = 1

[Command]
name = "cpu"
command = F, c, D, D
time = 1

[Command]
name = "cpu"
command = F, c, D, a
time = 1

[Command]
name = "cpu"
command = F, c, D, b
time = 1

[Command]
name = "cpu"
command = F, c, D, c
time = 1

[Command]
name = "cpu"
command = F, c, D, x
time = 1

[Command]
name = "cpu"
command = F, c, D, y
time = 1

[Command]
name = "cpu"
command = F, c, D, z
time = 1

[Command]
name = "cpu"
command = F, c, D, s
time = 1

[Command]
name = "cpu"
command = F, c, a, F
time = 1

[Command]
name = "cpu"
command = F, c, a, B
time = 1

[Command]
name = "cpu"
command = F, c, a, U
time = 1

[Command]
name = "cpu"
command = F, c, a, D
time = 1

[Command]
name = "cpu"
command = F, c, a, a
time = 1

[Command]
name = "cpu"
command = F, c, a, b
time = 1

[Command]
name = "cpu"
command = F, c, a, c
time = 1

[Command]
name = "cpu"
command = F, c, a, x
time = 1

[Command]
name = "cpu"
command = F, c, a, y
time = 1

[Command]
name = "cpu"
command = F, c, a, z
time = 1

[Command]
name = "cpu"
command = F, c, a, s
time = 1

[Command]
name = "cpu"
command = F, c, b, F
time = 1

[Command]
name = "cpu"
command = F, c, b, B
time = 1

[Command]
name = "cpu"
command = F, c, b, U
time = 1

[Command]
name = "cpu"
command = F, c, b, D
time = 1

[Command]
name = "cpu"
command = F, c, b, a
time = 1

[Command]
name = "cpu"
command = F, c, b, b
time = 1

[Command]
name = "cpu"
command = F, c, b, c
time = 1

[Command]
name = "cpu"
command = F, c, b, x
time = 1

[Command]
name = "cpu"
command = F, c, b, y
time = 1

[Command]
name = "cpu"
command = F, c, b, z
time = 1

[Command]
name = "cpu"
command = F, c, b, s
time = 1

[Command]
name = "cpu"
command = F, c, c, F
time = 1

[Command]
name = "cpu"
command = F, c, c, B
time = 1

[Command]
name = "cpu"
command = F, c, c, U
time = 1

[Command]
name = "cpu"
command = F, c, c, D
time = 1

[Command]
name = "cpu"
command = F, c, c, a
time = 1

[Command]
name = "cpu"
command = F, c, c, b
time = 1

[Command]
name = "cpu"
command = F, c, c, c
time = 1

[Command]
name = "cpu"
command = F, c, c, x
time = 1

[Command]
name = "cpu"
command = F, c, c, y
time = 1

[Command]
name = "cpu"
command = F, c, c, z
time = 1

[Command]
name = "cpu"
command = F, c, c, s
time = 1

[Command]
name = "cpu"
command = F, c, x, F
time = 1

[Command]
name = "cpu"
command = F, c, x, B
time = 1

[Command]
name = "cpu"
command = F, c, x, U
time = 1

[Command]
name = "cpu"
command = F, c, x, D
time = 1

[Command]
name = "cpu"
command = F, c, x, a
time = 1

[Command]
name = "cpu"
command = F, c, x, b
time = 1

[Command]
name = "cpu"
command = F, c, x, c
time = 1

[Command]
name = "cpu"
command = F, c, x, x
time = 1

[Command]
name = "cpu"
command = F, c, x, y
time = 1

[Command]
name = "cpu"
command = F, c, x, z
time = 1

[Command]
name = "cpu"
command = F, c, x, s
time = 1

[Command]
name = "cpu"
command = F, c, y, F
time = 1

[Command]
name = "cpu"
command = F, c, y, B
time = 1

[Command]
name = "cpu"
command = F, c, y, U
time = 1

[Command]
name = "cpu"
command = F, c, y, D
time = 1

[Command]
name = "cpu"
command = F, c, y, a
time = 1

[Command]
name = "cpu"
command = F, c, y, b
time = 1

[Command]
name = "cpu"
command = F, c, y, c
time = 1

[Command]
name = "cpu"
command = F, c, y, x
time = 1

[Command]
name = "cpu"
command = F, c, y, y
time = 1

[Command]
name = "cpu"
command = F, c, y, z
time = 1

[Command]
name = "cpu"
command = F, c, y, s
time = 1

[Command]
name = "cpu"
command = F, c, z, F
time = 1

[Command]
name = "cpu"
command = F, c, z, B
time = 1

[Command]
name = "cpu"
command = F, c, z, U
time = 1

[Command]
name = "cpu"
command = F, c, z, D
time = 1

[Command]
name = "cpu"
command = F, c, z, a
time = 1

[Command]
name = "cpu"
command = F, c, z, b
time = 1

[Command]
name = "cpu"
command = F, c, z, c
time = 1

[Command]
name = "cpu"
command = F, c, z, x
time = 1

[Command]
name = "cpu"
command = F, c, z, y
time = 1

[Command]
name = "cpu"
command = F, c, z, z
time = 1

[Command]
name = "cpu"
command = F, c, z, s
time = 1

[Command]
name = "cpu"
command = F, c, s, F
time = 1

[Command]
name = "cpu"
command = F, c, s, B
time = 1

[Command]
name = "cpu"
command = F, c, s, U
time = 1

[Command]
name = "cpu"
command = F, c, s, D
time = 1

[Command]
name = "cpu"
command = F, c, s, a
time = 1

[Command]
name = "cpu"
command = F, c, s, b
time = 1

[Command]
name = "cpu"
command = F, c, s, c
time = 1

[Command]
name = "cpu"
command = F, c, s, x
time = 1

[Command]
name = "cpu"
command = F, c, s, y
time = 1

[Command]
name = "cpu"
command = F, c, s, z
time = 1

[Command]
name = "cpu"
command = F, c, s, s
time = 1

[Command]
name = "cpu"
command = F, x, F, F
time = 1

[Command]
name = "cpu"
command = F, x, F, B
time = 1

[Command]
name = "cpu"
command = F, x, F, U
time = 1

[Command]
name = "cpu"
command = F, x, F, D
time = 1

[Command]
name = "cpu"
command = F, x, F, a
time = 1

[Command]
name = "cpu"
command = F, x, F, b
time = 1

[Command]
name = "cpu"
command = F, x, F, c
time = 1

[Command]
name = "cpu"
command = F, x, F, x
time = 1

[Command]
name = "cpu"
command = F, x, F, y
time = 1

[Command]
name = "cpu"
command = F, x, F, z
time = 1

[Command]
name = "cpu"
command = F, x, F, s
time = 1

[Command]
name = "cpu"
command = F, x, B, F
time = 1

[Command]
name = "cpu"
command = F, x, B, B
time = 1

[Command]
name = "cpu"
command = F, x, B, U
time = 1

[Command]
name = "cpu"
command = F, x, B, D
time = 1

[Command]
name = "cpu"
command = F, x, B, a
time = 1

[Command]
name = "cpu"
command = F, x, B, b
time = 1

[Command]
name = "cpu"
command = F, x, B, c
time = 1

[Command]
name = "cpu"
command = F, x, B, x
time = 1

[Command]
name = "cpu"
command = F, x, B, y
time = 1

[Command]
name = "cpu"
command = F, x, B, z
time = 1

[Command]
name = "cpu"
command = F, x, B, s
time = 1

[Command]
name = "cpu"
command = F, x, U, F
time = 1

[Command]
name = "cpu"
command = F, x, U, B
time = 1

[Command]
name = "cpu"
command = F, x, U, U
time = 1

[Command]
name = "cpu"
command = F, x, U, D
time = 1

[Command]
name = "cpu"
command = F, x, U, a
time = 1

[Command]
name = "cpu"
command = F, x, U, b
time = 1

[Command]
name = "cpu"
command = F, x, U, c
time = 1

[Command]
name = "cpu"
command = F, x, U, x
time = 1

[Command]
name = "cpu"
command = F, x, U, y
time = 1

[Command]
name = "cpu"
command = F, x, U, z
time = 1

[Command]
name = "cpu"
command = F, x, U, s
time = 1

[Command]
name = "cpu"
command = F, x, D, F
time = 1

[Command]
name = "cpu"
command = F, x, D, B
time = 1

[Command]
name = "cpu"
command = F, x, D, U
time = 1

[Command]
name = "cpu"
command = F, x, D, D
time = 1

[Command]
name = "cpu"
command = F, x, D, a
time = 1

[Command]
name = "cpu"
command = F, x, D, b
time = 1

[Command]
name = "cpu"
command = F, x, D, c
time = 1

[Command]
name = "cpu"
command = F, x, D, x
time = 1

[Command]
name = "cpu"
command = F, x, D, y
time = 1

[Command]
name = "cpu"
command = F, x, D, z
time = 1

[Command]
name = "cpu"
command = F, x, D, s
time = 1

[Command]
name = "cpu"
command = F, x, a, F
time = 1

[Command]
name = "cpu"
command = F, x, a, B
time = 1

[Command]
name = "cpu"
command = F, x, a, U
time = 1

[Command]
name = "cpu"
command = F, x, a, D
time = 1

[Command]
name = "cpu"
command = F, x, a, a
time = 1

[Command]
name = "cpu"
command = F, x, a, b
time = 1

[Command]
name = "cpu"
command = F, x, a, c
time = 1

[Command]
name = "cpu"
command = F, x, a, x
time = 1

[Command]
name = "cpu"
command = F, x, a, y
time = 1

[Command]
name = "cpu"
command = F, x, a, z
time = 1

[Command]
name = "cpu"
command = F, x, a, s
time = 1

[Command]
name = "cpu"
command = F, x, b, F
time = 1

[Command]
name = "cpu"
command = F, x, b, B
time = 1

[Command]
name = "cpu"
command = F, x, b, U
time = 1

[Command]
name = "cpu"
command = F, x, b, D
time = 1

[Command]
name = "cpu"
command = F, x, b, a
time = 1

[Command]
name = "cpu"
command = F, x, b, b
time = 1

[Command]
name = "cpu"
command = F, x, b, c
time = 1

[Command]
name = "cpu"
command = F, x, b, x
time = 1

[Command]
name = "cpu"
command = F, x, b, y
time = 1

[Command]
name = "cpu"
command = F, x, b, z
time = 1

[Command]
name = "cpu"
command = F, x, b, s
time = 1

[Command]
name = "cpu"
command = F, x, c, F
time = 1

[Command]
name = "cpu"
command = F, x, c, B
time = 1

[Command]
name = "cpu"
command = F, x, c, U
time = 1

[Command]
name = "cpu"
command = F, x, c, D
time = 1

[Command]
name = "cpu"
command = F, x, c, a
time = 1

[Command]
name = "cpu"
command = F, x, c, b
time = 1

[Command]
name = "cpu"
command = F, x, c, c
time = 1

[Command]
name = "cpu"
command = F, x, c, x
time = 1

[Command]
name = "cpu"
command = F, x, c, y
time = 1

[Command]
name = "cpu"
command = F, x, c, z
time = 1

[Command]
name = "cpu"
command = F, x, c, s
time = 1

[Command]
name = "cpu"
command = F, x, x, F
time = 1

[Command]
name = "cpu"
command = F, x, x, B
time = 1

[Command]
name = "cpu"
command = F, x, x, U
time = 1

[Command]
name = "cpu"
command = F, x, x, D
time = 1

[Command]
name = "cpu"
command = F, x, x, a
time = 1

[Command]
name = "cpu"
command = F, x, x, b
time = 1

[Command]
name = "cpu"
command = F, x, x, c
time = 1

[Command]
name = "cpu"
command = F, x, x, x
time = 1

[Command]
name = "cpu"
command = F, x, x, y
time = 1

[Command]
name = "cpu"
command = F, x, x, z
time = 1

[Command]
name = "cpu"
command = F, x, x, s
time = 1

[Command]
name = "cpu"
command = F, x, y, F
time = 1

[Command]
name = "cpu"
command = F, x, y, B
time = 1

[Command]
name = "cpu"
command = F, x, y, U
time = 1

[Command]
name = "cpu"
command = F, x, y, D
time = 1

[Command]
name = "cpu"
command = F, x, y, a
time = 1

[Command]
name = "cpu"
command = F, x, y, b
time = 1

[Command]
name = "cpu"
command = F, x, y, c
time = 1

[Command]
name = "cpu"
command = F, x, y, x
time = 1

[Command]
name = "cpu"
command = F, x, y, y
time = 1

[Command]
name = "cpu"
command = F, x, y, z
time = 1

[Command]
name = "cpu"
command = F, x, y, s
time = 1

[Command]
name = "cpu"
command = F, x, z, F
time = 1

[Command]
name = "cpu"
command = F, x, z, B
time = 1

[Command]
name = "cpu"
command = F, x, z, U
time = 1

[Command]
name = "cpu"
command = F, x, z, D
time = 1

[Command]
name = "cpu"
command = F, x, z, a
time = 1

[Command]
name = "cpu"
command = F, x, z, b
time = 1

[Command]
name = "cpu"
command = F, x, z, c
time = 1

[Command]
name = "cpu"
command = F, x, z, x
time = 1

[Command]
name = "cpu"
command = F, x, z, y
time = 1

[Command]
name = "cpu"
command = F, x, z, z
time = 1

[Command]
name = "cpu"
command = F, x, z, s
time = 1

[Command]
name = "cpu"
command = F, x, s, F
time = 1

[Command]
name = "cpu"
command = F, x, s, B
time = 1

[Command]
name = "cpu"
command = F, x, s, U
time = 1

[Command]
name = "cpu"
command = F, x, s, D
time = 1

[Command]
name = "cpu"
command = F, x, s, a
time = 1

[Command]
name = "cpu"
command = F, x, s, b
time = 1

[Command]
name = "cpu"
command = F, x, s, c
time = 1

[Command]
name = "cpu"
command = F, x, s, x
time = 1

[Command]
name = "cpu"
command = F, x, s, y
time = 1

[Command]
name = "cpu"
command = F, x, s, z
time = 1

[Command]
name = "cpu"
command = F, x, s, s
time = 1

[Command]
name = "cpu"
command = F, y, F, F
time = 1

[Command]
name = "cpu"
command = F, y, F, B
time = 1

[Command]
name = "cpu"
command = F, y, F, U
time = 1

[Command]
name = "cpu"
command = F, y, F, D
time = 1

[Command]
name = "cpu"
command = F, y, F, a
time = 1

[Command]
name = "cpu"
command = F, y, F, b
time = 1

[Command]
name = "cpu"
command = F, y, F, c
time = 1

[Command]
name = "cpu"
command = F, y, F, x
time = 1

[Command]
name = "cpu"
command = F, y, F, y
time = 1

[Command]
name = "cpu"
command = F, y, F, z
time = 1

[Command]
name = "cpu"
command = F, y, F, s
time = 1

[Command]
name = "cpu"
command = F, y, B, F
time = 1

[Command]
name = "cpu"
command = F, y, B, B
time = 1

[Command]
name = "cpu"
command = F, y, B, U
time = 1

[Command]
name = "cpu"
command = F, y, B, D
time = 1

[Command]
name = "cpu"
command = F, y, B, a
time = 1

[Command]
name = "cpu"
command = F, y, B, b
time = 1

[Command]
name = "cpu"
command = F, y, B, c
time = 1

[Command]
name = "cpu"
command = F, y, B, x
time = 1

[Command]
name = "cpu"
command = F, y, B, y
time = 1

[Command]
name = "cpu"
command = F, y, B, z
time = 1

[Command]
name = "cpu"
command = F, y, B, s
time = 1

[Command]
name = "cpu"
command = F, y, U, F
time = 1

[Command]
name = "cpu"
command = F, y, U, B
time = 1

[Command]
name = "cpu"
command = F, y, U, U
time = 1

[Command]
name = "cpu"
command = F, y, U, D
time = 1

[Command]
name = "cpu"
command = F, y, U, a
time = 1

[Command]
name = "cpu"
command = F, y, U, b
time = 1

[Command]
name = "cpu"
command = F, y, U, c
time = 1

[Command]
name = "cpu"
command = F, y, U, x
time = 1

[Command]
name = "cpu"
command = F, y, U, y
time = 1

[Command]
name = "cpu"
command = F, y, U, z
time = 1

[Command]
name = "cpu"
command = F, y, U, s
time = 1

[Command]
name = "cpu"
command = F, y, D, F
time = 1

[Command]
name = "cpu"
command = F, y, D, B
time = 1

[Command]
name = "cpu"
command = F, y, D, U
time = 1

[Command]
name = "cpu"
command = F, y, D, D
time = 1

[Command]
name = "cpu"
command = F, y, D, a
time = 1

[Command]
name = "cpu"
command = F, y, D, b
time = 1

[Command]
name = "cpu"
command = F, y, D, c
time = 1

[Command]
name = "cpu"
command = F, y, D, x
time = 1

[Command]
name = "cpu"
command = F, y, D, y
time = 1

[Command]
name = "cpu"
command = F, y, D, z
time = 1

[Command]
name = "cpu"
command = F, y, D, s
time = 1

[Command]
name = "cpu"
command = F, y, a, F
time = 1

[Command]
name = "cpu"
command = F, y, a, B
time = 1

[Command]
name = "cpu"
command = F, y, a, U
time = 1

[Command]
name = "cpu"
command = F, y, a, D
time = 1

[Command]
name = "cpu"
command = F, y, a, a
time = 1

[Command]
name = "cpu"
command = F, y, a, b
time = 1

[Command]
name = "cpu"
command = F, y, a, c
time = 1

[Command]
name = "cpu"
command = F, y, a, x
time = 1

[Command]
name = "cpu"
command = F, y, a, y
time = 1

[Command]
name = "cpu"
command = F, y, a, z
time = 1

[Command]
name = "cpu"
command = F, y, a, s
time = 1

[Command]
name = "cpu"
command = F, y, b, F
time = 1

[Command]
name = "cpu"
command = F, y, b, B
time = 1

[Command]
name = "cpu"
command = F, y, b, U
time = 1

[Command]
name = "cpu"
command = F, y, b, D
time = 1

[Command]
name = "cpu"
command = F, y, b, a
time = 1

[Command]
name = "cpu"
command = F, y, b, b
time = 1

[Command]
name = "cpu"
command = F, y, b, c
time = 1

[Command]
name = "cpu"
command = F, y, b, x
time = 1

[Command]
name = "cpu"
command = F, y, b, y
time = 1

[Command]
name = "cpu"
command = F, y, b, z
time = 1

[Command]
name = "cpu"
command = F, y, b, s
time = 1

[Command]
name = "cpu"
command = F, y, c, F
time = 1

[Command]
name = "cpu"
command = F, y, c, B
time = 1

[Command]
name = "cpu"
command = F, y, c, U
time = 1

[Command]
name = "cpu"
command = F, y, c, D
time = 1

[Command]
name = "cpu"
command = F, y, c, a
time = 1

[Command]
name = "cpu"
command = F, y, c, b
time = 1

[Command]
name = "cpu"
command = F, y, c, c
time = 1

[Command]
name = "cpu"
command = F, y, c, x
time = 1

[Command]
name = "cpu"
command = F, y, c, y
time = 1

[Command]
name = "cpu"
command = F, y, c, z
time = 1

[Command]
name = "cpu"
command = F, y, c, s
time = 1

[Command]
name = "cpu"
command = F, y, x, F
time = 1

[Command]
name = "cpu"
command = F, y, x, B
time = 1

[Command]
name = "cpu"
command = F, y, x, U
time = 1

[Command]
name = "cpu"
command = F, y, x, D
time = 1

[Command]
name = "cpu"
command = F, y, x, a
time = 1

[Command]
name = "cpu"
command = F, y, x, b
time = 1

[Command]
name = "cpu"
command = F, y, x, c
time = 1

[Command]
name = "cpu"
command = F, y, x, x
time = 1

[Command]
name = "cpu"
command = F, y, x, y
time = 1

[Command]
name = "cpu"
command = F, y, x, z
time = 1

[Command]
name = "cpu"
command = F, y, x, s
time = 1

[Command]
name = "cpu"
command = F, y, y, F
time = 1

[Command]
name = "cpu"
command = F, y, y, B
time = 1

[Command]
name = "cpu"
command = F, y, y, U
time = 1

[Command]
name = "cpu"
command = F, y, y, D
time = 1

[Command]
name = "cpu"
command = F, y, y, a
time = 1

[Command]
name = "cpu"
command = F, y, y, b
time = 1

[Command]
name = "cpu"
command = F, y, y, c
time = 1

[Command]
name = "cpu"
command = F, y, y, x
time = 1

[Command]
name = "cpu"
command = F, y, y, y
time = 1

[Command]
name = "cpu"
command = F, y, y, z
time = 1

[Command]
name = "cpu"
command = F, y, y, s
time = 1

[Command]
name = "cpu"
command = F, y, z, F
time = 1

[Command]
name = "cpu"
command = F, y, z, B
time = 1

[Command]
name = "cpu"
command = F, y, z, U
time = 1

[Command]
name = "cpu"
command = F, y, z, D
time = 1

[Command]
name = "cpu"
command = F, y, z, a
time = 1

[Command]
name = "cpu"
command = F, y, z, b
time = 1

[Command]
name = "cpu"
command = F, y, z, c
time = 1

[Command]
name = "cpu"
command = F, y, z, x
time = 1

[Command]
name = "cpu"
command = F, y, z, y
time = 1

[Command]
name = "cpu"
command = F, y, z, z
time = 1

[Command]
name = "cpu"
command = F, y, z, s
time = 1

[Command]
name = "cpu"
command = F, y, s, F
time = 1

[Command]
name = "cpu"
command = F, y, s, B
time = 1

[Command]
name = "cpu"
command = F, y, s, U
time = 1

[Command]
name = "cpu"
command = F, y, s, D
time = 1

[Command]
name = "cpu"
command = F, y, s, a
time = 1

[Command]
name = "cpu"
command = F, y, s, b
time = 1

[Command]
name = "cpu"
command = F, y, s, c
time = 1

[Command]
name = "cpu"
command = F, y, s, x
time = 1

[Command]
name = "cpu"
command = F, y, s, y
time = 1

[Command]
name = "cpu"
command = F, y, s, z
time = 1

[Command]
name = "cpu"
command = F, y, s, s
time = 1

[Command]
name = "cpu"
command = F, z, F, F
time = 1

[Command]
name = "cpu"
command = F, z, F, B
time = 1

[Command]
name = "cpu"
command = F, z, F, U
time = 1

[Command]
name = "cpu"
command = F, z, F, D
time = 1

[Command]
name = "cpu"
command = F, z, F, a
time = 1

[Command]
name = "cpu"
command = F, z, F, b
time = 1

[Command]
name = "cpu"
command = F, z, F, c
time = 1

[Command]
name = "cpu"
command = F, z, F, x
time = 1

[Command]
name = "cpu"
command = F, z, F, y
time = 1

[Command]
name = "cpu"
command = F, z, F, z
time = 1

[Command]
name = "cpu"
command = F, z, F, s
time = 1

[Command]
name = "cpu"
command = F, z, B, F
time = 1

[Command]
name = "cpu"
command = F, z, B, B
time = 1

[Command]
name = "cpu"
command = F, z, B, U
time = 1

[Command]
name = "cpu"
command = F, z, B, D
time = 1

[Command]
name = "cpu"
command = F, z, B, a
time = 1

[Command]
name = "cpu"
command = F, z, B, b
time = 1

[Command]
name = "cpu"
command = F, z, B, c
time = 1

[Command]
name = "cpu"
command = F, z, B, x
time = 1

[Command]
name = "cpu"
command = F, z, B, y
time = 1

[Command]
name = "cpu"
command = F, z, B, z
time = 1

[Command]
name = "cpu"
command = F, z, B, s
time = 1

[Command]
name = "cpu"
command = F, z, U, F
time = 1

[Command]
name = "cpu"
command = F, z, U, B
time = 1

[Command]
name = "cpu"
command = F, z, U, U
time = 1

[Command]
name = "cpu"
command = F, z, U, D
time = 1

[Command]
name = "cpu"
command = F, z, U, a
time = 1

[Command]
name = "cpu"
command = F, z, U, b
time = 1

[Command]
name = "cpu"
command = F, z, U, c
time = 1

[Command]
name = "cpu"
command = F, z, U, x
time = 1

[Command]
name = "cpu"
command = F, z, U, y
time = 1

[Command]
name = "cpu"
command = F, z, U, z
time = 1

[Command]
name = "cpu"
command = F, z, U, s
time = 1

[Command]
name = "cpu"
command = F, z, D, F
time = 1

[Command]
name = "cpu"
command = F, z, D, B
time = 1

[Command]
name = "cpu"
command = F, z, D, U
time = 1

[Command]
name = "cpu"
command = F, z, D, D
time = 1

[Command]
name = "cpu"
command = F, z, D, a
time = 1

[Command]
name = "cpu"
command = F, z, D, b
time = 1

[Command]
name = "cpu"
command = F, z, D, c
time = 1

[Command]
name = "cpu"
command = F, z, D, x
time = 1

[Command]
name = "cpu"
command = F, z, D, y
time = 1

[Command]
name = "cpu"
command = F, z, D, z
time = 1

[Command]
name = "cpu"
command = F, z, D, s
time = 1

[Command]
name = "cpu"
command = F, z, a, F
time = 1

[Command]
name = "cpu"
command = F, z, a, B
time = 1

[Command]
name = "cpu"
command = F, z, a, U
time = 1

[Command]
name = "cpu"
command = F, z, a, D
time = 1

[Command]
name = "cpu"
command = F, z, a, a
time = 1

[Command]
name = "cpu"
command = F, z, a, b
time = 1

[Command]
name = "cpu"
command = F, z, a, c
time = 1

[Command]
name = "cpu"
command = F, z, a, x
time = 1

[Command]
name = "cpu"
command = F, z, a, y
time = 1

[Command]
name = "cpu"
command = F, z, a, z
time = 1

[Command]
name = "cpu"
command = F, z, a, s
time = 1

[Command]
name = "cpu"
command = F, z, b, F
time = 1

[Command]
name = "cpu"
command = F, z, b, B
time = 1

[Command]
name = "cpu"
command = F, z, b, U
time = 1

[Command]
name = "cpu"
command = F, z, b, D
time = 1

[Command]
name = "cpu"
command = F, z, b, a
time = 1

[Command]
name = "cpu"
command = F, z, b, b
time = 1

[Command]
name = "cpu"
command = F, z, b, c
time = 1

[Command]
name = "cpu"
command = F, z, b, x
time = 1

[Command]
name = "cpu"
command = F, z, b, y
time = 1

[Command]
name = "cpu"
command = F, z, b, z
time = 1

[Command]
name = "cpu"
command = F, z, b, s
time = 1

[Command]
name = "cpu"
command = F, z, c, F
time = 1

[Command]
name = "cpu"
command = F, z, c, B
time = 1

[Command]
name = "cpu"
command = F, z, c, U
time = 1

[Command]
name = "cpu"
command = F, z, c, D
time = 1

[Command]
name = "cpu"
command = F, z, c, a
time = 1

[Command]
name = "cpu"
command = F, z, c, b
time = 1

[Command]
name = "cpu"
command = F, z, c, c
time = 1

[Command]
name = "cpu"
command = F, z, c, x
time = 1

[Command]
name = "cpu"
command = F, z, c, y
time = 1

[Command]
name = "cpu"
command = F, z, c, z
time = 1

[Command]
name = "cpu"
command = F, z, c, s
time = 1

[Command]
name = "cpu"
command = F, z, x, F
time = 1

[Command]
name = "cpu"
command = F, z, x, B
time = 1

[Command]
name = "cpu"
command = F, z, x, U
time = 1

[Command]
name = "cpu"
command = F, z, x, D
time = 1

[Command]
name = "cpu"
command = F, z, x, a
time = 1

[Command]
name = "cpu"
command = F, z, x, b
time = 1

[Command]
name = "cpu"
command = F, z, x, c
time = 1

[Command]
name = "cpu"
command = F, z, x, x
time = 1

[Command]
name = "cpu"
command = F, z, x, y
time = 1

[Command]
name = "cpu"
command = F, z, x, z
time = 1

[Command]
name = "cpu"
command = F, z, x, s
time = 1

[Command]
name = "cpu"
command = F, z, y, F
time = 1

[Command]
name = "cpu"
command = F, z, y, B
time = 1

[Command]
name = "cpu"
command = F, z, y, U
time = 1

[Command]
name = "cpu"
command = F, z, y, D
time = 1

[Command]
name = "cpu"
command = F, z, y, a
time = 1

[Command]
name = "cpu"
command = F, z, y, b
time = 1

[Command]
name = "cpu"
command = F, z, y, c
time = 1

[Command]
name = "cpu"
command = F, z, y, x
time = 1

[Command]
name = "cpu"
command = F, z, y, y
time = 1

[Command]
name = "cpu"
command = F, z, y, z
time = 1

[Command]
name = "cpu"
command = F, z, y, s
time = 1

[Command]
name = "cpu"
command = F, z, z, F
time = 1

[Command]
name = "cpu"
command = F, z, z, B
time = 1

[Command]
name = "cpu"
command = F, z, z, U
time = 1

[Command]
name = "cpu"
command = F, z, z, D
time = 1

[Command]
name = "cpu"
command = F, z, z, a
time = 1

[Command]
name = "cpu"
command = F, z, z, b
time = 1

[Command]
name = "cpu"
command = F, z, z, c
time = 1

[Command]
name = "cpu"
command = F, z, z, x
time = 1

[Command]
name = "cpu"
command = F, z, z, y
time = 1

[Command]
name = "cpu"
command = F, z, z, z
time = 1

[Command]
name = "cpu"
command = F, z, z, s
time = 1

[Command]
name = "cpu"
command = F, z, s, F
time = 1

[Command]
name = "cpu"
command = F, z, s, B
time = 1

[Command]
name = "cpu"
command = F, z, s, U
time = 1

[Command]
name = "cpu"
command = F, z, s, D
time = 1

[Command]
name = "cpu"
command = F, z, s, a
time = 1

[Command]
name = "cpu"
command = F, z, s, b
time = 1

[Command]
name = "cpu"
command = F, z, s, c
time = 1

[Command]
name = "cpu"
command = F, z, s, x
time = 1

[Command]
name = "cpu"
command = F, z, s, y
time = 1

[Command]
name = "cpu"
command = F, z, s, z
time = 1

[Command]
name = "cpu"
command = F, z, s, s
time = 1

[Command]
name = "cpu"
command = F, s, F, F
time = 1

[Command]
name = "cpu"
command = F, s, F, B
time = 1

[Command]
name = "cpu"
command = F, s, F, U
time = 1

[Command]
name = "cpu"
command = F, s, F, D
time = 1

[Command]
name = "cpu"
command = F, s, F, a
time = 1

[Command]
name = "cpu"
command = F, s, F, b
time = 1

[Command]
name = "cpu"
command = F, s, F, c
time = 1

[Command]
name = "cpu"
command = F, s, F, x
time = 1

[Command]
name = "cpu"
command = F, s, F, y
time = 1

[Command]
name = "cpu"
command = F, s, F, z
time = 1

[Command]
name = "cpu"
command = F, s, F, s
time = 1

[Command]
name = "cpu"
command = F, s, B, F
time = 1

[Command]
name = "cpu"
command = F, s, B, B
time = 1

[Command]
name = "cpu"
command = F, s, B, U
time = 1

[Command]
name = "cpu"
command = F, s, B, D
time = 1

[Command]
name = "cpu"
command = F, s, B, a
time = 1

[Command]
name = "cpu"
command = F, s, B, b
time = 1

[Command]
name = "cpu"
command = F, s, B, c
time = 1

[Command]
name = "cpu"
command = F, s, B, x
time = 1

[Command]
name = "cpu"
command = F, s, B, y
time = 1

[Command]
name = "cpu"
command = F, s, B, z
time = 1

[Command]
name = "cpu"
command = F, s, B, s
time = 1

[Command]
name = "cpu"
command = F, s, U, F
time = 1

[Command]
name = "cpu"
command = F, s, U, B
time = 1

[Command]
name = "cpu"
command = F, s, U, U
time = 1

[Command]
name = "cpu"
command = F, s, U, D
time = 1

[Command]
name = "cpu"
command = F, s, U, a
time = 1

[Command]
name = "cpu"
command = F, s, U, b
time = 1

[Command]
name = "cpu"
command = F, s, U, c
time = 1

[Command]
name = "cpu"
command = F, s, U, x
time = 1

[Command]
name = "cpu"
command = F, s, U, y
time = 1

[Command]
name = "cpu"
command = F, s, U, z
time = 1

[Command]
name = "cpu"
command = F, s, U, s
time = 1

[Command]
name = "cpu"
command = F, s, D, F
time = 1

[Command]
name = "cpu"
command = F, s, D, B
time = 1

[Command]
name = "cpu"
command = F, s, D, U
time = 1

[Command]
name = "cpu"
command = F, s, D, D
time = 1

[Command]
name = "cpu"
command = F, s, D, a
time = 1

[Command]
name = "cpu"
command = F, s, D, b
time = 1

[Command]
name = "cpu"
command = F, s, D, c
time = 1

[Command]
name = "cpu"
command = F, s, D, x
time = 1

[Command]
name = "cpu"
command = F, s, D, y
time = 1

[Command]
name = "cpu"
command = F, s, D, z
time = 1

[Command]
name = "cpu"
command = F, s, D, s
time = 1

[Command]
name = "cpu"
command = F, s, a, F
time = 1

[Command]
name = "cpu"
command = F, s, a, B
time = 1

[Command]
name = "cpu"
command = F, s, a, U
time = 1

[Command]
name = "cpu"
command = F, s, a, D
time = 1

[Command]
name = "cpu"
command = F, s, a, a
time = 1

[Command]
name = "cpu"
command = F, s, a, b
time = 1

[Command]
name = "cpu"
command = F, s, a, c
time = 1

[Command]
name = "cpu"
command = F, s, a, x
time = 1

[Command]
name = "cpu"
command = F, s, a, y
time = 1

[Command]
name = "cpu"
command = F, s, a, z
time = 1

[Command]
name = "cpu"
command = F, s, a, s
time = 1

[Command]
name = "cpu"
command = F, s, b, F
time = 1

[Command]
name = "cpu"
command = F, s, b, B
time = 1

[Command]
name = "cpu"
command = F, s, b, U
time = 1

[Command]
name = "cpu"
command = F, s, b, D
time = 1

[Command]
name = "cpu"
command = F, s, b, a
time = 1

[Command]
name = "cpu"
command = F, s, b, b
time = 1

[Command]
name = "cpu"
command = F, s, b, c
time = 1

[Command]
name = "cpu"
command = F, s, b, x
time = 1

[Command]
name = "cpu"
command = F, s, b, y
time = 1

[Command]
name = "cpu"
command = F, s, b, z
time = 1

[Command]
name = "cpu"
command = F, s, b, s
time = 1

[Command]
name = "cpu"
command = F, s, c, F
time = 1

[Command]
name = "cpu"
command = F, s, c, B
time = 1

[Command]
name = "cpu"
command = F, s, c, U
time = 1

[Command]
name = "cpu"
command = F, s, c, D
time = 1

[Command]
name = "cpu"
command = F, s, c, a
time = 1

[Command]
name = "cpu"
command = F, s, c, b
time = 1

[Command]
name = "cpu"
command = F, s, c, c
time = 1

[Command]
name = "cpu"
command = F, s, c, x
time = 1

[Command]
name = "cpu"
command = F, s, c, y
time = 1

[Command]
name = "cpu"
command = F, s, c, z
time = 1

[Command]
name = "cpu"
command = F, s, c, s
time = 1

[Command]
name = "cpu"
command = F, s, x, F
time = 1

[Command]
name = "cpu"
command = F, s, x, B
time = 1

[Command]
name = "cpu"
command = F, s, x, U
time = 1

[Command]
name = "cpu"
command = F, s, x, D
time = 1

[Command]
name = "cpu"
command = F, s, x, a
time = 1

[Command]
name = "cpu"
command = F, s, x, b
time = 1

[Command]
name = "cpu"
command = F, s, x, c
time = 1

[Command]
name = "cpu"
command = F, s, x, x
time = 1

[Command]
name = "cpu"
command = F, s, x, y
time = 1

[Command]
name = "cpu"
command = F, s, x, z
time = 1

[Command]
name = "cpu"
command = F, s, x, s
time = 1

[Command]
name = "cpu"
command = F, s, y, F
time = 1

[Command]
name = "cpu"
command = F, s, y, B
time = 1

[Command]
name = "cpu"
command = F, s, y, U
time = 1

[Command]
name = "cpu"
command = F, s, y, D
time = 1

[Command]
name = "cpu"
command = F, s, y, a
time = 1

[Command]
name = "cpu"
command = F, s, y, b
time = 1

[Command]
name = "cpu"
command = F, s, y, c
time = 1

[Command]
name = "cpu"
command = F, s, y, x
time = 1

[Command]
name = "cpu"
command = F, s, y, y
time = 1

[Command]
name = "cpu"
command = F, s, y, z
time = 1

[Command]
name = "cpu"
command = F, s, y, s
time = 1

[Command]
name = "cpu"
command = F, s, z, F
time = 1

[Command]
name = "cpu"
command = F, s, z, B
time = 1

[Command]
name = "cpu"
command = F, s, z, U
time = 1

[Command]
name = "cpu"
command = F, s, z, D
time = 1

[Command]
name = "cpu"
command = F, s, z, a
time = 1

[Command]
name = "cpu"
command = F, s, z, b
time = 1

[Command]
name = "cpu"
command = F, s, z, c
time = 1

[Command]
name = "cpu"
command = F, s, z, x
time = 1

[Command]
name = "cpu"
command = F, s, z, y
time = 1

[Command]
name = "cpu"
command = F, s, z, z
time = 1

[Command]
name = "cpu"
command = F, s, z, s
time = 1

[Command]
name = "cpu"
command = F, s, s, F
time = 1

[Command]
name = "cpu"
command = F, s, s, B
time = 1

[Command]
name = "cpu"
command = F, s, s, U
time = 1

[Command]
name = "cpu"
command = F, s, s, D
time = 1

[Command]
name = "cpu"
command = F, s, s, a
time = 1

[Command]
name = "cpu"
command = F, s, s, b
time = 1

[Command]
name = "cpu"
command = F, s, s, c
time = 1

[Command]
name = "cpu"
command = F, s, s, x
time = 1

[Command]
name = "cpu"
command = F, s, s, y
time = 1

[Command]
name = "cpu"
command = F, s, s, z
time = 1

[Command]
name = "cpu"
command = F, s, s, s
time = 1

[Statedef -1]

;-| Supers |------------------------------------------------------------------------------

[State -1, Omega Destroyer]
type = changestate
value = 3000
triggerall = (command = "super") || (command = "super2")
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl

;-| Specials |--------------------------------------------------------------------

[State -1, Omega Strike Set]
type = varset
var(13) = ifelse((command="a"),0,ifelse((command="b"),1,2))
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact

[State -1, Omega Strike]
type = changestate
value = 1000
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
triggerall = statetype != A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact

;-| Dashes |----------------------------------------------------------------------

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = (command = "BB") || (command = "holdback") && (command = "dash")
triggerall = stateno != [100, 101]
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = (command = "FF") || (command = "dash")
triggerall = stateno != [100, 101]
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl

;Air Dash
[State -1, Air Dash]
type = changestate
value = 800
triggerall = (command = "FF")|| (command = "dash")
triggerall = ctrl
triggerall = statetype = A
triggerall = var(5) = 0
trigger1 = stateno != 803
trigger2 = prevstateno = 1004

;-| Super Jump |------------------------------------------------------------------

;Super Jump
[State -1, Super Jump]
type = changestate
value = 41
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = (command = "DU") || (command = "abc") || (command = "DUF") || (command = "DUB")
trigger1 = ctrl
trigger2 = (command = "holdup") || (command = "U")
trigger2 = movehit = 1
trigger2 = stateno = 210

;-| Throws |----------------------------------------------------------------------
;Throw
[State -1, Throw]
type = changestate
value = 700
triggerall = (command = "holdfwd")
triggerall = (command = "y")
triggerall = p2statetype != A
triggerall = p2dist x = [0, 100]
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl

;Throw 2
[State -1, Throw 2]
type = changestate
value = 710
triggerall = (command = "z")
triggerall = (command = "holdfwd")
triggerall = p2statetype != A
triggerall = p2dist x = [0, 100]
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl

;-| Moves |-----------------------------------------------------------------------
[State -1, Weak Punch]
type = changestate
value = 200
triggerall = (command = "x")
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl

[State -1, Medium Punch]
type = changestate
value = 210
triggerall = (command = "y") || (command = "x")
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 230

[State -1, Strong Punch]
type = changestate
value = 220
triggerall = (command = "z")
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 230
trigger4 = movecontact = 1
trigger4 = stateno = 240

[State -1, Weak Kick]
type = changestate
value = 230
triggerall = (command = "a")
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl

[State -1, Medium Kick]
type = changestate
value = 240
triggerall = (command = "b") || (command = "a")
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger4 = movecontact = 1
trigger4 = stateno = 230

[State -1, Strong Kick]
type = changestate
value = 250
triggerall = (command = "c")
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 230
trigger4 = movecontact = 1
trigger4 = stateno = 240

[State -1, C Weak Punch]
type = changestate
value = 400
triggerall = (command = "x")
triggerall = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl

[State -1, C Medium Punch]
type = changestate
value = 410
triggerall = (command = "y") || (command = "x")
triggerall = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 400
trigger3 = movecontact = 1
trigger3 = stateno = 430

[State -1, C Strong Punch]
type = changestate
value = 420
triggerall = (command = "z")
triggerall = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 400
trigger3 = movecontact = 1
trigger3 = stateno = 410
trigger4 = movecontact = 1
trigger4 = stateno = 430
trigger5 = movecontact = 1
trigger5 = stateno = 440

[State -1, C Weak Kick]
type = changestate
value = 430
triggerall = (command = "a")
triggerall = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl

[State -1, C Medium Kick]
type = changestate
value = 440
triggerall = (command = "b") || (command = "a")
triggerall = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 400
trigger3 = movecontact = 1
trigger3 = stateno = 430

[State -1, C Strong Kick Forward]
type = changestate
value = 451
triggerall = (command = "c")
triggerall = (command = "holdfwd")
triggerall = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl

[State -1, C Strong Kick Back]
type = changestate
value = 452
triggerall = (command = "c")
triggerall = statetype = C
triggerall = var(5) = 0
trigger1 = (command = "holdback")
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 400
trigger3 = movecontact = 1
trigger3 = stateno = 410
trigger4 = movecontact = 1
trigger4 = stateno = 430
trigger5 = movecontact = 1
trigger5 = stateno = 440

[State -1, C Strong Kick]
type = changestate
value = 450
triggerall = (command = "c")
triggerall = statetype = C
triggerall = var(5) = 0
trigger1 = ctrl

[State -1, A Weak Punch]
type = changestate
value = 600
triggerall = (command = "x")
triggerall = statetype = A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = prevstateno != 600
trigger2 = stateno = 630

[State -1, A Medium Punch]
type = changestate
value = 610
triggerall = (command = "y") || (command = "x")
triggerall = statetype = A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = prevstateno != 610
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = prevstateno != 610
trigger3 = stateno = 630
trigger4 = movecontact = 1
trigger4 = prevstateno != 610
trigger4 = stateno = 640

[State -1, A Strong Punch]
type = changestate
value = 620
triggerall = (command = "z")
triggerall = statetype = A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = prevstateno != 620
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = prevstateno != 620
trigger3 = stateno = 610
trigger4 = movecontact = 1
trigger4 = prevstateno != 620
trigger4 = stateno = 630
trigger5 = movecontact = 1
trigger5 = prevstateno != 620
trigger5 = stateno = 640

[State -1, A Weak Kick]
type = changestate
value = 630
triggerall = (command = "a")
triggerall = statetype = A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = prevstateno != 630
trigger2 = stateno = 600

[State -1, A Medium Kick]
type = changestate
value = 640
triggerall = (command = "b") || (command = "a")
triggerall = statetype = A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = prevstateno != 640
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = prevstateno != 640
trigger3 = stateno = 610
trigger4 = movecontact = 1
trigger4 = prevstateno != 640
trigger4 = stateno = 630

[State -1, A Strong Kick]
type = changestate
value = 650
triggerall = (command = "c")
triggerall = statetype = A
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = prevstateno != 650
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = prevstateno != 650
trigger3 = stateno = 610
trigger4 = movecontact = 1
trigger4 = prevstateno != 650
trigger4 = stateno = 620
trigger5 = movecontact = 1
trigger5 = prevstateno != 650
trigger5 = stateno = 630
trigger6 = movecontact = 1
trigger6 = prevstateno != 650
trigger6 = stateno = 640

;-| Misc |------------------------------------------------------------------------

[State -1, Taunt]
type = changestate
value = 195
triggerall = (command = "start")
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = ctrl

[State -1, Recovery Roll Forwards]
type = changestate
value = 810
triggerall = (command = "holdfwd")
triggerall = var(5) = 0
trigger1 = anim = 5110 && animelem = 3, >= 0

[State -1, Recovery Roll Backwards]
type = changestate
value = 811
triggerall = (command = "holdback")
triggerall = var(5) = 0
trigger1 = anim = 5110 && animelem = 3, >= 0

[State -1, Dizzy Add]
type = varadd
var(0) = (gethitvar(animtype) + 1) * 3
triggerall = anim != 5300
triggerall = movetype = H
triggerall = stateno != 5050
triggerall = stateno != 5110
trigger1 = stateno != 5300
ignorehitpause = 1

[State -1, Dizzy Set]
type = varset
var(0) = 0
trigger1 = var(0) < 0

[State -1, Dizzy Minus]
type = varadd
var(0) = -3
triggerall = movetype != H
triggerall = var(0) > 0
trigger1 = var(0) < 2400