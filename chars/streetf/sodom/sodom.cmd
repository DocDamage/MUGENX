; The CMD file.
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
;   name = some_name
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
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
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
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| AI Activation Commands |-----------------------------------------------
; From BBH
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B,F,B,F,b,x
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,b,y
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F,B,F,b,z
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B,F,B,F,c,x
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B,F,B,F,c,y
time = 0

[Command]
name = "CPU21"
command = U,U,D,D,B,F,B,F,c,z
time = 0

[Command]
name = "CPU22"
command = U,U,D,D,B,F,B,F,x,a
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,B,F,B,F,x,b
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B,F,B,F,x,c
time = 0

[Command]
name = "CPU25"
command = U,U,D,D,B,F,B,F,y,a
time = 0

[Command]
name = "CPU26"
command = U,U,D,D,B,F,B,F,y,b
time = 0

[Command]
name = "CPU27"
command = U,U,D,D,B,F,B,F,y,c
time = 0

[Command]
name = "CPU28"
command = U,U,D,D,B,F,B,F,z,a
time = 0

[Command]
name = "CPU29"
command = U,U,D,D,B,F,B,F,z,b
time = 0

[Command]
name = "CPU30"
command = U,U,D,D,B,F,B,F,z,c
time = 0

[Command]
name = "CPU31"
command = U,U,D,D,B,F,B,F,s,s,s
time = 0

;-| Super Motions |--------------------------------------------------------
;

[Command]
name = "MnMx"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "MnMy"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "MnMz"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "EZTenChuuXA"
command = $F, $D, $B, $F, a+x
time = 30

[Command]
name = "EZTenChuuYB"
command = $F, $D, $B, $F, b+y
time = 30

[Command]
name = "EZTenChuuZC"
command = $F, $D, $B, $F, c+z
time = 30

[Command]
name = "TenChuuXA"
command = F, DF, D, DB, B, UB, U, a+x
time = 50

[Command] 
name = "TenChuuXA"
command = DF, D, DB, B, UB, U, UF, a+x
time = 50

[Command] 
name = "TenChuuXA"
command = D, DB, B, UB, U, UF, F, a+x
time = 50

[Command] 
name = "TenChuuXA"
command = DB, B, UB, U, UF, F, DF, a+x
time = 50

[Command] 
name = "TenChuuXA"
command = B, UB, U, UF, F, DF, D, a+x
time = 50

[Command] 
name = "TenChuuXA"
command = UB, U, UF, F, DF, D, DB, a+x
time = 50

[Command] 
name = "TenChuuXA"
command = U, UF, F, DF, D, DB, B, a+x
time = 50

[Command] 
name = "TenChuuXA"
command = UF, F, DF, D, DB, B, UB, a+x
time = 50

[Command]
name = "TenChuuXA"
command = F, UF, U, UB, B, DB, D, a+x
time = 50

[Command]
name = "TenChuuXA"
command = UF, U, UB, B, DB, D, DF, a+x
time = 50

[Command]
name = "TenChuuXA"
command = U, UB, B, DB, D, DF, F, a+x
time = 50

[Command]
name = "TenChuuXA"
command = UB, B, DB, D, DF, F, UF, a+x
time = 50

[Command]
name = "TenChuuXA"
command = B, DB, D, DF, F, UF, U, a+x
time = 50

[Command]
name = "TenChuuXA"
command = DB, D, DF, F, UF, U, UB, a+x
time = 50

[Command]
name = "TenChuuXA"
command = D, DF, F, UF, U, UB, B, a+x
time = 50

[Command]
name = "TenChuuXA"
command = DF, F, UF, U, UB, B, DB, a+x
time = 50

[Command]
name = "TenChuuXA"
command = F, D, B, U, a+x
time = 50

[Command]
name = "TenChuuXA"
command = D, B, U, F, a+x
time = 50

[Command]
name = "TenChuuXA"
command = B, U, F, D, a+x
time = 50

[Command]
name = "TenChuuXA"
command = U, F, D, B, a+x
time = 50

[Command]
name = "TenChuuXA"
command = F, U, B, D, a+x
time = 50

[Command]
name = "TenChuuXA"
command = U, B, D, F, a+x
time = 50

[Command]
name = "TenChuuXA"
command = B, D, F, U, a+x
time = 50

[Command]
name = "TenChuuXA"
command = D, F, U, B, a+x
time = 50

[Command]
name = "TenChuuXA"
command = F, DF, D, DB, B, UB, U, a+x
time = 50

[Command] 
name = "TenChuuYB"
command = DF, D, DB, B, UB, U, UF, b+y
time = 50

[Command] 
name = "TenChuuYB"
command = D, DB, B, UB, U, UF, F, b+y
time = 50

[Command] 
name = "TenChuuYB"
command = DB, B, UB, U, UF, F, DF, b+y
time = 50

[Command] 
name = "TenChuuYB"
command = B, UB, U, UF, F, DF, D, b+y
time = 50

[Command] 
name = "TenChuuYB"
command = UB, U, UF, F, DF, D, DB, b+y
time = 50

[Command] 
name = "TenChuuYB"
command = U, UF, F, DF, D, DB, B, b+y
time = 50

[Command] 
name = "TenChuuYB"
command = UF, F, DF, D, DB, B, UB, b+y
time = 50

