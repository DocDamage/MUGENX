;-| CPU Motions |--------------------------------------------------------
[Command]
name = "cpu"
command = x,x,x
time = 0
[Command]
name = "cpu"
command = y,y,y
time = 0
[Command]
name = "cpu"
command = z,z,z
time = 0
[Command]
name = "cpu"
command = a,a,a
time = 0
[Command]
name = "cpu"
command = b,b,b
time = 0
[Command]
name = "cpu"
command = c,c,c
time = 0
[Command]
name = "cpu"
command = s,s,s
time = 0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Vスラ_max"
command = ~D,DF,F,DF,D,DB,B,x+y
time = 45

[Command]
name = "Vスラ_x"
command = ~D,DF,F,DF,D,DB,B,x
time = 45
[Command]
name = "Vスラ_y"
command = ~D,DF,F,DF,D,DB,B,y
time = 45
[Command]
name = "リボル_max"
command = ~D,DB,B,DB,D,DF,F,a+b
time = 40

[Command]
name = "リボル_a"
command = ~D,DB,B,DB,D,DF,F,a
time = 40
[Command]
name = "リボル_b"
command = ~D,DB,B,DB,D,DF,F,b
time = 40
[Command]
name = "真空波動_max1"
command = ~D,DF,F,D,DF,F,x+y
time = 30

[Command]
name = "真空波動_x"
command = ~D,DF,F,D,DF,F,x
time = 30
[Command]
name = "真空波動_y"
command = ~D,DF,F,D,DF,F,y
time = 30
[Command]
name = "真空波動_max"
command = ~D,DF,F,D,DF,F,a+b
time = 30

[Command]
name = "真空波動_a"
command = ~D,DF,F,D,DF,F,a
time = 30
[Command]
name = "真空波動_b"
command = ~D,DF,F,D,DF,F,b
time = 30

[Command]
name = "キラータッチ"
command = ~D,DB,B,D,DB,B,x+y
time = 30

[Command]
name = "キラータッチ"
command = ~D,DB,B,D,DB,B,a+b
time = 30

[Command]
name = "真空竜巻_a"
command = ~D,DB,B,D,DB,B,a
time = 30
[Command]
name = "真空竜巻_b"
command = ~D,DB,B,D,DB,B,b
time = 30
[Command]
name = "真空竜巻_x"
command = ~D,DB,B,D,DB,B,x
time = 30
[Command]
name = "真空竜巻_y"
command = ~D,DB,B,D,DB,B,y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "逆ヨガ_x"
command = ~F,DF,D,DB,B,x
time = 20

[Command]
name = "逆ヨガ_y"
command = ~F,DF,D,DB,B,y
time = 20

[Command]
name = "昇竜_x"
command=~35$D,$U,x
time = 30

[Command]
name = "昇竜_y"
command=~35$D,$U,y
time = 30

[Command]
name = "Xキャa"
command=~35$D,$U,a
time = 30

[Command]
name = "Xキャb"
command=~35$D,$U,b
time = 30

[Command]
name = "昇竜_a"
command = ~F,D,DF,a
time = 15

[Command]
name = "昇竜_b"
command = ~F,D,DF,b
time = 15

[Command]
name = "逆昇竜_a"
command = ~B,D,DB,a
time = 15

[Command]
name = "逆昇竜_b"
command = ~B,D,DB,b
time = 15

[Command]
name = "波動_x"
;command = ~D,DF,F,x
command=~35$B,$F,x
time = 15

[Command]
name = "波動_y"
;command = ~D,DF,F,y
command=~35$B,$F,y
time = 15
[Command]
name = "波動_a1"
command = ~D,DF,F,a
time = 15

[Command]
name = "波動_b1"
command = ~D,DF,F,b
time = 15

[Command]
name = "波動_a"
;command = ~D,DF,F,a
command=~35$B,$F,a
time = 15

