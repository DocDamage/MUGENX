;=================================================================
;***********************FATALITIES!*******************************
;=================================================================


;Hell Rain
[Statedef 51096]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0
anim = 190                        ;Set ctrl (Def: no change)

[State 51096, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 51096, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 51096, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 51096, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 51096, Fire 1]
type = Projectile
trigger1 = time = 270 
projanim = 1143
projid = 1143
postype = p2
offset = 0, -300
velocity = 0, 7.2
remvelocity = 0, 0
projremovetime = -1
sprpriority = 9
ProjHits = 1
attr = S, NA
damage    = 9999
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
p2stateno = 2500
fall = 1

[State 51096, Fire 2]
type = Projectile
trigger1 = time = 40 
trigger2 = time = 90 
trigger3 = time = 190 
trigger4 = time = 240 
projanim = 1143
projid = 1143
postype = p1
offset = 0, -300
velocity = 0, 7
remvelocity = 0, 0
projremovetime = -1
sprpriority = 9
ProjHits = 1
attr = S, NA
damage    = 9999
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
p2stateno = 2500
fall = 1

[State 51096, Fire 3]
type = Projectile
trigger1 = time = 20 
trigger2 = time = 70 
trigger3 = time = 190 
trigger4 = time = 220 
projanim = 1143
projid = 1143
postype = p1
offset = 80, -300
velocity = 0, 6.8
remvelocity = 0, 0
projremovetime = -1
sprpriority = 9
ProjHits = 1
attr = S, NA
damage    = 9999
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
p2stateno = 2500
fall = 1

[State 51096, Fire 4]
type = Projectile
trigger1 = time = 45 
trigger2 = time = 84 
trigger3 = time = 134 
trigger4 = time = 240 
projanim = 1143
projid = 1143
postype = p1
offset = 130, -300
velocity = 0, 6.4
remvelocity = 0, 0
projremovetime = -1
sprpriority = 9
ProjHits = 1
attr = S, NA
damage    = 9999
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
p2stateno = 2500
fall = 1

[State 51096, Fire 5]
type = Projectile
trigger1 = time = 15 
trigger2 = time = 66 
trigger3 = time = 124 
trigger4 = time = 168 
projanim = 1143
projid = 1143
postype = p1
offset = 120, -300
velocity = 0, 6.5
remvelocity = 0, 0
projremovetime = -1
sprpriority = 9
ProjHits = 1
attr = S, NA
damage    = 9999
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
p2stateno = 2500
fall = 1

[State 51096, Fire 6]
type = Projectile
trigger1 = time = 38
trigger2 = time = 77
trigger3 = time = 146
trigger4 = time = 238
projanim = 1143
projid = 1143
postype = p1
offset = 190, -300
velocity = 0, 7.7
scale = 1.5, 1.5
ontop = 1
sprpriority = 9
remvelocity = 0, 0
projremovetime = -1
ProjHits = 1
attr = S, NA
damage    = 9999
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
p2stateno = 2500
fall = 1

[State 51096, Burning]
type = Playsnd
trigger1 = projcontact = 1
value = 20,11

[State 51096, SetFatal]
type = Varset
trigger1 = Time = 1
V = 4
value = 1

[State 51096, 8]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1,3

[State 51096, Male Screaming]
type = Playsnd
triggerall = Var(11) = 1
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,11

[State 51096, Male Screaming2]
type = Playsnd
triggerall = Var(11) = 2
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,10

[State 51096, Male Screaming3]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 20,26

[State 51096, Female Screaming]
type = VarRandom
triggerall = Time = 5
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
v = 11
range = 3,5

[State 51096, Female Screaming2]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 3, 12 

[State 51096, Female Screaming3]
type = Playsnd
triggerall = Var(11) = 4
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,14

[State 51096, Female Screaming4]
type = Playsnd
triggerall = Var(11) = 5
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,20

[State 51096, Skeleton]
type = Explod
trigger1 = ProjHit1143 = 1
anim = 51155
id = 5116
pos = 0, 0
postype = p2
sprpriority = 3
ontop = 1
facing = 1

[State 51096, Fire]
type = Explod
trigger1 = ProjHit1143 = 1
anim = 5116
scale = .8, 1.2
id = 5116
pos = 0, 0
postype = p2
sprpriority = 3
ontop = 1

[State 51096, 9]
type = Changestate
trigger1 = time = 200
value = 0
ctrl = 1

;Soul Steal
[StateDef 20100]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 20100, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 20100, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 20100, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 20100, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 20100, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 20100, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 20100, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X > 25 && p2bodydist X < 30
value = 20101

[StateDef 20101]
type = S
Movetype = A
Physics = S
juggle = 9
poweradd = 100
anim = 9998
ctrl = 0

[State 20101, helper]
type = Helper
trigger1 = time = 0
stateno = 41375
name = "soulsteal"
postype = p1
pos = 0, 0
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 1

[State 20101, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 20101, 1]
type = BGPalFX
trigger1 = time = 1
time = -1
add = -130, -130, -130
ignorehitpause = 1

[State 20101, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 20101, Pset]
type = PosSet
trigger1 = time = 1
y = 900

[State 20101, SetFatal]
type = Varset
trigger1 = Time = 10
V = 4
value = 1

[State 20101, changeback]
type = Changestate
trigger1 = time = 420
value = 0
ctrl = 1

[Statedef 41375]
type = S
Movetype = A
Physics = S
juggle = 9
poweradd = 100
anim = 41375
ctrl = 0

[State 41375, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 41375, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 41375, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 41375, get]
type = Playsnd
trigger1 = time = 0
value = 4,9

[State 41375, SetFatal]
type = Varset
trigger1 = Time = 10
V = 4
value = 1

[state 41375, Green]
type = hitdef
trigger1 = AnimElem = 1 
attr = S, HA
animtype  = light
priority  = 2
hitsound = s1,2
persistent = 2
guardflag = A
damage = 0
sparkno = -1
pausetime = 1,800
ground.type = high
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
fall.recover = 0
palfx.time = 500
palfx.add = 100,200,-200
palfx.mul = 235,205,64
palfx.sinadd = 50,20,0,50
palfx.color = 0
palfx.invertall = 1

[State 41375, Your Soul Is Mine]
type = Playsnd
trigger1 = AnimElem = 1 ;Time = 20
value = 20,33
volume = 255

[State 41375, Flash2]
type = EnvColor
trigger1 = AnimElem = 1 
value = 255,255,255
time = 5
under = 1

[State 41375, Flash]
type = EnvColor
trigger1 = AnimElem = 2 
value = 50,250,50
time = 5
under = 1

[State 41375, Moan]
type = Playsnd
trigger1 = time = 410 
trigger3 = time = 430 
value = 20,12

[state 41375, Kill]
type = hitdef
trigger1 = AnimElem = 2 
attr = S, HA
animtype  = light
priority  = 2
persistent = 2
guardflag = A
damage = 9999
sparkno = -1
hitsound   = s3,7
guardsound = s0,0
ground.type = high
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
fall.recover = 0
p2stateno = 2500

[State 41375, Soul1] 
type = Explod
trigger1 = AnimElem = 2
anim = 41377
pos = -20, -5
sprpriority = 6
postype = p1
ownpal = 1

[State 41375, Soul2] 
type = Explod
trigger1 = AnimElem = 2
anim = 41378
pos = 0, 0
sprpriority = 6
postype = p1
ownpal = 1
ontop = 1

[State 41375, Corpse] 
type = Explod
trigger1 = AnimElem = 2
anim = 41376
pos = 80, -15
sprpriority = 7
postype = p1
ownpal = 1
ontop = 0

[State 41375, Charge]
type = Playsnd
trigger1 = time = 440 
trigger2 = time = 445 
trigger3 = time = 450 
value = 31,37

[State 41375, Charge]
type = Playsnd
trigger1 = AnimElem = 2 
value = 20,16

[State 41375, 10]
type = ChangeState
trigger1 = time = 9999
ctrl = 1
value = 0


;Hell Hand
[Statedef 46724]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 46724, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 46724, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 46724, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 46724, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 46724, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 46724, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 46724, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X > 100 && p2bodydist X < 105
value = 46729

[StateDef 46729]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
Anim = 190
ctrl = 0

[State 46729, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 46729, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 46729, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 46729, Charge]
type = Playsnd
trigger1 = Time = 1
value = 20,16

