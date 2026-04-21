;====================
;通常時の基本攻撃関係
;====================

;******************
;立ち攻撃（通常時）
;******************

;----------
;立ち弱攻撃
;----------
[statedef 200];stateフォーマット
anim = 200    ;アニメーションナンバー
type = S      ;このstateのタイプ S:立ち C:しゃがみ A:空中
physics = S   ;vel（移動数値）が影響されるもののタイプ S:摩擦係数 A:重力 N:無影響
movetype = A  ;行動タイプ A:攻撃
ctrl = 0      ;コントロール 0:不可 1:可
velset = 0,0  ;移動数値 x,y

[State 200,0];行動その１
type = HitDef           ;攻撃設定
trigger1 = AnimElem = 1 ;条件１フレーム目（type = hitdef の場合のみ１フレーム以降）
trigger1 = var(1) = 0     ;条件var(1)が0ならば
attr = S,NA             ;立ち,通常攻撃
animtype = light        ;弱
damage = 25             ;ダメージ２５
guardflag = MA          ;立ちしゃがみ空中でのガード可能
pausetime = 3,9         ;HIT時の硬直時間　自分,相手
sparkxy = 0,-60
sparkno = 0
guard.sparkno = 40
hitsound   = 5,0        ;HIT音
guardsound = 6,0        ;ガード音
ground.type = Low       ;相手に当たる場所　low:下段 high:上段
ground.slidetime = 6    ;スライド時間
ground.hittime = 6      ;hitアニメ表示時間
ground.velocity = -2    ;相手の移動速度（地上HIT時）
air.velocity = -2,-2.5  ;同様（空中HIT時）

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1 
trigger1 = var(1) = 1
attr = S,NA            
animtype = light        
damage = 20             
guardflag = MA          
pausetime = 3,9
sparkno = 0         
sparkxy = 0,-60
sparkno = 0
guard.sparkno = 40     
hitsound   = 5,0        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2    
air.velocity = -2,-2

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1 
trigger1 = var(1) = 2
attr = S,NA            
animtype = light        
damage = 16             
guardflag = MA          
pausetime = 3,8         
sparkxy = 0,-60
sparkno = 0
guard.sparkno = 40 
hitsound   = 5,0        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2    
air.velocity = -2,-2

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1 
trigger1 = var(1) = 3
attr = S,NA            
animtype = light        
damage = 13             
guardflag = MA          
pausetime = 3,7         
sparkxy = 0,-60
sparkno = 0
guard.sparkno = 40   
hitsound   = 5,0        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1 
trigger1 = var(1) >= 4
attr = S,NA            
animtype = light        
damage = 10             
guardflag = MA          
pausetime = 3,6         
sparkxy = 0,-60
sparkno = 0
guard.sparkno = 40
hitsound   = 5,0        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2    
air.velocity = -2,0 

[state 200,1];行動その２
type = changestate      ;stateを変更
trigger1 = animtime = 0 ;アニメーション終了
value = 0               ;state変更場所
ctrl = 1                ;コントロールを１にする

;-----------------------
;立ち弱攻撃（ダッシュ時）
;-----------------------
[statedef 201];stateフォーマット
anim = 200    ;アニメーションナンバー
type = S      ;このstateのタイプ S:立ち C:しゃがみ A:空中
physics = S   ;vel（移動数値）が影響されるもののタイプ S:摩擦係数 A:重力 N:無影響
movetype = A  ;行動タイプ A:攻撃
ctrl = 0      ;コントロール 0:不可 1:可

[State 201,0];行動その１
type = HitDef           ;攻撃設定
trigger1 = AnimElem = 1 ;条件１フレーム目（type = hitdef の場合のみ１フレーム以降）
trigger1 = var(1) = 0     ;条件var(1)が0ならば
attr = S,NA             ;立ち,通常攻撃
animtype = light        ;弱
damage = 25             ;ダメージ２５
guardflag = MA          ;立ちしゃがみ空中でのガード可能
pausetime = 3,9         ;HIT時の硬直時間　自分,相手
sparkxy = 0,-60
sparkno = 0
guard.sparkno = 40
hitsound   = 5,0        ;HIT音
guardsound = 6,0        ;ガード音
ground.type = Low       ;相手に当たる場所　low:下段 high:上段
ground.slidetime = 6    ;スライド時間
ground.hittime = 6      ;hitアニメ表示時間
ground.velocity = -2    ;相手の移動速度（地上HIT時）
air.velocity = -2,-2.5  ;同様（空中HIT時）

