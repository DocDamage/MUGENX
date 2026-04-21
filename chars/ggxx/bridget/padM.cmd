;MC#5 code:"candana" ブリジット other commandfile type M
;a:K b:HS c:D x:p y:S z:etc
;-----AI-------------------------------------------
[Command];
name = "AL_1"
command = F, DF, U, DB, UF, F, D, F, F, F, B, D
time = 1

[Command];
name = "AL_2"
command = DF, U, DB, UF, F, D, B, B, B, B, B, B, B
time = 1

[Command];
name = "AL_3"
command =  D, B, B, B, B, B, B, B,U,U,U,U,U,U,U,U,U,U
time = 1

[Command];
name = "AL_4"
command = F,F,F,F,F,F,F,F,F, B, B, B, B, B, B, B
time = 1

[Command];
name = "AL_5"
command = F,F,F,F,F,F,D,D,D,D,D,U, B, B, B, B
time = 1

[Command];
name = "AL_6"
command =  D, D,D,D,D,D,U,U,U,U,B,U,U,U,U,U,U,U,U,U,U
time = 1

[Command];
name = "AL_7"
command = DF,DF,DF,DF,DF,DB,DB,B,DB,DB,DB,DB
time = 1

[Command];
name = "AL_8"
command = DF,DF,DF,F,F,F,F,F,DF,D,D,D,D,D
time = 1

[Command];
name = "AL_9"
command = UF,UF,UF,UF,UF,B,B,B,B,B,BD,D,D,D,D,D
time = 1

[Command];
name = "AL_10"
command = D,D,D,D,D,U, B, B, B, B,F,F,F,F,F,F
time = 1

;-| 超必殺技 |--------------------------------------------------------
[Command];ループザループ
name = "sp_1"
command = ~F, DF, D, DB, B, F, y
time = 60

[Command];キルマシーン
name = "sp_2"   
command = ~F, DF, D, DB, B, F, b
time = 30

[Command];笑劇？
name = "sp_6"
command = ~D, B, D, DF, F, y
time = 45

[Command];悲劇？
name = "sp_3"
command = ~D, DF, F,D, DF, F, y
time = 30

[Command];喜劇？
name = "sp_4"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command];むーん
name = "sp_5"
command = ~D, DF, F, D, DF, F, b
time = 30

;-| 必殺技 |------------------------------------------------------
;-------------
[Command];ヨーヨー　ハグ
name = "RHUG"
command = ~F, D, DF, b

[Command];ヨーヨー　ジャック
name = "jack"
command = ~D, DB, B, b

[Command];ろーりんぐ移動
name = "rollf"
command = ~D, DB, B, a
time = 10

;[Command];ヨーヨー　ハグ
;name = "tyou_m"
;command = ~D, F, DF, z
;time = 25

;-------------------
;[Command];スターシップ
;name="ship"
;command=~D,F,DF,a
;time=60

[Command];れんかんたいー!!　弱
name = "ren_w"
command = ~F, D, DF, x

[Command];キックスタートMH
name = "ksmh"
command = ~D, DF, F, a
time = 10

[Command];ヨーヨー　ラッシュ
name = "rush"
command = ~D, DF, F, b

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
;ロマンキャンセル
[Command]
name = "roma"
command = a+b+x
time = 2

[Command]
name = "roma"
command = a+b+y
time = 2

[Command]
name = "roma"
command = a+y+x

[Command]
name = "roma"
command = b+x+y

;サイクバースト、便利レヴァー前ＸかＤ＋攻撃
[Command]
name = "bust"
command = a+c
time = 2

[Command]
name = "bust"
command = b+c
time = 2

[Command]
name = "bust"
command = c+x
time = 2

[Command]
name = "bust"
command = c+y
time = 2

;-------------------------------------
フォルトレスＤ、便利レヴァー後ろＸかＤ以外＋攻撃＋ガード（レヴァーウシロ）
[Command]
name = "FD"
command = a+b
time = 2

[Command]
name = "FD"
command = a+x
time = 2

[Command]
name = "FD"
command = a+y
time = 2

[Command]
name = "FD"
command = b+x
time = 2

[Command]
name = "FD"
command = b+y
time = 2

[Command]
name = "FD"
command = x+y
time = 2