[Command]
name = "TenChuuYB"
command = F, UF, U, UB, B, DB, D, b+y
time = 50

[Command]
name = "TenChuuYB"
command = UF, U, UB, B, DB, D, DF, b+y
time = 50

[Command]
name = "TenChuuYB"
command = U, UB, B, DB, D, DF, F, b+y
time = 50

[Command]
name = "TenChuuYB"
command = UB, B, DB, D, DF, F, UF, b+y
time = 50

[Command]
name = "TenChuuYB"
command = B, DB, D, DF, F, UF, U, b+y
time = 50

[Command]
name = "TenChuuYB"
command = DB, D, DF, F, UF, U, UB, b+y
time = 50

[Command]
name = "TenChuuYB"
command = D, DF, F, UF, U, UB, B, b+y
time = 50

[Command]
name = "TenChuuYB"
command = DF, F, UF, U, UB, B, DB, b+y
time = 50

[Command]
name = "TenChuuYB"
command = F, D, B, U, b+y
time = 50

[Command]
name = "TenChuuYB"
command = D, B, U, F, b+y
time = 50

[Command]
name = "TenChuuYB"
command = B, U, F, D, b+y
time = 50

[Command]
name = "TenChuuYB"
command = U, F, D, B, b+y
time = 50

[Command]
name = "TenChuuYB"
command = F, U, B, D, b+y
time = 50

[Command]
name = "TenChuuYB"
command = U, B, D, F, b+y
time = 50

[Command]
name = "TenChuuYB"
command = B, D, F, U, b+y
time = 50

[Command]
name = "TenChuuYB"
command = D, F, U, B, b+y
time = 50

[Command]
name = "TenChuuZC"
command = F, DF, D, DB, B, UB, U, c+z
time = 50

[Command] 
name = "TenChuuZC"
command = DF, D, DB, B, UB, U, UF, c+z
time = 50

[Command] 
name = "TenChuuZC"
command = D, DB, B, UB, U, UF, F, c+z
time = 50

[Command] 
name = "TenChuuZC"
command = DB, B, UB, U, UF, F, DF, c+z
time = 50

[Command] 
name = "TenChuuZC"
command = B, UB, U, UF, F, DF, D, c+z
time = 50

[Command] 
name = "TenChuuZC"
command = UB, U, UF, F, DF, D, DB, c+z
time = 50

[Command] 
name = "TenChuuZC"
command = U, UF, F, DF, D, DB, B, c+z
time = 50

[Command] 
name = "TenChuuZC"
command = UF, F, DF, D, DB, B, UB, c+z
time = 50

[Command]
name = "TenChuuZC"
command = F, UF, U, UB, B, DB, D, c+z
time = 50

[Command]
name = "TenChuuZC"
command = UF, U, UB, B, DB, D, DF, c+z
time = 50

[Command]
name = "TenChuuZC"
command = U, UB, B, DB, D, DF, F, c+z
time = 50

[Command]
name = "TenChuuZC"
command = UB, B, DB, D, DF, F, UF, c+z
time = 50

[Command]
name = "TenChuuZC"
command = B, DB, D, DF, F, UF, U, c+z
time = 50

[Command]
name = "TenChuuZC"
command = DB, D, DF, F, UF, U, UB, c+z
time = 50

[Command]
name = "TenChuuZC"
command = D, DF, F, UF, U, UB, B, c+z
time = 50

[Command]
name = "TenChuuZC"
command = DF, F, UF, U, UB, B, DB, c+z
time = 50

[Command]
name = "TenChuuZC"
command = F, D, B, U, c+z
time = 50

[Command]
name = "TenChuuZC"
command = D, B, U, F, c+z
time = 50

[Command]
name = "TenChuuZC"
command = B, U, F, D, c+z
time = 50

[Command]
name = "TenChuuZC"
command = U, F, D, B, c+z
time = 50

[Command]
name = "TenChuuZC"
command = F, U, B, D, c+z
time = 50

[Command]
name = "TenChuuZC"
command = U, B, D, F, c+z
time = 50

[Command]
name = "TenChuuZC"
command = B, D, F, U, c+z
time = 50

[Command]
name = "TenChuuZC"
command = D, F, U, B, c+z
time = 50

;-| Special Motions |------------------------------------------------------

[Command]
name = "JigokuScrapeX"
command = ~D, DF, F, x

[Command]
name = "JigokuScrapeY"
command = ~D, DF, F, y

[Command]
name = "JigokuScrapeZ"
command = ~D, DF, F, z

[Command]
name = "YaguraReverse"
command = ~B, D, DB, B, a

[Command]
name = "YaguraReverse"
command = ~B, D, DB, B, b

[Command]
name = "YaguraReverse"
command = ~B, D, DB, B, c

[Command]
name = "ShirrahaCatch"
command = ~F, D, DF, F, a

[Command]
name = "ShirrahaCatch"
command = ~F, D, DF, F, b

[Command]
name = "ShirrahaCatch"
command = ~F, D, DF, F, c

[Command]
name = "EZBBusterX"
command = $F, $D, $B, x

[Command]
name = "EZBBusterY"
command = $F, $D, $B, y

[Command]
name = "EZBBusterZ"
command = $F, $D, $B, z