[State 46729, SuperLight] 
type = Explod
trigger1 = time = 1
anim = 8228
pos = 85, -15
sprpriority = 9
postype = p1
supermove = 1
ownpal = 1
ontop = 1
pausemovetime = 9999

[State 46729, Hand]
type = Projectile
trigger1 = time = 50
projanim = 46725
offset = 65, -15
velocity = 0, 0
sprpriority = 1
; HitDef part of projectile info
attr = S, SP
damage = 0
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,999
sparkno = -1
guard.sparkno = -1
hitsound = s3, 7
guardsound = S1, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -1, -1
air.velocity = -1,-1
air.juggle = 5
palfx.time = 500
palfx.add = 100,-50,-200
palfx.mul = 255,255,64
palfx.sinadd = 50,10,0,10
palfx.color = 0
palfx.invertall = 1
envshake.time = 100
envshake.freq = 100
envshake.ampl = 6

[State 46729, HandKill]
type = Projectile
trigger1 = time = 50
projanim = 46726
projremove = 0
offset = 65, -15
velocity = 0, 0
sprpriority = 4
; HitDef part of projectile info
attr = S, SP
damage = 9999
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s1313, 9 
guardsound = S1, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -1, -1
air.velocity = -1,-1
air.juggle = 5
fall = 1
p1stateno = 9830
envshake.time = 40
envshake.freq = 200
envshake.ampl = 8


[State 46729, SetFatal]
type = Varset
trigger1 = Time = 0
V = 4
value = 1

[State 46729, 9]
type = Changestate
trigger1 = Animtime = 0
ctrl = 1
value = 0

;Brutaility
[Statedef 22236]
type    = S    
movetype= A                      
physics = S                    
velset = 0,0                    
ctrl = 0                       

[State 22236, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 22236, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 22236, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 22236, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 22236, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 22236, Brutality]
type = PlaySnd
trigger1 = Time = 40
value = 90210,0
volume = 255

[State 22236, 4]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 22236, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X > 1 && p2bodydist X < 5
value = 22237

[StateDef 22237]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
Anim = 90210
ctrl = 0