;--------------------ダウン復帰
[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "jumpup" 
command = $U
time = 1

[Command]
name = "roll" 
command = /B~
time = 1

[Command]
name = "leap" 
command = /DB~
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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

;追加
[Command]
name = "holdUF"
command = /UF
time = 1

[Command]
name = "holdUB"
command = /UB
time = 1

[Command]
name = "holdU"
command = /U
time = 1

[Command]
name = "holdDB"
command = /DB
time = 1

[Command]
name = "holdDF"
command = /DF
time = 1

[Command]
name = "holdD"
command = /D
time = 1

[Command]
name = "holdB"
command = /B
time = 1

[Command]
name = "holdF"
command = /F
time = 1

[Command]
name = "roll" 
command = /B~
time = 1

[Command]
name = "leap" 
command = /DB~
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "P"
command = x
time = 1

[Command]
name = "K"
command = a
time = 1

[Command]
name = "S"
command = y
time = 1

[Command]
name = "ALL"
command = z
time = 1

[Command]
name = "HS"
command = b
time = 1

[Command]
name = "D"
command = c
time = 1

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
name = "jumpup" 
command = $U
time = 1

[Command]
name = "roll" 
command = /B~
time = 1

[Command]
name = "leap" 
command = /DB~
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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

;追加
[Command]
name = "holdUF"
command = /UF
time = 1

[Command]
name = "holdUB"
command = /UB
time = 1

[Command]
name = "holdU"
command = /U
time = 1

[Command]
name = "holdDB"
command = /DB
time = 1

[Command]
name = "holdDF"
command = /DF
time = 1

[Command]
name = "holdD"
command = /D
time = 1

[Command]
name = "holdB"
command = /B
time = 1

[Command]
name = "holdF"
command = /F
time = 1

[Command]
name = "roll" 
command = /B~
time = 1

[Command]
name = "leap" 
command = /DB~
time = 1

;　追加　ボタン押しっぱなし
[Command]
name = "holdP"
command = /x
time = 1

[Command]
name = "holdK"
command = /a
time = 1

[Command]
name = "holdS"
command = /y
time = 1

[Command]
name = "holdH"
command = /b
time = 1

[Command]
name = "holdD"
command = /c
time = 1

[Command]
name = "holdA"
command = /z
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
command = /start
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;=====超必殺技======================================================================
[state -1, sp1 ];るーぷざるーぷ
type = changestate
value = 3100
triggerall = power >= 1000 && !var(53)
triggerall = command = "sp_1"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440] 
trigger2 = stateno != 215 
trigger2 =movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[state -1, sp2 ];
type = changestate
value = 3000
triggerall = 0;command = "sp_6" && !var(53)
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440] 
trigger2 = stateno != 215 
trigger2 =  movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[state -1, sp1 ];悲劇
type = changestate
value = 3200
triggerall = power >= 1000 && !var(53)
triggerall = command = "sp_3"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440] 
trigger2 = stateno != 215 
trigger2 =movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[state -1, sp1 ];喜劇
type = changestate
value = 3300
triggerall = power >= 1000 && !var(53)
triggerall = command = "sp_4"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]  
trigger2 = stateno != 215 
trigger2 =movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)	
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[state -1, sp2 ];キルマシーン  設置中もしくはハグ中？
type = changestate
value = ifelse(statetype =A,3410,3400)
triggerall = power >= 1000 && !var(53) && (var(30) = 1 || var(30)=1830)
triggerall = command = "sp_2"
trigger1 = statetype != c && ctrl
trigger2 = stateno = [200,690]  
trigger2 = stateno != 215 
trigger2 =  movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = stateno = 102 && time >= 5
trigger5 = stateno = [1410,1445] 
trigger6 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger7 = stateno = [55,56]

[State -3, debu0];しゅーとざむーん 双子モードオンリー
type = ChangeState
value = 3600
triggerall = palno = [var(41),var(42)]
triggerall = power >= 2000 && !var(53) 
triggerall = command = "sp_5" 
trigger1 = statetype != A && ctrl
trigger1 = TeamMode = Single && enemy,teammode = single;win ()でくくれないのでトリガ分けて
trigger2 = statetype != A && ctrl
trigger2 = !var(58);dos ()でくくれないのでトリガ分けて
trigger3 = stateno = 99 || (stateno = 100 && time >= 7)
trigger3 = TeamMode = Single && enemy,teammode = single;win ()でくくれないのでトリガ分けて
trigger4 = stateno = 99 || (stateno = 100 && time >= 7)
trigger4 = statetype != A && ctrl
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger5 = TeamMode = Single && enemy,teammode = single;win ()でくくれないのでトリガ分けて
trigger6 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger6 = !var(58);dos ()でくくれないのでトリガ分けて