[Command]
name = "EZDBurningA"
command = $F, $D, $B, a

[Command]
name = "EZDBurningB"
command = $F, $D, $B, b

[Command]
name = "EZDBurningC"
command = $F, $D, $B, c

[Command]
name = "BBusterX"
command = F, DF, D, DB, B, UB, U, x
time = 50

[Command] 
name = "BBusterX"
command = DF, D, DB, B, UB, U, UF, x
time = 50

[Command] 
name = "BBusterX"
command = D, DB, B, UB, U, UF, F, x
time = 50

[Command] 
name = "BBusterX"
command = DB, B, UB, U, UF, F, DF, x
time = 50

[Command] 
name = "BBusterX"
command = B, UB, U, UF, F, DF, D, x
time = 50

[Command] 
name = "BBusterX"
command = UB, U, UF, F, DF, D, DB, x
time = 50

[Command] 
name = "BBusterX"
command = U, UF, F, DF, D, DB, B, x
time = 50

[Command] 
name = "BBusterX"
command = UF, F, DF, D, DB, B, UB, x
time = 50

[Command]
name = "BBusterX"
command = F, UF, U, UB, B, DB, D, x
time = 50

[Command]
name = "BBusterX"
command = UF, U, UB, B, DB, D, DF, x
time = 50

[Command]
name = "BBusterX"
command = U, UB, B, DB, D, DF, F, x
time = 50

[Command]
name = "BBusterX"
command = UB, B, DB, D, DF, F, UF, x
time = 50

[Command]
name = "BBusterX"
command = B, DB, D, DF, F, UF, U, x
time = 50

[Command]
name = "BBusterX"
command = DB, D, DF, F, UF, U, UB, x
time = 50

[Command]
name = "BBusterX"
command = D, DF, F, UF, U, UB, B, x
time = 50

[Command]
name = "BBusterX"
command = DF, F, UF, U, UB, B, DB, x
time = 50

[Command]
name = "BBusterX"
command = F, D, B, U, x
time = 50

[Command]
name = "BBusterX"
command = D, B, U, F, x
time = 50

[Command]
name = "BBusterX"
command = B, U, F, D, x
time = 50

[Command]
name = "BBusterX"
command = U, F, D, B, x
time = 50

[Command]
name = "BBusterX"
command = F, U, B, D, x
time = 50

[Command]
name = "BBusterX"
command = U, B, D, F, x
time = 50

[Command]
name = "BBusterX"
command = B, D, F, U, x
time = 50

[Command]
name = "BBusterX"
command = D, F, U, B, x
time = 50

[Command]
name = "BBusterY"
command = F, DF, D, DB, B, UB, U, y
time = 50

[Command] 
name = "BBusterY"
command = DF, D, DB, B, UB, U, UF, y
time = 50

[Command] 
name = "BBusterY"
command = D, DB, B, UB, U, UF, F, y
time = 50

[Command] 
name = "BBusterY"
command = DB, B, UB, U, UF, F, DF, y
time = 50

[Command] 
name = "BBusterY"
command = B, UB, U, UF, F, DF, D, y
time = 50

[Command] 
name = "BBusterY"
command = UB, U, UF, F, DF, D, DB, y
time = 50

[Command] 
name = "BBusterY"
command = U, UF, F, DF, D, DB, B, y
time = 50

[Command] 
name = "BBusterY"
command = UF, F, DF, D, DB, B, UB, y 
time = 50

[Command]
name = "BBusterY"
command = F, UF, U, UB, B, DB, D, y
time = 50

[Command]
name = "BBusterY"
command = UF, U, UB, B, DB, D, DF, y
time = 50

[Command]
name = "BBusterY"
command = U, UB, B, DB, D, DF, F, y
time = 50

[Command]
name = "BBusterY"
command = UB, B, DB, D, DF, F, UF, y
time = 50

[Command]
name = "BBusterY"
command = B, DB, D, DF, F, UF, U, y
time = 50

[Command]
name = "BBusterY"
command = DB, D, DF, F, UF, U, UB, y
time = 50

[Command]
name = "BBusterY"
command = D, DF, F, UF, U, UB, B, y
time = 50

[Command]
name = "BBusterY"
command = DF, F, UF, U, UB, B, DB, y
time = 50

[Command]
name = "BBusterY"
command = F, D, B, U, y
time = 50

[Command]
name = "BBusterY"
command = D, B, U, F, y
time = 50

[Command]
name = "BBusterY"
command = B, U, F, D, y
time = 50

[Command]
name = "BBusterY"
command = U, F, D, B, y
time = 50

[Command]
name = "BBusterY"
command = F, U, B, D, y
time = 50

[Command]
name = "BBusterY"
command = U, B, D, F, y
time = 50

[Command]
name = "BBusterY"
command = B, D, F, U, y
time = 50

[Command]
name = "BBusterY"
command = D, F, U, B, y
time = 50

[Command]
name = "BBusterZ"
command = F, DF, D, DB, B, UB, U, z
time = 50

[Command] 
name = "BBusterZ"
command = DF, D, DB, B, UB, U, UF, z
time = 50

[Command] 
name = "BBusterZ"
command = D, DB, B, UB, U, UF, F, z
time = 50

[Command] 
name = "BBusterZ"
command = DB, B, UB, U, UF, F, DF, z
time = 50

