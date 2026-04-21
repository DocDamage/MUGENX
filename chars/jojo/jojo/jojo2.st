;マッハオラ弱（通常時）
[statedef 1000]
anim = 1000
type = S
movetype = A
ctrl = 0
velset = 0,0

[state 1000,1]
type = velset
trigger1 = time = 0
x = 0

[State 1000,2]
type = Helper
trigger1 = time = 0
id = 10000    
name = "star"
pos = 30,0
postype = p1  
stateno = 11000
helpertype = normal
keyctrl = 0          
ownpal = 0 

[state 1000,1]
type = ctrlset
trigger1 = animelem = 3
value = 1

[state 1000,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;マッハオラ中（通常時）
[statedef 1010]
anim = 1000
type = S
movetype = A
ctrl = 0
velset = 0,0

[state 1010,1]
type = velset
trigger1 = time = 0
x = 0

[State 1010,2]
type = Helper
trigger1 = time = 0
id = 10000    
name = "star"
pos = 30,0
postype = p1  
stateno = 11010
helpertype = normal
keyctrl = 0          
ownpal = 0 

[state 1010,1]
type = ctrlset
trigger1 = animelem = 3
value = 1

[state 1010,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;マッハオラ強（通常時）
[statedef 1020]
anim = 1000
type = S
movetype = A
ctrl = 0
velset = 0,0

[state 1020,1]
type = velset
trigger1 = time = 0
x = 0

[State 1020,2]
type = Helper
trigger1 = time = 0
id = 10000    
name = "star"
pos = 30,0
postype = p1  
stateno = 11020
helpertype = normal
keyctrl = 0          
ownpal = 0 

;[state 1020,1]
;type = varset
;trigger1 = time = 0
;v = 1
;value = 1

[state 1020,1]
type = ctrlset
trigger1 = animelem = 3
value = 1

[state 1020,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;スタープラチナ弱（通常時）
[statedef 1100]
anim = 1100
type = S
movetype = A
ctrl = 0
velset = 0,0

[state 1100,1]
type = velset
trigger1 = time = 0
x = 0

[State 1100,2]
type = Helper
trigger1 = time = 0
id = 10000    
name = "star"
pos = 30,0
postype = p1  
stateno = 11100
helpertype = normal
keyctrl = 0          
ownpal = 0 

[state 1020,1]
type = ctrlset
trigger1 = animelem = 3
value = 1

[state 1100,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;スタープラチナ中（通常時）
[statedef 1110]
anim = 1100
type = S
movetype = A
ctrl = 0
velset = 0,0

[state 1110,1]
type = velset
trigger1 = time = 0
x = 0

[State 1110,2]
type = Helper
trigger1 = time = 0
id = 10000    
name = "star"
pos = 30,0
postype = p1  
stateno = 11110
helpertype = normal
keyctrl = 0          
ownpal = 0 

[state 1110,1]
type = ctrlset
trigger1 = animelem = 3
value = 1

[state 1110,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;スタープラチナ強（通常時）
[statedef 1120]
anim = 1100
type = S
movetype = A
ctrl = 0
velset = 0,0

[state 1120,1]
type = velset
trigger1 = time = 0
x = 0

[State 1120,2]
type = Helper
trigger1 = time = 0
id = 10000    
name = "star"
pos = 30,0
postype = p1  
stateno = 11120
helpertype = normal
keyctrl = 0          
ownpal = 0 

[state 1120,1]
type = ctrlset
trigger1 = animelem = 3
value = 1

[state 1120,1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1