;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;-| 超必殺技 |--------------------------------------------------------
[Command];なに想像してんのさXY
name = "nanisouzouxy"
command = ~D, DF, F, x+y

[Command];なに想像してんのさYZ
name = "nanisouzouyz"
command = ~D, DF, F, y+z

[Command];アイアンクラッシュXY
name = "aianxy"
command = ~D, DB, B, x+y

[Command];アイアンクラッシュYZ
name = "aianyz"
command = ~D, DB, B, y+z

[Command];DIO召還
name = "dio"
command = ~D, DB, B, b+c

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;-| 必殺技 |------------------------------------------------------

[Command];感電黒焦げ弱
name = "kanden1"
command = ~F, D, DF, x

[Command];感電黒焦げ中
name = "kanden2"
command = ~F, D, DF, y

[Command];感電黒焦げ強
name = "kanden3"
command = ~F, D, DF, z



[Command];鎖縛り弱
name = "kusari1"
command = ~D, DB, B, x

[Command];鎖縛り中
name = "kusari2"
command = ~D, DB, B, y

[Command];鎖縛り強
name = "kusari3"
command = ~D, DB, B, z

[Command];あっはははは弱
name = "ahaha1"
command = ~D, DF, F, x

[Command];あっはははは中
name = "ahaha2"
command = ~D, DF, F, y

[Command];あっはははは強
name = "ahaha3"
command = ~D, DF, F, z

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;-| ダッシュ |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;-| ボタン二つ |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command];かわし
name = "bc"
command = b+c
time = 1





;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;-| 3連続 |---------------------------------------------------------
[Command]
name = "xxx"
command = x, x, x
time = 25

[Command]
name = "dxxx"
command = x, x, x
time = 25
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;-| レバー入れボタン |---------------------------------------------------------
[Command];スタンド前A
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command];前強パンチ「投げ」
name = "fwd_z"
command = /F,z
time = 1

[Command];前中パンチ
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command];前しゃがみ強
name = "downfwd_z"
command = /DF,z
time = 1

[Command];スタンド後ろA
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

[Command];後ろ中パンチ
name = "back_y"
command = /B,y
time = 1

[Command];スタンドしゃがみ
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;-| シングルボタン |---------------------------------------------------------
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

[Command];挑発
name = "s"
command = s
time = 1

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
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