[state -1, sp2 ];しゅーとざむーん  通常　キャンセルではだめ teamomode、うまくとれない？
type = changestate
value = 3600
triggerall = palno != [var(41),var(42)]
triggerall = power >= 2000 && !var(53) && life < 330
triggerall = command = "sp_5"
trigger1 = statetype != A && ctrl
trigger1 = TeamMode = Single && enemy,teammode = single;win ()でくくれないのでトリガ分けて
trigger2 = statetype != A && ctrl
trigger2 = !var(58);dos ()でくくれないのでトリガ分けて
trigger3 = stateno = 99 || (stateno = 100 && time >= 7)
trigger3 = TeamMode = Single && enemy,teammode = single;win ()でくくれないのでトリガ分けて
trigger4 = stateno = 99 || (stateno = 100 && time >= 7)
trigger4 = statetype != A && ctrl
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger5 = TeamMode = Single && enemy,teammode = single;win ()でくくれないのでトリガ分けて
trigger6 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger6 = !var(58);dos ()でくくれないのでトリガ分けて

;=======必殺技====================================================================

[state -1, star ship ];スターシップ（地上？command="ship"認識不能??七不思議
type = changestate
value = 1100
triggerall=command="ren_w"
;trigger1 = statetype != A && ctrl
trigger1 = (statetype=C || statetype=S) && stateno = [0,20]
trigger2 = stateno = [200,440] 
trigger2 = stateno != 215 
trigger2 = movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[state -1, star ship];スターシップ（空中？ 
type = changestate
value = 1200
triggerall = command = "ren_w"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,690]
trigger2 = stateno != 215  
trigger2 = movecontact && stateno % 5 = 0
trigger3 = stateno = 102 && time >= 5
trigger4 = stateno = [1410,1445] 
trigger5 = stateno = [55,56]

[state -1, ksmh];キックスタートマイハート
type = changestate
value = 1300
triggerall = command = "ksmh"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440] 
trigger2 = stateno != 215 
trigger2 = movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[state -1, rolling move];ろーりんぐ移動 開始　着地で14を0に
type = changestate
value = 1400;ifelse(statetype = A,1405,1400)
triggerall = command = "rollf" && !var(15) && (var(30) = 1 || var(30) =1830) 
trigger1 = statetype != c  && ctrl && !var(53) 
trigger2 = stateno = [200,690]  
trigger2 = stateno != 215 
trigger2 = movecontact && stateno % 5 = 0
trigger3 = stateno = 102 || stateno = 107 
trigger3 = time >= 2	
trigger4 = stateno =99 || (stateno = 100 && time >= 7)
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger6 = stateno = [55,56]

[state -1, rolling move];ろーりんぐ移動  2度目以降
type = changestate
value = 1399;ifelse(var(30) = 1,1410,1430)
triggerall = command = "rollf" || command ="ksmh"
triggerall = var(15) != 0 && (var(30) = 1 ||var(30) = 1830)
trigger1 = statetype = A  && ctrl && !var(53)
trigger2 = stateno = [600,690]  
trigger2 = movecontact && stateno % 5 = 0
trigger3 = stateno = 102 || stateno = 107 
trigger3 = time >= 7	
trigger4 = stateno = [1410,1430] 
trigger5 = stateno =99 || (stateno = 100 && time >= 7)
trigger6 = stateno = [1440,1445]
trigger6 =time >= 8
trigger7 = stateno = [55,56]

;-------------------------------以下ヨーヨー操作関連----命令v(10)--相変わらず命令のみね
[state -1, jack];ジャック　かみそり	 
type = changestate
value = ifelse(statetype = A,1610,1600)
triggerall = command = "jack" && (var(30) = 1 || var(30) = 1830)
triggerall = command != "RHUG" 
;triggerall = helper(0),vel y = 0 && helper(0),vel x = 0
trigger1 = statetype != c  && ctrl && !var(53)
trigger2 = stateno = [200,690]  
trigger2 = stateno != 215 
trigger2 = movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = stateno = 102 && time >= 5
trigger5 = stateno = [1410,1445] 
trigger6 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger7 = stateno = [55,56]