[Command] 
name = "BBusterZ"
command = B, UB, U, UF, F, DF, D, z
time = 50

[Command] 
name = "BBusterZ"
command = UB, U, UF, F, DF, D, DB, z
time = 50

[Command] 
name = "BBusterZ"
command = U, UF, F, DF, D, DB, B, z
time = 50

[Command] 
name = "BBusterZ"
command = UF, F, DF, D, DB, B, UB, z 
time = 50

[Command]
name = "BBusterZ"
command = F, UF, U, UB, B, DB, D, z
time = 50

[Command]
name = "BBusterZ"
command = UF, U, UB, B, DB, D, DF, z
time = 50

[Command]
name = "BBusterZ"
command = U, UB, B, DB, D, DF, F, z
time = 50

[Command]
name = "BBusterZ"
command = UB, B, DB, D, DF, F, UF, z
time = 50

[Command]
name = "BBusterZ"
command = B, DB, D, DF, F, UF, U, z
time = 50

[Command]
name = "BBusterZ"
command = DB, D, DF, F, UF, U, UB, z
time = 50

[Command]
name = "BBusterZ"
command = D, DF, F, UF, U, UB, B, z
time = 50

[Command]
name = "BBusterZ"
command = DF, F, UF, U, UB, B, DB, z
time = 50

[Command]
name = "BBusterZ"
command = F, D, B, U, z
time = 50

[Command]
name = "BBusterZ"
command = D, B, U, F, z
time = 50

[Command]
name = "BBusterZ"
command = B, U, F, D, z
time = 50

[Command]
name = "BBusterZ"
command = U, F, D, B, z
time = 50

[Command]
name = "BBusterZ"
command = F, U, B, D, z
time = 50

[Command]
name = "BBusterZ"
command = U, B, D, F, z
time = 50

[Command]
name = "BBusterZ"
command = B, D, F, U, z
time = 50

[Command]
name = "BBusterZ"
command = D, F, U, B, z
time = 50

[Command]
name = "DBurningA"
command = F, DF, D, DB, B, UB, U, a
time = 50

[Command] 
name = "DBurningA"
command = DF, D, DB, B, UB, U, UF, a
time = 50

[Command] 
name = "DBurningA"
command = D, DB, B, UB, U, UF, F, a
time = 50

[Command] 
name = "DBurningA"
command = DB, B, UB, U, UF, F, DF, a
time = 50

[Command] 
name = "DBurningA"
command = B, UB, U, UF, F, DF, D, a
time = 50

[Command] 
name = "DBurningA"
command = UB, U, UF, F, DF, D, DB, a
time = 50

[Command] 
name = "DBurningA"
command = U, UF, F, DF, D, DB, B, a
time = 50

[Command] 
name = "DBurningA"
command = UF, F, DF, D, DB, B, UB, a
time = 50

[Command]
name = "DBurningA"
command = F, UF, U, UB, B, DB, D, a
time = 50

[Command]
name = "DBurningA"
command = UF, U, UB, B, DB, D, DF, a
time = 50

[Command]
name = "DBurningA"
command = U, UB, B, DB, D, DF, F, a
time = 50

[Command]
name = "DBurningA"
command = UB, B, DB, D, DF, F, UF, a
time = 50

[Command]
name = "DBurningA"
command = B, DB, D, DF, F, UF, U, a
time = 50

[Command]
name = "DBurningA"
command = DB, D, DF, F, UF, U, UB, a
time = 50

[Command]
name = "DBurningA"
command = D, DF, F, UF, U, UB, B, a
time = 50

[Command]
name = "DBurningA"
command = DF, F, UF, U, UB, B, DB, a
time = 50

[Command]
name = "DBurningA"
command = F, D, B, U, a
time = 50

[Command]
name = "DBurningA"
command = D, B, U, F, a
time = 50

[Command]
name = "DBurningA"
command = B, U, F, D, a
time = 50

[Command]
name = "DBurningA"
command = U, F, D, B, a
time = 50

[Command]
name = "DBurningA"
command = F, U, B, D, a
time = 50

[Command]
name = "DBurningA"
command = U, B, D, F, a
time = 50

[Command]
name = "DBurningA"
command = B, D, F, U, a
time = 50

[Command]
name = "DBurningA"
command = D, F, U, B, a
time = 50

[Command]
name = "DBurningB"
command = F, DF, D, DB, B, UB, U, b
time = 50

[Command] 
name = "DBurningB"
command = DF, D, DB, B, UB, U, UF, b
time = 50

[Command] 
name = "DBurningB"
command = D, DB, B, UB, U, UF, F, b
time = 50

[Command] 
name = "DBurningB"
command = DB, B, UB, U, UF, F, DF, b
time = 50

[Command] 
name = "DBurningB"
command = B, UB, U, UF, F, DF, D, b
time = 50

[Command] 
name = "DBurningB"
command = UB, U, UF, F, DF, D, DB, b
time = 50

[Command] 
name = "DBurningB"
command = U, UF, F, DF, D, DB, B, b
time = 50

[Command] 
name = "DBurningB"
command = UF, F, DF, D, DB, B, UB, b
time = 50

[Command]
name = "DBurningB"
command = F, UF, U, UB, B, DB, D, b
time = 50