[State 22237, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 22237, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 22237, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 22237, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 400

[state 22237, 1]
type = hitdef
trigger1 = AnimElem = 4 
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 23
trigger5 = animelem = 29
trigger6 = animelem = 34
trigger7 = animelem = 40
trigger8 = animelem = 47
trigger9 = animelem = 54
trigger10 = animelem = 60
trigger11 = animelem = 66
trigger12 = animelem = 72
trigger13 = animelem = 77
trigger14 = animelem = 83
trigger15 = animelem = 90
trigger16 = animelem = 97
trigger17 = animelem = 101
attr = S, HA
animtype  = light
priority  = 2
persistent = 2
guardflag = A
damage = 0
sparkno = -1
hitsound   = s27,27
guardsound = s0,0
pausetime = 1,35
ground.type = high
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall.recover = 0

[state 22237, 2]
type = hitdef
trigger1 = AnimElem = 106
attr = S, SA
animtype  = Hard
air.animtype = Back
air.fall = 1
priority  = 2
persistent = 2
damage = 9999
sparkno = -1
hitsound   = s27,27
ground.type = high
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -1, -1
air.velocity = -1,-1
air.juggle = 5
fall = 1
p1stateno = 9830
envshake.time = 40
envshake.freq = 200
envshake.ampl = 8

[State 22237, 1h]
type = Helper
trigger1 = AnimElem = 4 
trigger2 = animelem = 17
trigger3 = animelem = 34
trigger4 = animelem = 47
trigger5 = animelem = 54
trigger6 = animelem = 77
trigger7 = animelem = 90
trigger8 = animelem = 106
stateno = 6040
name = "Roundhouse"
pos = 40,-72
postype = P1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 0

[State 22237, SetFatal]
type = Varset
trigger1 = Time = 1
V = 4
value = 1

[State 22237, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;--------------------------------------------
;---------------Scorpion-------------------
;--------------------------------------------

[Statedef 1931]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 1931, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 1931, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 1931, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X > 50 && p2bodydist X < 70
value = 1930

[StateDef 1930]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
Anim = 9999
ctrl = 0

[State 1930, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 1930, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 1930, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 1930, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 1930, Horror]
type = Playsnd
trigger1 = Time = 10
value = 20,0

[State 1930, Gasp]
type = Playsnd
trigger1 = Time = 60
value = 20,27

[State 1930, Jungle Theme]
type = Playsnd
trigger1 = time = 165
value = 20,18
volume = 255

[State 1930, Fire]
type = Playsnd
trigger1 = Time = 1
trigger2 = Time = 360
value = 20,3

[State 1930, Fire Explode]
type = Explod
trigger1 = time = 1
trigger2 = time = 360
anim = 5116
id = 5116
pos = 0, 0
postype = p1
sprpriority = 7
ontop = 1

[State 1930, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 1930, BoltFat]
type = Projectile
trigger1 = time = 7 
projanim = 1930
projremove = 0
projremovetime = 500
postype = p1
offset = 0, -10
velocity = 0, 0
sprpriority = 4
; HitDef part of projectile info
attr = S, SP
damage = 9999
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,100
sparkno = -1
guard.sparkno = -1
hitsound   = s1, 3 
guardsound = S1, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -1, -1
air.velocity = -1,-1
air.juggle = 5
fall = 1
palfx.time = 999
palfx.color = 0
palfx.add = 50,100,40
palfx.sinadd = 40,70,40,10
palfx.mul = 150,150,150
kill = 1

[State 1930, Blood]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 2
anim = 9094
pos = 90, -70
postype = p1
bindtime = -1
sprpriority = -2
shadow = -1
ownpal = 1
ontop = 0

[State 1930, Stab]
type = Playsnd
trigger1 = Time = 155
value = 20,24

[State 1930, 9]
type = Changestate
trigger1 = Animtime = 0
ctrl = 1
value = 0


;--------------------------------------------
;---------------Fire Column-------------------
;--------------------------------------------
[StateDef 1919]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
Anim = 1925
ctrl = 0

[State 1919, Shakies]
trigger1 = AnimElem = 1
type = EnvShake
time = 160
freq = 120
amp = -2

[State 1919, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 1919, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 1919, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 1919, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 1919,2]
type = PlaySnd
trigger1 = Time = 130
value = 20,3

[State 1919,3]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 20,16

[State 1919, SuperLight] 
type = Explod
trigger1 = AnimElem = 1
anim = 8228
pos = 160, 0
sprpriority = 5
postype
supermove = 1
ownpal = 1
pausemovetime = 9999

[State 1919, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 1920
pos = 160, -5
postype
BindTime = 150
sprpriority = -3
ownpal = 1

[State 1919, Rock Front]
type = Explod
trigger1 = time = 50 
anim = 1923
pos = 160, 0
postype
BindTime = -1
sprpriority = 3
ownpal = 1

[State 1919, Rock Back]
type = Explod
trigger1 = time = 50 
anim = 19222
pos = 160, 0
postype
BindTime = -1
sprpriority = -6
ontop = 0
ownpal = 1

[State 1919, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 1919, BoltFat]
type = Projectile
trigger1 = time = 130 
projanim = 1919
projhitanim = 1921
projremove = 0
projsprpriority = 1
postype
offset = 160, 0
velocity = 0, 0
sprpriority = 2
ontop = 0
; HitDef part of projectile info
attr = S, SP
damage = 9999
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3, -9
air.velocity = -2,-9
air.juggle = 5
envshake.time = 20
envshake.freq = 170
envshake.ampl = -6
p2stateno = 2500
fall = 1

[State 1919, Burning]
type = Playsnd
trigger1 = projcontact = 1
value = 20,11

[State 1919, 8]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1,2

[State 1919, Male Screaming]
type = Playsnd
triggerall = Var(11) = 1
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,11

[State 1919, Male Screaming2]
type = Playsnd
triggerall = Var(11) = 2
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,10

[State 1919, Female Screaming]
type = VarRandom
triggerall = Time = 5
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
v = 11
range = 3,5

[State 1919, Female Screaming2]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 3, 12 

[State 1919, Female Screaming3]
type = Playsnd
triggerall = Var(11) = 4
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,14

[State 1919, Female Screaming4]
type = Playsnd
triggerall = Var(11) = 5
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamika"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,20

[State 1919, Skeleton]
type = Explod
trigger1 = time = 140
anim = 511555
id = 51155
pos = 160, 0
postype = p1
bindtime = -1
sprpriority = 1
ontop = 0
facing = 1

[State 1919, Didn't hit, blocked etc.]
type = Destroyself
trigger1 = time = 300

[State 1919, 9]
type = Changestate
trigger1 = time = 300
value = 0
ctrl = 1

;**************Toasty**********
[Statedef 5510]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 5510, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 5510, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 5510, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 5510, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 5510, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 5510, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 5510,3]
type = ChangeState
trigger1 = p2bodydist X > 80 && p2bodydist X < 90
value = 5113

[State 5510,3]
type = ChangeState
trigger1 = time = 400
value = 0

[Statedef 5113] ;Toasty
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 5113 ;Breathe Fire
ctrl = 0

[State 5513, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 5513, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 5513, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 5113, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 5113, DaDaDa]
type = Playsnd
trigger1 = Time = 3
value = 20,0

[State 5113, DaDaDa2]
type = Playsnd
trigger1 = Time = 105
value = 20,3

[State 5113, BoltFat1]
type = Projectile
trigger1 = time = 110 
projanim = 51114
postype 
offset = 0, 0
velocity = 0, 0
remvelocity = 0, 0
projremovetime = -1
sprpriority = 9
; HitDef part of projectile info
ProjHits = 1 ;666
;projmisstime = 6
attr = S, NA
damage    = 9999
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,90
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
p2stateno = 2500
;PalFX
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 5513, "Toasty"]
type = Playsnd
trigger1 = Time = 85 
value = 20,13

[State 5113, Smoke]
type = Explod
trigger1 = projcontact = 1
anim = 5224
id = 5224
scale = 1, 1.1
pos = 0, 10
postype = p2
sprpriority = 2
ontop = 0

[State 5113, Fire]
type = Explod
trigger1 = projcontact = 1
anim = 5116
scale = 1, 1.1
id = 5116
pos = 0, 0
postype = p2
sprpriority = 3
ontop = 1

[State 5113, Burning]
type = Playsnd
trigger1 = projcontact = 1
value = 20,11

[State 5113, 8]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1,3

[State 5113, Male Screaming]
type = Playsnd
triggerall = Var(11) = 1
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,11

[State 5113, Male Screaming2]
type = Playsnd
triggerall = Var(11) = 2
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,10

[State 5113, Male Screaming3]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 20,26

[State 5513, Female Screaming]
type = VarRandom
triggerall = Time = 5
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
v = 11
range = 3,5

[State 5113, Female Screaming2]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 3, 12 

[State 5113, Female Screaming3]
type = Playsnd
triggerall = Var(11) = 4
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,14

[State 5113, Female Screaming4]
type = Playsnd
triggerall = Var(11) = 5
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,20

[State 5113, Skeleton]
type = Explod
trigger1 = time = 126 ;projcontact = 1
anim = 51155
id = 51155
pos = 130, 0
postype = p1
bindtime = -1
sprpriority = 1
ontop = 0
facing = 1

[State 5113, Didn't hit, blocked etc.]
type = Destroyself
trigger1 = time = 300

[State 5113, 9]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------------------------
;----------Toasty 2------------
;------------------------------

[Statedef 2400]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 2400, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 2400, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 2400, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9940, -19940
anim = 100
sound = S4, 3
poweradd = -2888

[State 2400, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 2400, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 2400, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 2400, 2]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 2400,3]
type = ChangeState
trigger1 = p2bodydist X < 120
value = 24400

[Statedef 24400] 
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 51113 ;Breathe Fire
ctrl = 0

[State 24400, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 24400, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 24400, DaDaDa]
type = Playsnd
trigger1 = Time = 3
value = 20,0

[State 24400, DaDaDa2]
type = Playsnd
trigger1 = Time = 105
value = 20,3

[State 24400, Flame 1]
type = Explod
trigger1 = time = 100
anim = 42220
pos = 22, 0
scale = 1.4, 1.3
postype = p1
bindtime = -1
sprpriority = -3
shadow = -1
ownpal = 1
ontop = 0

[State 24400, BoltFat1]
type = Projectile
trigger1 = time = 100 
projanim = 42220
postype 
offset = 22, -23
velocity = 0, 0
remvelocity = 0, 0
projremovetime = -1
sprpriority = 9
; HitDef part of projectile info
numHits = 666
attr = S, NA
damage    = 9999
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,90
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
;PalFX
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p2stateno = 2500

[State 24400, Burning]
type = Playsnd
trigger1 = projcontact = 1
value = 20,11

[State 24400, 8]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1,3

[State 24400, Male Screaming]
type = Playsnd
triggerall = Var(11) = 1
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,11

[State 2400, Male Screaming2]
type = Playsnd
triggerall = Var(11) = 2
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,10

[State 2400, Male Screaming3]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 20,26

[State 24400, Female Screaming2]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 3, 12 

[State 24400, Female Screaming3]
type = Playsnd
triggerall = Var(11) = 4
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,14

[State 24400, Female Screaming4]
type = Playsnd
triggerall = Var(11) = 5
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,20


[State 24400, Skeleton]
type = Explod
trigger1 = projcontact = 1
anim = 5115
id = 5115
pos = 150, 0
postype = p1
bindtime = -1
sprpriority = -4
ontop = 0
facing = 1

[state 24400, 2c]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; Get rid of P2
[Statedef 2500]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 2500, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = nokosnd
flag3 = Invisible

[State 2400, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 2400, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 2400, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 2500, NoSlow2]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 2500, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 2500, 2.6]
type = Posset
trigger1 = time = 6
Y = 900

[State 2500, OkayYouCanStop]
type = PalFX
trigger1 = time = 6
time = 1
add = 0, 0, 0
mul = 0, 0, 0

[State 2500, NoBGM]
type = AssertSpecial
trigger1 = Time >= 9
flag = nokoslow

[State 2500, 3]
type = Lifeadd
trigger1 = Time = 30
Value = -9999

[State 2500, 2]
type = Selfstate
trigger1 = Time = 39
value = 5150

;-----------------------------------------
; Player 1, You do the blow-up
[Statedef 2600]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 2600, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 2600, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 2600, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 2600, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 1,5

[State 2600, 1]
type = Explod
trigger1 = projcontact = 1
trigger1 = p2stateno = 2500
anim = 2203
id = 2203
pos = 80, 220 ;floor(p2dist X),220
postype = left
bindtime = -1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 0

[State 2600, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 2600, 2]
type = ChangeState
trigger1 = Time = 0
value = 0
ctrl = 1


[Statedef 9000]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 9000
ctrl = 0

[State 9000, 1]
type = Explod
trigger1 = time = 0
anim = 7040
id = 7050
pos = 156,90
postype = left
bindtime = -1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 0

[State 9000, 2]
type = HitDef
trigger1 = p2life < 5
trigger1 = p2movetype != H
trigger1 = p2statetype != A
attr = S, HA
numhits = 0
priority  = 7
sparkno = -1
p2stateno = 9010
kill = 0

[State 9000, 3]
type = ParentVarset
trigger1 = time = 0
V = 13
value = 400

[State 9000, 4]
type = Destroyself
trigger1 = p2stateno = 9010

;--------------------------------------
;Fatality time
[Statedef 9010]
type    = S
movetype= H
physics = N
juggle  = 1
velset = 0,0
ctrl = 0

[State 9010, 0.1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 9010, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
value = 9010
;-----------------------------------------
;Fatality time ends
[Statedef 9011]
type    = S
movetype= H
physics = S
juggle  = 1

[State 9011, NoSlow]
type = AssertSpecial
trigger1 = time = [0, 5000]
flag = nokoslow

[State 9011, 2]
type = Lifeadd
trigger1 = time = 1
value = -9999

[State 9011, 3]
type = Selfstate
trigger1 = time = 1
value = 5070
ctrl = 0

[Statedef 9020]
type    = S
movetype= A
juggle  = 1
anim = 9000
ctrl = 0

[State 9020, 1]
type = HitDef
trigger1 = time = 0
attr = S, HA
;Nothing = 0
numhits = 0
priority  = 7
sparkno = -1
p2stateno = 9011

[State 9020, 2]
type = Destroyself
trigger1 = time = 1

;*************************Lava Pour*************************
[Statedef 1313]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 1313, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 1313, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 1313, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 1313, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 1313, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 1313, 2]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 1313,3]
type = ChangeState
trigger1 = p2bodydist X > 90 && p2bodydist X < 110
value = 131301

