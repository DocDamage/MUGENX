;-| Super Motions |--------------------------------------------------------

[Command]
name = "奥義・多重幻影暗勁"
command = x,y,a,b
time = 25

[Command]
name = "秘伝・幻夢怨霊壁"
command = ~F,DF,D,DB,B,F,DF,D,DB,B,y
time = 32

[Command]
name = "秘伝・幻夢怨霊壁"
command = ~F,DF,D,DB,B,F,DF,D,DB,B,x
time = 32

[Command]
name = "秘伝・幻夢呪怨死魂・強"
command = ~D,DB,B,DB,D,DF,F,y
time = 28

[Command]
name = "秘伝・幻夢呪怨死魂・弱"
command = ~D,DB,B,DB,D,DF,F,x
time = 28

;-| Special Motions |------------------------------------------------------

[Command]
name = "推手・魔脚歩"
command = ~F,DF,D,DB,B,F,y
time = 24

[Command]
name = "推手・魔脚歩"
command = ~F,DF,D,DB,B,F,x
time = 24

[Command]
name = "推手・乱採鬼"
command = ~D,DB,B,y
time = 15

[Command]
name = "推手・乱採鬼"
command = ~D,DB,B,x
time = 15

[Command]
name = "幻無脚・外牙・強"
command = ~B,D,DB,b
time = 15

[Command]
name = "幻無脚・外牙・弱"
command = ~B,D,DB,a
time = 15

[Command]
name = "幻無脚・内牙・強"
command = ~F,D,DF,b
time = 15

[Command]
name = "幻無脚・内牙・弱"
command = ~F,D,DF,a
time = 15

[Command]
name = "幻魔飛翔軽功・強"
command = ~D,DB,B,b
time = 15

[Command]
name = "幻魔飛翔軽功・弱"
command = ~D,DB,B,a
time = 15

[Command]
name = "死両撥生斤"
command = ~D,DB,B,y
time = 15

[Command]
name = "死両撥生斤"
command = ~D,DB,B,x
time = 15

[Command]
name = "飛毛脚・強"
command = ~D,DF,F,b
time = 15

[Command]
name = "飛毛脚・弱"
command = ~D,DF,F,a
time = 15

[Command]
name = "捨己從竜"
command = ~D,DF,F,y
time = 15

[Command]
name = "捨己從竜"
command = ~D,DF,F,x
time = 15

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
name = "recovery"
command = x+a
time = 1

[Command]
name = "緊急回避"
command = x+a
time = 1

[Command]
name = "ガードキャンセル"
command = y+b
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
name = "down"
command = D
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

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
; 奥義・多重幻影暗勁
[State -1]
type = ChangeState
value = 2200
triggerall = var(4) <= 0
triggerall = power >= 2000
triggerall = command = "奥義・多重幻影暗勁"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

; スパキャン用
[State -1]
type = ChangeState
value = 2200
triggerall = var(4) <= 0
triggerall = power >= 3000
triggerall = command = "奥義・多重幻影暗勁"
trigger1 = stateno = 1402 && movecontact
trigger2 = stateno = 1406 && movecontact

;---------------------------------------------------------------------------
; 秘伝・幻夢怨霊壁
[State -1]
type = ChangeState
value = 2100
triggerall = power >= 1000
triggerall = command = "秘伝・幻夢怨霊壁"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

; スパキャン用
[State -1]
type = ChangeState
value = 2100
triggerall = power >= 2000
triggerall = command = "秘伝・幻夢怨霊壁"
trigger1 = stateno = 1402 && movecontact
trigger2 = stateno = 1406 && movecontact

;---------------------------------------------------------------------------
; 秘伝・幻夢呪怨死魂
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = numproj = 0
triggerall = command = "秘伝・幻夢呪怨死魂・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

[State -1]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = numproj = 0
triggerall = command = "秘伝・幻夢呪怨死魂・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

; スパキャン用
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 2000
triggerall = numproj = 0
triggerall = command = "秘伝・幻夢呪怨死魂・弱"
trigger1 = stateno = 1402 && movecontact
trigger2 = stateno = 1406 && movecontact

[State -1]
type = ChangeState
value = 2000
triggerall = power >= 2000
triggerall = numproj = 0
triggerall = command = "秘伝・幻夢呪怨死魂・強"
trigger1 = stateno = 1402 && movecontact
trigger2 = stateno = 1406 && movecontact

;---------------------------------------------------------------------------
; 推手・魔脚歩
[State -1]
type = ChangeState
value = 1300
triggerall = command = "推手・魔脚歩"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; 幻無脚・外牙
[State -1]
type = ChangeState
value = 1010
triggerall = command = "幻無脚・外牙・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 1402 && movecontact
trigger12 = stateno = 1405 && movecontact

[State -1]
type = ChangeState
value = 1010
triggerall = command = "幻無脚・外牙・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 1402 && movecontact
trigger12 = stateno = 1405 && movecontact

