
;
; 方向キーの指定:
;   B, DB, D, DF, F, UF, U, UB     (全て大文字で)
;   それぞれ、 back, down-back, down, downforward, のようになっています。
; 6ボタン:
;   a, b, c, x, y, z               (全て小文字で)
;
; - コマンドの指定方法
;   方向キーとボタンはカンマ（ , ）で区切ります。
;   特殊文字を先に置くことにより、コマンドの指示ができます。
;
;   スラッシュ (/) - ボタンを押しっぱなしにする
;          例. command = /D       ;下方向に入力されたままの状態
;               command = /F, a    ;前方向を入力した状態でaボタンを押す
;
;   チルダ (~) - ボタンが放される
;          例. command = ~a       ;aボタンが離される
;               command = ~D, F, a ;下方向が離された後、前方向が入力されて、aボタン
;
;          数字を指定することで、入力時間を指定できます
;          例. command = ~30a     ;30フレームaボタンを押しっぱなしにした後で放す
;               command = ~30
;
;   ドル ($) - 複数方向指示
;          例. command = $D       ;D, DB または DF を含みます
;               command = $B       ; B, DB または UB を含みます
;
;   プラス (+) - ボタンの同時押し
;          例. command = a+b      ;ab同時押し
;               command = x+y+z    ;xyz同時押し
;
;   これらは、組み合わせて使用することも可能です
;     例. command = ~30$D, a+b     ;下方向（ D,DB,DFいずれか ）に30フレーム入力して
;                                  　　　　　　　放した後に、ab同時押し
;
; - time (オプション)
;   時間以内にコマンドを入力する必要のある時に使用します。
;



[Command]
name = "nin"
command = ~F,$D,B,$D,DB,y
time = 50

[Command]
name = "nin"
command = ~D,B,D,B,x
time = 50

[Command]
name = "nin"
command = ~D,B,D,B,y
time = 50





[Command]
name = "ninz"
command = ~F,$D,B,$D,DB,z
time = 50

[Command]
name = "ninz"
command = ~D,B,D,B,z
time = 50




[Command]
name = "hadozc"
command = ~D,DF,F,z+c
[Command]
name = "hadoyb"
command = ~D,DF,F,y+b
[Command]
name = "hadoxa"
command = ~D,DF,F,x+a

[Command]
name = "hadozc"
command = ~D,F,D,F,z
time = 50
[Command]
name = "hadoyb"
command = ~D,F,D,F,y
time = 50
[Command]
name = "hadoxa"
command = ~D,F,D,F,x
time = 50



[Command]
name = "syoa"
command = ~F,$D,DF,a

[Command]
name = "tatux"
command = ~D,B,x

[Command]
name = "tatuy"
command = ~D,B,y
[Command]
name = "tatuz"
command = ~D,B,z

[Command]
name = "tatua"
command = ~D,B,a
[Command]
name = "tatub"
command = ~D,B,b
[Command]
name = "tatuc"
command = ~D,B,c

[Command]
name = "hadoz"
command = ~D,F,z

[Command]
name = "hadoy"
command = ~D,F,y

[Command]
name = "hadox"
command = ~D,F,x

[Command]
name = "hadoa"
command = ~D,F,a
[Command]
name = "hadob"
command = ~D,F,b
[Command]
name = "hadoc"
command = ~D,F,c

[Command]
name = "yoga"
command = B,$D, F

[Command]
name = "DBDB"
command = ~DB,DB
time = 10


[Command]
name = "DFDF"
command = ~DF,DF
time = 10

[Command]
name = "DD"
command = ~D, D
time = 5

[Command]
name = "Fy"
command = /F,y
time = 5

[Command]
name = "xyz"
command = x+y
time = 3

[Command]
name = "xyz"
command = ~D,D,x
time = 20



[Command]
name = "Bax"
command = /$B,a+x
time = 1

[Command]
name = "Fax"
command = /$F,a+x
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "DF"
command = DF
time = 1

[Command]
name = "UF"
command = /UF

[Command]
name = "UB"
command = /UB

[Command]
name = "U"
command = /U



[Command]
name = "F1"
command = /F

[Command]
name = "B1"
command = /B

[Command]
name = "/z"
command = /z

[Command]
name = "/y"
command = /y

[Command]
name = "/x"
command = /x
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


