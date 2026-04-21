;베가 CMD 설정파일.
;가고일의 것+_+

;-| 초필살기 |--------------------------------------------------------
[Command]
name = "heart1"
command = ~D, F, D, F, x
time = 25

[Command]
name = "heart2"
command = ~D, F, D, F, y
time = 25

[Command]
name = "heart3"
command = ~D, F, D, F, x+y
time = 25

[Command]
name = "heart3"
command = ~D, F, D, F, z
time = 25

[Command]
name = "night1"
command = ~D, F, D, F, a
time = 25

[Command]
name = "night2"
command = ~D, F, D, F, b
time = 25

[Command]
name = "night3"
command = ~D, F, D, F, a+b
time = 25

[Command]
name = "night3"
command = ~D, F, D, F, c
time = 25

;-| 필살기 |------------------------------------------------------
[Command]
name = "psycho1"
command = ~30$B, F, x
time = 20

[Command]
name = "psycho2"
command = ~30$B, F, y
time = 20

[Command]
name = "psycho3"
command = ~30$B, F, z
time = 20

[Command]
name = "impact1"
command = ~D, B, x
time = 15

[Command]
name = "impact2"
command = ~D, B, y
time = 15

[Command]
name = "impact3"
command = ~D, B, z
time = 15

[Command]
name = "vanish1"
command = ~F, D, F, x
time = 15

[Command]
name = "vanish2"
command = ~F, D, F, y
time = 15

[Command]
name = "vanish3"
command = ~F, D, F, z
time = 15

[Command]
name = "knee1"
command = ~30$B, F, a
time = 20

[Command]
name = "knee2"
command = ~30$B, F, b
time = 20

[Command]
name = "knee3"
command = ~30$B, F, c
time = 20

[Command]
name = "head1"
command = ~30$D, U, a
time = 20

[Command]
name = "head2"
command = ~30$D, U, b
time = 20

[Command]
name = "head3"
command = ~30$D, U, c
time = 20

[Command]
name = "devil1"
command = ~30$D, U, x
time = 20

[Command]
name = "devil2"
command = ~30$D, U, y
time = 20

[Command]
name = "devil3"
command = ~30$D, U, z
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "groggyrecover"
command = F,B
time = 20

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
name = "recovery"
command = a+x
time = 1

[Command]
name = "chargea"
command = /a
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "chargec"
command = /c
time = 1

[Command]
name = "charge2"
command = /y
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
[Statedef -1]
;===========================================================================
;===========================================================================
;초필살기
;---------------------------------------------------------------------------
;허트 브레이크 디스페어
[State -1, Heart break Despair]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = !Var(7) && (Command = "heart1" || Command = "heart2" || Command = "heart3")
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210 || (StateNo = [400,404])) && MoveContact
trigger3 = StateNo = 405 && MoveGuarded
trigger4 = (StateNo = [1000,1100]) && MoveContact
trigger5 = (StateNo = 1150 && Anim = 1155 && AnimElemTime(2) < 0) && MoveContact
trigger6 = (StateNo = 3050 && StateType != A) && MoveContact

;---------------------------------------------------------------------------
;니프레스 나이트메어
[State -1, Knee Press NightMare]
type = ChangeState
value = 3050
triggerall = Power >= 1000
triggerall = !Var(7) && (Command = "night1" || Command = "night2" || Command = "night3")
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210 || (StateNo = [400,404])) && MoveContact
trigger3 = StateNo = 405 && MoveGuarded
trigger4 = (StateNo = [1000,1100]) && MoveContact
trigger5 = (StateNo = 1150 && Anim = 1155 && AnimElemTime(2) < 0) && MoveContact
trigger6 = (StateNo = 3050 && StateType != A) && MoveContact

;---------------------------------------------------------------------------
;필살기
;---------------------------------------------------------------------------
;데블 리버스
[State -1, Devil Reverse]
type = ChangeState
value = 1250
triggerall = !Var(7) && (Command = "devil1" || Command = "devil2" || Command = "devil3")
trigger1 = (StateType != A && Ctrl) || StateNo = 40
trigger2 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210 || (StateNo = [400,404])) && MoveContact
trigger3 = StateNo = 405 && MoveGuarded

