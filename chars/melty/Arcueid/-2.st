; Arcueid Brunestud - cns file No.2
;===========================================================================
; 変数一覧表
;===========================================================================
;---------------------------------------------------------------------------
; Var(0)  = ＡＩ発動フラグ
; Var(1)  = ＡＩサポートフラグ
; Var(2)  = キャラ判断
; Var(3)  = ランダム声
; Var(4)  = ヴァイスカッツェ・移動距離
; ----------
; Var(5)  = 対シエル・クロスカウンター用
; ----------
; Var(6)  = モードチェンジ
; Var(7)  = ジャンプアニメ判断用
; Var(8)  = ダッシュ判断用
; Var(9)  = アルトネーゲル・コマンド処理（連続入力用）
; Var(10) = メテオスマッシュ・ステート判断処理（連続入力用）
; Var(11) = マーヴルファンタズム・追加入力用
; ----------------------------
; Var(44) = 空中ジャンプ＆空中ダッシュ制御用
; Var(45) = 弱いＡＩフラグ
; Var(46) = ヒットスパークランダム表示（本体で設定・ヘルパーが判断）
; Var(47) = 上段避け用
; Var(48) = 下段避け用
; Var(49)-(59) = メルブラチェーンコンボシステム
; ---------------------------------------------------------
; Fvar(33) = クロスカウンター演出ズーム
; FVar(34) = メテオスパーク演出ズーム（メテオスマッシュ・グリュンデッヒ）
; FVar(35) = カットイン演出ズーム（ＥＸ技）
; FVar(36) = カットイン演出ズーム（マーヴルファンタズム）
; FVar(37)-(39) = シールド演出ズーム
;
;===========================================================================
;---------------------------------------------------------------------------
[Statedef -2]
;===========================================================================
;---------------------------------------------------------------------------
;デバッグ表示
[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI=%d, Mode=%d, Meteor=%d, AirJump=%d, VS-Ciel=%d \n"
params = var(0),var(6),var(10),var(44),var(5)

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "Distance X=%d,Y=%d, Distance-2 X=%d,Y=%d"
params = floor(P2Dist X),floor(P2Dist Y),floor(P2BodyDist X),floor(P2BodyDist Y)

;---------------------------------------------------------------------------
;攻撃を食らったら動作中の全残像を消す
[State -2, Zanzou]
type = AfterImageTime
trigger1 = MoveType = H
Time = 0

;---------------------------------------------------------------------------
;通常技エフェクト消し
[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
ID = 200

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
ID = 210

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
ID = 211

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
ID = 220

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
ID = 400

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
ID = 401

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
ID = 420

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateType != A
ID = 600

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateType != A
ID = 610

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateType != A
ID = 611

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateType != A
ID = 620

[State -2, Remove]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateType != A
ID = 621

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; キャンセル移動技
;---------------------------------------------------------------------------
[State -2, Cancel Jump]
type = ChangeState
triggerall = ((StateType != A) && (HitdefAttr = SC, NA) && (MoveContact))
trigger1 = command = "holdup"
value = 40

[State -2, Air Cancel Jump]
type = ChangeState
triggerall = ((var(59) = 0) && (StateType = A) && (HitdefAttr = A, NA) && (MoveContact))
trigger1 = command = "holdup"
value = 910 ;45

[State -2, Cancel Back Dash]
type = ChangeState
triggerall = ((StateType != A) && (HitdefAttr = SC, NA) && (MoveContact))
trigger1 = command = "BB"
value = 105

[State -2, Cancel Air Dash]
type = ChangeState
triggerall = ((var(58) = 0) && (StateType = A) && (HitdefAttr = A, NA) && (MoveContact))
trigger1 = command = "FF"
value = 102

[State -2, Cancel Air Back Dash]
type = ChangeState
triggerall = ((StateType = A) && (HitdefAttr = A, NA) && (MoveContact))
trigger1 = command = "BB"
value = 108

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 避け技
;---------------------------------------------------------------------------
;（nanaさん応用させてもらうぜ）
[State -2, Stand Dodge]
type = ChangeState
triggerall = ((var(47) = [1,2]) && (P2BodyDist X < 30))
triggerall = EnemyNear,StateType = S
trigger1 = ((StateNo = 120) && (StateType = S))
trigger2 = StateNo = 130
value = 710

[State -2, Crouch Dodge]
type = ChangeState
triggerall = ((var(48) = [1,2]) && (P2BodyDist X < 30))
triggerall = EnemyNear,StateType = C
triggerall = Enemy,MoveType = A
trigger1 = ((StateNo = 10) && (StateType = C))
trigger2 = StateNo = 11
value = 711

;---------------------------------------------------------------------------
;相殺
;[State -2, Sousai]
;type = ReversalDef
;trigger1 = ((StateNo = 200) && (AnimElem = 4))
;trigger2 = ((StateNo = 210) && (AnimElem = 8)) || ((StateNo = 210) && (AnimElem = 9))
;trigger3 = ((StateNo = 211) && (AnimElem = 10))
;trigger4 = ((StateNo = 220) && (AnimElem = 7))
;trigger5 = ((StateNo = 222) && (AnimElem = 2))
;trigger6 = ((StateNo = 400) && (AnimElem = 4))
;trigger7 = ((StateNo = 401) && (AnimElem = 5))
;trigger8 = ((StateNo = 410) && (AnimElem = 7))
;trigger9 = ((StateNo = 420) && (AnimElem = 7))
;trigger10= ((StateNo = 600) && (AnimElem = 4))
;trigger11= ((StateNo = 610) && (AnimElem = 3)) || ((StateNo = 610) && (AnimElem = 7))
;trigger12= ((StateNo = 611) && (AnimElem = 3))
;trigger13= ((StateNo = 620) && (AnimElem = 4))
;trigger14= ((StateNo = 621) && (AnimElem = 5))
;attr = S, NT
;reversal.attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;sparkxy = -5,-97
;sparkno = s3119
;hitonce = 1
;pausetime = 20,20 ;100 
;hitsound = s1,ifelse(Random<500,4,5)
;
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; ダメージ声
;---------------------------------------------------------------------------
[State -2, Arcueid Damage Voice]
type = PlaySnd
triggerall = var(3) = [1,20]
triggerall = RoundState = 2
trigger1 = ((stateno = 5000) && (MoveType = H) && (time = 2))
trigger2 = ((stateno = 5010) && (MoveType = H) && (time = 2))
trigger3 = ((stateno = 5020) && (MoveType = H) && (time = 2))
trigger4 = ((stateno = 5070) && (MoveType = H) && (time = 2))
value = s4,5
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid Damage Voice]
type = PlaySnd
triggerall = var(3) = [21,40]
triggerall = RoundState = 2
trigger1 = ((stateno = 5000) && (MoveType = H) && (time = 2))
trigger2 = ((stateno = 5010) && (MoveType = H) && (time = 2))
trigger3 = ((stateno = 5020) && (MoveType = H) && (time = 2))
trigger4 = ((stateno = 5070) && (MoveType = H) && (time = 2))
value = s4,6
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid Damage Voice]
type = PlaySnd
triggerall = var(3) = [41,60]
triggerall = RoundState = 2
trigger1 = ((stateno = 5000) && (MoveType = H) && (time = 2))
trigger2 = ((stateno = 5010) && (MoveType = H) && (time = 2))
trigger3 = ((stateno = 5020) && (MoveType = H) && (time = 2))
trigger4 = ((stateno = 5070) && (MoveType = H) && (time = 2))
value = s4,7
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid Damage Voice]
type = PlaySnd
triggerall = var(3) = [61,80]
triggerall = RoundState = 2
trigger1 = ((stateno = 5000) && (MoveType = H) && (time = 2))
trigger2 = ((stateno = 5010) && (MoveType = H) && (time = 2))
trigger3 = ((stateno = 5020) && (MoveType = H) && (time = 2))
trigger4 = ((stateno = 5070) && (MoveType = H) && (time = 2))
value = s4,8
ignorehitpause = 1
Persistent = 0