[State 1313,4]
type = ChangeState
trigger1 = time = 400
value = 0

[Statedef 131301]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0
anim = 2267 ;Raise Hands 

[State 131301, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 131301, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 131301, 2]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 131301, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 131301, Spit2]
type = Playsnd
trigger1 = Time = 20
value = 5,9 

[State 131301, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 131301, BoltFat]
type = Projectile
trigger1 = time = 60
projanim = 5226 ;lava
postype 
offset = 150, 0
projremove = 0
velocity = 0, 0
remvelocity = 0, 0
attr = S, SP
damage    = 9999
animtype = Hard
air.animtype = Back
;air.fall = 1
guardflag = MA
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
hitsound   = s31,31
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
p2stateno = 2500
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3

[State 131301, Spark]
type = Explod
trigger1 = projcontact = 1
anim = 1210
id = 1210
pos = 160, 0
postype = p1
bindtime = -1
sprpriority = 5
ontop = 1

[State 131301, 1]
type = Explod
trigger1 = projcontact = 1
trigger1 = p2stateno = 2500
anim = 5115 ;burning
id = 5115 
pos = 160, 0
postype = p1
bindtime = -1
facing = 1
sprpriority = -1
ontop = 0
ownpal = 1

[State 131301, Burning]
type = Playsnd
triggerall = projcontact = 1
trigger1 = time = 1
trigger2 = time = 150
value = 20,11

[State 131301, Lava]
type = Playsnd
trigger1 = time = 70
trigger2 = time = 100
trigger3 = time = 150
trigger4 = time = 200
trigger5 = time = 250
trigger6 = time = 300
trigger7 = time = 350
trigger8 = time = 400
trigger9 = time = 450
trigger10 = time = 500
trigger11 = time = 550
value = s20,15

[State 131301, 8]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1,3

[State 131301, Male Screaming]
type = Playsnd
triggerall = Var(11) = 1
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,11

[State 131301, Male Screaming2]
type = Playsnd
triggerall = Var(11) = 2
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,10

[State 131301, Male Screaming3]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 20,26

[State 131301, Female Screaming]
type = VarRandom
triggerall = Time = 5
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
v = 11
range = 3,5

[State 131301, Female Screaming2]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 3, 12 

[State 131301, Female Screaming3]
type = Playsnd
triggerall = Var(11) = 4
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,14

[State 131301, Female Screaming4]
type = Playsnd
triggerall = Var(11) = 5
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,20

[State 131301, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[Statedef 9101]
type    = S
movetype= I
juggle  = 0
anim = 9150
velset = 0,0,0
ctrl = 0

[State 9101, bindit]
type = ScreenBound
trigger1 = 1
value = 1
;MoveCamera= 1, 0

[State 9101, StartSnd1]
type = Playsnd
trigger1 = Time = 100
value = 4,6

[Statedef 9124]
type    = S
movetype= H
physics = N
velset = 0,0,0
ctrl = 0

[State 9124, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9124, Need to use the patch]
type = Explod
trigger1 = time >= 10
anim = 90001 
pos = 0,-70
postype = p1
ontop = 1

[State 9124, Flash]
type = PalFX
trigger1 = time = 0
time = 1000
add = 0, 0, 0
mul = 188, 355, 155
sinadd = 0, 90, 90, 7

[State 9106, EndOfFAT]
type = Changestate
trigger1 = Time = 300
value = 9125
ctrl = 0


; Player 2, you're outta here!!!!
[Statedef 9125]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9125, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9125, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 9125, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9125, OkayYouCanStop]
type = PalFX
trigger1 = time = 6
time = 1
add = 0, 0, 0
mul = 0, 0, 0

[State 9100, NoBGM]
type = AssertSpecial
trigger1 = Time >= 9
flag = nokoslow

[State 9125, 3]
type = Lifeadd
trigger1 = Time = 9
Value = -9999

[State 9125, 2]
type = Selfstate
trigger1 = Time = 9
value = 5150

;-----------------------------------------
; Player 1, You do the blow-up
[Statedef 9130]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 9130, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9130, BOOM]
type = Playsnd
trigger1 = Time = 4
value = 4,21

[State 9130, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9130, 1.554]
type = Helper
trigger1 = Time = 0
stateno = 9200
name = "LotsaMeat"
postype = p2
pos = 0, const(size.mid.pos.y)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9130, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,Var(24)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9130, 1.556]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,(Var(24) / 2)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 9130, 2]
type = destroyself ;ChangeState
trigger1 = Time = 150 
value = 0
ctrl = 1

;--------------------------------
[Statedef 9830]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0

[State 9830, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 9830, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9830, White]
type = BGPalFX
trigger1 = time = 0
time = 3
add = 230, 230, 230
ignorehitpause = 1

[State 9830, Black]
type = BGPalFX
trigger1 = time = 3
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9830, Blood]
type = Explod
trigger1 = time = 1
anim = 6041
id = 6041
offset = 0, -50
pos = 0, -50
postype = p2
sprpriority = 7
ontop = 1
ownpal = 1

[State 9830, GoBoom]
type = TargetState
trigger1 = Time = 0
Value = 9125
pos = 170,0

[State 9830, BOOM]
type = Playsnd
trigger1 = Time = 0
value = 4,21

[State 9830, BodyDamage1]
type = Playsnd
trigger1 = Time = 6
value = 1,5

[State 9830, BodyDamage2]
type = Playsnd
trigger1 = Time = 2
value = 31,35

[State 9830, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9830, 1.555]
type = Helper
trigger1 = Time = 0
stateno = 9200
name = "LotsaMeat"
postype = p2
pos = 0, const(size.mid.pos.y)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9830, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,Var(24)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9830, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,(Var(24) / 2)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9830, SetFatal]
type = Varset
trigger1 = Time = 1
V = 4
value = 1

[State 9830, EndOfFAT]
type = Changestate
trigger1 = Time = 0
value = 0
ctrl = 1

[Statedef 9833]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0

[State 9833, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9833, BOOM]
type = Playsnd
trigger1 = Time = 4
value = 4,21

[State 9833, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9833, 1.555]
type = Helper
trigger1 = Time = 0
stateno = 9200
name = "LotsaMeat"
postype = p2
pos = 0, const(size.mid.pos.y)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9833, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,Var(24)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9833, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,(Var(24) / 2)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9833, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 5

[State 9833, GoBoom]
type = TargetState
trigger1 = AnimTime = 0
Value = 9125
pos = 170,0

[State 9833, Oopsie]
type = TargetLifeAdd
trigger1 = AnimTime = 0
value = -9999

[State 9833, EndOfFAT]
type = Changestate
trigger1 = AnimTime = 0
value = 9130
ctrl = 0



;--------------------------------
; Measure Player Two
[StateDef 9200]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9150
ctrl = 0

[State 9200, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9200, 5]
type = HitDef
trigger1 = Time = 0
attr = S, HA
numhits = 0
priority  = 7
sparkno = -1
guard.sparkno = -1
p2stateno = 9125
kill = 0

[State 9200, head]
type = BindtoTarget
trigger1 = time = 1
pos = 0,0,head
time = 1

[State 9200, Where]
type = ParentVarSet
trigger1 = time = 1
v = 24
value = Pos Y

[State 9200, mid]
type = BindtoTarget
trigger1 = time = 2
pos = 0,0,mid
time = 0

[State 9200, start]
type = changestate
trigger1 = time = 2
value = 9201

;--------------------------------------
; Blow chunks
[StateDef 9201]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9150
ctrl = 0

[State 9201, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9201, 10]
type = Helper
trigger1 = Random < 300
stateno = 9211
name = "Skull"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 10]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 20]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 30]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 40]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 50]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 60]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 70]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 80]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 90]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 91]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 92]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 44]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 45]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 46]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 47]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 48]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 49]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 50]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 51]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, done]
type = DestroySelf
trigger1 = time = 4

;-----------------------------------
;Meat Bits
[StateDef 9210]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9210, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9210, Select]
type = VarRandom
trigger1 = Time = 0
v = 11
Range = 9100, 9105