[Command]
name = "波動_b"
;command = ~D,DF,F,b
command=~35$B,$F,b
time = 15
[Command]
name = "竜巻_x"
command = ~D,DB,B,x
time = 10
[Command]
name = "竜巻_y"
command = ~D,DB,B,y
time = 10
[Command]
name = "竜巻_a"
command = ~D,DB,B,a
time = 10
[Command]
name = "竜巻_b"
command = ~D,DB,B,b
time = 10

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
name = "am"
command = a+b+y
time = 1

[Command]
name = "counter"
command = a+x+y
time = 1

[Command]
name = "huttobasi";Required (do not remove)
command = y+b
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "ST"
command = a+y
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

[Statedef -1]

;===========================================================================
[State -1]
type = Helper
triggerall=NumHelper(5999)=0
triggerall=Var(10)=0
triggerall=Var(11)=0
trigger1=(Stateno=[190,194])||(Stateno=[1930,1999])||(Stateno=[8190,8199])
name="AI"
id=5999
helpertype=normal
pos=0,-9999
postype=p1
stateno=5999
keyctrl=1
[STate -1]
type=VarSet
trigger1=Var(10)=0
trigger1=Command="cpu"
var(10)=1
;===========================================================================
;キラータッチ・マキシマム
[State -1]
type = ChangeState
value = 3700
triggerall = command = "キラータッチ"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = var(22)=0
triggerall = statetype != A&&Power>=2000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=3000

;===========================================================================
;V・スラMAX
[State -1]
type = ChangeState
value = 3002
triggerall = command = "Vスラ_max"
triggerall=Var(13)=0
triggerall = var(22)=0
triggerall = statetype = A&&Power>=2000
trigger1=Ctrl
trigger2 = (Stateno=[301,310])||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact
trigger3 = Stateno=1220&&Movecontact&&Power>=3000
;===========================================================================
;V・スラ
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Vスラ_x"
triggerall=Var(22)!=0
triggerall = statetype = A
trigger1=Ctrl
trigger2 = (Stateno=[301,310])||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact
trigger3 = Stateno=1220&&Movecontact&&Power>=2000

;V・スラ
[State -1]
type = ChangeState
value = 3001
triggerall = command = "Vスラ_y"
triggerall=Var(22)!=0
triggerall = statetype = A
trigger1=Ctrl
trigger2 = (Stateno=[301,310])||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact
trigger3 = Stateno=1220&&Movecontact&&Power>=2000


;===========================================================================
;V・スラ
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Vスラ_x"
triggerall=Var(13)=0
triggerall = statetype = A&&Power>=1000
trigger1=Ctrl
trigger2 = (Stateno=[301,310])||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact
trigger3 = Stateno=1220&&Movecontact&&Power>=2000

;V・スラ
[State -1]
type = ChangeState
value = 3001
triggerall = command = "Vスラ_y"
triggerall=Var(13)=0
triggerall = statetype = A&&Power>=1000
trigger1=Ctrl
trigger2 = (Stateno=[301,310])||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact
trigger3 = Stateno=1220&&Movecontact&&Power>=2000

;===========================================================================
;MAXリボルスパーク
[State -1]
type = ChangeState
value = 3600
triggerall = command = "リボル_max"
triggerall=Var(13)=0
triggerall = var(22)=0
triggerall = statetype != A&&Power>=2000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=3000

;===========================================================================
;リボルスパーク
[State -1]
type = ChangeState
value = 3100
triggerall = command = "リボル_a"
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact

;リボルスパーク
[State -1]
type = ChangeState
value = 3101
triggerall = command = "リボル_b"
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact

;===========================================================================
;リボルスパーク
[State -1]
type = ChangeState
value = 3100
triggerall = command = "リボル_a"
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;リボルスパーク
[State -1]
type = ChangeState
value = 3101
triggerall = command = "リボル_b"
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000
;===========================================================================
;ジェノサイド・スラッシュ・MAX
[State -1]
type = ChangeState
value = 8860
triggerall = command = "真空波動_max"
triggerall=palNo>=7
triggerall = statetype != A&&Power>=2000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=3000