;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
[Statedef -1]
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　DIO召還
[State -1]
type = ChangeState
value = 6000
triggerall = Var(1) >= 7
triggerall = command = "dio"
triggerall = power >= 3000
triggerall = Numhelper(1400) = 0
triggerall = Numhelper(1401) = 0
triggerall = Numhelper(1402) = 0
triggerall = Numhelper(1403) = 0
triggerall = Numhelper(1404) = 0
triggerall = Numhelper(1405) = 0
triggerall = Numhelper(1901) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　なに想像してんのさ！XY
[State -1]
type = ChangeState
value = 3000
triggerall = command = "nanisouzouxy"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　なに想像してんのさ！YZ
[State -1]
type = ChangeState
value = 3000
triggerall = command = "nanisouzouyz"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　アイアンクラッシュXY
[State -1]
type = ChangeState
value = 3500
triggerall = command = "aianxy"
triggerall = power >= 1000
triggerall = Numhelper(1400) = 0
triggerall = Numhelper(1401) = 0
triggerall = Numhelper(1402) = 0
triggerall = Numhelper(1403) = 0
triggerall = Numhelper(1404) = 0
triggerall = Numhelper(1405) = 0
triggerall = Numhelper(1901) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　アイアンクラッシュYZ
[State -1]
type = ChangeState
value = 3500
triggerall = command = "aianyz"
triggerall = power >= 1000
triggerall = Numhelper(1400) = 0
triggerall = Numhelper(1401) = 0
triggerall = Numhelper(1402) = 0
triggerall = Numhelper(1403) = 0
triggerall = Numhelper(1404) = 0
triggerall = Numhelper(1405) = 0
triggerall = Numhelper(1901) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　なに想像してんのさ！空中XY
[State -1]
type = ChangeState
value = 3100
triggerall = command = "nanisouzouxy"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 621
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　なに想像してんのさ！空中YZ
[State -1]
type = ChangeState
value = 3100
triggerall = command = "nanisouzouyz"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 621
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      感電黒焦げ弱
[State -1]
type = ChangeState
value = 1300
triggerall = command = "kanden1"
triggerall = Numhelper(1400) = 0
triggerall = Numhelper(1401) = 0
triggerall = Numhelper(1402) = 0
triggerall = Numhelper(1403) = 0
triggerall = Numhelper(1404) = 0
triggerall = Numhelper(1405) = 0
triggerall = Numhelper(1901) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      感電黒焦げ中
[State -1]
type = ChangeState
value = 1301
triggerall = command = "kanden2"
triggerall = Numhelper(1400) = 0
triggerall = Numhelper(1401) = 0
triggerall = Numhelper(1402) = 0
triggerall = Numhelper(1403) = 0
triggerall = Numhelper(1404) = 0
triggerall = Numhelper(1405) = 0
triggerall = Numhelper(1901) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      感電黒焦げ強
[State -1]
type = ChangeState
value = 1302
triggerall = command = "kanden3"
triggerall = Numhelper(1400) = 0
triggerall = Numhelper(1401) = 0
triggerall = Numhelper(1402) = 0
triggerall = Numhelper(1403) = 0
triggerall = Numhelper(1404) = 0
triggerall = Numhelper(1405) = 0
triggerall = Numhelper(1901) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      あっはははは空中弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "ahaha1"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 621
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      あっはははは空中中
[State -1]
type = ChangeState
value = 1200
triggerall = command = "ahaha2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 621
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      あっはははは空中強
[State -1]
type = ChangeState
value = 1200
triggerall = command = "ahaha3"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 621
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      あっはははは弱
[State -1]
type = ChangeState
value = 1100
triggerall = command = "ahaha1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      あっはははは中
[State -1]
type = ChangeState
value = 1100
triggerall = command = "ahaha2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      あっはははは強
[State -1]
type = ChangeState
value = 1100
triggerall = command = "ahaha3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り　完全　弱
[State -1]
type = ChangeState
value = 1010
triggerall = command = "kusari1"
triggerall = Numhelper(1005) = 0
triggerall = Var(1) >= 7
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り近距離弱
[State -1]
type = ChangeState
value = 1010
triggerall = command = "kusari1"
triggerall = Numhelper(1005) = 0
triggerall = P2bodydist X<150
triggerall = Var(1) <= 6
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kusari1"
triggerall = NumprojID(1005) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り　完全　中
[State -1]
type = ChangeState
value = 1010
triggerall = command = "kusari2"
triggerall = Numhelper(1005) = 0
triggerall = Var(1) >= 7
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り近距離中
[State -1]
type = ChangeState
value = 1010
triggerall = command = "kusari2"
triggerall = Numhelper(1005) = 0
triggerall = P2bodydist X<100
triggerall = Var(1) <= 6
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り中
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kusari2"
triggerall = NumprojID(1005) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り　完全　強
[State -1]
type = ChangeState
value = 1010
triggerall = command = "kusari3"
triggerall = Numhelper(1005) = 0
triggerall = Var(1) >= 7
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り近距離強
[State -1]
type = ChangeState
value = 1010
triggerall = command = "kusari3"
triggerall = Numhelper(1005) = 0
triggerall = P2bodydist X<150
triggerall = Var(1) <= 6
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                      鎖縛り強
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kusari3"
triggerall = NumprojID(1005) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = S, NA;, SA
trigger2 = movecontact

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　　　　　　　前ダッシュ　
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　　　　　　　バックダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                  スタンドしゃがみ
[State -1]
type = ChangeState
value = 2010
triggerall = command = "down_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                  スタンド後ろ
[State -1]
type = ChangeState
value = 2030
triggerall = command = "back_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                  スタンド前
[State -1]
type = ChangeState
value = 2020
triggerall = command = "fwd_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                  スタンド
[State -1]
type = ChangeState
value = 2000
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                   　　　　　　　　かわし      　　　　　　　　　　　　　　　　
[State -1]
type = ChangeState
value = 210
triggerall = command = "bc"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                    挑発
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                   　　　　　　　　3連続      　　　　　　　　　　　　　　　　
[State -1]
type = ChangeState
value = 270
triggerall = command = "xxx"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                   　　　　　　　　弱パンチ      　　　　　　　　　　　　　　　　
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                   　　　　　　　前中パンチ      　　　　　　　　　　　　　　　　
[State -1]
type = ChangeState
value = 260
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                   　　　　　　　後ろ中パンチ      　　　　　　　　　　　　　　　　
[State -1]
type = ChangeState
value = 250
triggerall = command = "back_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                   　　　　　　　　中パンチ      　　　　　　　　　　　　　　　　
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                   　　　　　　　　前強パンチ投げ      　　　　　　　　　　　　　　　　
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2statetype = S
triggerall = p2movetype != H
triggerall = stateno != 100
triggerall = stateno != 5
triggerall = ctrl = 1
triggerall = command = "fwd_z"
trigger1 = p2bodydist X < 1
trigger1 = p2bodydist y = 0
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                   　　　　　　　　強パンチ      　　　　　　　　　　　　　　　　
[State -1]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                                  しゃがみスタンド
[State -1]
type = ChangeState
value = 2010
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                    　　　　　　　しゃがみ3連続　
[State -1]
type = ChangeState
value = 460
triggerall = command = "dxxx"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                    　　　　　　　しゃがみ弱　
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                    　　　　　　　しゃがみ中　
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                    　　　　　　前しゃがみ強　
[State -1]
type = ChangeState
value = 450
triggerall = command = "downfwd_z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;                    　　　　　　　しゃがみ強　
[State -1]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　　　　　　ジャンプスタンド
[State -1]
type = ChangeState
value = 2040
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　　　　　　ジャンプ弱
[State -1]
type = ChangeState
value = 620
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　　　　　　ジャンプ中
[State -1]
type = ChangeState
value = 621
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;　　　　　　　　　　　　　　　　　　ジャンプ強
[State -1]
type = ChangeState
value = 630
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1