[State 201,0]
type = HitDef           
trigger1 = AnimElem = 1 
trigger1 = var(1) = 1
attr = S,NA            
animtype = light        
damage = 20             
guardflag = MA          
pausetime = 3,9         
sparkxy = -10,-70       
hitsound   = 5,0        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 201,0]
type = HitDef           
trigger1 = AnimElem = 1 
trigger1 = var(1) = 2
attr = S,NA            
animtype = light        
damage = 16             
guardflag = MA          
pausetime = 3,9         
sparkxy = 0,-60
sparkno = 0
guard.sparkno = 40    
hitsound   = 5,0        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2    
air.velocity = -2,-2.3

[State 201,0]
type = HitDef           
trigger1 = AnimElem = 1 
trigger1 = var(1) = 3
attr = S,NA            
animtype = light        
damage = 13             
guardflag = MA          
pausetime = 3,9         
sparkxy = -10,-70       
hitsound   = 5,0        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 201,0]
type = HitDef           
trigger1 = AnimElem = 1 
trigger1 = var(1) >= 4
attr = S,NA            
animtype = light        
damage = 10             
guardflag = MA          
pausetime = 3,9         
sparkxy = 0,-60
sparkno = 0
guard.sparkno = 40   
hitsound   = 5,0        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2    
air.velocity = -2,-1.0 

[state 201,1];行動その２
type = changestate      ;stateを変更
trigger1 = animtime = 0 ;アニメーション終了
value = 0               ;state変更場所
ctrl = 1                ;コントロールを１にする

;-----------------------
;立ち中攻撃（ダッシュ時）
;-----------------------
[statedef 211]
anim = 210
type = S
physics = S
movetype = A
ctrl = 0