;---------------------------------------------------------------------------
;헤드 프레스
[State -1, Head Press]
type = ChangeState
value = 1200
triggerall = !Var(7) && (Command = "head1" || Command = "head2" || Command = "head3")
trigger1 = (StateType != A && Ctrl) || StateNo = 40
trigger2 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210 || (StateNo = [400,404])) && MoveContact
trigger3 = StateNo = 405 && MoveGuarded

;---------------------------------------------------------------------------
;싸이코 배니시
[State -1, Psycho Vanish]
type = ChangeState
value = 1100
triggerall = !Var(7) && (Command = "vanish1" || Command = "vanish2" || Command = "vanish3")
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210 || (StateNo = [400,404])) && MoveContact
trigger3 = StateNo = 405 && MoveGuarded

;---------------------------------------------------------------------------
;싸이코 임팩트
[State -1, Psycho Impact]
type = ChangeState
value = 1050
triggerall = !Var(7) && (Command = "impact1" || Command = "impact2" || Command = "impact3")
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210 || (StateNo = [400,404])) && MoveContact
trigger3 = StateNo = 405 && MoveGuarded

;---------------------------------------------------------------------------
;싸이코 크래시
[State -1, Psycho Crush]
type = ChangeState
value = 1000
triggerall = !Var(7) && (Command = "psycho1" || Command = "psycho2" || Command = "psycho3")
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210 || (StateNo = [400,404])) && MoveContact
trigger3 = StateNo = 405 && MoveGuarded

;---------------------------------------------------------------------------
;더블 니 프레스
[State -1, Double Knee Press]
type = ChangeState
value = 1150
triggerall = !Var(7) && (Command = "knee1" || Command = "knee2" || Command = "knee3")
trigger1 = StateType != A && Ctrl
trigger2 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210 || (StateNo = [400,404])) && MoveContact
trigger3 = StateNo = 405 && MoveGuarded

;---------------------------------------------------------------------------
;도발
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(7) && command = "start"
trigger1 = StateType != A && Ctrl

;---------------------------------------------------------------------------
;전방 대시
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = StateNo != 100
trigger1 = !Var(7) && command = "FF"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;후방 대시
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = !Var(7) && command = "BB"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;기 저축
[State -1]
type = ChangeState
value = 820
triggerall = !Var(7) && Power < 3000 && (command = "charge1" && command = "charge2")
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;회피
[State -1]
type = ChangeState
value = 810
triggerall = !Var(7) && command = "recovery"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;데들리 드로우 & 데드 라이즈
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !Var(7)
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y" || command = "z" || command = "b" || command = "c")
triggerall = StateType = S && Ctrl
triggerall = StateNo != 100
triggerall = P2BodyDist X < 6
trigger1 = P2StateType != A && P2MoveType != H

;---------------------------------------------------------------------------
;서서 약펀치
[State -1, Stand Light Punch]
type = ChangeState
value = ifelse (P2bodydist X >= 25, 200, 201)
triggerall = !Var(7)
triggerall = Command != "holddown" && Command = "x"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;서서 중펀치
[State -1, Stand Medium Punch]
type = ChangeState
value = 202
triggerall = !Var(7)
triggerall = Command != "holddown" && Command = "y"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 200 || StateNo = 201 || StateNo = 205 || StateNo = 206) && MoveContact

;---------------------------------------------------------------------------
;서서 강펀치
[State -1, Stand Strong Punch]
type = ChangeState
value = ifelse (P2bodydist X >= 25, 203, 204)
triggerall = !Var(7)
triggerall = Command != "holddown" && Command = "z"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 205 || StateNo = 206 || StateNo = 207 || StateNo = 208) && MoveContact

;---------------------------------------------------------------------------
;서서 약킥
[State -1, Stand Light Kick]
type = ChangeState
value = ifelse (P2bodydist X >= 25, 205, 206)
triggerall = !Var(7)
triggerall = Command != "holddown" && Command = "a"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;서서 중킥
[State -1, Stand Medium Kick]
type = ChangeState
value = ifelse (P2bodydist X >= 20, 207, 208)
triggerall = !Var(7)
triggerall = Command != "holddown" && Command = "b"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 200 || StateNo = 201 || StateNo = 205 || StateNo = 206) && MoveContact

;---------------------------------------------------------------------------
;서서 강킥
[State -1, Standing Strong Kick]
type = ChangeState
value = ifelse (P2bodydist X >= 20 || MoveContact, 209, 210)
triggerall = !Var(7)
triggerall = Command != "holddown" && Command = "c"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 205 || StateNo = 206 || StateNo = 207 || StateNo = 208) && MoveContact