;===========================================================================
;ジェノサイド・スラッシュ・ノーマル
[State -1]
type = ChangeState
value = 8850
triggerall = command = "真空波動_a"||command = "真空波動_b"
triggerall=palNo>=7
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;===========================================================================
;MAXグラビティストーム
[State -1]
type = ChangeState
value = 3205
triggerall = command = "真空波動_max"
triggerall=Var(13)=0
triggerall = var(22)=0
triggerall = statetype != A&&Power>=2000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=3000
;===========================================================================
;MAXグラビティストーム
[State -1]
type = ChangeState
value = 3205
triggerall = command = "真空波動_max1"
triggerall=palNo>=7
triggerall = statetype != A&&Power>=2000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=3000

;===========================================================================
;グラビティストーム
[State -1]
type = ChangeState
value = 3200
triggerall = command = "真空波動_x"
triggerall=palNo>=7
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;グラビティストーム
[State -1]
type = ChangeState
value = 3200
triggerall = command = "真空波動_y"
triggerall=palNo>=7
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;===========================================================================
;グラビティストーム
[State -1]
type = ChangeState
value = 3200
triggerall = command = "真空波動_a"
triggerall=PalNo=[0,6]
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact

;グラビティストーム
[State -1]
type = ChangeState
value = 3200
triggerall = command = "真空波動_b"
triggerall=PalNo=[0,6]
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact

;===========================================================================
;グラビティストーム
[State -1]
type = ChangeState
value = 3200
triggerall = command = "真空波動_a"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;グラビティストーム
[State -1]
type = ChangeState
value = 3200
triggerall = command = "真空波動_b"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;===========================================================================
;MAXグレイトフルデッド
[State -1]
type = ChangeState
value = 3301
triggerall = command = "真空波動_max1"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall=Var(22)=0
triggerall = statetype != A&&Power>=2000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=3000

;===========================================================================
;グレイトフルデッド
[State -1]
type = ChangeState
value = 3300
triggerall = command = "真空波動_x"
triggerall=PalNo=[0,6]
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;グレイトフルデッド
[State -1]
type = ChangeState
value = 3300
triggerall = command = "真空波動_y"
triggerall=PalNo=[0,6]
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;===========================================================================
;グレイトフルデッド
[State -1]
type = ChangeState
value = 3300
triggerall = command = "真空波動_x"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;グレイトフルデッド
[State -1]
type = ChangeState
value = 3300
triggerall = command = "真空波動_y"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000
;===========================================================================
;レオナ・インフェルノ
[State -1]
type = ChangeState
value = 3500
triggerall = command = "真空竜巻_a"
triggerall=PalNo=[0,6]
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact

;レオナ・インフェルノ
[State -1]
type = ChangeState
value = 3502
triggerall = command = "真空竜巻_b"
triggerall=PalNo=[0,6]
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact

;レオナ・インフェルノ
[State -1]
type = ChangeState
value = 3504
triggerall = command = "真空竜巻_x"
triggerall=PalNo=[0,6]
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact

;レオナ・インフェルノ
[State -1]
type = ChangeState
value = 3506
triggerall = command = "真空竜巻_y"
triggerall=PalNo=[0,6]
triggerall=Var(22)!=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact

;===========================================================================
;レオナ・インフェルノ
[State -1]
type = ChangeState
value = 3500
triggerall = command = "真空竜巻_a"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;レオナ・インフェルノ
[State -1]
type = ChangeState
value = 3502
triggerall = command = "真空竜巻_b"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;レオナ・インフェルノ
[State -1]
type = ChangeState
value = 3504
triggerall = command = "真空竜巻_x"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;レオナ・インフェルノ
[State -1]
type = ChangeState
value = 3506
triggerall = command = "真空竜巻_y"
triggerall=PalNo=[0,6]
triggerall=Var(13)=0
triggerall = statetype != A&&Power>=1000
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=1600&&Movecontact&&Power>=2000