[Command]
name = "DBurningB"
command = UF, U, UB, B, DB, D, DF, b
time = 50

[Command]
name = "DBurningB"
command = U, UB, B, DB, D, DF, F, b
time = 50

[Command]
name = "DBurningB"
command = UB, B, DB, D, DF, F, UF, b
time = 50

[Command]
name = "DBurningB"
command = B, DB, D, DF, F, UF, U, b
time = 50

[Command]
name = "DBurningB"
command = DB, D, DF, F, UF, U, UB, b
time = 50

[Command]
name = "DBurningB"
command = D, DF, F, UF, U, UB, B, b
time = 50

[Command]
name = "DBurningB"
command = DF, F, UF, U, UB, B, DB, b
time = 50

[Command]
name = "DBurningB"
command = F, D, B, U, b
time = 50

[Command]
name = "DBurningB"
command = D, B, U, F, b
time = 50

[Command]
name = "DBurningB"
command = B, U, F, D, b
time = 50

[Command]
name = "DBurningB"
command = U, F, D, B, b
time = 50

[Command]
name = "DBurningB"
command = F, U, B, D, b
time = 50

[Command]
name = "DBurningB"
command = U, B, D, F, b
time = 50

[Command]
name = "DBurningB"
command = B, D, F, U, b
time = 50

[Command]
name = "DBurningB"
command = D, F, U, B, b
time = 50

[Command]
name = "DBurningC"
command = F, DF, D, DB, B, UB, U, c
time = 50

[Command] 
name = "DBurningC"
command = DF, D, DB, B, UB, U, UF, c
time = 50

[Command] 
name = "DBurningC"
command = D, DB, B, UB, U, UF, F, c
time = 50

[Command] 
name = "DBurningC"
command = DB, B, UB, U, UF, F, DF, c
time = 50

[Command] 
name = "DBurningC"
command = B, UB, U, UF, F, DF, D, c
time = 50

[Command] 
name = "DBurningC"
command = UB, U, UF, F, DF, D, DB, c
time = 50

[Command] 
name = "DBurningC"
command = U, UF, F, DF, D, DB, B, c
time = 50

[Command] 
name = "DBurningC"
command = UF, F, DF, D, DB, B, UB, c
time = 50

[Command]
name = "DBurningC"
command = F, UF, U, UB, B, DB, D, c
time = 50

[Command]
name = "DBurningC"
command = UF, U, UB, B, DB, D, DF, c
time = 50

[Command]
name = "DBurningC"
command = U, UB, B, DB, D, DF, F, c
time = 50

[Command]
name = "DBurningC"
command = UB, B, DB, D, DF, F, UF, c
time = 50

[Command]
name = "DBurningC"
command = B, DB, D, DF, F, UF, U, c
time = 50

[Command]
name = "DBurningC"
command = DB, D, DF, F, UF, U, UB, c
time = 50

[Command]
name = "DBurningC"
command = D, DF, F, UF, U, UB, B, c
time = 50

[Command]
name = "DBurningC"
command = DF, F, UF, U, UB, B, DB, c
time = 50

[Command]
name = "DBurningC"
command = F, D, B, U, c
time = 50

[Command]
name = "DBurningC"
command = D, B, U, F, c
time = 50

[Command]
name = "DBurningC"
command = B, U, F, D, c
time = 50

[Command]
name = "DBurningC"
command = U, F, D, B, c
time = 50

[Command]
name = "DBurningC"
command = F, U, B, D, c
time = 50

[Command]
name = "DBurningC"
command = U, B, D, F, c
time = 50

[Command]
name = "DBurningC"
command = B, D, F, U, c
time = 50

[Command]
name = "DBurningC"
command = D, F, U, B, c
time = 50

;-| Special Commands |-----------------------------------------------------

[Command]
name = "AlphaCounterP"
command = ~B, DB, D, x

[Command]
name = "AlphaCounterP"
command = ~B, DB, D, y

[Command]
name = "AlphaCounterP"
command = ~B, DB, D, z

[Command] 
name = "KoutenOkiagariX"
command = ~F, DF, D, x

[Command] 
name = "KoutenOkiagariY"
command = ~F, DF, D, y

[Command] 
name = "KoutenOkiagariZ"
command = ~F, DF, D, z

[Command]
name = "TenguWalking"
command = ~B, DB, D, a

[Command]
name = "TenguWalking"
command = ~B, DB, D, b

[Command]
name = "TenguWalking"
command = ~B, DB, D, c

[Command]
name = "WakeupTW"
command = ~D, DF, F, a

[Command]
name = "WakeupTW"
command = ~D, DF, F, b

[Command]
name = "WakeupTW"
command = ~D, DF, F, c

[Command]
name = "HoldC"
command = /c

[Command]
name = "HoldX"
command = /x

[Command]
name = "HoldY"
command = /y

[Command]
name = "HoldZ"
command = /z

[Command]
name = "HoldA"
command = /a

[Command]
name = "HoldB"
command = /b

[Command]
name = "TwoPunch"
command = x+y

[Command]
name = "TwoPunch"
command = y+z

[Command]
name = "TwoKick"
command = a+b