;---------------------------------------------------------------------------
;하단 약펀치
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !Var(7)
triggerall = Command = "holddown" && Command = "x"
trigger1 = StateType = C && Ctrl
trigger2 = StateNo = 400 && MoveContact

;---------------------------------------------------------------------------
;하단 중펀치
[State -1, Crouching Medium Punch]
type = ChangeState
value = 401
triggerall = !Var(7)
triggerall = Command = "holddown" && Command = "y"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 400 || StateNo = 403) && MoveContact

;---------------------------------------------------------------------------
;하단 강펀치
[State -1, Crouching Strong Punch]
type = ChangeState
value = 402
triggerall = !Var(7)
triggerall = Command = "holddown" && Command = "z"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 400 || StateNo = 401 || StateNo = 403 || StateNo = 404) && MoveContact

;---------------------------------------------------------------------------
;하단 약킥
[State -1, Crouching Light Kick]
type = ChangeState
value = 403
triggerall = !Var(7)
triggerall = Command = "holddown" && Command = "a"
trigger1 = StateType = C && Ctrl
trigger2 = StateNo = 403 && MoveContact

;---------------------------------------------------------------------------
;하단 중킥
[State -1, Crouching Medium Kick]
type = ChangeState
value = 404
triggerall = !Var(7)
triggerall = Command = "holddown" && Command = "b"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 400 || StateNo = 403) && MoveContact

;---------------------------------------------------------------------------
;하단 강킥
[State -1, Crouching Strong Kick]
type = ChangeState
value = 405
triggerall = !Var(7)
triggerall = Command = "holddown" && Command = "c"
trigger1 = StateType = C && Ctrl
trigger2 = (StateNo = 400 || StateNo = 401 || StateNo = 403 || StateNo = 404) && MoveContact

;---------------------------------------------------------------------------
;점프 약펀치
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse (!Vel X, 600, 601)
triggerall = !Var(7) && command = "x"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
;점프 중펀치
[State -1, Jump medium Punch]
type = ChangeState
value = 602
triggerall = !Var(7) && command = "y"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
;점프 강펀치
[State -1, Jump Strong Punch]
type = ChangeState
value = ifelse (!Vel X, 603, 604)
triggerall = !Var(7) && command = "z"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
;점프 약킥
[State -1, Jump Light Kick]
type = ChangeState
value = ifelse (!Vel X, 605, 606)
triggerall = !Var(7) && command = "a"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
;점프 중킥
[State -1, Jump Medium Kick]
type = ChangeState
value = ifelse (!Vel X, 607, 608)
triggerall = !Var(7) && command = "b"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
;점프 강킥
[State -1, Jump Strong Kick]
type = ChangeState
value = ifelse (!Vel X, 609, 610)
triggerall = !Var(7) && command = "c"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
;인공지능
;---------------------------------------------------------------------------
;점프 공격
[State -1, Jump Attack]
type = ChangeState
value = ifelse (Random <= 200, 602, ifelse (!Vel X, 609, 610))
triggerall = Var(7) && StateType = A && P2StateType != L && Ctrl
trigger1 = P2BodyDist X <= 80 && P2BodyDist Y <= 80

;---------------------------------------------------------------------------
;싸이코 배니시
[State -1]
type = ChangeState
value = 1100
triggerall = Var(7) && StateType != A && Ctrl && (EnemyNear,StateType != L) && Enemy, NumProj >= 1
trigger1 = P2BodyDist X >= 40 && Random <= 500

;---------------------------------------------------------------------------
;헤드프레스 || 데블 리버스
[State -1]
type = ChangeState
value = ifelse (Random <= 500, 1200, 1250)
triggerall = Var(7) && (StateType != A) && (StateType != L) && (Enemy, MoveType = A) && (Enemy, StateType != A) && (enemy, NumProj >= 1) && StateNo != 40
trigger1 = Ctrl && Random <= 400

;---------------------------------------------------------------------------
;뛰어넘기
[State -1]
type = ChangeState
value = 40
triggerall = Var(7) && (StateType != A) && (StateType != L) && (Enemy, MoveType = A) && (Enemy, StateType != A) && (enemy, NumProj >= 1) && StateNo != 40
trigger1 = Ctrl && Random <= 400