[State 211,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S, NA
animtype = medium
damage = 30
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-3

[State 211,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S, NA
animtype = medium
damage = 25
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.8

[State 211,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S, NA
animtype = medium
damage = 21
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[State 211,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S, NA
animtype = medium
damage = 18
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.8

[State 211,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 4
attr = S, NA
animtype = medium
damage = 16
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.5

[State 211,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) >= 5
attr = S, NA
animtype = medium
damage = 15
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,0

[state 211,1]
type = posadd         ;ポジション移動
trigger1 = time >= 10 ;0.6秒以降0.1秒置きに
x = 5                 ;移動数値（前方に５）

[state 211,2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------
;立ち中攻撃
;----------
[statedef 210]
anim = 210
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 210,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S, NA
animtype = medium
damage = 30
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-3

[State 210,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S, NA
animtype = medium
damage = 25
guardflag = MA
pausetime = 6,12
sparkxy = -25,-90
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.8

[State 210,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S, NA
animtype = medium
damage = 21
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[State 210,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S, NA
animtype = medium
damage = 18
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.8

[State 210,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 4
attr = S, NA
animtype = medium
damage = 16
guardflag = MA
pausetime = 6,12
sparkxy = 0,-90
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.5

[State 210,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) >= 5
attr = S, NA
animtype = medium
damage = 15
guardflag = MA
pausetime = 6,12
sparkxy = -25,-90
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,0

[state 210,1]
type = posadd         ;ポジション移動
trigger1 = time >= 10 ;0.6秒以降0.1秒置きに
x = 5                 ;移動数値（前方に５）

[state 210,2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------
;立ち前+中攻撃
;-------------
[statedef 220]
anim = 220
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 220,0]
type = HitDef
trigger1 = var(1) = 0
trigger1 = AnimElem = 1
attr = S, NA
animtype = medium
damage = 28
guardflag = MA
pausetime = 6,12
sparkxy = 0,-30
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[State 220,0]
type = HitDef
trigger1 = var(1) = 1
trigger1 = AnimElem = 1
attr = S, NA
animtype = medium
damage = 23
guardflag = MA
pausetime = 6,12
sparkxy = 0,-30
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.0

[State 220,0]
type = HitDef
trigger1 = var(1) = 2
trigger1 = AnimElem = 1
attr = S, NA
animtype = medium
damage = 19
guardflag = MA
pausetime = 6,12
sparkxy = 0,-30
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.5

[State 220,0]
type = HitDef
trigger1 = var(1) = 3
trigger1 = AnimElem = 1
attr = S, NA
animtype = medium
damage = 16
guardflag = MA
pausetime = 6,12
sparkxy = 0,-30
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.2

[State 220,0]
type = HitDef
trigger1 = var(1) = 4
trigger1 = AnimElem = 1
attr = S, NA
animtype = medium
damage = 15
guardflag = MA
pausetime = 6,12
sparkxy = 0,-30
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1

[state 220,2]
type = posadd
trigger1 = animelem = 2
x = 40

[state 220,3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------
;立ち強攻撃
;----------
[statedef 230]
anim = 230
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 230,0]
type = Helper          ;ヘルパー（自分で操作できるもう一つのもの）発生
trigger1 = time = 0
id = 10001             ;ヘルパーのナンバー
name = "star"            ;ヘルパーの名前
pos = 0,0              ;ヘルパーが発生する位置
postype = p1           ;発生する場所 p1:自分 p2:相手 back:後方 front:前方
stateno = 235          ;ヘルパーの処理開始state
helpertype = normal    ;ヘルパーのtype normal:カメラアングル等に無影響
                       ;               player:カメラアングルに影響及びキャラを押す等
keyctrl = 0            ;プレイヤーのＣＭＤ処理に影響されるか
ownpal = 1             ;自キャラのpalfix（パレット変更）に影響されるか 1:無影響
                       ;                                               0:影響

[State 230,1]
type = HitDef
trigger1 = time = 5
trigger1 = var(1) = 0
attr = S, NA
animtype = hard
damage = 25
guardflag = MA
pausetime = 0,0
sparkxy = 20,-90
sparkno = 2
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 0
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[State 230,1]
type = HitDef
trigger1 = time = 5
trigger1 = var(1) = 1
attr = S, NA
animtype = hard
damage = 20
guardflag = MA
pausetime = 0,0
sparkxy = 20,-90
sparkno = 2
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 0
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2

[State 230,1]
type = HitDef
trigger1 = time = 5
trigger1 = var(1) = 2
attr = S, NA
animtype = hard
damage = 16
guardflag = MA
pausetime = 0,0
sparkxy = 20,-90
sparkno = 1
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 0
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.6

[State 230,1]
type = HitDef
trigger1 = time = 5
trigger1 = var(1) = 3
attr = S, NA
animtype = hard
damage = 13
guardflag = MA
pausetime = 0,0
sparkxy = 20,-90
sparkno = 1
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 0
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.3

[State 230,1]
type = HitDef
trigger1 = time = 5
trigger1 = var(1) >= 4
attr = S, NA
animtype = hard
damage = 10
guardflag = MA
pausetime = 0,0
sparkxy = 20,-90
sparkno = 1
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 0
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-0

[State 230,3]
type = HitDef
trigger1 = var(1) = 0
trigger1 = time = 8
attr = S, NA
animtype = hard
damage = 28
guardflag = MA
pausetime = 3,16
sparkxy = 0,-60
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -4
air.velocity = -3,-2.5

[State 230,3]
type = HitDef
trigger1 = time = 8
trigger1 = var(1) = 1
attr = S, NA
animtype = hard
damage = 23
guardflag = MA
pausetime = 3,16
sparkxy = 0,-60
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -4
air.velocity = -3,-2

[State 230,3]
type = HitDef
trigger1 = time = 8
trigger1 = var(1) = 2
attr = S, NA
animtype = hard
damage = 19
guardflag = MA
pausetime = 3,16
sparkxy = -30,-60
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -4
air.velocity = -3,-1.6

[State 230,3]
type = HitDef
trigger1 = time = 8
trigger1 = var(1) = 3
attr = S, NA
animtype = hard
damage = 16
guardflag = MA
pausetime = 3,16
sparkxy = 0,-60
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -4
air.velocity = -3,-1.3

[State 230,3]
type = HitDef
trigger1 = time = 8
trigger1 = var(1) >= 4
attr = S, NA
animtype = hard
damage = 12
guardflag = MA
pausetime = 3,16
sparkxy = 0,-60
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -4
air.velocity = -3,-0


[state 230,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
;立ち強攻撃（ヘルパー部分）
;--------------------------
[statedef 235]
type = S
anim = 235

[State 235,0]
type = BindtoRoot    ;位置をプレイヤーに固定する
trigger1 = Time = 0
pos = 0,0            ;固定位置
time = 25            ;固定時間
facing = 1           ;向き
persistent = 0       ;？

[state 235,1]
type = sprpriority   ;表示する場所（手前か奥かなど）
Trigger1 = Time >= 0 
value = 10000        ;手前奥の設定（多いほど手前に表示し少ないほど奥に表示
                     ;              -3が奥の限界）

[State 235,1]
type = changestate
trigger1 = root,movetype = H ;root（発生させたプレイヤー）のmovetypeが
                             ;H（ガードまたは食らい）になった時
value = 6020

[State 235,2]
type = changestate
trigger1 = animtime = 0
trigger2 = numhelper(10000) = 1
value = 6020


;-----------------------
;立ち強攻撃（ダッシュ時）
;-----------------------
[statedef 231]
anim = 231
type = S
physics = S
movetype = A
ctrl = 0


[State 231,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S, NA
animtype = hard
damage = 42
guardflag = MA
pausetime = 9,15
sparkxy = 0,-70
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-3

[State 231,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S, NA
animtype = hard
damage = 36
guardflag = MA
pausetime = 9,15
sparkxy = 0,-70
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.8

[State 231,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S, NA
animtype = hard
damage = 30
guardflag = MA
pausetime = 9,15
sparkxy = 0,-70
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[State 231,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S, NA
animtype = hard
damage = 24
guardflag = MA
pausetime = 9,15
sparkxy = 0,-70
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.8

[State 231,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 4
attr = S, NA
animtype = hard
damage = 22
guardflag = MA
pausetime = 9,15
sparkxy = -25,-70
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.5

[State 231,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) >= 5
attr = S, NA
animtype = hard
damage = 20
guardflag = MA
pausetime = 9,15
sparkxy = 0,-70
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,0

[state 231,1]
type = varadd
trigger1 = movehit = 1
trigger1 = time = 7
v = 1
value = 1

[state 231,2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 231,2]
type = Helper
trigger1 = animelem = 4
trigger1 = numhelper(10001) = 0
id = 10001    
name = "star"
pos = 0,0
postype = p1  
stateno = 236
helpertype = normal
keyctrl = 0          
ownpal = 0 

;---------------------------
;立ちダッシュ強攻撃（ヘルパー部分）
;--------------------------
[statedef 236]
type = S
anim = 236

[State 236,0]
type = BindtoRoot    ;位置をプレイヤーに固定する
trigger1 = Time = 0
pos = 0,0            ;固定位置
time = 11            ;固定時間
facing = 1           ;向き
persistent = 0       ;？

[state 236,1]
type = sprpriority   ;表示する場所（手前か奥かなど）
Trigger1 = Time >= 0 
value = 10000        ;手前奥の設定（多いほど手前に表示し少ないほど奥に表示
                     ;              -3が奥の限界）

[State 236,1]
type = changestate
trigger1 = root,movetype = H ;root（発生させたプレイヤー）のmovetypeが
                             ;H（ガードまたは食らい）になった時
value = 6020

[State 236,2]
type = changestate
trigger1 = animtime = 0
trigger2 = numhelper(10000) = 1
value = 6020

;-----------------------
;立ち前+強攻撃
;-----------------------
[statedef 240]
anim = 240
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 240,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S, NA
animtype = hard
damage = 42
guardflag = LA
pausetime = 6,15
sparkxy = 0,-30
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -3
air.velocity = -3,-3

[State 240,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S, NA
animtype = hard
damage = 36
guardflag = LA
pausetime = 6,15
sparkxy = 0,-30
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -3
air.velocity = -3,-2.8

[State 240,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S, NA
animtype = hard
damage = 30
guardflag = LA
pausetime = 6,15
sparkxy = 0,-30
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -3
air.velocity = -3,-2.5

[State 240,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S, NA
animtype = hard
damage = 24
guardflag = LA
pausetime = 6,15
sparkxy = 0,-30
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -3
air.velocity = -3,-1.8

[State 240,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 4
attr = S, NA
animtype = hard
damage = 22
guardflag = LA
pausetime = 9,15
sparkxy = 0,-30
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -3
air.velocity = -3,-1.5

[State 240,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) >= 5
attr = S, NA
animtype = hard
damage = 20
guardflag = LA
pausetime = 9,15
sparkxy = 0,-30
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -3
air.velocity = -3,0

[state 240,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 240,2]
type = Helper
trigger1 = animelem = 9
trigger1 = numhelper(10001) = 0
id = 10001    
name = "star"
pos = 0,0
postype = p1  
stateno = 241
helpertype = normal
keyctrl = 0          
ownpal = 0 

;---------------------------
;立ち前+強攻撃（ヘルパー部分）
;--------------------------
[statedef 241]
type = S
anim = 241

[State 241,0]
type = BindtoRoot    ;位置をプレイヤーに固定する
trigger1 = Time = 0
pos = 0,0            ;固定位置
time = 6            ;固定時間
facing = 1           ;向き
persistent = 0       ;？

[state 241,1]
type = sprpriority   ;表示する場所（手前か奥かなど）
Trigger1 = Time >= 0 
value = 10000        ;手前奥の設定（多いほど手前に表示し少ないほど奥に表示
                     ;              -3が奥の限界）

[State 241,1]
type = changestate
trigger1 = root,movetype = H ;root（発生させたプレイヤー）のmovetypeが
                             ;H（ガードまたは食らい）になった時
value = 6020

[State 241,2]
type = changestate
trigger1 = animtime = 0
trigger2 = numhelper(10000) = 1
value = 6020

;**********************
;しゃがみ攻撃（通常時）
;**********************

;--------------
;しゃがみ弱攻撃
;--------------
[statedef 400]
anim = 400
type = C
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 400,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S, NA
animtype = light
damage = 25
guardflag = MA
pausetime = 3,9
sparkxy = 0,-50
sparkno = 0
guard.sparkno = 40
hitsound   = 5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[State 400,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S, NA
animtype = light
damage = 21
guardflag = MA
pausetime = 3,9
sparkxy = 0,-50
sparkno = 0
guard.sparkno = 40
hitsound   = 5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.0

[State 400,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S, NA
animtype = light
damage = 17
guardflag = MA
pausetime = 3,9
sparkxy = 0,-50
sparkno = 0
guard.sparkno = 40
hitsound   = 5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.5

[State 400,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S, NA
animtype = light
damage = 13
guardflag = MA
pausetime = 3,9
sparkxy = 0,-50
sparkno = 0
guard.sparkno = 40
hitsound   = 5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1.2

[State 400,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S, NA
animtype = light
damage = 10
guardflag = MA
pausetime = 3,9
sparkxy = 0,-50
sparkno = 0
guard.sparkno = 40
hitsound   = 5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-1

[state 400,1]
type = changestate
trigger1 = animtime = 0
value = 13
ctrl = 1

;------------------------
;しゃがみ中攻撃（通常時）
;------------------------
[statedef 410]
anim = 410
type = C
physics = S
movetype = A
ctrl = 0
velset = 0,0

[state 410,1]
type = sprpriority
Trigger1 = Time >= 0
value = 1

[state 410,2]
type = velset
trigger1 = time = 0
x = 0

[State 410,2]
type = Helper
trigger1 = time = 0
id = 10001    
name = "star"
pos = 25,-45
postype = p1  
stateno = 415
helpertype = normal
keyctrl = 0          
ownpal = 0 

[State 410,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) <= 2
attr = S, NA
animtype = medium
damage = 30
guardflag = MA
pausetime = 3,9
sparkxy = 0,-60
sparkno = 1
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[State 410,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) >= 3
attr = S, NA
animtype = medium
damage = 20
guardflag = MA
pausetime = 3,6
sparkxy = 0,-60
sparkno = 1
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-0.5

[state 410,2]
type = velset
trigger1 = animtime = 0
x = 0

[state 410,2]
type = changestate
trigger1 = animtime = 0
value = 13
ctrl = 1

;------------------------------
;しゃがみ中攻撃（ヘルパー部分）
;------------------------------
[statedef 415]
type = S
anim = 415
movetype = A

[State 415, 1]
type = BindtoRoot
trigger1 = Time = 0
pos = 0,0
time = 18
facing = 1
persistent = 0

[state 415,2]
type = sprpriority
Trigger1 = Time >= 0
value = 0

[State 415,3]
type = changestate
trigger1 = root,movetype = H
value = 6020

[State 415,4]
type = changestate
trigger1 = animtime = 0
trigger2 = numhelper(10000) = 1
value = 6020

;------------------------
;しゃがみ強攻撃（通常時）
;------------------------
[statedef 420]
anim = 420
type = C
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 420,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) <= 1
attr = C, NA
animtype = hard
damage = 42
guardflag = LA
pausetime = 9,16
sparkxy = 0,-10
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime = 6
ground.velocity = -4,-4
air.velocity = -3,-6
fall = 1

[State 420,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = C, NA
animtype = hard
damage = 35
guardflag = LA
pausetime = 9,16
sparkxy = 0,-10
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime = 6
ground.velocity = -4,-3
air.velocity = -3,-3
fall = 1


[State 420,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = C, NA
animtype = hard
damage = 30
guardflag = LA
pausetime = 9,16
sparkxy = 0,-10
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime = 6
ground.velocity = -4,-2
air.velocity = -3,-2
fall = 1

[State 420,0]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = C, NA
animtype = hard
damage = 25
guardflag = LA
pausetime = 9,16
sparkxy = 0,-10
sparkno = 1
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime = 6
ground.velocity = -4,-1
air.velocity = -3,-1
fall = 1

[State 420,2]
type = Helper
trigger1 = time = 0
id = 10001    
name = "star"
pos = 0,0
postype = p1  
stateno = 425
helpertype = normal
keyctrl = 0          
ownpal = 0 

[state 420,1]
type = changestate
trigger1 = animtime = 0
value = 13
ctrl = 1

;------------------------------
;しゃがみ強攻撃（スタンド部分）
;------------------------------
[statedef 425]
type = S
anim = 425
movetype = A

[State 425, 1]
type = BindtoRoot
trigger1 = Time = 0
pos = 0,0
time = 32
facing = 1
persistent = 0

[state 425,2]
type = sprpriority
Trigger1 = Time >= 0
value = 100

[State 425,3]
type = changestate
trigger1 = root,movetype = H
value = 6020

[State 425,4]
type = changestate
trigger1 = animtime = 0
trigger2 = numhelper(10000) = 1
value = 6020

;**********************
;ジャンプ攻撃（通常時）
;**********************

;------------------------
;ジャンプ弱攻撃（通常時）
;------------------------
[statedef 600]
anim = 600
type = A
movetype = A
physics = A
ctrl = 0

[State 600,0]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
animtype = light
damage = 25
guardflag = HA
pausetime = 6,9
sparkxy = 0,-40
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[state 600,1]
type = changestate
trigger1 = animtime = 0
value = 50

;------------------------
;ジャンプ中攻撃（通常時）
;------------------------
[statedef 610]
anim = 600
type = A
movetype = A
physics = A
ctrl = 0

[State 610,0]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
animtype = light
damage = 25
guardflag = HA
pausetime = 6,9
sparkxy = 0,-40
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5

[state 610,1]
type = changestate
trigger1 = animtime = 0
value = 50

;------------------------
;ジャンプ強攻撃（通常時）
;------------------------
[statedef 620]
anim = 620
type = A
movetype = A
physics = A
ctrl = 0

[State 620,0]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
animtype = medium
damage = 38
guardflag = HA
pausetime = 9,15
sparkxy = 10,-25
sparkno = 0
guard.sparkno = 40
hitsound   = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -3
air.velocity = -3,-2.5


[state 620,1]
type = changestate
trigger1 = animtime = 0
value = 50

;==================
;スタンドモード発動
;==================

;----
;立ち
;----
[statedef 800]
anim = 20800
type = S
physics = S
ctrl = 1
velset = 0,0

[state 800,2]
type = varset
trigger1 = time = 0
v = 31
value = 1

[State 800,1]
type = explod
trigger1 = time = 0
anim = 30000
facing = 1
pos = 0,0
postype = p1
sprpriority = 3
bindtime = 1
ownpal = 1
supermove = 1
removetime = 27
scale = 1,1

[state 800,3]
type = changestate
trigger1 = time = 21
value = 0
ctrl = 1

;--------
;しゃがみ
;--------
[statedef 810]
anim = 11
type = C
physics = C
ctrl = 0
velset = 0,0

[state 810,2]
type = varset
trigger1 = time = 0
v = 31
value = 1

[state 810,2]
type = changeanim
trigger1 = time = 0
value = 20011

[State 810,1]
type = explod
trigger1 = time = 0
anim = 30000
facing = 1
pos = 0,0
postype = p1
sprpriority = 3
bindtime = 1
ownpal = 1
supermove = 1
removetime = 27
scale = 1,1

[state 810,3]
type = changestate
trigger1 = time = 12
value = 11
ctrl = 1

;----
;空中
;----
[statedef 820]
anim = 20820
type = A
physics = A
ctrl = 1

[state 820,2]
type = varset
trigger1 = time = 0
v = 31
value = 1

[State 820,3]
type = changestate
trigger1 = var(28) = 2
trigger1 = command = "U"
trigger1 = time >= 8
value = 20042

[State 820,3]
type = varset
trigger1 = command = "holdup"
v = 28
value = 1

[State 820,3]
type = varset
trigger1 = command != "holdup"
v = 28
value = 2

;------------------------
;攻撃しながらスタンドＯＮ
;------------------------
[statedef 830]
anim = 20830
type = S
physics = S
ctrl = 0
velset = 0,0
movetype = A

[state 830,2]
type = varset
trigger1 = time = 0
v = 31
value = 1

[State 830,3]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
animtype = hard
damage = 38
guardflag = MA
pausetime = 3,16
sparkxy = 0,-60
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 6
ground.velocity = -4
air.velocity = -3,-2

[state 830,3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;========
;投げ関係
;========

;--------
;投げ開始
;--------
[statedef 900]
anim = 901
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0

[State 900,0]
type = HitDef
trigger1 = animelem = 1
attr = S, NT
animtype = medium
priority = 1, Miss
damage = 0
guardflag =
hitflag = M 
pausetime = 0,0
sparkxy = 0,1000
;hitsound   = ;5,2
;guardsound = ;6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0
p1stateno = 901
p2stateno = 902

[state 900,3]
type = changestate
trigger1 = var(31) = 1
trigger1 = animtime = 0
value = 20220
ctrl = 1

[state 900,3]
type = changestate
trigger1 = animtime = 0
trigger1 = numhelper(10000) = 1
value = 220
ctrl = 1

[state 900,3]
type = changestate
trigger1 = animtime = 0
value = 230
ctrl = 0

;--------
;投げ成功
;--------
[statedef 901]
anim = 900
type = S
movetype = A
physics = S
ctrl = 0


[State 901,1]
type = targetbind
trigger1 = time = 0
pos = 110, 0

[State 901,1]
type = targetbind
trigger1 = time = 7
pos = 90, 0

[state 901,3]
type = posadd
trigger1 = frontedgebodydist <= 80
x = -50

[state 901,3]
type = changestate
trigger1 = var(31) = 1
trigger1 = animtime = 0
value = 0
ctrl = 1

[state 901,3]
type = gamemakeanim
trigger1 = time = 28
pos = 80,-80
value = 2

[state 901,3]
type = PlaySnd
trigger1 = time = 28
value = F5,3

[state 901,3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------
;投げられる相手
;--------------
[statedef 902]
type = S
movetype = H
physics = S
ctrl = 0

[state 902,3]
type = turn
trigger1 = time = 0
trigger1 = p2bodydist X <= 0

[state 902,3]
type = changeanim2
trigger1 = time = 0
value = 902

[state 902,3]
type = lifeadd
trigger1 = animtime = 0
value = -80

[state 902,3]
type = velset
trigger1 = animtime = 0
x = -5
y = -4

[state 902,3]
type = hitfallset
trigger1 = animtime = 0
x = 1

[state 902,3]
type = selfstate
trigger1 = animtime = 0
value = 5050
ctrl = 0

;----------------
;投げ（後ろ方向）
;----------------
[statedef 910]
anim = 901
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0

[State 910,0]
type = HitDef
trigger1 = animelem = 1
attr = S, NT
animtype = medium
priority = 1, Miss
damage = 0
guardflag =
hitflag = M 
pausetime = 0,0
sparkxy = 0,1000
;hitsound   = ;5,2
;guardsound = ;6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0
p1stateno = 911
p2stateno = 912

[state 910,3]
type = changestate
trigger1 = var(31) = 1
trigger1 = animtime = 0
value = 20220
ctrl = 1

[state 910,3]
type = changestate
trigger1 = animtime = 0
trigger1 = numhelper(10000) = 1
value = 220
ctrl = 1

[state 910,3]
type = changestate
trigger1 = animtime = 0
value = 230
ctrl = 0

;--------------------
;投げ成功（後ろ方向）
;--------------------
[statedef 911]
anim = 900
type = S
movetype = A
physics = S
ctrl = 0

[state 911,3]
type = turn
trigger1 = time = 0

[state 911,3]
type = posadd
trigger1 = frontedgebodydist <= 80
x = -50

[State 911,1]
type = targetbind
trigger1 = time = 0
pos = 110, 0

[State 911,1]
type = targetbind
trigger1 = time = 7
pos = 90, 0

[state 911,3]
type = changestate
trigger1 = var(31) = 1
trigger1 = animtime = 0
value = 0
ctrl = 1

[state 911,3]
type = gamemakeanim
trigger1 = time = 28
pos = 80,-80
value = 2

[state 911,3]
type = PlaySnd
trigger1 = time = 28
value = F5,3

[state 911,3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------
;投げられる相手（後ろ方向）
;--------------------------
[statedef 912]
type = S
movetype = H
physics = S
ctrl = 0

[state 912,3]
type = turn
trigger1 = time = 0

[state 912,3]
type = turn
trigger1 = time = 0
trigger1 = p2bodydist X <= 0

[state 912,3]
type = changeanim2
trigger1 = time = 0
value = 902

[state 912,3]
type = lifeadd
trigger1 = animtime = 0
value = -80

[state 912,3]
type = velset
trigger1 = animtime = 0
x = -5
y = -4

[state 912,3]
type = hitfallset
trigger1 = animtime = 0
x = 1

[state 912,3]
type = selfstate
trigger1 = animtime = 0
value = 5050
ctrl = 0

;============
;その他の行動
;============

;------
;かわし
;------
[Statedef 300]
type    = S
anim = 300
velset = 0,0
ctrl = 0

[state 300,1]
type = sprpriority
Trigger1 = Time >= 0
value = -3

[State 300,1]
type = AfterImage
trigger1 = time = 0
time = 24
TimeGap  = 5
FrameGap = 1
length = 3
PalBright   = 0,0,0
PalContrast = 255,255,255

[State 300,2]
type = velset
trigger1 = animelem = 2
x = 7

[State 300,3]
type = velset
trigger1 = animelem = 6
x = 0

[State 300,4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;----
;挑発
;----
[Statedef 350]
type    = S
anim = 190
velset = 0,0
ctrl = 0

[State 350,4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