;---------------------------------------------------------------------------
;起き上がり
[State -2, Arcueid GetUp Voice]
type = PlaySnd
triggerall = var(3) = [1,20]
triggerall = RoundState = 2
trigger1 = ((stateno = 5120) && (time = 2))
value = s4,9
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid GetUp Voice]
type = PlaySnd
triggerall = var(3) = [21,40]
triggerall = RoundState = 2
trigger1 = ((stateno = 5120) && (time = 2))
value = s5,0
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid GetUp Voice]
type = PlaySnd
triggerall = var(3) = [41,60]
triggerall = RoundState = 2
trigger1 = ((stateno = 5120) && (time = 2))
value = s5,1
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid GetUp Voice]
type = PlaySnd
triggerall = var(3) = [61,80]
triggerall = RoundState = 2
trigger1 = ((stateno = 5120) && (time = 2))
value = s5,2
ignorehitpause = 1
Persistent = 0

;---------------------------------------------------------------------------
;受け身
[State -2, Arcueid Recovery Voice]
type = PlaySnd
triggerall = var(3) = [1,25]
triggerall = RoundState = 2
trigger1 = ((stateno = 5201) && (time = 2))
trigger2 = ((stateno = 5210) && (time = 2))
value = s5,3
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid Recovery Voice]
type = PlaySnd
triggerall = var(3) = [26,50]
triggerall = RoundState = 2
trigger1 = ((stateno = 5201) && (time = 2))
trigger2 = ((stateno = 5210) && (time = 2))
value = s5,4
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid Recovery Voice]
type = PlaySnd
triggerall = var(3) = [51,75]
triggerall = RoundState = 2
trigger1 = ((stateno = 5201) && (time = 2))
trigger2 = ((stateno = 5210) && (time = 2))
value = s5,5
ignorehitpause = 1
Persistent = 0