;---------------------------------------------------------------------------
;가드
[state -1, Guard]
type = ChangeState
value = Ifelse (StateType != A && (Enemy, HitDefAttr = SA, AA, AT, AP), 130, ifelse (StateType = A, 132, 131))
triggerall = Var(7)  && MoveType = I && ((EnemyNear, MoveType = A  && P2BodyDist X <= 40) || (Enemy, NumProj >= 1)) && Ctrl
trigger1 = Random <= ifelse (StateType = A, 100, 500)

;---------------------------------------------------------------------------
;회피
[State -1]
type = ChangeState
value = 810
triggerall = Var(7) && StateType != A && Ctrl
trigger1 = (Statetype != A && P2BodyDist X <= 40 && (P2MoveType = A || Enemy, NumProj >= 1)) && Random <= 400

;---------------------------------------------------------------------------
;공중 낙법
[State -1]
type = ChangeState
value = 5210
triggerall = Var(7) && Alive && CanRecover && Vel Y > -1 && random <= 990
trigger1 = StateNo = 5050

;---------------------------------------------------------------------------
;지상 낙법
[State -1]
type = ChangeState
value = 5200
triggerall = Var(7) && Alive && CanRecover && Vel Y > 0 && Pos Y >= -20 && random <= 990
trigger1 = StateNo = 5050

;---------------------------------------------------------------------------
;대시
[State -1]
type = ChangeState
value = 100
triggerall = Var(7) && (StateType = S && MoveType != H) && (EnemyNear, StateType != A && EnemyNear, MoveType != A) && StateNo != 100
trigger1 = (P2BodyDist X = [120,400]) && Ctrl && Random >= 950

;---------------------------------------------------------------------------
;백 대시
[State -1]
type = ChangeState
value = 105
triggerall = Var(7) && Statetype != A && BackEdgeBodyDist >= 40
trigger1 = EnemyNear, StateNo = 5120 && (P2BodyDist X = [-10,40]) && Ctrl

;---------------------------------------------------------------------------
;상단 공격
[State -1, Stand Attack]
type = ChangeState
value = ifelse (P2BodyDist X >= 25, ifelse (Random <= 500, 200, 205), ifelse (Random <= 500, 201, 206))
triggerall = Var(7) && StateType != A && EnemyNear, StateType != L && Ctrl
trigger1 = (P2BodyDist X <= 30 && EnemyNear, StateType != A) && Random <= 400
trigger2 = (StateNo = 100 && P2BodyDist X <= 25 && Enemy, NumProj = 0) && Random <= 400
trigger3 = ((PrevStateNo = [600,699]) && P2BodyDist X <= 40) && Random <= 400
trigger4 = PrevStateNo = 805 && FrontEdgeBodyDist <= 100 && Random <= 500

;---------------------------------------------------------------------------
;하단 공격
[State -1, Crouching Attack]
type = ChangeState
value = ifelse (Random <= 500, 400, 403)
triggerall = Var(7) && StateType != A && (EnemyNear, StateType != L) && Ctrl
trigger1 = (P2BodyDist X <= 40 && EnemyNear, MoveType != A && EnemyNear, StateType = S) && Random <= 400
trigger2 = (StateNo = 100 && P2BodyDist X <= 25 && Enemy, NumProj = 0 && EnemyNear, StateType != A) && Random <= 400
trigger3 = ((PrevStateNo = [600,699]) && P2BodyDist X <= 40) && Random <= 400
trigger4 = PrevStateNo = 805 && FrontEdgeBodyDist <= 100 && Random >= 500

;---------------------------------------------------------------------------
;잡기
[State -1, Throw]
type = ChangeState
value = 800
triggerall = Var(7) && StateNo != 100 && Statetype != A && P2BodyDist X < 6 && (EnemyNear, StateType != L) && Ctrl
trigger1 = (PrevStateNo = 1000 || PrevStateNo = 1150 || EnemyNear, MoveType = A) && (EnemyNear, StateType != A) && (EnemyNear,MoveType != H) && Random <= 400