;===========================================================================
;キリングブリンガ
[State -1]
type = ChangeState
value = 1500
triggerall = command = "逆ヨガ_x"||command = "逆ヨガ_y"
trigger1 = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 = Stateno=100
;===========================================================================
;暴走版キャリバ
[State -1]
type = ChangeState
value = 1800
triggerall = command = "Xキャa"
triggerall=PalNo>=7
trigger1 = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 =(stateno=[10,12])||(stateno=40)||(stateno=53)

;暴走版キャリバ
[State -1]
type = ChangeState
value = 1801
triggerall = command = "Xキャb"
triggerall=PalNo>=7
trigger1 = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 =(stateno=[10,12])||(stateno=40)||(stateno=53)

;===========================================================================
;ムーンスラ
[State -1]
type = ChangeState
value = 1000
triggerall = command = "昇竜_x"
trigger1 = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 =(stateno=[10,12])||(stateno=40)||(stateno=53)

;ムーンスラ
[State -1]
type = ChangeState
value = 1010
triggerall = command = "昇竜_y"
trigger1 = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
trigger5 =(stateno=[10,12])||(stateno=40)||(stateno=53)
;===========================================================================
;デルタキ
[State -1]
type = ChangeState
value = 1621
triggerall = command = "波動_a1"
trigger1 = statetype = A
trigger1=Ctrl
trigger2 = (Stateno=301)||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact

;デルタキック
[State -1]
type = ChangeState
value = 1622
triggerall = command = "波動_b1"
trigger1 = statetype = A
trigger1=Ctrl
trigger2 = (Stateno=301)||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact

;===========================================================================
;デルタキ
[State -1]
type = ChangeState
value = 1600
triggerall = command = "昇竜_a"
trigger1 = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431&&Stateno!=250
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;デルタキック
[State -1]
type = ChangeState
value = 1601
triggerall = command = "昇竜_b"
trigger1 = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431&&Stateno!=250
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;===========================================================================
;ハートアタック
[State -1]
type = ChangeState
value = 1490
triggerall = command = "逆昇竜_a"||command = "逆昇竜_b"
triggerall=PalNo=[0,6]
triggerall=Numhelper(2)=1
triggerall=Helper(2),Stateno=1461
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=410&&Stateno!=255&&Stateno!=431&&Stateno!=440
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;===========================================================================
;ハートアタック
[State -1]
type = ChangeState
value = 1450
triggerall = command = "逆昇竜_a"
triggerall=PalNo=[0,6]
triggerall=Numhelper(2)=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;ハートアタック
[State -1]
type = ChangeState
value = 1450
triggerall = command = "逆昇竜_b"
triggerall=PalNo=[0,6]
triggerall=Numhelper(2)=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;===========================================================================
;ボルティック
[State -1]
type = ChangeState
value = 1100
triggerall = command = "波動_x"
triggerall = statetype != A
triggerall = Numhelper(1)=0
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;ボルティック
[State -1]
type = ChangeState
value = 1110
triggerall = command = "波動_y"
triggerall = statetype != A
triggerall = Numhelper(1)=0
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
;===========================================================================
;グランド
[State -1]
type = ChangeState
value = 1200
triggerall = command = "波動_a"
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;グランド
[State -1]
type = ChangeState
value = 1205
triggerall = command = "波動_b"
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0
;===========================================================================
;GCアイスラッガ
[State -1]
type = ChangeState
value = 3400
triggerall=PalNo>=7&&Numhelper(1700)=0
triggerall = command = "竜巻_x"||command = "竜巻_y"
triggerall=Var(13)=0&&Var(22)=0
triggerall = statetype != A && Power>=2000 && Alive
trigger1 = stateno=[150,153]
;===========================================================================
;アイスラッシャー
[State -1]
type = ChangeState
value = 1700
triggerall = command = "竜巻_x"
triggerall=PalNo>=7
trigger1 = statetype != A&&Numhelper(1700)=0
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;アイスラッシャー
[State -1]
type = ChangeState
value = 1701
triggerall = command = "竜巻_y"
triggerall=PalNo>=7
trigger1 = statetype != A&&Numhelper(1700)=0
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;===========================================================================
;X・キャリバー
[State -1]
type = ChangeState
value = 1300
triggerall = command = "竜巻_x"
triggerall=PalNo=[0,6]
trigger1 = statetype = A
trigger1=Ctrl
trigger2 = (Stateno=301)||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact

;X・キャリバ
[State -1]
type = ChangeState
value = 1301
triggerall = command = "竜巻_y"
triggerall=PalNo=[0,6]
trigger1 = statetype = A
trigger1=Ctrl
trigger2 = (Stateno=301)||(Stateno=[630,645])||(Stateno=255)||(Stateno=605)
trigger2 = MoveContact
;===========================================================================
;イヤリング爆弾
[State -1]
type = ChangeState
value = 1400
triggerall = command = "竜巻_a"
triggerall=PalNo=[0,6]
triggerall=Numhelper(2)=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;イヤリング爆弾
[State -1]
type = ChangeState
value = 1410
triggerall = command = "竜巻_b"
triggerall=PalNo=[0,6]
triggerall=Numhelper(2)=0
triggerall = statetype != A
trigger1=Ctrl
trigger2 = Stateno=[200,440]
trigger2 = Stateno!=[300,360]
trigger2 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=410&&Stateno!=255&&Stateno!=431
trigger2 = MoveContact
trigger3 = Stateno=410&&Movecontact
trigger3 = Time = [6,13]
trigger4 = Stateno=215&&Movecontact
trigger4 = animelem=6,<=0

;===========================================================================
;ストライクアーチ
[State -1]
type = ChangeState
value = 301
triggerall = command = "a"
triggerall = command = "holdfwd"|| command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = Stateno=[200,440]
trigger1 = Stateno!=[300,310]
trigger1 = Stateno!=200&&Stateno!=230&&Stateno!=430&&Stateno!=240&&Stateno!=440&&Stateno!=4105&&Stateno!=245
trigger1 = MoveContact
trigger2 = Stateno=410&&Movecontact
trigger2 = Time = [6,13]
trigger3 = Stateno=245&&Movecontact
trigger3 = time<=14
;---------------------------------------------------------------------------
;アーマーモード発動
[State -1]
type = ChangeState
value = 350
triggerall=Command="am"
;triggerall=command = "start"
triggerall=PalNo=[0,6]
triggerall = var(13)=0&&Power>=3000
triggerall = var(22)=0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;カウンターモード発動
[State -1]
type = ChangeState
value = 351
triggerall=Command="counter"
;triggerall=command = "start"
triggerall=PalNo=[0,6]
triggerall = var(13)=0&&Power>=3000
triggerall = var(22)=0
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;GC後方避け移動
[State -1]
type = ChangeState
value = 280
triggerall = command = "recovery"||command = "c"
triggerall = Command="holdback"
triggerall=Var(13)=0&&Var(22)=0
trigger1 = statetype != A && Power>=1000 && Alive
trigger1 = stateno=[150,153]

;===========================================================================
;GC前方避け移動
[State -1]
type = ChangeState
value = 270
triggerall = command = "recovery"||command = "c"
triggerall=Var(13)=0&&Var(22)=0
trigger1 = statetype != A && Power>=1000 && Alive
trigger1 = stateno=[150,153]

;---------------------------------------------------------------------------
;後方避け移動
[State -1]
type = ChangeState
value = 510
triggerall = command = "recovery"||command = "c"
triggerall=Command="holdback"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=100