[Command]
name = "TwoKick"
command = b+c

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
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
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
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
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
;AI Activation
[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 1
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 1
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 1
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 1
value = 1

;===========================================================================
; AI COMMANDS

; Corner Combo
[State -1, Corner Combo 1]
type = ChangeState
value = 450
triggerall = Var(1) = 1
triggerall = Statetype = S || StateType = C
triggerall = P2StateType = S || P2StateType = C
trigger1 = Ctrl
trigger1 = P2BodyDist X <= 73
trigger1 = FrontEdgeBodyDist <= 111
trigger1 = Random <= 100

[State -1, Uppercut]
type = ChangeState
value = 420
triggerall = var(1) = 1
trigger1 = StateNo = 450
trigger1 = AnimElem = 4 = 3
trigger1 = FrontEdgeBodyDist <= 111
trigger1 = P2BodyDist X <= 73
trigger1 = P2MoveType = H

[State -1, Scrape]
type = ChangeState
value = 1020
triggerall = var(1) = 1
trigger1 = StateNo = 420
trigger1 = MoveHit
trigger1 = AnimElem = 5
trigger1 = FrontEdgeBodyDist <= 111
trigger1 = P2BodyDist X <= 73
trigger1 = P2MoveType = H

; Combo Into Supers
[State -1, Combo Into Meido No Miyage]
type = ChangeState
value = ifelse((power >= 3000 && Random <= 700), 2020, ifelse((power >= 2000 && Random <= 600), 2010, 2000))
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = P2StateType = S || P2StateType = C
trigger1 = StateNo = 400
trigger1 = MoveHit
trigger1 = Random <= 100
trigger2 = StateNo = 410
trigger2 = MoveHit
trigger2 = AnimElem = 4
trigger2 = Random <= 450
trigger3 = StateNo = 420
trigger3 = MoveHit
trigger3 = AnimElem = 5
trigger3 = Random <= 550
trigger4 = StateNo = 430
trigger4 = MoveHit
trigger4 = AnimElem = 3
trigger4 = Random <= 250
trigger5 = Ctrl
trigger5 = P2BodyDist X <= 100
trigger5 = PlayerID(var(5)), MoveType = A
trigger5 = PlayerID(var(5)), StateType = A
trigger5 = PlayerID(var(5)), Movehit = 0
trigger5 = Random <= 50
trigger6 = P2BodyDist X <= 110
trigger6 = P2MoveType = A
trigger6 = P2StateType = S || P2StateType = C
trigger6 = PlayerID(var(5)), Movehit = 0
trigger6 = Random <= 60
trigger6 = Ctrl

[State -1, Combo Into Ten Chuu Satsu]
type = ChangeState
value = ifelse((power >= 3000 && Random <= 700), 2150, ifelse((power >= 2000 && Random <= 600), 2090, 2030))
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = P2StateType = S || P2StateType = C
triggerall = P2MoveType != H
trigger1 = ctrl
trigger1 = P2BodyDist X <= 100
trigger1 = random <= 20

; Combo Into Specials
[State -1, Jab Jigouku Scrape Combo]
type = ChangeState
value = 1000
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 215
trigger1 = MoveHit
trigger1 = Random <= 200 
trigger2 = StateNo = 240
trigger2 = MoveHit
trigger2 = Random <= 400
trigger3 = StateNo = 400
trigger3 = MoveHit
trigger3 = Random <= 400
trigger4 = StateNo = 430
trigger4 = MoveHit
trigger4 = Random <= 200

[State -1, Strong Jigouku Scrape Combo]
type = ChangeState
value = 1010
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 215
trigger1 = MoveHit
trigger1 = AnimElem = 3
trigger1 = Random <= 600
trigger2 = StateNo = 240
trigger2 = MoveHit
trigger2 = AnimElem = 3
trigger2 = Random <= 700
trigger3 = StateNo = 400
trigger3 = MoveHit
trigger3 = AnimElem = 4
trigger3 = Random <= 200
trigger4 = PrevStateNo = 810
trigger4 = StateNo = 0
trigger4 = Time <= 10
trigger4 = Random <= 300

[State -1, Fierce Jigouku Scrape Combo]
type = ChangeState
value = 1020
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 215
trigger1 = MoveHit
trigger1 = AnimElem = 3
trigger1 = Random <= 700
trigger2 = StateNo = 240
trigger2 = MoveHit
trigger2 = AnimElem = 3
trigger2 = Random <= 500
trigger3 = StateNo = 420
trigger3 = MoveHit
trigger3 = AnimElem = 5
trigger3 = Random <= 800
trigger4 = StateNo = 430
trigger4 = MoveHit
trigger4 = Random <= 100

[State -1, Butsumetsu Buster]
type = ChangeState
value = ifelse(Random <= 700, 1110, ifelse(Random <= 600, 1070, 1030))
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 70
trigger1 = Random <= 50
trigger2 = StateNo = 420
trigger2 = MoveGuarded 
trigger2 = AnimElem = 5
trigger2 = Random <= 250
trigger3 = StateNo = 1000
trigger3 = MoveGuarded
trigger3 = AnimElem = 4
trigger3 = Random <= 500
trigger4 = StateNo = 230
trigger4 = MoveGuarded
trigger4 = AnimElem = 3
trigger4 = Random <= 300
trigger5 = StateNo = 400
trigger5 = MoveGuarded
trigger5 = AnimElem = 4
trigger5 = Random <= 600

[State -1, Daikyou Burning]
type = ChangeState
value = ifelse(Random <= 700, 1270, ifelse(Random <= 600, 1210, 1150))
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S || P2StateType = C
trigger1 = MoveContact
trigger1 = StateNo = 240
trigger1 = AnimElem = 3
trigger1 = Random <= 250
trigger2 = Movecontact
trigger2 = StateNo = 420
trigger2 = AnimElem = 5
trigger2 = Random <= 500
trigger3 = Movecontact
trigger3 = StateNo = 430
trigger3 = Random <= 100

; Perform Specials
[State -1, Catch]
type = ChangeState
value = 1360
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2StateType = A
trigger1 = P2MoveType = A
trigger1 = PlayerID(var(5)), Vel X >= 0
trigger1 = P2BodyDist X <= 136
trigger1 = Random <= 100

[State -1, PsycheOut Burning]
type = ChangeState
value = 1150
triggerall = var(1) = 1
triggerall = STateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 10

[State -1, PsycheOut Walking]
type = ChangeState
value = 1350
triggerall = var(1) = 1
triggerall = STateType = S || StateType = C
trigger1 = StateNo = 52
trigger1 = Random <= 50

[State -1, UpperCut]
type = ChangeState
value = 420
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger1 = P2BodyDist X <= 70
trigger1 = Random <= 25

[State -1, Jitte Strike]
type = ChangeState
value = ifelse(Random <= 400, 1020, ifelse(random <= 400, 1010, 1000))
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 70
trigger1 = Random <= 30
trigger2 = P2BodyDist X <= 75
trigger2 = P2MoveType = A
trigger2 = P2StateType = S || P2StateType = C
trigger2 = PlayerID(var(5)), Movehit = 0
trigger2 = Random <= 80
trigger2 = Ctrl

; Perform Throws
[State -1, Ground Throw]
type = ChangeState
value = 800
triggerall = var(1) = 1
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 29
trigger1 = Random <= 200

[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = var(1) = 1
triggerall = StateType = A
triggerall = P2StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X <= 29
trigger1 = Random <= 450

[State -1, Poke]
type = ChangeState
value = 200
triggerall = var(1) = 1
triggerall = StateType = C || StateType = S
trigger1 = ctrl
trigger1 = P2BodyDist X <= 35
trigger1 = Random <= 80

;===========================================================================
; Put specials and supers here

;---------------------------------------------------------------------------
; Ten Chuu Satsu - Level 3
[State -1, Ten Chuu Satsu 3]
type = ChangeState
value = 2150
triggerall = (command = "EZTenChuuZC" && var(2) = 1) || (command = "TenChuuZC" && var(2) = 0)
triggerall = StateType = S || StateType = C
triggerall = Power >= 3000
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = StateNo = 215 || StateNo = 240 || StateNo = 430
trigger4 = Movecontact

;---------------------------------------------------------------------------
; Ten Chuu Satsu - Level 2
[State -1, Ten Chuu Satsu 2]
type = ChangeState
value = 2090
triggerall = ((command = "EZTenChuuYB" || command = "EZTenChuuZC") && var(2) = 1) || ((command = "TenChuuYB" || command = "TenChuuZC") && var(2) = 0)
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = StateNo = 215 || StateNo = 240 || StateNo = 430
trigger4 = Movecontact

;---------------------------------------------------------------------------
; Ten Chuu Satsu - Level 1
[State -1, Ten Chuu Satsu 1]
type = ChangeState
value = 2030
triggerall = ((command = "EZTenChuuXA" || command = "EZTenChuuYB" || command = "EZTenChuuZC") && var(2) = 1) || ((command = "TenChuuXA" || command = "TenChuuYB" || command = "TenChuuZC") && var(2) = 0)
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = StateNo = 215 || StateNo = 240 || StateNo = 430
trigger4 = Movecontact

;---------------------------------------------------------------------------
; Meido no Miyage - Level 3
[State -1, Meido no Miyage 3]
type = ChangeState
value = 2020
triggerall = command = "MnMz"
triggerall = StateType = S || StateType = C
triggerall = Power >= 3000
trigger1 = ctrl
trigger2 = StateNo = [400,430]
trigger2 = MoveContact
trigger3 = StateNo = 215 || StateNo = 240
trigger3 = Movecontact

;---------------------------------------------------------------------------
; Meido no Miyage - Level 2
[State -1, Meido no Miyage 2]
type = ChangeState
value = 2010
triggerall = command = "MnMy" || command = "MnMz"
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
trigger1 = ctrl
trigger2 = StateNo = [400,430]
trigger2 = MoveContact
trigger3 = StateNo = 215 || StateNo = 240
trigger3 = Movecontact

;---------------------------------------------------------------------------
; Meido no Miyage - Level 1
[State -1, Meido no Miyage 1]
type = ChangeState
value = 2000
triggerall = command = "MnMx" || command = "MnMy" || command = "MnMz"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = StateNo = [400,430]
trigger2 = MoveContact
trigger3 = StateNo = 215 || StateNo = 240
trigger3 = Movecontact

;---------------------------------------------------------------------------
; Yagura Reverse
[State -1, Yagura Reverse]
type = ChangeState
value = 1350
triggerall = command = "YaguraReverse"
triggerall = StateType = S || StateType = C
triggerall = var(1) != 1
trigger1 = ctrl
trigger2 = StateNo = 52

;---------------------------------------------------------------------------
; Shirraha Catch
[State -1, Shirraha Catch]
type = ChangeState
value = 1360
triggerall = command = "ShirrahaCatch"
triggerall = StateType = S || StateType = C
triggerall = var(1) != 1
trigger1 = ctrl

;---------------------------------------------------------------------------
; Butsumetsu Buster X
[State -1, Butusumetsu Buster X]
type = ChangeState
value = 1030
triggerall = (command = "EZBBusterX" && var(2) = 1) || (command = "BBusterX" && var(2) = 0)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = StateNo = 420
trigger4 = MoveContact 
trigger5 = StateNo = 1000
trigger5 = MoveContact
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact

;---------------------------------------------------------------------------
; Butsumetsu Buster Y
[State -1, Butusumetsu Buster Y]
type = ChangeState
value = 1070
triggerall = (command = "EZBBusterY" && var(2) = 1) || (command = "BBusterY" && var(2) = 0)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = StateNo = 420
trigger4 = MoveContact 
trigger5 = StateNo = 1000
trigger5 = MoveContact
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact

;---------------------------------------------------------------------------
; Butsumetsu Buster Z
[State -1, Butusumetsu Buster Z]
type = ChangeState
value = 1110
triggerall = (command = "EZBBusterZ" && var(2) = 1) || (command = "BBusterZ" && var(2) = 0)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = StateNo = 420
trigger4 = MoveContact 
trigger5 = StateNo = 1000
trigger5 = MoveContact
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact

;---------------------------------------------------------------------------
; Daikyou Burning A
[State -1, Daikyou Burning A]
type = ChangeState
value = 1150
triggerall = (command = "EZDBurningA" && var(2) = 1) || (command = "DBurningA" && var(2) = 0)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = MoveContact
trigger4 = StateNo = 240
trigger5 = Movecontact
trigger5 = StateNo = 420
trigger6 = Movecontact
trigger6 = StateNo = 430

;---------------------------------------------------------------------------
; Daikyou Burning B
[State -1, Daikyou Burning B]
type = ChangeState
value = 1210
triggerall = (command = "EZDBurningB" && var(2) = 1) || (command = "DBurningB" && var(2) = 0)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = MoveContact
trigger4 = StateNo = 240
trigger5 = Movecontact
trigger5 = StateNo = 420
trigger6 = Movecontact
trigger6 = StateNo = 430

;---------------------------------------------------------------------------
; Daikyou Burning C
[State -1, Daikyou Burning C]
type = ChangeState
value = 1270
triggerall = (command = "EZDBurningC" && var(2) = 1) || (command = "DBurningC" && var(2) = 0)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 52
trigger4 = MoveContact
trigger4 = StateNo = 240
trigger5 = Movecontact
trigger5 = StateNo = 420
trigger6 = Movecontact
trigger6 = StateNo = 430

;---------------------------------------------------------------------------
; Jigoku Scrape X
[State -1, Jigoku Scrape X]
type = ChangeState
value = 1000
triggerall = command = "JigokuScrapeX"
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = StateNo = 215
trigger2 = MoveContact
trigger2 = StateType = S
trigger3 = StateNo = 240
trigger3 = Movecontact
trigger3 = StateType = S
trigger4 = StateNo = 400
trigger4 = Movecontact
trigger5 = StateNo = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Jigoku Scrape Y
[State -1, Jigoku Scrape Y]
type = ChangeState
value = 1010
triggerall = command = "JigokuScrapeY"
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = StateNo = 215
trigger2 = MoveContact
trigger2 = StateType = S
trigger3 = StateNo = 240
trigger3 = Movecontact
trigger3 = StateType = S
trigger4 = StateNo = 400
trigger4 = Movecontact

;---------------------------------------------------------------------------
; Jigoku Scrape Z
[State -1, Jigoku Scrape Z]
type = ChangeState
value = 1020
triggerall = command = "JigokuScrapeZ"
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = StateNo = 215
trigger2 = MoveContact
trigger2 = StateType = S
trigger3 = StateNo = 240
trigger3 = Movecontact
trigger3 = StateType = S
trigger4 = StateNo = 420
trigger4 = Movecontact
trigger5 = StateNo = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = Null ;ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = Null ;ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Shogun Throw (Punch)
[State -1, Shogun Throw P]
type = ChangeState
value = 800
triggerall = command = "TwoPunch"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Shogun Throw (Kick)
[State -1, Shogun Throw K]
type = ChangeState
value = 830
triggerall = command = "TwoKick"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Daimyo Throw
[State -1, Daimyo Throw]
type = ChangeState
value = 850
triggerall = command = "TwoPunch"
triggerall = statetype = A
triggerall = stateno != 100
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = AnimElemTime(4) > 1

;---------------------------------------------------------------------------
; Close Stand Medium Punch
[State -1, Close Stand Medium Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X <= 30

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Close Stand Hard Punch
[State -1, Close Stand Hard Punch]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X <= 40

;---------------------------------------------------------------------------
;Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = AnimElemTime(3) > 1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(15) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(15) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = var(15) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(15) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(15) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = var(15) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl







