;---------------------------------------------------------------------------
;싸이코 크러셔 || 더블 니프레스
[State -1]
type = ChangeState
value = ifelse (Random <= 500, 1000, 1150)
triggerall = Var(7) && StateType != A && Ctrl && EnemyNear,StateType != L && Enemy, NumProj = 0
trigger1 = ((PrevStateNo = [100,105]) && P2BodyDist X = [0,200]) && Random <= 450
trigger2 = (StateNo = 0 && PrevStateNo = 5120 && P2BodyDist X = [0,150]) && Random <= 550
trigger3 = (StateNo = 100 && P2MoveType = A && P2BodyDist X = [10,50]) && Random <= 300
trigger4 = ((PrevStateNo = [100,105]) && (P2BodyDist X = [0,100]) && EnemyNear, MoveType = A) && Random <= 550
trigger5 = (PrevStateNo = 5120 && (EnemyNear, MoveType = A) && (P2BodyDist X = [10,100])) && Random <= 650
trigger6 = ((EnemyNear, StateType = A) && (P2BodyDist X = [0,50]) && (P2BodyDist Y = [-130,40])) && Random <= 400

;---------------------------------------------------------------------------
;허트 브레이크 디스페어
[State -1]
type = ChangeState
value = ifelse (EnemyNear, StateType = C, 3050, 3000)
triggerall = Power >= 1000
triggerall = Var(7) && StateType != A && (StateNo != [800, 805]) && (StateNo != [3000, 3050]) && Ctrl && EnemyNear, StateType != L
trigger1 = ((PrevStateNo = [100,105]) && (P2BodyDist X = [0,100]) && EnemyNear, MoveType = A) && Random <= 550
trigger2 = (PrevStateNo = 5120 && (EnemyNear, MoveType = A) && (P2BodyDist X = [10,100])) && Random <= 650
trigger3 = ((EnemyNear, StateType = A) && (P2BodyDist X = [0,50]) && (P2BodyDist Y = [-130,40])) && Random <= 400

;---------------------------------------------------------------------------
;인공지능 콤보
;---------------------------------------------------------------------------
;체인 콤보
[State -1]
type = ChangeState
value = 202
triggerall = Var(7) && StateType != A
trigger1 = (StateNo = 200 || StateNo = 201 || StateNo = 205 || StateNo = 206) && MoveContact

;---------------------------------------------------------------------------
;체인 콤보
[State -1]
type = ChangeState
value = ifelse (P2bodydist X >= 25, 207, 208)
triggerall = Var(7) && StateType != A
trigger1 = (StateNo = 200 || StateNo = 201 || StateNo = 205 || StateNo = 206) && MoveContact

;---------------------------------------------------------------------------
;체인 콤보
[State -1]
type = ChangeState
value = 204
triggerall = Var(7) && StateType != A && P2bodydist X <= 25
trigger1 = (StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 205 || StateNo = 206 || StateNo = 207 || StateNo = 208) && MoveContact

;---------------------------------------------------------------------------
;체인 콤보
[State -1]
type = ChangeState
value = 210
triggerall = Var(7) && StateType != A && P2bodydist X <= 25
trigger1 = (StateNo = 200 || StateNo = 201 || StateNo = 202 || StateNo = 205 || StateNo = 206 || StateNo = 207 || StateNo = 208) && MoveContact

;---------------------------------------------------------------------------
;싸이코 크러셔 || 더블 니프레스 || 싸이코 임팩트 || 싸이코 배니시
[State -1]
type = ChangeState
value = ifelse (Random <= 250, 1100, ifelse ((Random = [251, 500]), 1000, ifelse ((Random = [501, 750]), 1050, 1150)))
triggerall = Var(7) && StateType != A
trigger1 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210) && MoveContact
trigger2 = (StateNo = [400,404]) && MoveContact

;---------------------------------------------------------------------------
;허트 브레이크 디스페어
[State -1]
type = ChangeState
value = ifelse (Random <= 500, 3000, 3050)
triggerall = Power >= 1000
triggerall = Var(7) && StateType != A && (StateNo != [800, 805]) && (StateNo != [3000, 3005]) && (EnemyNear, StateType != L) && Random <= 500
trigger1 = (EnemyNear, StateType = A) && (P2BodyDist X = [0, 100]) && P2BodyDist Y >= -60 && Ctrl
trigger2 = (StateNo = [1000,1100]) && MoveContact && P2BodyDist X > 0 && Random <= 400
trigger3 = ((StateNo = 1150 || StateNo = 3050) && StateType != A) && MoveContact && P2BodyDist X > 0 && Random <= 400
trigger4 = (StateNo = 201 || StateNo = 202 || StateNo = 204 || StateNo = 206 || StateNo = 208 || StateNo = 210) && MoveContact
trigger5 = (StateNo = [400,404]) && MoveContact

;---------------------------------------------------------------------------