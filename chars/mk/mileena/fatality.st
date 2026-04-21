; Mileena's Finishers
;=============================
; Fatality states start here
;=============================
;**********Pummel me!********************
[Statedef 7000]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 7000
sprpriority = 2

; Finish related stuff
[State 7000, pause]
type = Pause
trigger1 = Time = 0
time = 30

[State 7000, No Effects]
type = VarSet
trigger1 = Time = 0
v = 6
value = 1

[State 7000, MK Death Music]
type = Playsnd
trigger1 = Time = 0
value = F3,1

[State 7000, PalFX]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130

[State 7000, fatal activated]
type = Varset
trigger1 = time = 0
v = 5
value = 1

[State 7000, malescream]
type = Playsnd
trigger1 = time = 10
trigger1 = p2name != "MK2 Integral Kitana"
trigger1 = p2name != "MK2 Integral Mileena"
trigger1 = p2name != "MK2 Integral Jade"
trigger1 = p2name != "MK2 Integral Cyd"
trigger1 = p2name != "MK2 Integral Lyssa"
trigger1 = p2name != "MK2 Integral Tanya"
value = F2, 4

[State 7000, femalescream]
type = Playsnd
triggerall = time = 10
trigger1 = p2name = "MK2 Integral Kitana"
trigger2 = p2name = "MK2 Integral Mileena"
trigger3 = p2name = "MK2 Integral Cyd"
trigger4 = p2name = "MK2 Integral Jade"
trigger5 = p2name = "MK2 Integral Lyssa"
trigger6 = p2name = "MK2 Integral Tanya"
value = F5, 0


[State 7000, hit]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
trigger11 = AnimElem = 33
trigger12 = AnimElem = 36
trigger13 = AnimElem = 39
trigger14 = AnimElem = 42
trigger15 = AnimElem = 45
attr = S, HA
animtype = Back
ground.hittime = 100
numhits = 0
priority  = 7
sparkno = -1
sparkxy = 0, -100
hitsound = F6, 0
kill = 0

[State 7000]
type = HitDef
trigger1 = AnimElem = 48
attr = S, HA
damage = 9999
numhits = 0
priority  = 7
sparkno = -1
sparkxy = 0, -100
hitsound = F1, 4

[State 7000, Upperblood]
type = Helper
trigger1 = time > 10
stateno = 6013
name = "Blood1"
id = 6012
pos = 0,-75
postype = P2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 7000, Upperblood]
type = Helper
trigger1 = AnimElem = 42
trigger2 = AnimElem = 45
stateno = 6012
name = "Blood2"
id = 6012
pos = 0,-75
postype = P2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1


[State 7000, changeback]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;*****************************Eyes Bigger than yer stomach, eh?****************
[Statedef 7100]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 9998
sprpriority = 2

; Finish related stuff
[State 7100, pause]
type = Pause
trigger1 = Time = 0
time = 30

[State 7100, No Effects]
type = VarSet
trigger1 = Time = 0
v = 6
value = 1

[State 7100, MK Death Music]
type = Playsnd
trigger1 = Time = 0
value = F3,1

[State 7100, PalFX]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130

[State 7100, fatal activated]
type = Varset
trigger1 = time = 0
v = 5
value = 1

[State 7100, helper]
type = Helper
trigger1 = time = 0
stateno = 7010
name = "eatme"
postype = p1
pos = 0, 0
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1

[State 7100, Pset]
type = PosSet
trigger1 = time = 199
y = 1900



[State 7100]
type = ChangeState
trigger1 = time = 200
value = 0
ctrl = 1

;-----------------------------------
; The helper that takes Mileena's place - gets rid of troublesome win-pose probs
[Statedef 7010]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 8000
sprpriority = 1


[State 7010, kill]
type = HitDef
trigger1 = animelem = 11
animtype = Back
attr = S, HA
numhits = 0
priority  = 7
ground.hittime = 40
sparkno = -1
sparkxy = 0, -100
;hitsound = 1, 5
p2stateno = 7020
kill = 0

[State 7010]
type = Helper
trigger1 = time > 190
stateno = 7040
name = "bones"
postype = p1
pos = -10, -100
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
under = 1