[state -1, hug];ハグ　はりつき	 
type = changestate
value = ifelse(statetype = A,1630,1620)
triggerall = command = "RHUG" 
triggerall = !var(53)  && var(30) = 1 
;triggerall = helper(0),vel y = 0 && helper(0),vel x = 0
trigger1 = ctrl && !var(53)
trigger2 = stateno = [200,690] 
trigger2 = stateno != 215 
trigger2 = movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = stateno = 102 && time >= 5
trigger5 = stateno = [1410,1445] 
trigger6 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger7 = stateno = [55,56]

[state -1, rush];ラッシュ　殴る
type = changestate
value = ifelse(statetype = A,1650,1640)
triggerall = command = "rush" && (var(30) = 1 || var(30) = 1830)
;triggerall = helper(0),vel y = 0 && helper(0),vel x = 0
trigger1 = ctrl
trigger2 = stateno = [200,690]  
trigger2 = stateno != 215 
trigger2 = movecontact && stateno % 5 = 0
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = stateno = 102 && time >= 5
trigger5 = stateno = [1410,1445] 
trigger6 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger7 = stateno = [55,56]

[State -1, ded];デッドアングルアタック
type = ChangeState
value = 750
triggerall = power >= 1000
triggerall =anim = 150 || anim = 151
triggerall = command = "holdfwd" 
trigger1 = (command ="FD" || command ="ALL")

[State -1, sike];フォースロマキャン  特定の技の特定タイミングらしい
type = ChangeState
value = 2140
triggerall = (command = "ALL" && command != "holdback") || command = "roma"
triggerall = power >= 500
trigger1 = stateno = 440 && animelemtime(6) = [0,1];足ばらい
trigger2 = stateno = 1100 && animelemtime(7) = [0,1];SS3
trigger3 = stateno = 1600 && time = [11,12];ろじゃじゃっく
trigger4 = stateno = 1640 && time = [16,17];ろじゃらっしゅ
ignorehitpause = 1

;----------------------ロマンキャンセル
[State -1, sike];通常
type = ChangeState
value = ifelse(statetype = A,2120,2100)
triggerall = (command = "ALL" && command != "holdback") || command = "roma"
triggerall = power >= 1000 && !var(53) 
trigger1=var(23) = 1
;trigger1 = stateno = [200,750]
;trigger1 = movecontact 
;trigger2 = stateno = 1100 && movecontact ;&& animelemtime(7) != [0,1]
;trigger3 = stateno = 1200 || stateno = 1300 || stateno = 1330 
;trigger3  =movecontact 
;trigger4 = stateno = 3100 && movecontact 
;trigger5 = stateno = 815 && movecontact 

;----------------------サイクバースト
[State -1, sike];通常黄色
type = ChangeState
value = 2000
triggerall = (command = "ALL" && command != "holdback" ) || command = "bust"
triggerall = fvar(10) >= 100 && alive && !var(53)
trigger1 = ctrl
trigger2 = stateno =99 || (stateno = 100 && time >= 7) 
trigger3 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)
trigger4 = (stateno = 102 || stateno = 107) && time >= 4 
trigger5 = stateno = [1410,1445] 
trigger6 = stateno = [55,56]

[State -1, FD];フォルトレス
type = ChangeState
value = 120
triggerall = var(12) = 1
triggerall = stateno != [102,107]
triggerall = stateno != [800,890]
triggerall = power > 0 && roundstate = 2
trigger1 = ctrl ;&& (stateno = 20 || stateno = 50)
trigger2 = stateno = [200,690] 
trigger2 = movetype = A && time <= 2;これはＦＤキャンセルね
trigger3 = stateno = [1410,1445];Ｒ移動ね
trigger4 = stateno =1400 && time >= 1;Ｒ移動ね
trigger5= stateno = 100 && time >= 7
trigger6= stateno = 99
trigger7 = stateno = [55,56]