;---------------------------------------------------------------------------
;ガード
[State -2, Arcueid Guard Voice]
type = PlaySnd
triggerall = var(3) = [1,10]
triggerall = RoundState = 2
trigger1 = ((stateno = 150) && (time = 1))
trigger2 = ((stateno = 152) && (time = 1))
trigger3 = ((stateno = 154) && (time = 1))
value = s5,9
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid Guard Voice]
type = PlaySnd
triggerall = var(3) = [31,40]
triggerall = RoundState = 2
trigger1 = ((stateno = 150) && (time = 1))
trigger2 = ((stateno = 152) && (time = 1))
trigger3 = ((stateno = 154) && (time = 1))
value = s6,0
ignorehitpause = 1
Persistent = 0

[State -2, Arcueid Guard Voice]
type = PlaySnd
triggerall = var(3) = [91,100]
triggerall = RoundState = 2
trigger1 = ((stateno = 150) && (time = 1))
trigger2 = ((stateno = 152) && (time = 1))
trigger3 = ((stateno = 154) && (time = 1))
value = s6,1
ignorehitpause = 1
Persistent = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 変数セットアップ
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;モードチェンジ
[State -2, Normal Mode]
type = VarSet
trigger1 = PalNo = 1
trigger2 = PalNo = 2
trigger3 = PalNo = 3
trigger4 = PalNo = 4
trigger5 = PalNo = 5
trigger6 = PalNo = 6
trigger7 = PalNo < 1
v = 6
value = 0
IgnoreHitPause = 1
Persistent = 1

[State -2, Arrange Mode]
type = VarSet
trigger1 = PalNo = 7
trigger2 = PalNo = 8
trigger3 = PalNo = 9
trigger4 = PalNo = 10
trigger5 = PalNo = 11
trigger6 = PalNo = 12
trigger7 = PalNo > 12
v = 6
value = 1
IgnoreHitPause = 1
Persistent = 1

;---------------------------------------------------------------------------
;メルブラチェーンコンボシステム
;（すみさん・まことさん・Toshiさん・nanaさんのを参考にさせてもらってます）

[State -2, L.Attack]
type = VarSet
trigger1 = StateNo = 200
v = 49
value = 1
IgnoreHitPause = 1

[State -2, M.Attack]
type = VarSet
trigger1 = StateNo = 210
v = 50
value = 1
IgnoreHitPause = 1

[State -2, H.Attack]
type = VarSet
trigger1 = StateNo = 220
v = 51
value = 1
IgnoreHitPause = 1

;***********************************
[State -2, Crouch L.Attack]
type = VarSet
trigger1 = StateNo = 400
v = 52
value = 1
IgnoreHitPause = 1

