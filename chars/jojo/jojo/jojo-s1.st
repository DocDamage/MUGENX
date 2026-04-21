;----------
;—§‚¿ãUŒ‚
;----------
[statedef 20200]
anim = 20200
type = S
physics = S
movetype = A
ctrl = 0
velset = 2,0

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = medium        
damage = 30             
guardflag = MA          
pausetime = 6,10
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = medium        
damage = 24             
guardflag = MA          
pausetime = 6,10
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = medium        
damage = 20             
guardflag = MA          
pausetime = 6,9
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = medium        
damage = 16             
guardflag = MA          
pausetime = 6,8
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.0

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = medium        
damage = 12             
guardflag = MA          
pausetime = 6,7
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-0.5

[state 20200,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 20201]
anim = 20201
type = S
physics = S
movetype = A
ctrl = 0
velset = 3,0

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = medium        
damage = 25             
guardflag = MA          
pausetime = 6,10
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = medium        
damage = 20             
guardflag = MA          
pausetime = 6,9
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = medium        
damage = 15             
guardflag = MA          
pausetime = 6,8
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = medium        
damage = 13             
guardflag = MA          
pausetime = 6,7
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.0

[State 20200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = medium        
damage = 10             
guardflag = MA          
pausetime = 6,6
sparkno = 1
guard.sparkno = 40         
sparkxy = -20,-90       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-0.5

[state 211,1]
type = varset
trigger1 = time = 0
v = 6
value = (var(1)+1)

[state 211,1]
type = varset
trigger1 = movehit = 1
v = 1
value = (var(6))

[state 20200,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;—§‚¿’†UŒ‚
[statedef 20210]
anim = 20210
type = S
physics = S
movetype = A
ctrl = 0
velset = 4,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = medium        
damage = 35             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = medium        
damage = 28             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = medium        
damage = 24             
guardflag = MA          
pausetime = 9,11         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = medium        
damage = 20             
guardflag = MA          
pausetime = 9,10         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = medium        
damage = 15             
guardflag = MA          
pausetime = 9,10         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-0.5

[state 20210,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 20211]
anim = 20210
type = S
physics = S
movetype = A
ctrl = 0
velset = 4,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = medium        
damage = 35             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = medium        
damage = 28             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = medium        
damage = 24             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = medium        
damage = 20             
guardflag = MA          
pausetime = 9,11         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = medium        
damage = 15             
guardflag = MA          
pausetime = 9,10         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-0.5

[state 20211,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 20212]
anim = 20210
type = S
physics = S
movetype = A
ctrl = 0
velset = 4,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = medium        
damage = 35             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = medium        
damage = 28             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = medium        
damage = 24             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = medium        
damage = 20             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = medium        
damage = 15             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-0.5

[state 20212,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 20213]
anim = 20230
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = hard   
damage = 35             
guardflag = MA          
pausetime = 9,12         
sparkxy = -10,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = hard   
damage = 30             
guardflag = MA          
pausetime = 9,11         
sparkxy = -10,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = hard   
damage = 25             
guardflag = MA          
pausetime = 9,10         
sparkxy = -10,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = hard   
damage = 20             
guardflag = MA          
pausetime = 9,9         
sparkxy = -10,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = hard   
damage = 15             
guardflag = MA          
pausetime = 9,9         
sparkxy = -10,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-0.5

[state 20213,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 20214]
anim = 20210
type = S
physics = S
movetype = A
ctrl = 0
velset = 4,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = medium        
damage = 35             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = medium        
damage = 28             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = medium        
damage = 24             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = medium        
damage = 20             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-1.0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = medium        
damage = 15             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 9    
ground.hittime = 9      
ground.velocity = -2    
air.velocity = -2,-0.5

[state 20214,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 20215]
anim = 20215
type = S
physics = S
movetype = A
ctrl = 0
velset = 5.5,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
attr = S,NA            
animtype = hard        
damage = 40             
guardflag = HA          
pausetime = 9,13         
sparkxy = -10,-70       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 20    
ground.hittime = 15      
ground.velocity = -2    
air.velocity = -2,-2.5

[state 20210,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;—§‚¿‹­UŒ‚
[statedef 20220]
anim = 20220
type = S
physics = S
movetype = A
ctrl = 0
velset = 4,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) <= 1
attr = S,NA            
animtype = hard        
damage = 60             
guardflag = MA          
pausetime = 13,15         
sparkxy = -40,-80       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 20    
ground.hittime = 20      
ground.velocity = -9    
air.velocity = -2,-2.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = hard        
damage = 50             
guardflag = MA          
pausetime = 13,15         
sparkxy = -40,-80       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 20    
ground.hittime = 20      
ground.velocity = -9    
air.velocity = -2,-2.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = hard        
damage = 40             
guardflag = MA          
pausetime = 13,15         
sparkxy = -40,-80       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 20    
ground.hittime = 20      
ground.velocity = -9    
air.velocity = -2,-2.5

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = hard        
damage = 35             
guardflag = MA          
pausetime = 13,15         
sparkxy = -40,-80       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 20    
ground.hittime = 20      
ground.velocity = -9    
air.velocity = -2,-2.5

[state 20220,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 20225]
anim = 20225
type = S
physics = S
movetype = A
ctrl = 0
velset = 5.5,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
attr = S,NA            
animtype = back       
damage = 40             
guardflag = LA          
pausetime = 10,20         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = trip       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -2,0.1    
air.velocity = -2,-2.5

[state 20225,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;—§‚¿‹­UŒ‚i‹ß‹——£j
[statedef 20230]
anim = 20230
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
attr = S,NA            
animtype = hard        
damage = 60             
guardflag = MA          
pausetime = 13,15         
sparkxy = -40,-80       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 20    
ground.hittime = 20      
ground.velocity = -9    
air.velocity = -2,-2.5

[state 20230,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


;‚µ‚á‚ª‚İãUŒ‚
[statedef 20400]
anim = 20400
type = C
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = midium        
damage = 40             
guardflag = MA          
pausetime = 9,13         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = midium        
damage = 35             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = midium        
damage = 30             
guardflag = MA          
pausetime = 9,11         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = midium        
damage = 25             
guardflag = MA          
pausetime = 9,10         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = midium        
damage = 20             
guardflag = MA          
pausetime = 9,9         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-1.5

[state 20400,1]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

[statedef 20401]
anim = 20400
type = C
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = midium        
damage = 40             
guardflag = MA          
pausetime = 9,13         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = midium        
damage = 35             
guardflag = MA          
pausetime = 9,12         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = midium        
damage = 30             
guardflag = MA          
pausetime = 9,11         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = midium        
damage = 25             
guardflag = MA          
pausetime = 9,10         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = midium        
damage = 20             
guardflag = MA          
pausetime = 9,9         
sparkxy = -30,-40       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-1.5

[state 20401,1]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;‚µ‚á‚ª‚İ’†UŒ‚
[statedef 20410]
anim = 20410
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = midium        
damage = 40             
guardflag = CA          
pausetime = 9,13         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = midium        
damage = 35             
guardflag = CA          
pausetime = 9,12         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = midium        
damage = 30             
guardflag = CA          
pausetime = 9,11         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = midium        
damage = 25             
guardflag = CA          
pausetime = 9,10         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = midium        
damage = 20             
guardflag = CA          
pausetime = 9,9         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-1.5

[state 20410,1]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

[statedef 20411]
anim = 20410
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = midium        
damage = 40             
guardflag = CA          
pausetime = 9,13         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = midium        
damage = 35             
guardflag = CA          
pausetime = 9,12         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = midium        
damage = 30             
guardflag = CA          
pausetime = 9,11         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = midium        
damage = 25             
guardflag = CA          
pausetime = 9,10         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = midium        
damage = 20             
guardflag = CA          
pausetime = 9,9         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-1.5

[state 20411,1]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

[statedef 20412]
anim = 20410
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = midium        
damage = 40             
guardflag = CA          
pausetime = 9,13         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = midium        
damage = 35             
guardflag = CA          
pausetime = 9,12         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = midium        
damage = 30             
guardflag = CA          
pausetime = 9,11         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = midium        
damage = 25             
guardflag = CA          
pausetime = 9,10         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = midium        
damage = 20             
guardflag = CA          
pausetime = 9,9         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-1.5

[state 20412,1]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

[statedef 20413]
anim = 20410
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = S,NA            
animtype = midium        
damage = 40             
guardflag = CA          
pausetime = 9,13         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = S,NA            
animtype = midium        
damage = 35             
guardflag = CA          
pausetime = 9,12         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = S,NA            
animtype = midium        
damage = 30             
guardflag = CA          
pausetime = 9,11         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.5

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 3
attr = S,NA            
animtype = midium        
damage = 25             
guardflag = CA          
pausetime = 9,10         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-2.0

[State 20400,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 4
attr = S,NA            
animtype = midium        
damage = 20             
guardflag = CA          
pausetime = 9,9         
sparkxy = -30,-50       
hitsound   = 5,2        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 5    
ground.hittime = 5      
ground.velocity = -2    
air.velocity = -2,-1.5

[state 20412,1]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;‚µ‚á‚ª‚İ‹­UŒ‚
[statedef 20420]
anim = 20420
type = C
physics = C
movetype = A
ctrl = 0
velset = 0,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = C,NA            
animtype = hard        
damage = 45             
guardflag = MA          
pausetime = 13,15         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 15    
ground.hittime = 15      
ground.velocity = -2,-8    
air.velocity = -2,-4.5
fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = C,NA            
animtype = hard        
damage = 40             
guardflag = MA          
pausetime = 13,15         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 15    
ground.hittime = 15      
ground.velocity = -2,-8    
air.velocity = -2,-4.5
fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = C,NA            
animtype = hard        
damage = 35             
guardflag = MA          
pausetime = 13,14         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 15    
ground.hittime = 15      
ground.velocity = -2,-8    
air.velocity = -2,-4.5
fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 3
attr = C,NA            
animtype = hard        
damage = 30             
guardflag = MA          
pausetime = 13,13         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 15    
ground.hittime = 15      
ground.velocity = -2,-8    
air.velocity = -2,-4.5
fall = 1

[state 20420,1]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

[statedef 20421]
anim = 20420
type = C
physics = C
movetype = A
ctrl = 0
velset = 3,0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 0
attr = C,NA            
animtype = hard        
damage = 45             
guardflag = MA          
pausetime = 13,15         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 15    
ground.hittime = 15      
ground.velocity = -2,-8    
air.velocity = -2,-4.5
fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
attr = C,NA            
animtype = hard        
damage = 40             
guardflag = MA          
pausetime = 13,15         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 15    
ground.hittime = 15      
ground.velocity = -2,-8    
air.velocity = -2,-4.5
fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) = 2
attr = C,NA            
animtype = hard        
damage = 35             
guardflag = MA          
pausetime = 13,14         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 15    
ground.hittime = 15      
ground.velocity = -2,-8    
air.velocity = -2,-4.5
fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1
trigger1 = var(1) >= 3
attr = C,NA            
animtype = hard        
damage = 30             
guardflag = MA          
pausetime = 13,13         
sparkxy = -10,-70       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = Low       
ground.slidetime = 15    
ground.hittime = 15      
ground.velocity = -2,-8    
air.velocity = -2,-4.5
fall = 1

[state 20421,1]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;--------------
;ƒWƒƒƒ“ƒvãUŒ‚
;--------------
[statedef 20600]
anim = 20600
type = A
physics = A
movetype = A
ctrl = 0

[State 20600,0]
type = HitDef           
trigger1 = AnimElem = 1
attr = A,NA            
animtype = midium        
damage = 30             
guardflag = HA          
pausetime = 6,13         
sparkxy = -20,-20       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -3    
air.velocity = -2,-2.5

[state 20600,1]
type = changestate
trigger1 = animtime = 0
value = 51
ctrl = 1

[statedef 20610]
anim = 20600
type = A
physics = A
movetype = A
ctrl = 0

[State 20610,0]
type = HitDef           
trigger1 = AnimElem = 1
attr = A,NA            
animtype = midium        
damage = 30             
guardflag = HA          
pausetime = 6,13         
sparkxy = -20,-20       
hitsound   = 5,1        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 6      
ground.velocity = -3    
air.velocity = -2,-2.5

[state 20610,1]
type = changestate
trigger1 = animtime = 0
value = 51
ctrl = 1

[statedef 20620]
anim = 20620
type = A
physics = A
movetype = A
ctrl = 0

[State 20620,0]
type = HitDef           
trigger1 = AnimElem = 1
attr = A,NA            
animtype = hard        
damage = 40             
guardflag = HA          
pausetime = 11,15         
sparkxy = -20,-60       
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 12    
ground.hittime = 12      
ground.velocity = -4    
air.velocity = -4,-5.5

[state 20620,1]
type = changestate
trigger1 = animtime = 0
value = 51
ctrl = 1

;==================
;ƒXƒ^ƒ“ƒhƒ‚[ƒh‰ğœ
;==================
[statedef 20800]
anim = 0
type = S
physics = S
movetype = A
ctrl = 1
velset = 0,0

[state 20810,2]
type = changeanim
trigger1 = time = 0
value = 0

[state 20800,2]
type = varset
trigger1 = time = 0
v = 31
value = 0

[state 20800,3]
type = changestate
trigger1 = time = 0
value = 0
ctrl = 1

[statedef 20810]
anim = 20011
type = C
physics = C
ctrl = 0
velset = 0,0

[state 20810,2]
type = varset
trigger1 = time = 0
v = 31
value = 0

[state 20810,2]
type = changeanim
trigger1 = time = 0
value = 11

[state 20810,3]
type = changestate
trigger1 = time = 12
value = 11
ctrl = 1

[statedef 20820]
anim = 44
type = A
physics = A
ctrl = 0

[state 20820,2]
type = varset
trigger1 = time = 0
v = 31
value = 0

[state 20820,3]
type = ctrlset
trigger1 = time = 12
value = 1


[Statedef 20105]
type    = S
physics = N
velset = -6.5

[State 20105, 1]
type = CtrlSet
trigger1 = Time = 0
value = 0

[State 20105, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 20105

[State 20105]
type = ctrlset
value = 1
trigger1 = command = "holdup"

[State 20105, 3]
type = changestate
trigger1 = animelem = 4
value = 20106
ctrl = 1

[Statedef 20106]
type    = S
physics = S

[State 20106, 1]
type = changestate
trigger1 = animtime = 0
value = 0