[State 9210, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = Var(11)

[State 9210, GO]
type = VelSet
trigger1 = Time = 0
X = 3.4-(Random/144)
Y = -4-(Random/99)

[State 9210, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9210, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9210, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9210, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9210, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;Meat Bits
[StateDef 9211]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9211, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9211, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9106

[State 9211, GO]
type = VelSet
trigger1 = Time = 0
X = 5-(Random/88)
Y = -4-(Random/99)

[State 9211, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9211, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9211, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9211, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9211, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;
;  Fatal Shocker (Less bits that blow-up).
[Statedef 9300]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9300, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9300, initVar]
type = VarSet
trigger1 = time = 0
v = 25
value = 0

[State 9300, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9300

[State 9300, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9300, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 9300, 3]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause

[State 9330, 0.3]
type = EnvColor
trigger1 = time = 0
value = 255, 255, 255
Time = 6

[State 9300, StartZapping]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p1stateno = 9310
p2stateno = 9380
id = 6040

;-------------------------
; P2 Go BOOM!
[StateDef 9330]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 9330

[State 9330, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9330, RemArm]
type = RemoveExplod
trigger1 = Time = 1
id = 9310

[State 9330, BOOM]
type = Playsnd
trigger1 = Time = 4
value = 4,21

[State 9330, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9330, 1.555]
type = Helper
trigger1 = Time = 0
stateno = 9340
name = "SomeMeat"
pos = 36, -81
Postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9330, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 9330, Dropum]
type = TargetState
trigger1 = Time = 4
ctrl = 0
value = 9399

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36, -121
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36, -81
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36, -41
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 2]
type = ChangeState
trigger1 = Time = 20
value = 0
ctrl = 1

;--------------------------------------
; Blow chunks
[StateDef 9340]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9150
ctrl = 0

[State 9340, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9340, 10]
type = Helper
trigger1 = Time = 0
stateno = 9341
name = "Skull"
pos = 0,0
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 10]
type = Helper
trigger1 = Time = 0
trigger1 = Time = 4
stateno = 9342
name = "Hand"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 20]
type = Helper
trigger1 = 1
stateno = 9343
name = "BONE"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 20]
type = Helper
trigger1 = 1
stateno = 9343
name = "BONE"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 30]
type = Helper
trigger1 = 1
stateno = 9344
name = "Guts"
pos = 0,0
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 40]
type = Helper
trigger1 = 1
stateno = 9345
name = "Hip"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 50]
type = Helper
trigger1 = 1
trigger1 = Time = 0
trigger2 = Time = 4
stateno = 9346
name = "Leg"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 60]
type = Helper
trigger1 = 1
stateno = 9347
name = "MEAT"
pos = 0,0
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 70]
type = Helper
trigger1 = Time = 0
trigger2 = Time = 4
stateno = 9348
name = "InvLeg"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, done]
type = DestroySelf
trigger1 = time = 4

;-----------------------------------
;SKULL
[StateDef 9341]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9106

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;Hand
[StateDef 9342]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9342, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9100