[State -2, Crouch M.Attack]
type = VarSet
trigger1 = StateNo = 410
v = 53
value = 1
IgnoreHitPause = 1

[State -2, Crouch H.Attack]
type = VarSet
trigger1 = StateNo = 420
v = 54
value = 1
IgnoreHitPause = 1

;***********************************
[State -2, Air L.Attack]
type = VarSet
trigger1 = StateNo = 600
v = 55
value = 1
IgnoreHitPause = 1

[State -2, Air M.Attack]
type = VarSet
trigger1 = ((StateNo = 610) || (StateNo = 611))
v = 56
value = 1
IgnoreHitPause = 1

[State -2, Air H.Attack]
type = VarSet
trigger1 = StateNo = 620
v = 57
value = 1
IgnoreHitPause = 1

;***********************************
[State -2, Air Dash]
type = VarSet
trigger1 = StateNo = 102
v = 58
value = 1
IgnoreHitPause = 1

[State -2, Air jump]
type = VarSet
trigger1 = ((StateNo = 45) || (StateNo = 910))
v = 59
value = 1
IgnoreHitPause = 1

;***********************************
[State -2, Flag Reset]
type = VarRangeSet
trigger1 = MoveType != A
trigger2 = StateType = A
trigger3 = StateNo = 105
trigger4 = StateNo >= 1000
first = 49
last = 54
value = 0
IgnoreHitPause = 1

[State -2, Air Flag Reset-1]
type = VarRangeSet
trigger1 = MoveType != A
trigger2 = StateType != A
trigger3 = StateNo = 52
trigger4 = StateNo = 108
trigger5 = StateNo >= 1000
first = 55
last = 57
value = 0
IgnoreHitPause = 1

[State -2, Air Flag Reset-2]
type = VarRangeSet
trigger1 = StateType != A
trigger2 = StateNo = 52
trigger3 = StateNo = 108
trigger4 = StateNo >= 1000
first = 58
last = 59
value = 0
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;ヴァイスカッツェ用フラグ

[State -2, Osoi!]
type = VarSet
trigger1 = command = "osoi_low"
v = 4
value = 1
IgnoreHitPause = 1
Persistent = 1

[State -2, Osoi!]
type = VarSet
trigger1 = command = "osoi_middle"
v = 4
value = 2
IgnoreHitPause = 1
Persistent = 1

[State -2, Osoi!]
type = VarSet
trigger1 = command = "osoi_high"
v = 4
value = 3
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State -2, Osoi!]
type = VarSet
trigger1 = command = "osoi2_low"
v = 4
value = 4
IgnoreHitPause = 1
Persistent = 1

[State -2, Osoi!]
type = VarSet
trigger1 = command = "osoi2_middle"
v = 4
value = 5
IgnoreHitPause = 1
Persistent = 1

[State -2, Osoi!]
type = VarSet
trigger1 = command = "osoi2_high"
v = 4
value = 6
IgnoreHitPause = 1
Persistent = 1

;---------------------------------------------------------------------------
;ジャンプのフラグ（着地アニメを判断させるために）

[State -2, Jump Flag Reset]
type = VarSet
trigger1 = StateNo != 40
trigger2 = StateNo != 45
trigger3 = StateNo != 50
trigger4 = StateNo != 51
trigger5 = StateNo != 52
trigger6 = StateNo != 102
trigger7 = StateNo != 108
v = 7
value = 0
IgnoreHitPause = 1
Persistent = 1

[State -2, Front Jump]
type = VarSet
trigger1 = Anim = 45
v = 7
value = 1
IgnoreHitPause = 1
Persistent = 1

[State -2, Back Jump]
type = VarSet
trigger1 = Anim = 46
v = 7
value = 2
IgnoreHitPause = 1
Persistent = 1

[State -2, AirDash]
type = VarSet
trigger1 = Anim = 110
v = 7
value = 3
IgnoreHitPause = 1
Persistent = 1

[State -2, AirBackDash]
type = VarSet
trigger1 = Anim = 115
v = 7
value = 4
IgnoreHitPause = 1
Persistent = 1

;---------------------------------------------------------------------------
;ダッシュ判断用

