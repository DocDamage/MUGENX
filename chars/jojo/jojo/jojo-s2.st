[statedef 21010]
anim = 21010
type = A
physics = S
ctrl = 0

;è„è∏éØï 
[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = vel Y <= -1 && vel X < 0
v = 7
value = 1

[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = vel Y <= -1 && vel X = 0
v = 7
value = 2

[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = vel Y <= -1 && vel X > 0
v = 7
value = 3

;â∫ç~éØï 
[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = vel Y > -1 && vel X < 0
v = 7
value = 4

[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = vel Y > -1 && vel X = 0
v = 7
value = 5

[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = vel Y > -1 && vel X > 0
v = 7
value = 6

[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = command = "holdx"
v = 8
value = 1

[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = command = "holdy"
v = 8
value = 2

[state 21010,1]
type = varset
trigger1 = time = 0
trigger1 = command = "holdz"
v = 8
value = 3

[state 21010,2]
type = velset
trigger1 = time = 0
x = 0
y = 0

[state 21010,2]
type = velset
trigger1 = time = [3,6]
trigger1 = var(8) = 2
x = 6
y = 0

[state 21010,2]
type = velset
trigger1 = time = [3,6]
trigger1 = var(8) = 3
x = 13
y = 0

[state 21010,2]
type = velset
triggerall = time = 7
trigger1 = var(8) = 3
trigger2 = var(8) = 2
x = 0
y = 0

[state 20000,1]
type = changestate
trigger1 = time = 6
trigger1 = var(8) = 1
value = 21011
ctrl = 0

[state 20000,1]
type = changestate
trigger1 = animtime = 0
value = 21011
ctrl = 0

[statedef 21011]
anim = 21011
type = A
physics = A
movetype = A
ctrl = 0

[state 21010,2]
type = velset
trigger1 = time = [0,6]
trigger1 = var(7) = [1,3]
y = -1

[state 21010,2]
type = velset
trigger1 = time = [0,21]
trigger1 = var(7) = [4,6]
y = 1

[state 21010,2]
type = velset
triggerall = time = 0
trigger1 = var(7) = 1
trigger2 = var(7) = 4
x = -0.8

[state 21010,2]
type = veladd
triggerall = timemod = 4,3
triggerall = vel X < -0.1
trigger1 = var(7) = 1
trigger2 = var(7) = 4
x = 0.1


[state 21010,2]
type = velset
triggerall = time = 0
trigger1 = var(7) = 3
trigger2 = var(7) = 6
x = 0.8

[state 21010,2]
type = veladd
triggerall = timemod = 4,3
triggerall = vel X > 0.1
trigger1 = var(7) = 3
trigger2 = var(7) = 6
x = -0.1

[state 21010,2]
type = velset
triggerall = time = [7,9]
trigger1 = var(7) = [1,3]
y = -1+0.2*((time)-6)

[state 21010,2]
type = velset
triggerall = time = [16,21]
trigger1 = var(7) = [1,3]
y = 0.2*((time)-15)

[state 21010,2]
type = velset
triggerall = time = [10,16]
trigger1 = var(7) = [1,3]
y = -0.4+0.1*((time)-9)

[state 21010,2]
type = velset
trigger1 = time >= 21
y = 1

[state 21010,2]
type = varset
trigger1 = time >= 0
trigger1 = command = "x" || command = "y" || command = "z"
v = 9
value = 1

[state 20000,1]
type = changestate
trigger1 = animelem = 7
trigger1 = var(9) = 0
trigger2 = animelem = 14
trigger2 = var(9) = 0
trigger3 = time = 94
value = 20050
ctrl = 0

[state 21010,2]
type = varset
trigger1 = animelem = 8
trigger2 = animelem = 1
trigger3 = time = 93
v = 9
value = 0

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 1  
attr = S,NA            
animtype = hard        
damage = 15             
guardflag = MA          
pausetime = 6,3  
sparkxy = 0,-90
sparkno = 2
guard.sparkno = 40     
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 12      
ground.velocity = -5    
air.velocity = -1,-0.1
air.fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 4  
attr = S,NA            
animtype = hard        
damage = 15             
guardflag = MA          
pausetime = 6,3  
sparkxy = 10,-60
sparkno = 2
guard.sparkno = 40     
hitsound   = 5,3        
guardsound = 6,0        
ground.type = low       
ground.slidetime = 6    
ground.hittime = 12      
ground.velocity = -5    
air.velocity = -1,-0.1
air.fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 7  
attr = S,NA            
animtype = back        
damage = 15             
guardflag = MA          
pausetime = 6,3  
sparkxy = 0,-75
sparkno = 2
guard.sparkno = 40     
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high       
ground.slidetime = 6    
ground.hittime = 12      
ground.velocity = -5    
air.velocity = -1,-0.1
air.fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 10
attr = S,NA            
animtype = hard        
damage = 15             
guardflag = MA          
pausetime = 6,3  
sparkxy = 0,-90
sparkno = 2
guard.sparkno = 40     
hitsound   = 5,3        
guardsound = 6,0        
ground.type = high   
ground.slidetime = 6    
ground.hittime = 12      
ground.velocity = -5    
air.velocity = -1,-0.1
air.fall = 1

[State 200,0]
type = HitDef           
trigger1 = AnimElem = 13 
attr = S,NA            
animtype = hard        
damage = 15             
guardflag = MA          
pausetime = 6,3  
sparkxy = 0,-60
sparkno = 2
guard.sparkno = 40     
hitsound   = 5,3        
guardsound = 6,0        
ground.type = low       
ground.slidetime = 6    
ground.hittime = 12      
ground.velocity = -5    
air.velocity = -1,-0.1
air.fall = 1


[statedef 20050]
anim = 20050
type = A
physics = A
ctrl = 0

[state 20000,1]
type = null;changestate
trigger1 = animtime = 0
value = 20050
ctrl = 0

[statedef 21200]
anim = 21200
type = S
physics = S
ctrl = 0
velset = 0,0

[state 21010,1]
type = varset
trigger1 = time = 0
trigger2 = timemod = 5,2
v = 8
value = 0

[state 21010,1]
type = varset
triggerall = command = "holdx"
trigger1 = time >= 0
v = 8
value = 1

[state 21010,1]
type = varset
triggerall = command = "holdy"
trigger1 = time >= 0
v = 8
value = 1

[state 21010,1]
type = varset
triggerall = command = "holdz"
trigger1 = time >= 0
v = 8
value = 1

[state 20000,1]
type = changestate
trigger1 = timemod = 4,2
trigger1 = var(8) = 0
value = 21201
ctrl = 0

[statedef 21201]
anim = 21201
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
pausetime = 10,30
sparkxy = 0,-70
sparkno = 2
guard.sparkno = 40     
hitsound   = 5,3        
guardsound = 6,0        
ground.type = low       
ground.slidetime = 6    
ground.hittime = 12      
ground.velocity = 8    
air.velocity = 3,-0.1
air.fall = 1

[state 20000,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1