;-------------------------------------------------------------
; P2's state
[Statedef 7020]
type = S
movetype = H
physics = S
ctrl = 0
facep2 = 1
sprpriority = 2

[State 7020, change]
type = changeanim
trigger1 = time = 0
value = 9998


[State 7020, explod]
type = Explod
trigger1 = time = 0
anim = 5300
pos = 0,0
postype = p1
bindtime = 1
removetime = 10
sprpriority = 3

[State 7020, explod]
type = Explod
trigger1 = time = 10
anim = 5300
pos = 15,-40
postype = p1
scale = .75, .75
bindtime = 1
removetime = 10
sprpriority = 3

[State 7020, explod]
type = Explod
trigger1 = time = 20
anim = 5300
pos = 20,-60
postype = p1
scale = .50, .50
bindtime = 1
removetime = 10
sprpriority = 3

[State 7020, explod]
type = Explod
trigger1 = time = 30
anim = 5300
pos = 20,-90
postype = p1
scale = .25, .25
bindtime = 1
removetime = 5
sprpriority = 3



[State 7020, Pset]
type = PosSet
trigger1 = time = 250
y = 900

; erase p2
[State 7020]
type = changeanim
trigger1 = time = 250
value = 9998

[State 7020, killthemofo]
type = Lifeadd
trigger1 = time = 250
value = -9999

[State 7020, change]
type = selfstate
trigger1 = time = 250
value = 5150

;----------------------------------
; Bone helper
[StateDef 7040]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 7040]
type = ChangeAnim
trigger1 = Time = 0
value = 9101

[State 7040]
type = VelSet
trigger1 = Time = 0
X = -1-(Random/80)

[State 7040]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .2

[State 7040]
type = AngleAdd
trigger1 = Time > 0
trigger1 = Pos Y < 0
value = 7

[State 7040]
type = AngleDraw
trigger1 = Time > 0
trigger1 = Pos Y < -7

[State 7040, stop]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y >= 0
X = 0
Y = 0



;----------------------------------------------------------------
;==[Friendships]=================================================




;[State 10900, Kills P2]
;type = Helper
;trigger1 = AnimTime = 0
;stateno = 8002
;name = "Seeya P2"
;id = 666
;pos = 0,0
;postype = P2
;bintrime = -1
;helpertype = normal
;sprpriority = -1
;keyctrl = 0
;ownpal = 0
;under = 1



;------------------------------------------------------

; Removes opponent after F.S.
[Statedef 8002]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 9990
velset = 0, 0
ctrl = 0

[State 8002, Knock 'em dead]
type = HitDef
trigger1 = 1
attr = S, HT
priority  = 7
sparkno = -1
guard.sparkno = -1
p2stateno = 8005

[State 8002, Helper dies]
type = DestroySelf
trigger1 = MoveHit = 1

;-----------------------------
; P2 Buying the Farm
[Statedef 8005]
type    = S
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 8005, Stunned anim]
type = Explod
trigger1 = time = 0
trigger1 = animexist(5300)
anim = 5300
pos = 0,0
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8005, stun it up]
type = ChangeAnim
trigger1 = time = 0
trigger1 = animexist(5300)
value = 5300

[State 8005, Keep it comin]
type = Explod
trigger1 = time = 0
trigger1 = animexist(170)
trigger1 = !animexist(5300)
anim = 170
pos = 0,0
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8005, and comin]
type = ChangeAnim
trigger1 = animexist(170)
trigger1 = time = 0
trigger1 = !animexist(5300)
value = 170

[State 8005, and comin some more]
type = Explod
trigger1 = time = 0
trigger1 = !animexist(170)
trigger1 = !animexist(5300)
anim = 0
pos = 0,0
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8005, almost]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !animexist(170)
trigger1 = !animexist(5300)
value = 0

[State 8005, almost, really]
type = Lifeadd
trigger1 = time = 0
value = -9999

[State 8005, allllllmost]
type = Posset
trigger1 = time = 2
Y = 900

[State 8005, end]
type = Selfstate
trigger1 = time = 2
value = 5150