[State -2, Dash Flag Reset]
type = VarSet
trigger1 = StateNo != 45
trigger2 = StateNo != 50
trigger3 = StateNo != 100
trigger4 = StateNo != 101
trigger5 = StateNo != 102
trigger6 = StateNo != 105
trigger7 = StateNo != 106
trigger8 = StateNo != 107
trigger9 = StateNo != 108
v = 8
value = 0
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State -2, Dash]
type = VarSet
trigger1 = StateNo = 100
trigger2 = StateNo = 101
v = 8
value = 1
IgnoreHitPause = 1
Persistent = 1

[State -2, Air Dash]
type = VarSet
trigger1 = StateNo = 102
v = 8
value = 2
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State -2, Back Dash]
type = VarSet
trigger1 = StateNo = 105
trigger2 = StateNo = 106
trigger3 = StateNo = 107
v = 8
value = 3
IgnoreHitPause = 1
Persistent = 1

[State -2, Air Back Dash]
type = VarSet
trigger1 = StateNo = 108
v = 8
value = 4
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State -2, AirJump-System-1]
type = VarSet
triggerall = ((PrevStateNo = 102) || (PrevStateNo = 108))
trigger1 = StateNo = 45
v = 8
value = 5
IgnoreHitPause = 1
Persistent = 1

[State -2, AirJump-System-2]
type = VarSet
triggerall = var(8) = 5
trigger1 = ((PrevStateNo = 45) || (StateType = A))
v = 44
value = 1
IgnoreHitPause = 1
Persistent = 1

[State -2, AirJump-System-2]
type = VarSet
trigger1 = StateType != A
v = 44
value = 0
IgnoreHitPause = 1
Persistent = 1

;---------------------------------------------------------------------------
;避け技用フラグ
[State -2, Stand Dodge Reset]
type = VarSet
trigger1 = command != "holdback"
v = 47
value = 0

[State -2, Stand Dodge Flag]
type = VarAdd
trigger1 = command = "holdback"
v = 47
value = 1

;***********************************
[State -2, Crouch Dodge Reset]
type = VarSet
trigger1 = command != "holddown"
v = 48
value = 0

[State -2, Crouch Dodge Flag]
type = VarAdd
trigger1 = command = "holddown"
v = 48
value = 1

;---------------------------------------------------------------------------
;ヒットスパークランダム判断用
[State -2, HitSpark Random - Reset]
type = VarSet
trigger1 = RoundState != 2
v = 46
value = 0

[State -2, HitSpark Random]
type = VarRandom
triggerall = RoundState = 2
trigger1 = ((NumHelper(950) != 0) && (TimeMod = 2,0))
trigger2 = ((NumHelper(951) != 0) && (TimeMod = 2,0))
v = 46
range = 0,4
IgnoreHitPause = 1
Persistent = 0

;---------------------------------------------------------------------------
;ランダムで声を出すフラグ
[State -2, Random Voice]
type = VarRandom
trigger1 = TimeMod = 4,0
v = 3
range = 1,100
IgnoreHitPause = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;メテオスマッシュのフラグリセット
[State -2, Meteor Smash - Reset]
type = VarSet
trigger1 = StateNo != [3100,3119]
v = 10
value = 0
IgnoreHitPause = 1
Persistent = 1

;マーヴルファンタズムのフラグリセット
[State -2, Kuusou Gugenka - Reset]
type = VarSet
trigger1 = StateNo != 3502
v = 11
value = 0
IgnoreHitPause = 1
Persistent = 1

;クロスカウンターのフラグリセット
[State -2, Cross Counter - Reset]
type = VarSet
trigger1 = StateNo != [700,705]
v = 5
value = 0
IgnoreHitPause = 1
Persistent = 1

;アルトネーゲルのコマンドフラグリセット
[State -2, Urusai! - Reset]
type = VarSet
trigger1 = MoveType != A
v = 9
value = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;[State -2, ElemNo]
;type = VarSet
;trigger1 = 1
;v = 12
;value = ceil(AnimElemNo(0))
;IgnoreHitPause = 1
;Persistent = 1
;
;[State -2, PrevStateNo]
;type = VarSet
;trigger1 = 1
;v = 13
;value = ceil(PrevStateNo)
;IgnoreHitPause = 1
;Persistent = 1