;---------------------------------------------------------------------------
;前方避け移動
[State -1]
type = ChangeState
value = 500
triggerall = command = "recovery"||command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=100

;---------------------------------------------------------------------------
;ストライクアーチ
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holdfwd"|| command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=100
;---------------------------------------------------------------------------
;地上ふっとばし
[State -1]
type = ChangeState
value = 260
triggerall = command = "z"||Command="huttobasi"
triggerall = command != "holddown"
triggerall=Var(13)=0&&Var(22)=0
trigger1 = statetype != A && Power>=1000 && Alive
trigger1 = stateno=[150,153]
;---------------------------------------------------------------------------
;通常ST呼び
[State -1]
type = ChangeState
value = 700
triggerall = command = "ST"
triggerall=PalNo=[0,6]
triggerall = Var(24) !=0
triggerall = Numhelper(7000)=0
trigger1 = statetype != A
trigger1 = ctrl
;フィオ♪

;追い討ちフィオ♪
[State -1,Fio]
type=Helper
triggerall = command = "ST"
triggerall=PalNo=[0,6]
triggerall = Var(24) !=0
triggerall = Numhelper(7000)=0
trigger1=Stateno=810
trigger1=movetype=A
stateno=7110
pos=100,-300
postype=front
ownpal=1
id=7000
keyctrl=0
helpertype=Normal


;追い討ちフィオ♪
[State -1,Fio]
type=Helper
triggerall = command = "ST"
triggerall=PalNo=[0,6]
triggerall = Var(24) !=0
triggerall = Numhelper(7000)=0
trigger1=Stateno=910
trigger1=movetype=A
stateno=7110
pos=-100,-300
postype=back
ownpal=1
id=7000
keyctrl=0
helpertype=Normal

[State 700,0]
type=Helper
triggerall = command = "ST"
triggerall=PalNo=[0,6]
triggerall = Numhelper(7000)=0
triggerall = Var(24) !=0
triggerall = Var(10) =0
triggerall=Movetype!=H
trigger1 = Movetype=A
trigger1=Stateno!=[3000,3999]
trigger1=Stateno!=[800,970]
trigger2=Stateno=50
trigger3=Stateno=100
trigger4=Stateno=[500,510]
stateno=7000
pos=-80,-150
postype=back
ownpal=1
id=7000
keyctrl=0
helpertype=Normal

;---------------------------------------------------------------------------
;地上ふっとばし
[State -1]
type = ChangeState
value = 250
triggerall = command = "z"||Command="huttobasi"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2=Stateno=100
;---------------------------------------------------------------------------
;空中ふっとばし
[State -1]
type = ChangeState
value = 255
triggerall = command = "z"||Command="huttobasi"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = Stateno != 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = Stateno!=[100,110]
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;ハイデルンインフェルノ
[State -1]
type = ChangeState
value = 950
triggerall = command = "y"||command = "b"
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist Y=[-38,20]
triggerall = command = "holdfwd"||command = "holddown"||command = "holdback"
trigger1 = p2bodydist X < 14
trigger1 = (enemy,statetype = A)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;アップルジュース（れおなくらっしゅ）
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
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
;Ｋ投げ
[State -1]
type = ChangeState
value = 900
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

;===========================================================================
;挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 100

;---------------------------------------------------------------------------
;近立ちA
[State -1]
type = ChangeState
value = 206
triggerall=P2BoDyDist X<=15
triggerall = command = "x"
triggerall = command != "holddown"
trigger1=Stateno=[200,205]
trigger1=movecontact&&Time>=5
;---------------------------------------------------------------------------
;近立ちA
[State -1]
type = ChangeState
value = 205
triggerall=P2BoDyDist X<=15
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2=Stateno=[200,205]
trigger2=MoveContact=0&&Time>=3
trigger3 = Stateno = 100