[Command]
name = "DD";Required (do not remove)
command = D, D
time = 10

[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD";Required (do not remove)
command = D, D
time = 10

[Command]
name = "yy";Required (do not remove)
command = y, y
time = 14

[Command]
name = "bb";Required (do not remove)
command = b, b
time = 15

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1



;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
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

[Command]
name = "downfwd_z"
command = /DF,z
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
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

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
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
name = "down_c"
command = /$D,c
time = 1

;-| ボタン |---------------------------------------------------------
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
name = "s"
command = s
time = 1



;-| 方向キー |--------------------------------------------------------------
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



;---------------------------------------------------------------------------
; 2. コマンド実行条件

[Statedef -1]




;投げ
[State -1]
type = ChangeState
value = 330
triggerall= NumHelper(1) = 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "Fy"
trigger1 =P2BodyDist Y = 0
trigger1 = p2bodydist X >-1
trigger1 = p2bodydist X <15
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;投げ
[State -1]
type = ChangeState
value = 410
triggerall= NumHelper(1) = 1
triggerall = statetype = S
triggerall = command = "Fy"
trigger1 =P2BodyDist Y = 0
trigger1 = p2bodydist X >-1
trigger1 = p2bodydist X <15
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = stateno = 520
trigger2 = stateno = 521
trigger2 =P2BodyDist Y = 0
trigger2 = p2bodydist X >-1
trigger2 = p2bodydist X <15
trigger2 = p2statetype != A
trigger2 = p2movetype != H

;超必殺技かも
[State -1]
type = ChangeState
value = 600
triggerall= NumHelper(1) = 0
triggerall= NumHelper(5) = 0
triggerall= NumHelper(6) = 0
triggerall = statetype != A
triggerall = command = "xyz"
triggerall = stateno != 190
trigger1 = ctrl = 1
trigger2 = stateno = 0
trigger3 = stateno = 1
trigger4 = stateno >= 5000
trigger4 = stateno <= 5099
trigger5 = stateno >= 3
trigger5 = stateno <= 899
trigger6 = stateno >= 1000
trigger6 = stateno <= 2999

[State -1]
type = ChangeState
value = 603
triggerall= NumHelper(1) = 0
triggerall= NumHelper(5) = 1
triggerall= NumHelper(6) = 1
triggerall= NumHelper(7) = 0
triggerall = statetype != A
triggerall = command = "xyz"
triggerall = stateno != 600
triggerall = stateno != 603
triggerall = stateno != 604
triggerall = stateno != 614
triggerall = stateno != 613
triggerall = stateno != 880
trigger1 = ctrl = 1
trigger2 = stateno = 0
trigger3 = stateno = 1
trigger4 = stateno >= 3
trigger4 = stateno <= 899
trigger5 = stateno >= 1000
trigger5 = stateno <= 2999


;素手超必殺
[State -1]
type = ChangeState
value = 880
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "xyz"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430

;武器ありバーディ式弱
[State -1]
type = ChangeState
value = 900
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadoxa"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;武器ありバーディ式中
[State -1]
type = ChangeState
value = 906
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadoyb"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;武器ありバーディ式強
[State -1]
type = ChangeState
value = 907
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadozc"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;飛び引っかきA
[State -1]
type = ChangeState
value = 340
triggerall= NumHelper(1) = 0
triggerall = command = "hadoa"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304
trigger2 = movecontact = 1

;飛び引っかきA素手
[State -1]
type = ChangeState
value = 420
triggerall= NumHelper(1) = 1
triggerall = command = "hadoa"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger2 = movecontact = 1

;飛び引っかきB
[State -1]
type = ChangeState
value = 340
triggerall= NumHelper(1) = 0
triggerall = command = "hadob"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304
trigger2 = movecontact = 1

;飛び引っかきB素手
[State -1]
type = ChangeState
value = 420
triggerall= NumHelper(1) = 1
triggerall = command = "hadob"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger2 = movecontact = 1

;飛び引っかきC
[State -1]
type = ChangeState
value = 340
triggerall= NumHelper(1) = 0
triggerall = command = "hadoc"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304
trigger2 = movecontact = 1

;飛び引っかきC素手
[State -1]
type = ChangeState
value = 420
triggerall= NumHelper(1) = 1
triggerall = command = "hadoc"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger2 = movecontact = 1


;地上飛び引っかき弱武器あり
[State -1];弱
type = ChangeState
value = 890
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadoa"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

[State -1];中
type = ChangeState
value = 891
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadob"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

[State -1];強
type = ChangeState
value = 892
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadoc"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;地上飛び引っかき武器なし
[State -1];弱
type = ChangeState
value = 893
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "hadoa"
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430
trigger8 = stateno = 810
trigger9 = stateno = 820
trigger10= stateno = 830
trigger11= stateno = 870

[State -1];中
type = ChangeState
value = 894
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "hadob"
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430
trigger8 = stateno = 810
trigger9 = stateno = 820
trigger10= stateno = 830
trigger11= stateno = 870

[State -1];強
type = ChangeState
value = 895
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "hadoc"
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430
trigger8 = stateno = 810
trigger9 = stateno = 820
trigger10= stateno = 830
trigger11= stateno = 870

;当身投げ
[State -1]
type = ChangeState
value = 425
triggerall= NumHelper(1) = 1
trigger1 = statetype != A
triggerall = command = "yoga"
trigger1 = ctrl = 1
trigger2 = stateno = 520
trigger3 = stateno = 521
trigger4 = stateno >= 150
trigger4 = stateno <= 153
　



;フェリシアっぽい
[State -1];弱
type = ChangeState
value = 920
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "hadox"
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430
trigger8 = stateno = 810
trigger9 = stateno = 820
trigger10= stateno = 830
trigger11= stateno = 870

[State -1];中
type = ChangeState
value = 920
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "hadoy"
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430
trigger8 = stateno = 810
trigger9 = stateno = 820
trigger10= stateno = 830
trigger11= stateno = 870



;ブーメラン投げ弱
[State -1]
type = ChangeState
value = 439
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadox"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;ブーメラン投げ中
[State -1]
type = ChangeState
value = 430
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadoy"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;ブーメラン投げ強
[State -1]
type = ChangeState
value = 449
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "hadoz"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304


;対空ブーメラン投げ弱
[State -1]
type = ChangeState
value = 460
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "tatux"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304


;対空ブーメラン投げ中
[State -1]
type = ChangeState
value = 491
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "tatuy"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304


;対空ブーメラン投げ強
[State -1]
type = ChangeState
value = 910
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "tatuz"
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;人形変身 レプリカアタック
[State -1]
type = ChangeState
value = 840
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "nin"
triggerall = power >= 300
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430

;レプリカ
[State -1]
type = ChangeState
value = 860
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "ninz"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430

;人形変身
[State -1]
type = ChangeState
value = 850
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "nin"
trigger1 = ctrl = 1

;跳ね返し命令
[State -1]
type = ChangeState
value = 457
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "tatux"
triggerall= Helper(1), stateno = 451
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449

;素手対空技
[State -1]
type = ChangeState
value = 800
triggerall = statetype != A
triggerall = command = "syoa"
trigger1 = stateno = 457





;パクパクシリーズ まわる
[State -1]
type = ChangeState
value = 810
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "tatua"
triggerall= Helper(3000), stateno = 3000
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430

[State -1]
type = ChangeState
value = 811
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "tatua"
triggerall= Helper(3000), stateno = 3000
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304



;パクパクシリーズ 骸骨
[State -1]
type = ChangeState
value = 820
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "tatub"
triggerall= Helper(3000), stateno = 3000
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430

[State -1]
type = ChangeState
value = 821
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "tatub"
triggerall= Helper(3000), stateno = 3000
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;がぶるん
[State -1]
type = ChangeState
value = 830
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "tatuc"
triggerall= Helper(3000), stateno = 3000
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430

[State -1]
type = ChangeState
value = 831
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "tatuc"
triggerall= Helper(3000), stateno = 3000
trigger1 = ctrl = 1
trigger2 = stateno >= 250
trigger2 = stateno <= 304

;武器拾いだぜ　パクパク

[State -1]
type = ChangeState
value = 870
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "tatux"
triggerall= Helper(3000), stateno = 3000
triggerall= Helper(1), stateno = 503
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430

[State -1]
type = ChangeState
value = 870
triggerall= NumHelper(1) = 1
triggerall = statetype != A
triggerall = command = "tatux"
triggerall= Helper(3000), stateno = 3000
triggerall= Helper(1), stateno = 504
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger3 = stateno = 520
trigger4 = stateno = 521
trigger5 = stateno = 449
trigger6 = stateno = 439
trigger7 = stateno = 430
;===========================================================================
;---------------------------------------------------------------------------
;前転
[State -1]
type = ChangeState
value = 210
triggerall= NumHelper(1) = 0
triggerall = command = "Fax"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 211 
trigger2 = time > 15


;こうてん
[State -1]
type = ChangeState
value = 211
triggerall= NumHelper(1) = 0
triggerall = command = "Bax"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = time > 15

;ふせ
[State -1]
type = ChangeState
value = 212
triggerall= NumHelper(1) = 0
triggerall = command = "ax"
trigger1 = statetype != A
trigger1 = ctrl = 1

;ダッシュ
[State -1]
type = ChangeState
value = 100
triggerall= NumHelper(1) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


;ダッシュ
[State -1]
type = ChangeState
value = 110
triggerall= NumHelper(1) = 1
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 520
trigger3 = stateno = 521
;---------------------------------------------------------------------------
;バックダッシュ
[State -1]
type = ChangeState
value = 105
triggerall= NumHelper(1) = 0
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;バックダッシュ
[State -1]
type = ChangeState
value = 111
triggerall= NumHelper(1) = 1
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 520
trigger3 = stateno = 521

;---------------------------------------------------------------------------
;弱パンチ
[State -1]
type = ChangeState
value = 250
triggerall= NumHelper(1) = 0
triggerall = statetype != A
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 =P2BodyDist X >= 16
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 251
trigger2 = movecontact = 1
trigger3 = stateno = 253
trigger3 = movecontact = 1


;近
[State -1]
type = ChangeState
value = 251
triggerall= NumHelper(1) = 0
triggerall = statetype != A
trigger1 = command = "x"
trigger1 = command != "holddown"

trigger1 =P2BodyDist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;中パンチ
[State -1]
type = ChangeState
value = 270
triggerall= NumHelper(1) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 =P2BodyDist X >= 16
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 271 
trigger2 = movecontact = 1
trigger3 = stateno = 273 
trigger3 = movecontact = 1
trigger4 = stateno >= 350
trigger4 = stateno <= 404
trigger4 = movecontact = 1
;近中パンチ
[State -1]
type = ChangeState
value = 271
triggerall= NumHelper(1) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 =P2BodyDist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 251
trigger3 = movecontact = 1
trigger4 = stateno = 252
trigger4 = movecontact = 1
trigger5 = stateno = 253
trigger5 = movecontact = 1
trigger6 = stateno >= 350
trigger6 = stateno <= 404
trigger6 = movecontact = 1

;強パンチ
[State -1]
type = ChangeState
value = 290
triggerall= NumHelper(1) = 0
triggerall =P2BodyDist X >= 20
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 251
trigger3 = movecontact = 1
trigger4 = stateno = 252
trigger4 = movecontact = 1
trigger5 = stateno = 253
trigger5 = movecontact = 1
trigger6 = stateno = 270
trigger6 = movecontact = 1
trigger7 = stateno = 271 
trigger7 = movecontact = 1
trigger8 = stateno = 272 
trigger8 = movecontact = 1
trigger9 = stateno = 273 
trigger9 = movecontact = 1
trigger10 = stateno >= 350
trigger10 = stateno <= 404
trigger10 = movecontact = 1
;近強パンチ
[State -1]
type = ChangeState
value = 291
triggerall= NumHelper(1) = 0
triggerall =P2BodyDist X <= 19
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 251
trigger3 = movecontact = 1
trigger4 = stateno = 252
trigger4 = movecontact = 1
trigger5 = stateno = 253
trigger5 = movecontact = 1
trigger6 = stateno = 270
trigger6 = movecontact = 1
trigger7 = stateno = 271 
trigger7 = movecontact = 1
trigger8 = stateno = 272 
trigger8 = movecontact = 1
trigger9 = stateno = 273 
trigger9 = movecontact = 1
trigger10 = stateno >= 350
trigger10 = stateno <= 404
trigger10 = movecontact = 1
;===========================================================================
;---------------------------------------------------------------------------
;弱キック
[State -1]
type = ChangeState
value = 260
triggerall= NumHelper(1) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 =P2BodyDist X >= 16
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 261 
trigger2= movecontact = 1


;近弱キック
[State -1]
type = ChangeState
value = 261
triggerall= NumHelper(1) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 =P2BodyDist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;中キック
[State -1]
type = ChangeState
value = 280
triggerall= NumHelper(1) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 =P2BodyDist X >= 16
trigger2 = stateno = 281
trigger2 = movecontact = 1


;近中キック
[State -1]
type = ChangeState
value = 281
triggerall= NumHelper(1) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 =P2BodyDist X <= 15
trigger2 = stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 261
trigger3 = movecontact = 1
trigger4 = stateno = 262
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;強キック
[State -1]
type = ChangeState
value = 300
triggerall= NumHelper(1) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X >= 16
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 261
trigger3 = movecontact = 1
trigger4 = stateno = 262
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1
trigger6 = stateno = 281
trigger6 = movecontact = 1
trigger7 = stateno = 282
trigger7 = movecontact = 1

;近強キック
[State -1]
type = ChangeState
value = 301
triggerall= NumHelper(1) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 261
trigger3 = movecontact = 1
trigger4 = stateno = 262
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1
trigger6 = stateno = 281
trigger6 = movecontact = 1
trigger7 = stateno = 282
trigger7 = movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;しゃがみ弱きり
[State -1]
type = ChangeState
value = 252
triggerall= NumHelper(1) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 =P2BodyDist X >= 16
trigger2 = stateno = 251 
trigger2 = movecontact = 1
trigger3 = stateno = 253
trigger3 = movecontact = 1

;しゃがみ近弱きり
[State -1]
type = ChangeState
value = 253
triggerall= NumHelper(1) = 0
trigger1 = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 =P2BodyDist X <= 15

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 272
triggerall= NumHelper(1) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 =P2BodyDist X >= 16
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 271
trigger2 = movecontact = 1
trigger3 = stateno = 273
trigger3 = movecontact = 1
trigger4 = stateno = 330
trigger4 = movecontact = 1
trigger5 = stateno >= 350
trigger5 = stateno <= 404
trigger5 = movecontact = 1
;近しゃがみ中斬り
[State -1]
type = ChangeState
value = 273
triggerall= NumHelper(1) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 =P2BodyDist X <= 15
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 251
trigger3 = movecontact = 1
trigger4 = stateno = 252
trigger4= movecontact = 1
trigger5 = stateno = 253
trigger5= movecontact = 1
trigger6 = stateno >= 350
trigger6 = stateno <= 404
trigger6 = movecontact = 1
;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 292
triggerall= NumHelper(1) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X >= 20
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 251
trigger3 = movecontact = 1
trigger4 = stateno = 252
trigger4 = movecontact = 1
trigger5 = stateno = 253
trigger5 = movecontact = 1
trigger6 = stateno = 270
trigger6 = movecontact = 1
trigger7 = stateno = 271 
trigger7 = movecontact = 1
trigger8 = stateno = 272 
trigger8 = movecontact = 1
trigger9 = stateno = 273 
trigger9 = movecontact = 1
trigger10 = stateno = 330
trigger10= movecontact = 1
trigger11 = stateno >= 350
trigger11 = stateno <= 404
trigger11 = movecontact = 1
;近しゃがみ強きり
[State -1]
type = ChangeState
value = 293
triggerall= NumHelper(1) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X <= 19
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movecontact = 1
trigger3 = stateno = 251
trigger3 = movecontact = 1
trigger4 = stateno = 252
trigger4 = movecontact = 1
trigger5 = stateno = 253
trigger5 = movecontact = 1
trigger6 = stateno = 270
trigger6 = movecontact = 1
trigger7 = stateno = 271 
trigger7 = movecontact = 1
trigger8 = stateno = 272 
trigger8 = movecontact = 1
trigger9 = stateno = 273 
trigger9 = movecontact = 1
trigger10 = stateno = 330
trigger10= movecontact = 1
trigger11 = stateno >= 350
trigger11 = stateno <= 404
trigger11 = movecontact = 1
;===========================================================================
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 262
triggerall= NumHelper(1) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 261
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 282
triggerall= NumHelper(1) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 261
trigger3 = movecontact = 1
trigger4 = stateno = 262
trigger4 = movecontact = 1
trigger5 = stateno = 281
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 302
triggerall= NumHelper(1) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 261
trigger3 = movecontact = 1
trigger4 = stateno = 262
trigger4 = movecontact = 1
trigger5 = stateno = 280
trigger5 = movecontact = 1
trigger6 = stateno = 281
trigger6 = movecontact = 1
trigger7 = stateno = 282
trigger7 = movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 254
triggerall= NumHelper(1) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 274
triggerall= NumHelper(1) = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger1 =Vel X >= 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger2 = movecontact = 1

;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 275
triggerall= NumHelper(1) = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger1 =Vel X <= 0
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 294
triggerall= NumHelper(1) = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno >= 350
trigger2 = stateno <= 404
trigger2 = movecontact = 1
;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 263
triggerall= NumHelper(1) = 0
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger1 =Vel X >= 1

;ジャンプ弱キック
[State -1]
type = ChangeState
value = 264
triggerall= NumHelper(1) = 0
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger1 =Vel X <= 0
trigger2 = stateno = 263
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = ChangeState
value = 284
triggerall= NumHelper(1) = 0
trigger1 =Vel X >= 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 263
trigger2 = movecontact = 1
trigger3 = stateno = 264
trigger3 = movecontact = 1

;ジャンプ中キック
[State -1]
type = ChangeState
value = 285
triggerall= NumHelper(1) = 0
trigger1 =Vel X = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 284
trigger2 = movecontact = 1


;ジャンプ中キック
[State -1]
type = ChangeState
value = 286
triggerall= NumHelper(1) = 0
triggerall =Vel X <= -1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 303
triggerall= NumHelper(1) = 0
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger1 =Vel X >= 1
trigger2 = stateno = 263
trigger2 = movecontact = 1
trigger3 = stateno = 264
trigger3 = movecontact = 1
trigger4 = stateno = 284
trigger4 = movecontact = 1
trigger5 = stateno = 285
trigger5 = movecontact = 1


;垂直後ろジャンプ強キック
[State -1]
type = ChangeState
value = 304
triggerall= NumHelper(1) = 0
trigger1 = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger1 =Vel X <= 0


;===========================================================================
;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 320
triggerall= NumHelper(1) = 0
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1





;前転
[State -1]
type = ChangeState
value = 213
triggerall= NumHelper(1) = 1
triggerall = command = "Fax"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = command = "DFDF"
trigger2 = stateno = 214 
trigger2 = time > 15
trigger3 = stateno = 520
trigger4 = stateno = 521

;こうてん
[State -1]
type = ChangeState
value = 214
triggerall= NumHelper(1) = 1
triggerall = command = "Bax"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 213
trigger2 = time > 15
trigger3 = stateno = 520
trigger4 = stateno = 521
;ふせ
[State -1]
type = ChangeState
value = 215
triggerall= NumHelper(1) = 1
triggerall = command = "ax"
trigger1 = statetype != A
trigger1 = ctrl = 1





[State -1]
type = ChangeState
value = 521
triggerall= NumHelper(1) = 1
triggerall = command = "B1"
triggerall = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 520
triggerall= NumHelper(1) = 1
triggerall = command = "F1"
triggerall = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------


;上ジャンプ
[State -1]
type = ChangeState
value = 5400
triggerall= NumHelper(1) = 1
triggerall = command = "U"
trigger1 = statetype != A
trigger1 = ctrl = 1

;前ジャンプ
[State -1]
type = ChangeState
value = 5410
triggerall= NumHelper(1) = 1
triggerall = command = "UF"
trigger1 = statetype != A
trigger1 = ctrl = 1

;前ジャンプ
[State -1]
type = ChangeState
value = 542
triggerall= NumHelper(1) = 1
triggerall = command = "UF"
trigger1 = stateno = 5400



;後ろジャンプ
[State -1]
type = ChangeState
value = 5420
triggerall= NumHelper(1) = 1
triggerall = command = "UB"
trigger1 = statetype != A
trigger1 = ctrl = 1
;後ろジャンプ
[State -1]
type = ChangeState
value = 543
triggerall= NumHelper(1) = 1
triggerall = command = "UB"
trigger1 = stateno = 5400




;弱パンチ
[State -1]
type = ChangeState
value = 350
triggerall= NumHelper(1) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X >= 16
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 520
trigger3 = stateno = 521
trigger4 = stateno = 370 
trigger4= movecontact = 1
;近
[State -1]
type = ChangeState
value = 351
triggerall= NumHelper(1) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 520
trigger3 = stateno = 521
;しゃがみ弱きり
[State -1]
type = ChangeState
value = 352
triggerall= NumHelper(1) = 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall =P2BodyDist X >= 16

;しゃがみ近弱きり
[State -1]
type = ChangeState
value = 353
triggerall= NumHelper(1) = 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall =P2BodyDist X <= 15

;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 354
triggerall= NumHelper(1) = 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1

;弱キック
[State -1]
type = ChangeState
value = 360
triggerall= NumHelper(1) = 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X >= 16
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 520
trigger7 = stateno = 521

;近弱キック
[State -1]
type = ChangeState
value = 361
triggerall= NumHelper(1) = 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 520
trigger7 = stateno = 521
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 362
triggerall= NumHelper(1) = 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1


;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 363
triggerall= NumHelper(1) = 1
triggerall = command = "a"
triggerall = statetype = A
triggerall =Vel X >= 1
trigger1 = ctrl = 1
trigger2 = stateno = 354
trigger2 = movecontact = 1

;ジャンプ弱キック
[State -1]
type = ChangeState
value = 364
triggerall= NumHelper(1) = 1
triggerall = command = "a"
triggerall = statetype = A
triggerall =Vel X <= 0
trigger1 = ctrl = 1
trigger2 = stateno = 354
trigger2 = movecontact = 1


;中パンチ
[State -1]
type = ChangeState
value = 370
triggerall= NumHelper(1) = 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 520
trigger10 = stateno = 521

;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 371
triggerall= NumHelper(1) = 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1


;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 372
triggerall= NumHelper(1) = 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 354
trigger2= movecontact = 1
trigger3 = stateno = 363
trigger3= movecontact = 1
trigger4 = stateno = 364
trigger4= movecontact = 1



;---------------------------------------------------------------------------
;中キック
[State -1]
type = ChangeState
value = 380
triggerall= NumHelper(1) = 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall =P2BodyDist X >= 16
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 370
trigger9= movecontact = 1
trigger10 = stateno = 371
trigger10= movecontact = 1
trigger11 = stateno = 520
trigger12 = stateno = 521


;近中キック
[State -1]
type = ChangeState
value = 381
triggerall= NumHelper(1) = 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall =P2BodyDist X <= 15
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 370
trigger9= movecontact = 1
trigger10 = stateno = 371
trigger10= movecontact = 1
trigger11 = stateno = 520
trigger12 = stateno = 521


;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 382
triggerall= NumHelper(1) = 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 370
trigger9= movecontact = 1
trigger10 = stateno = 371
trigger10= movecontact = 1
trigger11 = stateno = 520
trigger12 = stateno = 521

;ジャンプ中キック
[State -1]
type = ChangeState
value = 383
triggerall= NumHelper(1) = 1
triggerall =Vel X >= 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 354
trigger2= movecontact = 1
trigger3 = stateno = 363
trigger3= movecontact = 1
trigger4 = stateno = 364
trigger4= movecontact = 1
trigger5= stateno = 372
trigger5= movecontact = 1

;ジャンプ中キック
[State -1]
type = ChangeState
value = 384
triggerall= NumHelper(1) = 1
triggerall =Vel X = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 354
trigger2= movecontact = 1
trigger3 = stateno = 363
trigger3= movecontact = 1
trigger4 = stateno = 364
trigger4= movecontact = 1
trigger5= stateno = 372
trigger5= movecontact = 1


;ジャンプ中キック
[State -1]
type = ChangeState
value = 385
triggerall= NumHelper(1) = 1
triggerall =Vel X <= -1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 354
trigger2= movecontact = 1
trigger3 = stateno = 363
trigger3= movecontact = 1
trigger4 = stateno = 364
trigger4= movecontact = 1
trigger5= stateno = 372
trigger5= movecontact = 1



;強パンチ
[State -1]
type = ChangeState
value = 390
triggerall= NumHelper(1) = 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 370
trigger9= movecontact = 1
trigger10 = stateno = 371
trigger10= movecontact = 1
trigger11= stateno = 380
trigger11= movecontact = 1
trigger12= stateno = 381
trigger12= movecontact = 1
trigger13 = stateno = 382
trigger13= movecontact = 1
trigger14 = stateno = 520
trigger15 = stateno = 521

;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 391
triggerall= NumHelper(1) = 1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 370
trigger9= movecontact = 1
trigger10 = stateno = 371
trigger10= movecontact = 1
trigger11= stateno = 380
trigger11= movecontact = 1
trigger12= stateno = 381
trigger12= movecontact = 1
trigger13 = stateno = 382
trigger13= movecontact = 1

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 392
triggerall= NumHelper(1) = 1
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 354
trigger2= movecontact = 1
trigger3 = stateno = 363
trigger3= movecontact = 1
trigger4 = stateno = 364
trigger4= movecontact = 1
trigger5= stateno = 372
trigger5= movecontact = 1
trigger6 = stateno = 383
trigger6= movecontact = 1
trigger7 = stateno = 384
trigger7= movecontact = 1
trigger8= stateno = 385
trigger8= movecontact = 1


;---------------------------------------------------------------------------
;強キック
[State -1]
type = ChangeState
value = 400
triggerall= NumHelper(1) = 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X >= 16
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 370
trigger9= movecontact = 1
trigger10 = stateno = 371
trigger10= movecontact = 1
trigger11= stateno = 380
trigger11= movecontact = 1
trigger12= stateno = 381
trigger12= movecontact = 1
trigger13 = stateno = 382
trigger13= movecontact = 1
trigger14= stateno = 390
trigger14= movecontact = 1
trigger15 = stateno = 391
trigger15= movecontact = 1
trigger16 = stateno = 520
trigger17 = stateno = 521


;近強キック
[State -1]
type = ChangeState
value = 401
triggerall= NumHelper(1) = 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall =P2BodyDist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 370
trigger9= movecontact = 1
trigger10 = stateno = 371
trigger10= movecontact = 1
trigger11= stateno = 380
trigger11= movecontact = 1
trigger12= stateno = 381
trigger12= movecontact = 1
trigger13 = stateno = 382
trigger13= movecontact = 1
trigger14= stateno = 390
trigger14= movecontact = 1
trigger15 = stateno = 391
trigger15= movecontact = 1
trigger16 = stateno = 520
trigger17 = stateno = 521


;しゃがみ強キック
[State -1]
type = ChangeState
value = 402
triggerall= NumHelper(1) = 1
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 350 
trigger2= movecontact = 1
trigger3 = stateno = 351 
trigger3= movecontact = 1
trigger4 = stateno = 352
trigger4= movecontact = 1
trigger5 = stateno = 353
trigger5= movecontact = 1
trigger6 = stateno = 360
trigger6= movecontact = 1
trigger7 = stateno = 361
trigger7= movecontact = 1
trigger8 = stateno = 362
trigger8= movecontact = 1
trigger9 = stateno = 370
trigger9= movecontact = 1
trigger10 = stateno = 371
trigger10= movecontact = 1
trigger11= stateno = 380
trigger11= movecontact = 1
trigger12= stateno = 381
trigger12= movecontact = 1
trigger13 = stateno = 382
trigger13= movecontact = 1
trigger14= stateno = 390
trigger14= movecontact = 1
trigger15 = stateno = 391
trigger15= movecontact = 1



;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 403
triggerall= NumHelper(1) = 1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1
triggerall =Vel X >=1
trigger2 = stateno = 354
trigger2= movecontact = 1
trigger3 = stateno = 363
trigger3= movecontact = 1
trigger4 = stateno = 364
trigger4= movecontact = 1
trigger5= stateno = 372
trigger5= movecontact = 1
trigger6 = stateno = 383
trigger6= movecontact = 1
trigger7 = stateno = 384
trigger7= movecontact = 1
trigger8= stateno = 385
trigger8= movecontact = 1
trigger9= stateno = 392
trigger9= movecontact = 1


;垂直後ろジャンプ強キック
[State -1]
type = ChangeState
value = 404
triggerall= NumHelper(1) = 1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1
triggerall =Vel X <= 0
trigger2 = stateno = 354
trigger2= movecontact = 1
trigger3 = stateno = 363
trigger3= movecontact = 1
trigger4 = stateno = 364
trigger4= movecontact = 1
trigger5= stateno = 372
trigger5= movecontact = 1
trigger6 = stateno = 383
trigger6= movecontact = 1
trigger7 = stateno = 384
trigger7= movecontact = 1
trigger8= stateno = 385
trigger8= movecontact = 1
trigger9= stateno = 392
trigger9= movecontact = 1