[State 9342, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9342, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9342, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9342, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9342, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9342, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;BONE
[StateDef 9343]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9343, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9101

[State 9343, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9343, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9343, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9343, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9343, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9343, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;Guts
[StateDef 9344]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9344, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9102

[State 9344, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9344, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9344, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9344, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9344, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9344, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;HIP
[StateDef 9345]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9345, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9103

[State 9345, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9345, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9345, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9345, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9345, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9345, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;LEG
[StateDef 9346]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9346, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9104

[State 9346, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9346, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9346, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9346, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9346, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9346, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;MEAT
[StateDef 9347]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9347, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9105

[State 9347, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9347, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9347, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9347, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9347, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9347, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;LEG2
[StateDef 9348]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9348, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9114

[State 9348, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9348, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9348, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9348, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9348, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9348, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;---------------------
; Zap Player two!!!
[StateDef 9380]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 9380, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9380, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1350

[State 9380, 6.7]
type = Explod 
trigger1 = time = 50
anim = 1616
name = "Smoke"
pos = 40,170
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1

[State 9380, Shockies]
type = PalFX
trigger1 = time = 0
time = 240
add = 0, 0, 0
mul = 128, 455, 455
sinadd = 0, 90, 90, 7

;----------------------------------------------
; Player Two Drops.
[StateDef 9390]
type    = A
movetype= H
physics = N
juggle  = 2
velset = .1,-.7,0
ctrl = 0

[State 9390, Gravity]
type = VelAdd
Trigger1 = 1
y = .4

[State 9390, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = nokosnd

[State 9390, 3]
type = Lifeadd
trigger1 = Time = 0
Value = -9999

[State 9390, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1360

[State 9390, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;-----------------------------------------
; Player 2, you're outta here!!!! (Quicker)
[Statedef 9399]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9399, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 9399, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9399, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 0
Value = -9999

[State 9399, 2]
type = Selfstate
trigger1 = Time = 0
value = 5150

;==========================================
[Statedef 9400]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 9400, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9940, -19940
anim = 100
sound = S4, 3
poweradd = -2888

[State 9400, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9400, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9400, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9400, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 9400, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 9400, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 9400.2]
type = ChangeState
trigger1 = p2bodydist X < 15
value = 25055

[Statedef 25055]
type    = S
movetype= A
juggle  = 1
anim = 11
velset = 0, 0
ctrl = 0

[State 25055, 1]
type = SuperPause
trigger1 = Time = 0
anim = -1
movetime = 10
time = 28

[State 25055, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 25055, 1.5]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -130, -130, -130
ignorehitpause

[State 25055, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 25055, Select]
type = VarRandom
trigger1 = Time = 0
v = 21
Range = 0, 3

[State 25055, PointyThingsSel]
type = changestate
trigger1 = command = "holdup"
value = 9401

[State 25055, PIT2Sel]
type = changestate
trigger1 = command = "holddown"
value = 9410

[State 25055, PuddleSel]
type = changestate
trigger1 = command = "holdfwd"
value = 9430

[State 25055, PointyThings]
type = changestate
trigger1 = Time = 16
trigger1 = Var(21) = 0
value = 9401

[State 25055, PIT2]
type = changestate
trigger1 = Time = 16
trigger1 = Var(21) = 1
value = 9410

[State 25055, Puddle]
type = changestate
trigger1 = Time = 16
trigger1 = Var(21) = 2
value = 9430

;--------------------------------------
;----THE PIT--------------
;--------------------------------------

[Statedef 9401]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9401, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9401, Spikes]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 9
value = 20,30

[State 9401, Spikey]
type = Explod
trigger1 = Time = 5
anim = 9400
pos = 3, 0
Postype = Left
bindtime = 1
sprpriority = -1
ownpal = 1

[State 9401, Spikey2]
type = Explod
trigger1 = Time = 5
anim = 9401
pos = 3, 0
Postype = Left
bindtime = 1
sprpriority = 1
ownpal = 1

[State 9401, 5]
type = Helper
trigger1 = animelem = 1
stateno = 9403
name = "Puncture"
id = 9101
pos = 3, -205
Postype = Left
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9401, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9494   ;430

[State 9401, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound   = s20,32
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p1stateno = 431 
p2stateno = 9405
id = 6040

[State  9401, Var]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 9401, stand]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
-----------------------------------------
; Player 1, You do the PIT
[Statedef 9402]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 9402, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9402, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9402, 3.5]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "UPPERCUT"
id = 6040
pos = 57,-74
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9402, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9402, 2]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;--------------------------------------
; With sharp spikes
[Statedef 9403]
type    = S
movetype= A
juggle  = 1
anim = 9403
velset = 0, 0
ctrl = 0

[State 9403, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9403, ca-chunk]
type = HitDef
trigger1 = Time > 0
attr = S, HA
numhits = 0
priority  = 7
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
p2stateno = 9406
kill = 0

[State 9403, StopTarget]
type = TargetVelSet
trigger1 = MoveHit = 1
X = 0
Y = 0

[State 9403, FindTarget]
type = Helper
trigger1 = MoveHit = 1
stateno = 9404
name = "Seive"
id = 9101
pos = 0, 0
Postype = p2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9403, bye]
type = DestroySelf
trigger1 = MoveHit = 1


;--------------------------------------
; Hit the sharp spikes
[Statedef 9404]
type    = S
movetype= A
juggle  = 1
anim = 9404
velset = 0, 0
ctrl = 0

[State 9404, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9404, ca-chunk]
type = PlaySnd
trigger1 = Time = 0
value = 1,3

[State 9404, groan]
type = PlaySnd
trigger1 = Time = 0
value = 3,7

[State 9404, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0, 0
Postype = P1
bindtime = 1
sprpriority = 3

[State 9404, 3.5]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "Spiked"
id = 6040
pos = 0,0
postype = P1
helpertype = normal
sprpriority = 2
keyctrl = 0
ownpal = 0
under = 1

[State 9404, Select]
type = VarRandom
trigger1 = TimeMod = 45, 43
v = 22
Range = -20, 20

[State 9404, Left]
type = Helper
trigger1 = TimeMod = 45, 44
trigger1 = Var(22) <= 0
stateno = 6000
name = "Blood Left"
pos = Var(22), 0
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9404, Right]
type = Helper
trigger1 = TimeMod = 45, 44
trigger1 = Var(22) > 0
stateno = 6002
name = "Blood Right"
pos = Var(22), 0
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1


;--------------------
[Statedef 9405]
type    = A
movetype= H
physics = N
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9405, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9405, bindit]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera= 0, 0

[State 9405, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 9405, DieDieDie]
type = ChangeAnim2
trigger1 = Time = 0
value = 9405

[State 9405, Fly]
type = VelSet
trigger1 = Time = 0
Y = -10

[State 9405, 2]
type = Selfstate
trigger1 = time = 105
value = 5150

;----------Impaler----------
;Player 1 does the motions
[Statedef 8910]
type = S
movetype= A
physics = N
ctrl = 0
anim = 8910

[State 8910, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 8910, NotFriendly]
type = VarSet
trigger1 = Time = 0
v = 5
value = 1

[State 8910, 0]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 8910, Rise1]
type = TargetBind
trigger1 = time = 1 
pos = 37, -59
bindtime = 1

[State 8910, Rise2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 37, -79
bindtime = 1

[State 8910, Lift]
type = TargetBind
trigger1 = AnimElem = 3
pos = 34, -89
bindtime = 1

[State 8910, Heave]
type = TargetBind
trigger1 = AnimElem = 4
pos = 26, -102
bindtime = 1

[State 8910, Over]
type = TargetBind
trigger1 = AnimElem = 5
pos = 19, -117
bindtime = 1

[State 8910, HUU]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 12

[State 8910, Pressed]
type = TargetBind
trigger1 = AnimElem = 6
pos = 4, -112
bindtime = 1

[State 8910, Left]
type = Helper
trigger1 = AnimElemtime(5) = 30 
stateno = 6000
name = "Blood Left"
pos = -50, 50
postype = P2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 8910, Right]
type = Helper
trigger1 = AnimElemtime(5) = 20 
stateno = 6002
name = "Blood Right"
pos = 50, 50
postype = P2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 8910, Pressed]
type = explod
trigger1 = AnimElemtime(5) >= 0 && AnimElemtime(5) < 20
anim = 1230
postype = p2
pos = -50, 50
bindtime = -11
facing = random-500
vfacing = random-500
random = random / 50,random / 100
scale = random/1000.0,random/1000.0
ontop = 1
vel = 2*random/1000.0,2*random/1000.0
accel = 2*random/1000.0,2*random/1000.0
removetime = -2

[State 8910, Toss] ;sends player 2 into state 921, without using a itdef
type = TargetState
trigger1 = AnimElem = 7, = 0
value = 8921
ctrl = 0

[State 8910, kill P2]
type = HitDef
trigger1 = time = 78
attr = S, HA
hitflag = HLAFD
damage    = 500,5
priority  = 7
kill       = 1
fall.kill  = 1
guard.kill = 1

[State 910, 2]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;THROWEE
[Statedef 920]
type = S
movetype = H
physics = N
ctrl = 0

[State 920, bindit]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera= 0, 0

[State 920, 0]
type = SprPriority
trigger1 = Time = 0
value = 1

[State 920, 1]
type = Changeanim2
trigger1 = time = 0
value = 920

[State 920, Just in case]
type = Selfstate
trigger1 = Time >= 60
value = 5100
ctrl = 0
;------------------------------------------------------------------------
;THROWEE
[Statedef 921]
type = S
movetype = H
physics = N
velset = 6, 10
ctrl = 0

[State 921, bindit]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera= 0, 0

[State 921, 0]
type = SprPriority
trigger1 = Time = 0
value = 1

[State 921, .5]
type = Turn
trigger1 = time = 0

[State 921, .5]
type = Changeanim2
trigger1 = time = 0
value = 921

[State 921, 4]
type = Selfstate
trigger1 = Pos Y >= 0
value = 5100
ctrl = 0
;--------------------
[Statedef 9406]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 9406, DieDieDie]
type = ChangeAnim2
trigger1 = Time = 0
value = 9406

[State 9406, bindit]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera= 0, 0

[State 9406, Clone]
type = Explod
trigger1 = time = 0
anim = 5110
pos = 0,0
bindtime = 1
removetime = -1
sprpriority = 0
shadow = -1

[State 9406, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow

[State 9406, 3]
type = Lifeadd
trigger1 = time = 10
Value = -9999

[State 9406, 2.6]
type = Posset
trigger1 = time = 10
Y = 900

[State 9406, 2]
type = Selfstate
trigger1 = time = 23
value = 5150

;**************Pit 2**********
[Statedef 9410]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9410, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9410, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9410, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9494

[State 9410, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound = s20, 32
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p1stateno = 9411
p2stateno = 9415

[State 9410, stand]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9411]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 9111, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9411, 0.3]
type = SprPriority
trigger1 = time = 0
value = 5

[State 9411, 8]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1,3

[State 9411, Male Screaming]
type = Playsnd
triggerall = Var(11) = 1
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,11

[State 9411, Male Screaming2]
type = Playsnd
triggerall = Var(11) = 2
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 3,10

[State 9411, Male Screaming3]
type = Playsnd
triggerall = Var(11) = 3
triggerall = projcontact = 1
trigger1 = p2name != "kitana"
trigger2 = p2name != "mileena"
trigger3 = p2name != "jade"
trigger4 = p2name != "cammy"
trigger5 = p2name != "chun li"
trigger6 = p2name != "kyla"
trigger7 = p2name != "sakura"
trigger8 = p2name != "juli"
trigger9 = p2name != "sonya"
trigger10 = p2name != "juni"
trigger11 = p2name != "evil chun li"
trigger12 = p2name != "mai"
trigger13 = p2name != "jenet"
trigger14 = p2name != "rose"
trigger15 = p2name != "Athena"
trigger16 = p2name != "Shermie"
trigger17 = p2name != "Karin"
trigger18 = p2name != "Vanessa"
trigger19 = p2name != "Mai"
trigger20 = p2name != "Kasumi"
trigger21 = p2name != "Blue Mary"
trigger22 = p2name != "Hinako"
trigger23 = p2name != "Leona"
trigger24 = p2name != "Chizuru"
trigger25 = p2name != "Storm"
trigger26 = p2name != "Psylocke"
trigger27 = p2name != "Rogue"
trigger28 = p2name != "King"
trigger29 = p2name != "Vice"
trigger30 = p2name != "Mature"
trigger31 = p2name != "Yuri"
trigger32 = p2name != "Mugena"
trigger33 = p2name != "Kula"
trigger34 = p2name != "BBH"
trigger35 = p2name != "Charlote"
trigger36 = p2name != "Nakoruru"
trigger37 = p2name != "rim"
trigger38 = p2name != "lilith"
trigger39 = p2name != "felicia"
trigger40 = p2name != "hsien-ko"
trigger41 = p2name != "q bee"
trigger42 = p2name != "r. mika"
trigger43 = p2name != "Janne"
trigger44 = p2name != "Aska"
trigger45 = p2name != "Eiko Magami"
trigger46 = p2name != "Biko Daitokuji"
trigger47 = p2name != "Princess Peach"
trigger48 = p2name != "Nega Peach"
trigger49 = p2name != "Dark Chun Li"
trigger50 = p2name != "Neo Dark Chun Li"
trigger51 = p2name != "Anita"
trigger52 = p2name != "Tamikav"
trigger53 = p2name != "Shorasha"
trigger54 = p2name != "Ainsley"
trigger55 = p2name != "Polaris"
trigger56 = p2name != "Buttercup"
trigger57 = p2name != "Baby Bonnie Hood"
trigger58 = p2name != "Bulleta"
trigger59 = p2name != "Hsien-Ko"
trigger60 = p2name != "Lei-Lei"
trigger61 = p2name != "Tessa"
value = 20,26

[State 9411, Female Screaming]
type = VarRandom
triggerall = Time = 5
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
v = 11
range = 3,5

[State 9411, Female Screaming2]
type = Playsnd
triggerall = Var(11) = 3
triggerall = time = 5
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20, 20

[State 9411, Female Screaming3]
type = Playsnd
triggerall = Var(11) = 4
triggerall = time = 5
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamikav"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,20

[State 9411, Female Screaming4]
type = Playsnd
triggerall = Var(11) = 5
triggerall = projcontact = 1
trigger1 = p2name = "kitana"
trigger2 = p2name = "mileena"
trigger3 = p2name = "jade"
trigger4 = p2name = "cammy"
trigger5 = p2name = "chun li"
trigger6 = p2name = "kyla"
trigger7 = p2name = "sakura"
trigger8 = p2name = "juli"
trigger9 = p2name = "sonya"
trigger10 = p2name = "juni"
trigger11 = p2name = "evil chun li"
trigger12 = p2name = "mai"
trigger13 = p2name = "jenet"
trigger14 = p2name = "rose"
trigger15 = p2name = "Athena"
trigger16 = p2name = "Shermie"
trigger17 = p2name = "Karin"
trigger18 = p2name = "Vanessa"
trigger19 = p2name = "Mai"
trigger20 = p2name = "Kasumi"
trigger21 = p2name = "Blue Mary"
trigger22 = p2name = "Hinako"
trigger23 = p2name = "Leona"
trigger24 = p2name = "Chizuru"
trigger25 = p2name = "Storm"
trigger26 = p2name = "Psylocke"
trigger27 = p2name = "Rogue"
trigger28 = p2name = "King"
trigger29 = p2name = "Vice"
trigger30 = p2name = "Mature"
trigger31 = p2name = "Yuri"
trigger32 = p2name = "Mugena"
trigger33 = p2name = "Kula"
trigger34 = p2name = "BBH"
trigger35 = p2name = "Charlote"
trigger36 = p2name = "Nakoruru"
trigger37 = p2name = "rim"
trigger38 = p2name = "lilith"
trigger39 = p2name = "felicia"
trigger40 = p2name = "hsien-ko"
trigger41 = p2name = "q bee"
trigger42 = p2name = "r. mika"
trigger43 = p2name = "Janne"
trigger44 = p2name = "Aska"
trigger45 = p2name = "Eiko Magami"
trigger46 = p2name = "Biko Daitokuji"
trigger47 = p2name = "Princess Peach"
trigger48 = p2name = "Nega Peach"
trigger49 = p2name = "Dark Chun Li"
trigger50 = p2name = "Neo Dark Chun Li"
trigger51 = p2name = "Anita"
trigger52 = p2name = "Tamika"
trigger53 = p2name = "Shorasha"
trigger54 = p2name = "Ainsley"
trigger55 = p2name = "Polaris"
trigger56 = p2name = "Buttercup"
trigger57 = p2name = "Baby Bonnie Hood"
trigger58 = p2name = "Bulleta"
trigger59 = p2name = "Hsien-Ko"
trigger60 = p2name = "Lei-Lei"
trigger61 = p2name = "Tessa"
value = 20,20

[State 9411, Rock]
type = Explod
trigger1 = Time = 69
anim = 9410
pos = 0,0
postype = Left
removetime = -1
sprpriority = 0
ontop = 1
ownpal = 1
shadow = -1

[State 9411, Splat]
type = Explod
trigger1 = Time = 90
anim = 9411
pos = 160,150
postype = Left
removetime = -1
sprpriority = 0
ontop = 1
ownpal = 1
shadow = -1

[State 9411, Splat]
type = PlaySnd
trigger1 = Time = 101
value = 1,3

[State 9411, 2]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;--------------------
[Statedef 9415]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 9415, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9415, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9415, 0.3]
type = SprPriority
trigger1 = time = 0
value = -3

[State 9415, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 9415

[State 9415, Anim]
type = VelSet
trigger1 = time = 0
X = -0.4
Y = -10

[State 9415, Gravity]
type = VelAdd
trigger1 = time >= 0
Y = .4

[State 9415, drop]
type = changestate
trigger1 = Vel Y > 0
value = 9416

;--------------------
[Statedef 9416]
type    = A
movetype= H
physics = N
juggle  = 1
ctrl = 0

[State 9416, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9416, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9416, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 9416

[State 9416, Gravity]
type = VelAdd
trigger1 = time >= 0
Y = .4

[State 9416, 1.5]
type = AssertSpecial
trigger1 = Pos Y > 0
flag = noshadow

[State 9416, 1.5]
type = EnvColor
trigger1 = Pos Y > 300
value = 0,0,0
time = 1455

[State 9416, drop]
type = changestate
trigger1 = Pos Y > 600
value = 9417

;--------------------
[Statedef 9417]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 9417, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9417, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9417, Fall]
type = Explod
trigger1 = TimeMod = 2,0
trigger1 = Time < 20
anim = 5110
pos = 160,150
postype = Left
bindtime = 1
removetime = 2
sprpriority = 0
ontop = 1
shadow = -1
Scale = (((20 - Time)/3) + 1), (((20 - Time)/3) + 1)

[State 9417, Splat]
type = Explod
trigger1 = TimeMod = 2,0
trigger1 = Time = 20
anim = 5110
pos = 160,150
postype = Left
bindtime = 1
removetime = -1
sprpriority = 0
ontop = 1
shadow = -1

[State 9417, 3]
type = Lifeadd
trigger1 = time = 20
Value = -9999

[State 9417, 2]
type = Selfstate
trigger1 = time = 20
value = 5150

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9421]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 9421, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9421, 0.3]
type = SprPriority
trigger1 = time = 0
value = -2

[State 9421, 5]
type = Helper
trigger1 = Time = 70
stateno = 9422
name = "Splat"
id = 9421
pos = 0,0
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9421, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9421, 2]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9422]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9420
ctrl = 0

[State 9422, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9422, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound = S4,21
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p2stateno = 9428

[State 9422, 0.3]
type = EnvColor
trigger1 = MoveHit = 1
value = 255, 255, 255
Time = 7

[State 9422, 1.555]
type = Helper
trigger1 = MoveHit = 1
stateno = 9201
name = "LotsaMeat"
postype = p2
pos = 0, 6
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9422, 3.5]
type = Helper
trigger1 = MoveHit = 1
stateno = 6040
name = "Crunched"
id = 6040
pos = 0,0
postype = P2
helpertype = normal
sprpriority = 2
keyctrl = 0
ownpal = 0
under = 1

[State 9422, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9422, 3.5]
type = DestroySelf
trigger1 = MoveHit = 1

[State 9427, 2]
type = Selfstate
trigger1 = Time > 300
value = 5150

;--------------------
[Statedef 9425]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 9425, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9425, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9425, 0.3]
type = SprPriority
trigger1 = time = 0
value = -3

[State 9425, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 9415

[State 9425, Anim]
type = VelSet
trigger1 = time = 0
X = -0.4
Y = -10

[State 9425, Gravity]
type = VelAdd
trigger1 = time >= 0
Y = .4

[State 9425, drop]
type = changestate
trigger1 = Vel Y > 0
value = 9426

;--------------------
[Statedef 9426]
type    = A
movetype= H
physics = N
juggle  = 1
ctrl = 0

[State 9426, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9426, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9426, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 9416

[State 9426, Gravity]
type = VelAdd
trigger1 = time >= 0
Y = .4

[State 9426, 1.5]
type = AssertSpecial
trigger1 = Pos Y > 0
flag = noshadow

[State 9426, drop]
type = changestate
trigger1 = Pos Y > 600
value = 9427

;--------------------
[Statedef 9427]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 10
ctrl = 0

[State 9427, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9427, nosha]
type = AssertSpecial
trigger1 = Time >= 0
flag = noshadow

[State 9427, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9427, 2.6]
type = Posset
trigger1 = time = 5
Y = -900

[State 9427, 3]
type = Lifeadd
trigger1 = Time > 200
Value = -9999

[State 9427, 4]
type = Selfstate
trigger1 = Time > 200
value = 5150

;--------------------
[Statedef 9428]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 10
ctrl = 0

[State 9428, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9428, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = noshadow

[State 9428, 2.6]
type = Posset
trigger1 = time = 5
Y = 600

[State 9428, 3]
type = Lifeadd
trigger1 = time = 5
Value = -9999

[State 9428, 2]
type = Selfstate
trigger1 = time = 5
value = 5150

;--------------------------------------
;**************Puddle**********
[Statedef 9430]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9430, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9430, BodyDist]
type = VarSet
trigger1 = time = 0
v = 11
value = FrontEdgeBodyDist

[State 9430, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9430, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9494

[State 9430, PitHitCorner]
type = HitDef
trigger1 = time > 1
trigger1 = Var(11) < 80
attr = S, HA
damage    = 50,5
priority  = 7
sparkno = -1
guard.sparkno = -1
hitsound = s20, 32
kill = 0
animtype  = up
ground.velocity = 0.7, -19
air.velocity = 2,-10
down.hittime = 30
fall = 1
fall.recover = 0
p1stateno = 9431

[State 9430, PitHit]
type = HitDef
trigger1 = time > 1
trigger1 = Var(11) >= 80
attr = S, HA
damage    = 50,5
priority  = 7
sparkno = -1
guard.sparkno = -1
hitsound = s20, 32
animtype  = up
ground.velocity = -0.6, -19
air.velocity = -2,-10
down.hittime = 30
fall = 1
fall.recover = 0
p1stateno = 9431

[State 9430, stand]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9431]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 9431, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9431, 1]
type = Helper
trigger1 = Time = 0
trigger1 = Var(11) < 80
stateno = 9432
name = "Puddle"
id = 9421
pos = -67,0
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 1
under = 1

[State 9431, 4]
type = Helper
trigger1 = Time = 0 
trigger1 = Var(11) >= 80
stateno = 9432
name = "Puddle"
id = 9421
pos = 97,0
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 1
under = 1

[State 9431, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9431, ClearTemp]
type = Varset
trigger1 = Time = 75
V = 11
value = 0

[State 9431, 5]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;-----------------------------------------
; MR Puddle
[Statedef 9432]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 93330
ctrl = 0

[State 9432, Fire Explode]
type = Explod
trigger1 = time = 1
anim = 93330
id = 5116
pos = 0, 0
postype = p1
sprpriority = 7
ontop = 1

[State 9432, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9432, init] ; Hijacked Var 24 for this.
type = VarSet
trigger1 = Time = 0
v = 24
value = 0

[State 9432, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitflag = AFD
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p2stateno = 9435

[State 9432, 1.555]
type = Helper
trigger1 = MoveHit = 1
trigger1 = Var(24) = 0
stateno = 9433
name = "Plob"
postype = p2
pos = 0, 6
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 1

[State 9432, init] ; Hijacked Var 24 for this.
type = VarSet
trigger1 = MoveHit = 1
v = 24
value = 1

[State 9432, 1.555]
type = PlaySnd
trigger1 = Time = 120
value = 4, 24

[State 9432, 1.555]
type = Explod
trigger1 = Time = 120
anim = 9435
pos = 0,0
bindtime = 1
removetime = -1
sprpriority = 3
ontop = 0
shadow = -1
;-----------------------------------------
; Splash Down
[Statedef 9433]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 94777 ;6040
sprpriority = 6
ctrl = 0

[State 9433, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9433, Lava 1]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 50
trigger3 = Time = 100
trigger4 = Time = 150
trigger5 = Time = 200
trigger6 = Time = 250
trigger7 = Time = 300
trigger8 = Time = 350
trigger9 = Time = 400
trigger10 = Time = 450
trigger11 = Time = 500
value = 20,15

[State 9433, 1.555]
type = destroyself
trigger1 = animtime = 0

;--------------------
[Statedef 9435]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 9435, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9435, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9435, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = noshadow

[State 9435, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9435, 3]
type = Lifeadd
trigger1 = time = 0
Value = -9999

[State 9435, 2]
type = Selfstate
trigger1 = time = 0
value = 5150


[Statedef 9440]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9440, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9200

[State 9440, PitHitCorner]
type = HitDef
trigger1 = time > 1
trigger1 = FrontEdgeBodyDist < 80
attr = S, HA
hitsound = S6,3
priority  = 7
sparkno = -1
guard.sparkno = -1
animtype  = up
ground.velocity = 0.7, -60
air.velocity = 2,-10
down.hittime = 30
fall = 1
fall.recover = 0
fall.damage = 9999
p1stateno = 9441

[State 9440, PitHit]
type = HitDef
trigger1 = time > 1
trigger1 = FrontEdgeBodyDist >= 80
attr = S, HA
hitsound = S6,3
priority  = 7
sparkno = -1
guard.sparkno = -1
animtype  = up
ground.velocity = -0.6, -60
air.velocity = -2,-10
down.hittime = 30
fall = 1
fall.recover = 0
fall.damage = 9999
p1stateno = 9441

[State 9440, stand]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9441]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 9411, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9441, 3.5]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "UPPERCUT"
id = 6040
pos = 57,-74
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9441, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9441, 2]
type = ChangeState
trigger1 = Time = 150
value = 0
ctrl = 1