;---------------------------------------------------------------------------
;遠立ちA
[State -1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
trigger1=Stateno=400&&Time>=5;&&Movecontact
trigger2=Stateno=401&&Time>=5;&&Movecontact
trigger3=Stateno=430&&Time>=7&&Movecontact
trigger4=Stateno=431&&Time>=7&&Movecontact
trigger5=Stateno=[200,206]
trigger5=movecontact&&Time>=5

;---------------------------------------------------------------------------
;遠立ちA
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2=Stateno=[200,205]
trigger2=MoveContact=0&&Time>=3
trigger3 = Stateno = 100
;---------------------------------------------------------------------------
;近立ちC
[State -1]
type = ChangeState
value = 215
triggerall=P2BoDyDist X<=15
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 100
trigger3=Stateno=[200,205]
trigger3=movecontact
trigger3=animTime>=-3

;---------------------------------------------------------------------------
;遠立ちC
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 100
trigger3=Stateno=[200,206]
trigger3=movecontact
trigger3=animTime>=-3

;---------------------------------------------------------------------------
;近立ちB
[State -1]
type = ChangeState
value = 235
triggerall=P2BoDyDist X<=22
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 100
trigger3=Stateno=400&&Time>=5&&Movecontact
trigger4=Stateno=401&&Time>=5&&Movecontact
trigger5=Stateno=430&&Time>=7&&Movecontact
trigger6=Stateno=431&&Time>=7&&Movecontact
trigger7=Stateno=[200,206]
trigger7=movecontact&&Time>=5

;---------------------------------------------------------------------------
;遠立ちB
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 100

;---------------------------------------------------------------------------
;近立ちD
[State -1]
type = ChangeState
value = 245
triggerall=P2BoDyDist X<=10
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 100

;---------------------------------------------------------------------------
;遠立ちD
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 100

;---------------------------------------------------------------------------
;しゃがみA
[State -1]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = command = "holddown"
trigger1=Stateno=400&&Time>=5;&&Movecontact
trigger2=Stateno=401&&Time>=5;&&Movecontact
trigger3=Stateno=430&&Time>=7&&Movecontact
trigger4=Stateno=431&&Time>=7&&Movecontact
trigger5=Stateno=[200,206]
trigger5=movecontact&&Time>=5

;---------------------------------------------------------------------------
;しゃがみA
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 100

;---------------------------------------------------------------------------
;しゃがみC
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 100

;---------------------------------------------------------------------------
;しゃがみB
[State -1]
type = ChangeState
value = 431
triggerall = command = "a"
triggerall = command = "holddown"
trigger1=Stateno=400&&Time>=5&&Movecontact
trigger2=Stateno=401&&Time>=5&&Movecontact
trigger3=Stateno=430&&Time>=7&&Movecontact
trigger4=Stateno=431&&Time>=7&&Movecontact
trigger5=Stateno=[200,206]
trigger5=movecontact&&Time>=5

;---------------------------------------------------------------------------
;しゃがみB
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 100

;---------------------------------------------------------------------------
;しゃがみD
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 100

;---------------------------------------------------------------------------
;空中垂直a
[State -1]
type = ChangeState
value = 600
triggerall= Vel X=0&&(Stateno!=[54,55])
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;空中斜めa
[State -1]
type = ChangeState
value = 605
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中垂直b
[State -1]
type = ChangeState
value = 630
triggerall= Vel X=0&&(Stateno!=[54,55])
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;空中斜めb
[State -1]
type = ChangeState
value = 635
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中垂直c
[State -1]
type = ChangeState
value = 610
triggerall= Vel X=0&&(Stateno!=[54,55])
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;空中斜めc
[State -1]
type = ChangeState
value = 615
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中垂直D
[State -1]
type = ChangeState
value = 640
triggerall= Vel X=0&&(Stateno!=[54,55])
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;空中斜めD
[State -1]
type = ChangeState
value = 645
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl


