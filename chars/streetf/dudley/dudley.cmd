;더들리 커맨드 설정 파일
;04년 11월 9일부터 가고일이 작성

;--------------------------------------------------------------------------
;기본 값 설정부
;--------------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;--------------------------------------------------------------------------
;슈퍼 아츠
;--------------------------------------------------------------------------
[Command]
name = "rocket"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "rocket"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "rocket"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "rocket"
command = ~D, F, D, F, a
time = 20

[Command]
name = "rocket"
command = ~D, F, D, F, b
time = 20

[Command]
name = "rocket"
command = ~D, F, D, F, c
time = 20

[Command]
name = "thunder"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "thunder"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "thunder"
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "thunder"
command = ~D, F, D, F, x
time = 20

[Command]
name = "thunder"
command = ~D, F, D, F, y
time = 20

[Command]
name = "thunder"
command = ~D, F, D, F, z
time = 20

[Command]
name = "screw1"
command = ~D, DB, B, D, DB, B, x
time = 25

[Command]
name = "screw2"
command = ~D, DB, B, D, DB, B, y
time = 25

[Command]
name = "screw3"
command = ~D, DB, B, D, DB, B, z
time = 25

[Command]
name = "screw1"
command = ~D, B, D, B, x
time = 25

[Command]
name = "screw2"
command = ~D, B, D, B, y
time = 25

[Command]
name = "screw3"
command = ~D, B, D, B, z
time = 25

[Command]
name = "heavyd"
command = ~D, F, D, F, s
time = 25

[Command]
name = "bison"
command = ~D, B, D, B, s
time = 25

;--------------------------------------------------------------------------
;슈퍼 무브
;--------------------------------------------------------------------------
[Command]
name = "jet_ex"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "jet_ex"
command = ~F, D, DF, x+z
time = 20

[Command]
name = "jet_ex"
command = ~F, D, DF, y+z
time = 20

[Command]
name = "jet1"
command = ~F, D, DF, x
time = 20

[Command]
name = "jet2"
command = ~F, D, DF, y
time = 20

[Command]
name = "jet3"
command = ~F, D, DF, z
time = 20

[Command]
name = "machine_ex"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "machine_ex"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "machine_ex"
command = ~B, D, F, y+z
time = 20

[Command]
name = "machine1"
command = ~B, D, F, x
time = 20

[Command]
name = "machine2"
command = ~B, D, F, y
time = 20

[Command]
name = "machine3"
command = ~B, D, F, z
time = 20

[Command]
name = "cross_ex"
command = ~F, D, B, x+y
time = 20

[Command]
name = "cross_ex"
command = ~F, D, B, x+z
time = 20

[Command]
name = "cross_ex"
command = ~F, D, B, y+z
time = 20

[Command]
name = "cross1"
command = ~F, D, B, x
time = 20

[Command]
name = "cross2"
command = ~F, D, B, y
time = 20

[Command]
name = "cross3"
command = ~F, D, B, z
time = 20

[Command]
name = "ducking1"
command = ~B, D, F, a
time = 20

[Command]
name = "ducking2"
command = ~B, D, F, b
time = 20

[Command]
name = "ducking3"
command = ~B, D, F, c
time = 20

[Command]
name = "short_ex"
command = ~F, D, B, a+b
time = 20

[Command]
name = "short_ex"
command = ~F, D, B, a+c
time = 20

[Command]
name = "short_ex"
command = ~F, D, B, b+c
time = 20

[Command]
name = "short1"
command = ~F, D, B, a
time = 20

[Command]
name = "short2"
command = ~F, D, B, b
time = 20

[Command]
name = "short3"
command = ~F, D, B, c
time = 20

[Command]
name = "shadow"
command = ~D, D, x
time = 15

[Command]
name = "shadow"
command = ~D, D, y
time = 15

[Command]
name = "shadow"
command = ~D, D, z
time = 15

;--------------------------------------------------------------------------
;두번 입력
;--------------------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "Longjump"
command = D, $U
time = 18

;--------------------------------------------------------------------------
;2/3버튼 조합
;--------------------------------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "grab"
command = a+x
time = 1

[Command]
name = "leap"
command = b+y
time = 1

[Command]
name = "personal"
command = c+z
time = 1

;--------------------------------------------------------------------------
;방향 + 버튼
;--------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;--------------------------------------------------------------------------
;싱글 버튼
;--------------------------------------------------------------------------
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
name = "fwd"
command = F
time = 1

[Command]
name = "down"
command = D
time = 1

;--------------------------------------------------------------------------
;방향 고정
;--------------------------------------------------------------------------
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
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
command = /$z
time = 1

;--------------------------------------------------------------------------
;스테이트 기입부
;--------------------------------------------------------------------------
[Statedef -1]
;--------------------------------------------------------------------------
;기술 강도 구분
;---------------------------------------------------------------------------
[State -1, Move Power Set]
type = VarSet
trigger1 = (Ctrl || MoveContact) && (Command = "screw1" || Command = "screw2" || Command = "screw3")
var(2) = Ifelse(Command = "screw2", 1, Ifelse (Command = "screw3", 2, 0))

[State -1, Move Power Set]
type = VarSet
triggerall = Ctrl || MoveContact
trigger1 = Command = "jet1" || Command = "jet2" || Command = "jet3" || Command = "machine1" || Command = "machine2" || Command = "machine3" || Command = "cross1"  || Command = "cross2"  || Command = "cross3"
trigger2 = Command = "ducking1" || Command = "ducking2" || Command = "ducking3" || Command = "short1"  || Command = "short2"  || Command = "short3"
var(2) = Ifelse(Command = "jet1" || Command = "machine1" || Command = "cross1" || Command = "ducking1" || Command = "short1",0,Ifelse(Command = "jet2" || Command = "machine2" || Command = "cross2" || Command = "ducking2" || Command = "short2",1,2))

[State -1, Move Power Set]
type = VarSet
trigger1 = !Var(8) && (Ctrl || MoveContact) && (Command = "jet_ex" || Command = "machine_ex" || Command = "cross_ex" || Command = "short_ex") && Power >= 500
var(2) = 3

;===========================================================================
;모드 변환
[State -1, Mode Change]
type = ChangeState
value = 850
triggerall = Power >= 1000 && (Command = "heavyd" || Command = "bison")
trigger1 = StateType != A && Ctrl
trigger2 = ((StateNo = [200,203]) || StateNo = 205 || StateNo = 400 || StateNo = 401 || StateNo = 403 || StateNo = 300  || StateNo = 302 || StateNo = 304) && MoveContact

;===========================================================================
;슈퍼 아츠
;---------------------------------------------------------------------------
;코크 스크류 블로우 / 로켓 어퍼 / 롤링 썬더
[State -1, Cork Screw Blow]
type = ChangeState
value = 3000 + (Command = "rocket")*50 + (Command = "thunder")*100
triggerall = Power >= 1000 && (Command = "screw1" || Command = "screw2" || Command = "screw3" || Command = "rocket" || Command = "thunder")
trigger1 = StateType != A && Ctrl
trigger2 = ((StateNo = [200,203]) || StateNo = 205 || StateNo = 400 || StateNo = 401 || StateNo = 403 || StateNo = 300  || StateNo = 302 || StateNo = 304) && MoveContact
trigger3 = StateType != A && Var(2) != 3 && (StateNo = 1050 || StateNo = 1150 || StateNo = 1200) && MoveContact

;===========================================================================
;슈퍼 무브
;---------------------------------------------------------------------------
;더킹 / 숏 스윙 블로우
[State -1, Ducking]
type = ChangeState
value = 1150 + (Command = "short1" || Command = "short2" || Command = "short3" || (Command = "short_ex" && Power >= 500))*50
triggerall = !Var(8) && ((StateType != A && Ctrl) || ((StateNo = 200 || StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 400 || StateNo = 401 || StateNo = 403 || StateNo = 300 || StateNo = 304) && MoveContact))
trigger1 = Command = "ducking1" || Command = "ducking2" || Command = "ducking3"
trigger2 = Command = "short1" || Command = "short2" || Command = "short3" || (Command = "short_ex" && Power >= 500)

;---------------------------------------------------------------------------
;머신건 블로우 / 젯트 어퍼 / 크로스 카운터
[State -1, MachineGun Blow]
type = ChangeState
value = 1000 + (Command = "jet1" || Command = "jet2" || Command = "jet3" || (Command = "jet_ex" && Power >= 500))*50  + (Command = "cross1" || Command = "cross2" || Command = "cross3" || (Command = "cross_ex" && Power >= 500))*100 + Var(8)
triggerall = !Var(8) && ((StateType != A && Ctrl) || ((StateNo = 200 || StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 400 || StateNo = 401 || StateNo = 403 || StateNo = 300 || StateNo = 304) && MoveContact))
trigger1 = Command = "machine1" || Command = "machine2" || Command = "machine3" || (Command = "machine_ex" && Power >= 500)
trigger2 = Command = "jet1" || Command = "jet2" || Command = "jet3" || (Command = "jet_ex" && Power >= 500)
trigger3 = Command = "cross1" || Command = "cross2" || Command = "cross3" || (Command = "cross_ex" && Power >= 500)
;===========================================================================
;헤비D 모드
;---------------------------------------------------------------------------
;더킹 / 숏 스윙 블로우
[State -1, Ducking]
type = ChangeState
value = 1700 + (Command = "short1" || Command = "short2" || Command = "short3")*50
triggerall = Var(8) = 500 && ((StateType != A && Ctrl) || ((StateNo = 200 || StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 400 || StateNo = 401 || StateNo = 403 || StateNo = 300 || StateNo = 304) && MoveContact))
trigger1 = Command = "ducking1" || Command = "ducking2" || Command = "ducking3" || Command = "short1" || Command = "short2" || Command = "short3"

;---------------------------------------------------------------------------
;R.S.D / 댄싱 비트 / 더킹 컴비네이션 / 셰도우
[State -1, R.S.D]
type = ChangeState
value = 1500 + (Command = "jet1" || Command = "jet2" || Command = "jet3")*50  + (Command = "cross1" || Command = "cross2" || Command = "cross3")*100 + (Command = "shadow")*150
triggerall = Var(8) = 500 && ((StateType != A && Ctrl) || ((StateNo = 200 || StateNo = 201 || StateNo = 203 || StateNo = 205 || StateNo = 400 || StateNo = 401 || StateNo = 403 || StateNo = 300 || StateNo = 304) && MoveContact))
trigger1 = Command = "machine1" || Command = "machine2" || Command = "machine3" || Command = "jet1" || Command = "jet2" || Command = "jet3" || Command = "cross1" || Command = "cross2" || Command = "cross3" || Command = "shadow"

;===========================================================================
;기본 동작
;---------------------------------------------------------------------------
;전방 대시
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl

;---------------------------------------------------------------------------
;후방 대시
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && StateType = S && Ctrl

;---------------------------------------------------------------------------
;다이너마이트 드로우 & 레버 크래시
[State -1, Throw]
type = ChangeState
value = 800
trigger1 = Command = "grab" && StateType = S && Ctrl

;---------------------------------------------------------------------------
;리프 어택
[State -1, Leap Attack]
type = ChangeState
value = 820
trigger1 = Command = "leap" && StateType != A && Ctrl

;---------------------------------------------------------------------------
;퍼스널 액션
[State -1, Personal Action]
type = ChangeState
value = 195
trigger1 = Command = "personal" && StateType != A && Ctrl

;===========================================================================
;기본 공격
;---------------------------------------------------------------------------
;특수기
[State -1, Stand Special Punch]
type = ChangeState
value = Ifelse (Command = "x", 300, Ifelse (Command = "y", 301, Ifelse (Command = "z", 302, Ifelse (Command = "b", 303, 304))))
triggerall = Command = "holdfwd" && (Command = "b" || Command = "c" || Command = "x" || Command = "y" || Command = "z")
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;상단 약펀치
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Command = "x" && Command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = StateNo = 200 && (AnimElemTime(4) >= 0 || MoveContact)

;---------------------------------------------------------------------------
;상단 중펀치
[State -1, Stand Medium Punch]
type = ChangeState
value = 201
triggerall = Command = "y" && Command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = (StateNo = 200 || (StateNo = 204 && PrevStateNo = 203) || StateNo = 300) && MoveContact

;---------------------------------------------------------------------------
;상단 강펀치
[State -1, Stand Strong Punch]
type = ChangeState
value = 202
triggerall = Command = "z" && Command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = StateNo = 204 && ((PrevStateNo = 201 && !Var(7)) || PrevStateNo = 303) && MoveContact

;---------------------------------------------------------------------------
;상단 약킥
[State -1, Stand Light Kick]
type = ChangeState
value = 203
triggerall = Command = "a" && Command != "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------------
;상단 중킥
[State -1, Stand Medium Kick]
type = ChangeState
value = 204
triggerall = Command = "b"
trigger1 = Command != "holddown" && StateType = S && Ctrl
trigger2 = ((StateNo = 201 && !(PrevStateNo = 204 || PrevStateNo = 300)) || StateNo = 203 || StateNo = 303 || StateNo = 304 || StateNo = 403) && MoveContact

;---------------------------------------------------------------------------
;상단 강킥
[State -1, Stand Strong Kick]
type = ChangeState
value = 205
triggerall = Command = "c" && Command != "holddown"
trigger1 = StateType = S && Ctrl
trigger2 = StateNo = 204 && (PrevStateNo != [200,999]) && MoveContact

;---------------------------------------------------------------------------
;하단 기본기
[State -1, Crouching Attack]
type = ChangeState
value = Ifelse (Command = "x", 400, Ifelse (Command = "y", 401, Ifelse (Command = "z", 402, Ifelse (Command = "a", 403, Ifelse (Command = "b", 404, 405)))))
triggerall = (Command = "x" || Command = "y" || Command = "z" || Command = "a" || Command = "b" || Command = "c") && Command = "holddown"
trigger1 = StateType = C && Ctrl

;---------------------------------------------------------------------------
;하단 타겟 콤보
[State -1, Crouching Attack]
type = ChangeState
value = Ifelse (StateNo = 403 && Command = "y", 401, 402)
trigger1 = ((Command = "y" || Command = "z") && Command = "holddown") && (((StateNo = 201 && PrevStateNo = 204) || StateNo = 205 || (StateNo = 401 && prevStateNo = 403) || StateNo = 403) && MoveContact)
trigger2 = Command = "z" && ((StateNo = 201 || StateNo = 205) && PrevStateNo = 204) && MoveContact

;---------------------------------------------------------------------------
;공중 기본기
[State -1, Jump Attack]
type = ChangeState
value = Ifelse (Command = "x", 600, Ifelse (Command = "y", 601, Ifelse (Command = "z", 602, Ifelse (Command = "a", 603, Ifelse (Command = "b", 604, 605)))))
triggerall = Command = "x" || Command = "y" || Command = "z" || Command = "a" || Command = "b" || Command = "c"
trigger1 = StateType = A && Ctrl

;---------------------------------------------------------------------------