;----------------------------------------------
;What the????
[Statedef 8110]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 0
ctrl = 0

[State 8112, move]
type = posadd
trigger1 = time = 2
trigger1 = BackEdgeBodyDist <= 40
x = 29

;---------------------------------------------------
;AHHH!!!
[Statedef 8111]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 41
ctrl = 0

[State 8111, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 8111, NoNuthin]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nokosnd

[State 8111, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 8110, 3]
type = Lifeadd
trigger1 = time = 0
Value = -9999

[State 8111, 3]
type = VelSet
trigger1 = time = 0
Y = -10

[State 8111, 3]
type = ChangeState
trigger1 = time = 60
value = 8112

[Statedef 8112]
type    = S
movetype= H
physics = N
anim = 44
ctrl = 0

[State 8112, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 8112, turn]
type = Turn
trigger1 = time = 0

[State 8112, move]
type = posset
trigger1 = time = 0
trigger1 = FrontEdgeDist >= 50
x = -50

[State 8112, move2]
type = posset
trigger1 = time = 0
trigger1 = FrontEdgeDist < 50
x = 50

[State 8112, gravity]
type = VelAdd
trigger1 = Vel Y < 10
Y = .4

[State 8112, 3]
type = ChangeState
trigger1 = Pos Y >= 0
value = 8113


[Statedef 8113]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 8113, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 8113, move2]
type = posset
trigger1 = time = 0
Y = 0

[State 8113, 2]
type = changeanim
trigger1 = time = 0
value = 170
ctrl = 0

[State 8113, Defeat]
type = Explod
trigger1 = time = 0
trigger1 = AnimExist(170)
anim = 170
pos = 0,0
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8113, Stun]
type = Explod
trigger1 = time = 0
trigger1 = !animexist(170)
trigger1 = animexist(5300)
anim = 5300
pos = 0,0
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8113, 1.555]
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

[State 8113, 2.6]
type = Posset
trigger1 = time = 3
Y = 900

[State 8113, 2]
type = Selfstate
trigger1 = time = 3
value = 5150

;-------------------------------------------------
;p2's state
[Statedef 9104]
type = S
movetype= H
physics = S
velset = 0,0

[State 9104, 0.1]
type = Changeanim
trigger1 = (anim != 5300) && ( animexist(5300))
value = 5300

[State 9104, 1]
type = Changeanim2
trigger1 = (!animexist(5300)) && (anim != 9010)
value = 9010

;----------------------------
[Statedef 9106]
type    = S
movetype= H
physics = S
velset = 0,0

[State 9106, Love Hurts but Fatalities hurt worse]
type = LifeAdd
trigger1 = 1
value = -9999

[State 9106, Go Bye Bye]
type = SelfState
trigger1 = 1
value = 5150

;---------------------------------------------
;p2's state
[Statedef 9104]
type = S
movetype= H
physics = S
velset = 0,0

[State 9104, 0.1]
type = Changeanim
trigger1 = (anim != 5300) && ( animexist(5300))
value = 5300

[State 9104, 1]
type = Changeanim2
trigger1 = (!animexist(5300)) && (anim != 9010)
value = 9010

;----------------------------
[Statedef 9106]
type    = S
movetype= H
physics = S
velset = 0,0

[State 9106, Love Hurts but Fatalities hurt worse]
type = LifeAdd
trigger1 = 1
value = -9999

[State 9106, Go Bye Bye]
type = SelfState
trigger1 = 1
value = 5150