;---------------------------------------------------------------------------
; 幻無脚・内牙
[State -1]
type = ChangeState
value = 1000
triggerall = command = "幻無脚・内牙・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 1402 && movecontact
trigger12 = stateno = 1405 && movecontact

[State -1]
type = ChangeState
value = 1000
triggerall = command = "幻無脚・内牙・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 1402 && movecontact
trigger12 = stateno = 1405 && movecontact

;---------------------------------------------------------------------------
; 幻魔飛翔軽功
[State -1]
type = ChangeState
value = 1200
triggerall = command = "幻魔飛翔軽功・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 1402 && movecontact
trigger12 = stateno = 1405 && movecontact

[State -1]
type = ChangeState
value = 1205
triggerall = command = "幻魔飛翔軽功・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 1402 && movecontact
trigger12 = stateno = 1405 && movecontact

;---------------------------------------------------------------------------
; 飛毛脚
[State -1]
type = ChangeState
value = 1100
triggerall = command = "飛毛脚・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 1402 && movecontact
trigger12 = stateno = 1405 && movecontact

[State -1]
type = ChangeState
value = 1105
triggerall = command = "飛毛脚・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 1402 && movecontact
trigger12 = stateno = 1405 && movecontact

;---------------------------------------------------------------------------
; 捨己從竜
[State -1]
type = ChangeState
value = 1400
triggerall = command = "捨己從竜"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; 推手・衝靠（掴み）
[State -1]
type = ChangeState
value = 800+(command = "b")*50
triggerall = command = "y"|command = "b"
triggerall = statetype = S && ctrl
triggerall = stateno != [100,102]
trigger1 = command = "holdfwd" && p2bodydist X < 5
trigger1 = p2statetype != A && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5
trigger2 = p2statetype != A && p2movetype != H

;---------------------------------------------------------------------------
; 緊急回避・後
[State -1]
type = ChangeState
value = 710
triggerall = command = "緊急回避" && command = "holdback"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 150|stateno = 152
trigger2 = power >= 1000
trigger3 = stateno = [100,102]

; 緊急回避・前
[State -1]
type = ChangeState
value = 700
triggerall = command = "緊急回避"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 150|stateno = 152
trigger2 = power >= 1000
trigger3 = stateno = [100,102]

; ガードキャンセル
[State -1]
type = ChangeState
value = 720
trigger1 = stateno = 150|stateno = 152
trigger1 = command = "ガードキャンセル"
trigger1 = power >= 1000

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
; 三角跳び
[State -1]
type = ChangeState
value = 48
triggerall = command = "holdup" && (stateno = 50|stateno = 60)
triggerall = prevstateno != 48 && pos y < -15
trigger1 = backedgebodydist < 5 && command = "holdfwd"
trigger2 = frontedgebodydist < 5 && command = "holdback"

;===========================================================================
;---------------------------------------------------------------------------
; 風架纏絲
[State -1]
type = ChangeState
value = 300
triggerall = command = "b"  && command = "holdfwd" && command = "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; 立ち弱パンチ
[State -1]
type = ChangeState
value = ifelse(P2bodydist x < 20,205,200)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && animelemtime(2) > 1 && movecontact!
trigger3 = P2bodydist x < 20

;---------------------------------------------------------------------------
; 立ち強パンチ
[State -1]
type = ChangeState
value = ifelse(P2bodydist x < 30,215,210)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; 立ち弱キック
[State -1]
type = ChangeState
value = ifelse(P2bodydist x < 20,235,230)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 235 && animelemtime(2) > 1 && movecontact!
trigger3 = P2bodydist x < 20

;---------------------------------------------------------------------------
; 立ち強キック
[State -1]
type = ChangeState
value = ifelse(P2bodydist x < 30,245,240)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; しゃがみ・弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 400 && animelemtime(2) > 1 && movecontact!

;---------------------------------------------------------------------------
; しゃがみ・強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; しゃがみ・弱キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 430 && animelemtime(2) > 1 && movecontact!

;---------------------------------------------------------------------------
; しゃがみ・強キック
[State -1]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; 空中弱パンチ
[State -1]
type = ChangeState
value = ifelse(vel x = 0 && var(16) != 2,600,605)
triggerall = command = "x"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 空中強パンチ
[State -1]
type = ChangeState
value = ifelse(vel x = 0 && var(16) != 2,610,615)
triggerall = command = "y"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 空中弱キック
[State -1]
type = ChangeState
value = ifelse(vel x = 0 && var(16) != 2,630,635)
triggerall = command = "a"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 飛架纏絲
[State -1]
type = ChangeState
value = 650
triggerall = command = "b" && var(16) = 1 && vel x > 0
trigger1 = stateno = 635 && animelemtime(2) > 0 && animelemtime(4) < 0 && movecontact

;---------------------------------------------------------------------------
; 空中強キック
[State -1]
type = ChangeState
value = ifelse(vel x = 0 && var(16) != 2,640,645)
triggerall = command = "b"
trigger1 = statetype = A && ctrl