;--------------------------------以下通常
;---------------------------------------------------------------------------
;投げ 
[State -1, c Throw]
type = ChangeState
value = 800
triggerall = command = "HS"
triggerall = statetype = S && ctrl && p2statetype != A 
triggerall = (!var(26) && p2movetype != h) || var(26)
triggerall = (command = "holdfwd"  && p2bodydist X < 15) || (command = "holdback" && p2bodydist X < 18)
trigger1 = stateno = [0,99]
trigger2 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;---------------------------------------------------------------------------
;空中投げ 1,レバー前2,レバー後ろ3,R移動中もだせる！！！airつけておいて
[State -1, c Throw]
type = ChangeState
value = 850
triggerall = command = "HS"
triggerall = statetype = A && ctrl && p2statetype = A && p2bodydist y = [-20,60]
triggerall = stateno != [100,108]
trigger1 = (p2bodydist X < 20 && command = "holdfwd")
trigger2 = (p2bodydist X < 25 && command = "holdback")

[State -1, c Throw]
type = ChangeState
value = 850
triggerall = command = "HS"
triggerall =  p2bodydist y = [-20,60]
triggerall = stateno = [1410,1445]  
trigger1 = (p2bodydist X < 30 && command = "holdfwd")
trigger2 = (p2bodydist X < 35 && command = "holdback")

;-----------------すリープします＆カムバ～ック！	
[state -1, yoyo];YY　地上設置 1500設置アニメ選択 1510選後Sチェンジ 1520かむばーっく！
type = changestate
value = 1500
triggerall = command = "HS" && !var(30)
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,420]    
trigger2 = movecontact && stateno != 215 
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[state -1, yoyo];YY　地上設置 1500設置アニメ選択 1510選後Sチェンジ 1520かむばーっく！
type = changestate
value = 1520
triggerall = command = "HS" && (var(30) = 1 || var(30) = 1830)
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,420]   
trigger2 = movecontact && stateno != 215
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[state -1, yoyo];YY　空中設置 1530設置アニメ選択 1540選後Sチェンジ 1550かむばーっく！
type = changestate
value = 1530
triggerall = command = "HS" && !var(30)
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,680]
trigger2 = movecontact  && stateno != 640 
trigger3 = (stateno = 102 || stateno = 107) && time >= 7 
trigger4 = stateno = 605
trigger5 = stateno = [55,56]
 	
[state -1, yoyo];YY　空中設置 1530設置アニメ選択 1540選後Sチェンジ 1550かむばーっく！
type = changestate
value = 1550
triggerall = command = "HS" && (var(30) = 1 || var(30) = 1830)
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,680]
trigger2 = movecontact  || stateno != 640  
trigger3 = (stateno = 102 || stateno = 107) && time >= 7  	
trigger4= stateno = [1410,1445] 
trigger5 = stateno = 605
trigger6 = stateno = [55,56]

[state -1, yoyo];YY　ダウン中設置1560 うつぶせ時も出せる・・いきなり反対むくことになるけど・・
type = changestate
value = 1560
triggerall = command = "HS"
triggerall = !var(30)
;trigger1 = anim = 5110 
trigger1 = stateno = 5110 && time <= 10
	
;---------------------------------------------------------------------------
;Airダッシュ 基本的に向き基準。２回めは・・？？
[State -1, Air Run Fwd]
type = ChangeState
value = 102
triggerall = var(7) < 2
triggerall = command = "FF" 
;triggerall = stateno != [100,107]
trigger1 =  statetype = A && ctrl
trigger2 = stateno = [1440,1445] 
trigger3 = stateno = 102 && time >= 15
trigger4 = stateno = 605
trigger5 = stateno = [55,56]

;---------------------------------------------------------------------------
;Air 後退ダッシュ
[State -1, Air Run Back]
type = ChangeState
value = 107
triggerall = var(7) < 2
triggerall = command = "BB"
;triggerall = stateno != [100,107]
trigger1 =  statetype = A && ctrl
trigger2 =stateno = [1440,1445] 
trigger3 = stateno = 102 && time >= 15
trigger4 = stateno = 605
trigger5 = stateno = [55,56]

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(8)
triggerall = command = "FF"
triggerall = stateno != [100,107]
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(8)
triggerall = command = "BB"
triggerall = stateno != [100,107]
trigger1 = statetype = S && ctrl

;-----------2ダンジャンプ----------------------------------------------------------------
[State -1, ] ;6,2段ジャンプ中か 9,レバーをはなしたか
type = ChangeState
value = 42
triggerall = !var(6) && !var(9) && !var(53)
triggerall = command = "holdup"
trigger1 = stateno = 50 && time > 8
trigger2 = stateno = 102 || stateno = 107
trigger2 = time > 5
trigger3 = stateno = 51 && time > 5 && ctrl
trigger4 =stateno = [1440,1445] 
trigger4 = ctrl
trigger5 = stateno = 605; && ctrl

;---------------------------------------------------------------------------
;==通常攻撃=========================================================================
ガトリングC：ルートは特定　注意　
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;レヴァー斜め下P お尻　
[State -1, Stand Light]
type = ChangeState
value = 250
triggerall = command = "P" && command = "holdDF"  
triggerall = command !="ren_w"
trigger1 = statetype != A && ctrl			
trigger2 =stateno = 99 || (stateno = 100 && time >= 7)
trigger3 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;しゃがみp 16
[State -1, Crouching Light]
type = ChangeState
value = 400
triggerall = command = "P" && (command = "holddown" || command = "holdDF") 
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 || stateno = 400  
trigger2 = ifelse(stateno = 400,time >= 6,1) && movecontact
trigger3 = stateno = 400 && !movecontact && time >= 7 
trigger4 = stateno = 99	|| (stateno = 100 && time >= 7)
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;---------------------------------------------------------------------------
;しゃがみK 17
[State -1, Crouching m]
type = ChangeState
value = 410
triggerall = command = "K" && (command = "holddown" || command = "holdDF") 
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 420  
trigger2 = movecontact
trigger3 = stateno = 99	|| (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;---------------------------------------------------------------------------
;しゃがみS 18
[State -1, Crouching Strong ]
type = ChangeState
value = 420
triggerall = command = "S" && (command = "holddown" || command = "holdDF") 
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,410]  
trigger2 = stateno != [240,250] 
trigger2 = movecontact && stateno != 215 && stateno != 230   
trigger3 = stateno = 99	|| (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;---------------------------------------------------------------------------
;しゃがみHS 18  削除：立ちヨーヨー設置と共通
[State -1, Crouching HStrong ]
type = ChangeState
value = 430
triggerall = 0;command = "HS" && command = "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,225]  
trigger2 = movecontact && stateno != 215
trigger3 = stateno = [400,420]  
trigger3 = movecontact 
trigger4 = stateno = 99

;---------------------------------------------------------------------------
;しゃがみD 18
[State -1, Crouching down ]
type = ChangeState
value = 440
ignorehitpause = 1
triggerall = command = "D" && (command = "holddown" || command = "holdDF") 
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,225]  
trigger2 = movecontact && stateno != 215
trigger3 = stateno = [400,420]  
trigger3 = movecontact 
trigger4 = stateno = 99	|| (stateno = 100 && time >= 7)
trigger5 = (stateno = 700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;立ちP　13 横にすいっと 
[State -1, Stand Light]
type = ChangeState
value = 200
triggerall = command = "P" && command != "holddown" && command != "holdfwd"   ;Aボタンとレバー下要素以外
trigger1 = statetype = S && ctrl			;立ち状態で操作可能
trigger2 = (stateno = 400 || stateno = 200) && movecontact	;P,しゃがみPのみ
trigger2 = ifelse(stateno = 200,time >= 7,1)
trigger3 = !movecontact && stateno = 200 && time >= 7  				;P攻撃であれば
trigger4 = stateno = 99	|| (stateno = 100 && time >= 7)
trigger5 = (stateno = 700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;レヴァー前P 上からぺちっと　
[State -1, Stand Light]
type = ChangeState
value = 205
triggerall = command = "P" && command = "holdF"
triggerall = command !="ren_w"   
trigger1 = statetype != A && ctrl			;立ち状態で操作可能
trigger2 = (stateno = 200 || stateno = 210 || stateno= 220) && movecontact
trigger3 =(stateno = 400 || stateno = 410) && movecontact
trigger4 = stateno = 99	|| (stateno = 100 && time >= 7)
trigger5 = (stateno = 700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;---------------------------------------------------------------------------
;立ちKレバー 中段　　23　
[State -1, Stand m2]
type = ChangeState
value = 215
triggerall = command = "K"
triggerall = command = "holdfwd" && command != "holddown" && command = "holdfwd" 
trigger1 = statetype = S && ctrl
trigger2 = stateno = [200,220]
trigger2 = stateno != 215 && movecontact
trigger3 =(stateno = 400 || stateno = 410) && movecontact
trigger4 = stateno =99 || (stateno = 100 && time >= 7)
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;立ちK 14
[State -1, Stand m]
type = ChangeState
value = 210
triggerall = command = "K"
triggerall = command != "holdfwd" && command != "holddown" && command != "holdfwd" 
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = stateno =99 || (stateno = 100 && time >= 7)
trigger4 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;立ちS　近距離 15
[State -1, Stand high ]
type = ChangeState
value = 220
triggerall = command = "S" && command != "holddown" && command != "holdfwd" 
triggerall = p2bodydist X <= 35
trigger1 = statetype = S &&  ctrl
trigger2 = stateno = [200,210]  
trigger2 = movecontact 
trigger3 = stateno = [400,410]  
trigger3 = movecontact 
trigger4 = stateno =99 || (stateno = 100 && time >= 7)
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;---------------------------------------------------------------------------
;立ちS 遠距離　 24   
[State -1, Stand high2]
type = ChangeState
value = 225
triggerall = command = "S" &&  command != "holddown" && command != "holdfwd" 
triggerall = p2bodydist X > 35
trigger1 = statetype = S && ctrl
trigger2 = stateno = [200,210]  
trigger2 = stateno != 215 && movecontact
trigger3 = stateno = [400,410]  
trigger3 = movecontact 
trigger4 = stateno =99 || (stateno = 100 && time >= 7)
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

[State -1, Stand high2]
type = ChangeState
value = 225
trigger1 = command = "S" &&  command != "holddown" && command != "holdfwd" 
trigger1 = stateno = 220 && movecontact
trigger2 = command = "S" && command != "holddown" && command = "holdfwd" 
trigger2 = stateno = 220 && movecontact

;---------------------------------------------------------------------------
;立ちSレバー 　　23　HS扱い
[State -1, Stand m2]
type = ChangeState
value = 230
triggerall = command = "S" && command != "holddown" && command = "holdfwd" 
trigger1 = statetype = S && ctrl
trigger2 = stateno = [200,225]    
trigger2 = movecontact && stateno != 215 && stateno != 220
trigger3 = stateno = [400,420]  
trigger3 = movecontact && stateno != 410
trigger4 = stateno =99 || (stateno = 100 && time >= 7)
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;立ちD dust attack 14  aerial=240 dust=260
[State -1, Stand m]
type = ChangeState
value = ifelse(!var(46),240,260)
triggerall = command = "D" && command != "holddown" 
trigger1 = statetype = S && ctrl
trigger2 = stateno = [200,225]  
trigger2 = movecontact && stateno != 215
trigger3 = stateno = [400,420]  
trigger3 = movecontact 
trigger4 = stateno =99 || (stateno = 100 && time >= 7)
trigger5 = (stateno =700 && animelemtime(10) >= 0) || (stateno = 710 && animelemtime(4) >= 0)

;---------------------------------------------------------------------------
;空中p 19
[State -1, Jump Light]
type = ChangeState
value = 600
triggerall = command = "P"  && var(22) <= 0
triggerall = stateno != 105
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,620]  
trigger2 = ifelse(stateno = 600,time >= 4,1) && movecontact 
trigger3 = !movecontact && stateno = 600 && time >= 9 			
trigger4 = stateno = 102 && time >= 5
trigger5 = stateno = [1410,1445] 
trigger6 = stateno = [650,670]  
trigger6 = ifelse(stateno = 650,time >= 4,1) && movecontact 

;---------------------------------------------------------------------------
;空中k 20
[State -1, Jump k　]
type = ChangeState
value = 610
triggerall = command = "K"  && var(22) <= 0
triggerall = stateno != 105
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 620 ||  stateno = 650 || stateno = 670
trigger2 = movecontact 
trigger3= stateno = 102 && time >= 5
trigger4 = stateno = [1410,1445] 

;空中s 21
[State -1, Jump s]
type = ChangeState
value = 620
triggerall = command = "S" && command != "holddown" && var(22) <= 0
triggerall = stateno != 105 
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,610]  
trigger2 = movecontact 
trigger3 = stateno = 102 && time >= 5
trigger4 = stateno = [1410,1445] 
trigger5 = stateno = [650,660]  
trigger5 = movecontact 

;空中s 21
[State -1, Jump s]
type = ChangeState
value = 620
triggerall = command = "S" && command = "holddown" && var(22) <= 0
trigger1 = stateno = 610 || stateno = 660
trigger1 = movecontact 

;空中レヴァーs 　HS扱い
[State -1, Jump Ls]
type = ChangeState
value = 630
triggerall = command = "S" && command = "holddown" && var(22) <= 0
triggerall = stateno != 105 
trigger1 = statetype = A && ctrl
trigger2 =stateno = 600 || stateno = 620 || stateno = 650 || stateno = 670
trigger2 = movecontact 
trigger3 = stateno = 102 && time >= 5
trigger4 = stateno = [1410,1445] 

;空中d 21
[State -1, Jump d]
type = ChangeState
value = 640
triggerall = command = "D" && var(22) <= 0
triggerall = stateno != 105  
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 || stateno = 620 || stateno = 650 || stateno = 670
trigger2 = movecontact 
trigger3 = stateno = 102 && time >= 5
trigger4 = stateno = [1410,1445] 

;----------------------------dust!!-----------------------------------------------
;空中p 19 p
[State -1, Jump Light]
type = ChangeState
value = 650
triggerall = command = "P"  && var(46) && var(22) > 0
trigger1 = stateno = [55,56]
trigger2 = stateno = [650, 670]  
trigger2 = movecontact 
trigger2 = ifelse(stateno = 650,time >= 4,1)
trigger3 = !movecontact && stateno = 650 && time >= 9 			

;---------------------------------------------------------------------------
;空中k 20
[State -1, Jump k　]
type = ChangeState
value = 660
triggerall = command = "K"  && var(46) && var(22) > 0
trigger1 = stateno = [55,56]
trigger2 = stateno = 650 || stateno = 670
trigger2 = movecontact 

;空中s 21
[State -1, Jump s]
type = ChangeState
value = 670
triggerall = command = "S" && command != "holddown"  && var(46) && var(22) > 0
trigger1 = stateno = [55,56]
trigger2 = stateno = [650, 660] 
trigger2 = movecontact 

;空中s 21
[State -1, Jump s]
type = ChangeState
value = 670
triggerall = command = "S" && command = "holddown"  && var(46) && var(22) > 0
trigger1 = stateno = 660
trigger1 = movecontact 

;空中レヴァーs 　HS扱い
[State -1, Jump Ls]
type = ChangeState
value = 680
triggerall = command = "S" && command = "holddown"  && var(46) && var(22) > 0
trigger1 = stateno = [55,56]
trigger2 = stateno = 650 || stateno = 670 
trigger2 = movecontact 

;空中d 21
[State -1, Jump d]
type = ChangeState
value = 690
triggerall = command = "D" && var(46) && var(22) > 0
trigger1 = stateno = [55,56]
trigger2 = stateno = 600 || stateno = 620 
trigger2 = movecontact 

;----------------------敬意　レバー前
[State -1, debug]
type = ChangeState
value = 710
triggerall = command = "start" && command = "holdfwd"
trigger1 = statetype != A && ctrl
trigger2 = stateno =99 || (stateno = 100 && time >= 7)

;--------------------一撃準備（のセリフでモード変更
[State -1, debug]
type = ChangeState
value = 720
triggerall = command = "start" && command = "holdD"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact
trigger3 = stateno =99 || (stateno = 100 && time >= 7)

;デバック　または挑発　ニュートラル
[State -1, debug]
type = ChangeState
value = 700
triggerall = command = "start" && command != "holdfwd" && command != "holdD"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact
trigger3 = stateno =99 || (stateno = 100 && time >= 7)

;------------------------以下でばっく用　触るなキケン 
[State -3, debu0];var(9)のリセットに問題あり、攻撃いってしまうとs50終了、minusで
type = ChangeState
value = 3400
triggerall =0;!var(6) && !var(9)
trigger1 = stateno = 630 && movecontact && command = "holdfwd"

;--------以下でばっく用----ある意味ごーるどもーど。----------------------------
[state 7000,debu1]
type = varset
triggerall = 1
trigger1 = palno = [var(41),var(42)]
trigger1 = fvar(10) <= 90
fvar(10) = 90

[state 7000,debu2]
type =powerset
triggerall = 1
trigger1 = palno = [var(41),var(42)]
value = 2000

[state 7000,debu3]
type = varset
triggerall = 0
trigger1 = palno = [7,5]
var(1) = ifelse(palno = 7,0,ifelse(palno = 8,2,3))

[state 7000,debu4]
type = varset
triggerall = 0
trigger1 = palno = [7,9]
var(59) = 0
