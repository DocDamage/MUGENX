;===========================================================================
;---------------------------------------------------------------------------
; ÉXÅ[ÉpÅ[ÉRÉìÉ{ÉtÉBÉjÉbÉVÉÖópÉwÉãÉpÅ[
;---------------------------------------------------------------------------
; î≠ìÆîªíËóp
;---------------------------------------------------------------------------
[Statedef 8000]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 4001
sprpriority = -3
ctrl = 0

[State 8000, Pos]
type = PosSet
trigger1 = 1
y = 0


[State 8000, turn]
type = turn
triggerall = NumHelper(8230) = 0
triggerall = NumHelper(8330) = 0
triggerall = NumHelper(8430) = 0
trigger1 = facing != root,facing

[State 8000, DestroySelf]
type = DestroySelf
trigger1 = root,Var(7) != 0		;ÉIÉäÉRÉìà»äOÇÃîªíË
trigger1 = root,movetype = H

[State 8000, DestroySelf]
type = DestroySelf
triggerall = NumHelper(8230) != 0
triggerall = NumHelper(8330) != 0
triggerall = NumHelper(8430) != 0
trigger1 = root,Var(7) = 0		;ÉIÉäÉRÉìà»äOÇÃîªíË
trigger1 = root,StateNo != [3000,3576]	;
trigger1 = root,StateNo != [4000,4099]	;ÉIÉäÉRÉìénìÆéû
trigger2 = root,movetype = H

[State 8000, BaseColor]
type = Explod
trigger1 = NumHelper(8230) != 0
trigger2 = NumHelper(8330) != 0
trigger3 = NumHelper(8430) != 0
id = 8499
anim = 8490 + root,Var(59)
postype = left
pos = 0,0
scale = 320.0,240.0
facing = 1
bindtime = -1
removetime = 144
sprpriority = -3
shadow = -1
ownpal = 1

[State 8000, ChangeState]
type = ChangeState
trigger1 = NumHelper(8230) != 0
trigger2 = NumHelper(8330) != 0
trigger3 = NumHelper(8430) != 0
value = 8010


;---------------------------------------
;ÉXÅ[ÉpÅ[ÉRÉìÉ{ÉtÉBÉjÉbÉVÉÖåƒÇ—èoÇµ
;---------------------------------------
;â°
;---------------------------------------
[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8200 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 0,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8200 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8201 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 24,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8201 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8202 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 48,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8202 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8203 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 72,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8203 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8204 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 96,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8204 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8205 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 120,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8205 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8206 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 144,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8206 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8207 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 168,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8207 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8208 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 192,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8208 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8209 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 216,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8209 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8210 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 240,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8210 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8211 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 264,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8211 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8212 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 288,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8212 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8213 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 312,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8213 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8214 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 336,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8214 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8215 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 360,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8215 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8216 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 384,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8216 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8217 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 408,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8217 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8218 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 432,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8218 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8219 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 456,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8219 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8220 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 480,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8220 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1


;ÇQèdñhé~ÉwÉãÉpÅ[Åiâ°Åj
[State -3,SuperFinish]
type = Helper
;triggerall = root,Var(59) = 0
triggerall = NumHelper(8230) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3000,3069]) || (root,Stateno = [3400,3419]) || (root,Stateno = [3440,3469]) ||(root,Stateno = 3520)
id = 8230
name = "FinishTimer"
pos = 10000,10000
postype = back
facing = facing
stateno = 8230
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1



;---------------------------------------
;ÉXÅ[ÉpÅ[ÉRÉìÉ{ÉtÉBÉjÉbÉVÉÖåƒÇ—èoÇµ
;---------------------------------------
;ínñ 
;---------------------------------------
[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8300 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8300 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8301 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8301 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8302 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8302 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8303 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8303 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8304 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8304 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8305 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8305 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8306 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8306 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8307 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8307 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8308 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8308 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8309 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8309 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8310 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8310 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8311 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8311 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8312 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8312 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8313 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8313 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8314 + ifelse(root,Var(59) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8314 + ifelse(root,Var(59) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1


;ÇQèdñhé~ÉwÉãÉpÅ[
[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8330) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = [3070,3100]) || (root,Stateno = [3110,3122]) || (root,Stateno = [3140,3199]) || (root,Stateno = [3420,3439]) || (root,Stateno = [3540,3576])
id = 8330
name = "FinishTimer"
pos = 10000,10000
postype = back
facing = facing
stateno = 8330
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1


;---------------------------------------
;ÉXÅ[ÉpÅ[ÉRÉìÉ{ÉtÉBÉjÉbÉVÉÖåƒÇ—èoÇµ
;---------------------------------------
;ê^íÜ
;---------------------------------------
[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8400 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8400 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8401 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8401 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8402 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8402 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8403 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8403 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8404 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8404 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8405 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8405 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8406 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8406 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8407 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8407 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8408 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8408 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8409 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8409 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8410 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8410 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8411 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8411 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8412 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8412 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8413 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8413 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8414 + ifelse(root,Var(50) = 1,40,0)
name = "HP Finish"
pos = 159,(120 - floor(ScreenPos Y))
postype = back
facing = facing
stateno = 8414 + ifelse(root,Var(50) = 1,40,0)
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1


;ÇQèdñhé~ÉwÉãÉpÅ[
[State -3,SuperFinish]
type = Helper
;triggerall = IsHelper = 0
triggerall = NumHelper(8430) = 0
trigger1 = WinKO
trigger1 = (root,Stateno = 3101) || (root,Stateno = 3130) || (root,Var(50) != 0)
id = 8430
name = "FinishTimer"
pos = 10000,10000
postype = back
facing = facing
stateno = 8430
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1



;---------------------------------------------------------------------------
; î≠ìÆå„
;---------------------------------------------------------------------------
[Statedef 8010]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 4001
sprpriority = -3
ctrl = 0

[State 8000, turn]
type = turn
triggerall = NumHelper(8230) = 0
triggerall = NumHelper(8330) = 0
triggerall = NumHelper(8430) = 0
trigger1 = facing != root,facing

[State 8000, Pos]
type = PosSet
trigger1 = 1
y = 0

;---------------------------------------------------------------------------
; ÉpÉåÉbÉgïîï™Åiâ°ÅEóŒÅj
;---------------------------------------------------------------------------
;ÇP
[Statedef 8200]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, PosVar]
type = VarSet
trigger1 = time = 0
fv = 0
value = pos Y
ignorehitpause = 1

[State 8200, PosVar]
type = VarSet
trigger1 = time = 0
fv = 1
value = screenpos Y
ignorehitpause = 1

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 0 + ifelse(parent,facing=-1,480,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1

;[State 8200, Pos]
;type = PosAdd
;trigger1 = 1
;y = - floor(ScreenPos Y - fVar(1))
;ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =     224,240,224
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144





;---------------------------------------------------------------------------
;ÇQ
[Statedef 8201]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 24 + ifelse(parent,facing=-1,432,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 224,240,224
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇR
[Statedef 8202]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 48 + ifelse(parent,facing=-1,384,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =  224,240,224
time = 2
ignorehitpause = 1





[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇS
[Statedef 8203]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 72  + ifelse(parent,facing=-1,336,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1




[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =   224,240,224
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇT
[Statedef 8204]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 96 + ifelse(parent,facing=-1,288,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 192,240,208
time = 2
ignorehitpause = 1








[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇU
[Statedef 8205]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 120 + ifelse(parent,facing=-1,240,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 160,240,192
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇV
[Statedef 8206]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 144 + ifelse(parent,facing=-1,192,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 144,240,176
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144


;---------------------------------------------------------------------------
;ÇW
[Statedef 8207]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 168 + ifelse(parent,facing=-1,144,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 96,240,160
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇX
[Statedef 8208]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 192 + ifelse(parent,facing=-1,96,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 80,224,144
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇO
[Statedef 8209]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 216 + ifelse(parent,facing=-1,48,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 48,208,128
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇP
[Statedef 8210]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 240
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 32,192,112
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇQ
[Statedef 8211]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 264 - ifelse(parent,facing=-1,48,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 16,192,96
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇR
[Statedef 8212]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 288 - ifelse(parent,facing=-1,96,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 16,176,80
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇS
[Statedef 8213]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 312 - ifelse(parent,facing=-1,144,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =  16,176,80
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇT
[Statedef 8214]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 336 - ifelse(parent,facing=-1,192,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 16,176,64
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇU
[Statedef 8215]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 360 - ifelse(parent,facing=-1,240,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 32,176,0
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇV
[Statedef 8216]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 384 - ifelse(parent,facing=-1,288,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 48,176,16
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇW
[Statedef 8217]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 408 - ifelse(parent,facing=-1,336,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 64,192,16
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇX
[Statedef 8218]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 432 - ifelse(parent,facing=-1,384,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 80,208,32
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇQÇO
[Statedef 8219]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 456 - ifelse(parent,facing=-1,432,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 128,240,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 96,224,48
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇQÇP
[Statedef 8220]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 8200, Pos]
type = PosSet
trigger1 = 1
x = 480 - ifelse(parent,facing=-1,480,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8200, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 144,240,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 192,240,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =    224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =     224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =   224,240,224
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 192,240,208
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 160,240,192
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 144,240,176
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 96,240,160
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 32,192,112
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 16,192,96
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8200, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 128,240,64
time = 2
ignorehitpause = 1




[State 8200, Infinity Finish]
type = DestroySelf
trigger1 = time = 144







;---------------------------------------------------------------------------
;ÇQèdñhé~ópÅiâ°ópÅj
[Statedef 8230]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 4001
sprpriority = -3
ctrl = 0



[State 8230, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1

;===========================
[State 8230, Assert]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nomusic
flag3 = nokosnd
ignorehitpause = 1

[State 8230, Assert]
type = AssertSpecial
trigger1 = time < 144
;trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = globalnoshadow
ignorehitpause = 1

[State 8230, 6]
type = PlaySnd
trigger1 = time = 1
value = 50, 5
lowpriority = 1
ignorehitpause = 1

[State 8230, Assert]
type = AssertSpecial
trigger1 = time < 144
flag = nobardisplay
ignorehitpause = 1
;===========================


[State 8330, Infinity Finish]
type = EnvShake
trigger1 = 1
time = 1
freq = 0.0
ampl = 0
phase = 0

[State 8230, Infinity Finish]
type = DestroySelf
trigger1 = time = 200







;---------------------------------------------------------------------------
; ÉpÉåÉbÉgïîï™Åiâ°ÅEê‘Åj
;---------------------------------------------------------------------------
;ÇP
[Statedef 8240]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, PosVar]
type = VarSet
trigger1 = time = 0
fv = 0
value = pos Y
ignorehitpause = 1

[State 3150, PosVar]
type = VarSet
trigger1 = time = 0
fv = 1
value = screenpos Y
ignorehitpause = 1

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 0 + ifelse(parent,facing=-1,480,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1

;[State 3150, Pos]
;type = PosAdd
;trigger1 = 1
;y = - floor(ScreenPos Y - fVar(1))
;ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,208,240
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144





;---------------------------------------------------------------------------
;ÇQ
[Statedef 8241]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 24 + ifelse(parent,facing=-1,432,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,192,224
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇR
[Statedef 8242]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 48 + ifelse(parent,facing=-1,384,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,176,224
time = 2
ignorehitpause = 1





[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇS
[Statedef 8243]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 72  + ifelse(parent,facing=-1,336,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1




[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,160,208
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇT
[Statedef 8244]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 96 + ifelse(parent,facing=-1,288,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,144,192
time = 2
ignorehitpause = 1








[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇU
[Statedef 8245]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 120 + ifelse(parent,facing=-1,240,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,128,176
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇV
[Statedef 8246]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 144 + ifelse(parent,facing=-1,192,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,112,160
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144


;---------------------------------------------------------------------------
;ÇW
[Statedef 8247]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 168 + ifelse(parent,facing=-1,144,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,96,144
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇX
[Statedef 8248]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 192 + ifelse(parent,facing=-1,96,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,80,128
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇO
[Statedef 8249]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 216 + ifelse(parent,facing=-1,48,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,64,112
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇP
[Statedef 8250]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 240
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,48,96
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇQ
[Statedef 8251]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 264 - ifelse(parent,facing=-1,48,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,32,80
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇR
[Statedef 8252]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 288 - ifelse(parent,facing=-1,96,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,32,64
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇS
[Statedef 8253]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 312 - ifelse(parent,facing=-1,144,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,32,32
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇT
[Statedef 8254]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 336 - ifelse(parent,facing=-1,192,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 224,0,0
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇU
[Statedef 8255]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 360 - ifelse(parent,facing=-1,240,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =  224,0,0
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇV
[Statedef 8256]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 384 - ifelse(parent,facing=-1,288,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =   224,0,0
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇW
[Statedef 8257]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 408 - ifelse(parent,facing=-1,336,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,16,16
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇX
[Statedef 8258]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 432 - ifelse(parent,facing=-1,384,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,64,64
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇQÇO
[Statedef 8259]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 456 - ifelse(parent,facing=-1,432,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,112,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,96,96
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇQÇP
[Statedef 8260]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8200
sprpriority = -3
ctrl = 0

[State 3150, Pos]
type = PosSet
trigger1 = 1
x = 480 - ifelse(parent,facing=-1,480,0)
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 3150, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 240,128,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 240,144,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 240,160,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 240,176,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 240,192,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 240,208,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 240,208,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 240,208,240
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 240,192,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 240,176,224
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 240,160,208
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 240,144,192
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 240,128,176
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 240,112,160
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 240,96,144
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 240,80,128
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 240,64,112
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 240,48,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 240,32,80
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 240,32,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 240,32,32
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =   224,0,0
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 240,16,16
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 240,64,64
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 240,96,96
time = 2
ignorehitpause = 1

[State 3150, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 240,112,112
time = 2
ignorehitpause = 1




[State 3150, Infinity Finish]
type = DestroySelf
trigger1 = time = 144






;---------------------------------------------------------------------------
; ÉpÉåÉbÉgïîï™Åiínñ ÅEóŒÅj
;---------------------------------------------------------------------------
;ÇP
[Statedef 8300]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8300
sprpriority = -3
ctrl = 0

[State 8300, PosVar]
type = VarSet
trigger1 = time = 0
fv = 0
value = pos Y
ignorehitpause = 1

[State 8300, PosVar]
type = VarSet
trigger1 = time = 0
fv = 1
value = screenpos Y
ignorehitpause = 1

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1

;[State 8300, Pos]
;type = PosAdd
;trigger1 = 1
;y = - floor(ScreenPos Y - fVar(1))
;ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       224,240,192
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144





;---------------------------------------------------------------------------
;ÇQ
[Statedef 8301]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8301
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       224,240,224
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇR
[Statedef 8302]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8302
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       176,240,192
time = 2
ignorehitpause = 1





[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇS
[Statedef 8303]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8303
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1




[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       144,240,176
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇT
[Statedef 8304]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8304
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       80,224,144
time = 2
ignorehitpause = 1








[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇU
[Statedef 8305]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8305
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       48,208,128
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇV
[Statedef 8306]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8306
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       32,192,112
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144


;---------------------------------------------------------------------------
;ÇW
[Statedef 8307]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8307
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       16,192,96
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇX
[Statedef 8308]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8308
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       16,176,80
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇO
[Statedef 8309]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8309
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =        16,176,80
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇP
[Statedef 8310]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8310
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =         16,176,80
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇQ
[Statedef 8311]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8311
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       16,176,96
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇR
[Statedef 8312]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8312
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       16,176,64
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇS
[Statedef 8313]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8313
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =        16,176,64
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇT
[Statedef 8314]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8314
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =        16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =        16,144,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =         16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =          16,160,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       32,176,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       48,176,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       64,192,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       80,208,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       96,224,48
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       160,240,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       176,240,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       208,240,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       224,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       224,240,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       176,240,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       144,240,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       80,224,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       48,208,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       32,192,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       16,192,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =        16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =         16,176,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       16,176,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =        16,176,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       16,160,0
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇQèdñhé~ópÅEínñ 
[Statedef 8330]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 4001
sprpriority = -3
ctrl = 0



[State 8330, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1

;===========================
[State 8330, Assert]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nomusic
flag3 = nokosnd
ignorehitpause = 1

[State 8330, Assert]
type = AssertSpecial
trigger1 = time < 144
;trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = globalnoshadow
ignorehitpause = 1

[State 8330, 6]
type = PlaySnd
trigger1 = time = 1
value = 50, 5
lowpriority = 1
ignorehitpause = 1

[State 8330, Assert]
type = AssertSpecial
trigger1 = time < 144
flag = nobardisplay
ignorehitpause = 1
;===========================


[State 8330, Infinity Finish]
type = EnvShake
trigger1 = 1
time = 1
freq = 0.0
ampl = 0
phase = 0

[State 8330, Infinity Finish]
type = DestroySelf
trigger1 = time = 200




;---------------------------------------------------------------------------
; ÉpÉåÉbÉgïîï™Åiínñ ÅEê‘Åj
;---------------------------------------------------------------------------
;ÇP
[Statedef 8340]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8300
sprpriority = -3
ctrl = 0

[State 8300, PosVar]
type = VarSet
trigger1 = time = 0
fv = 0
value = pos Y
ignorehitpause = 1

[State 8300, PosVar]
type = VarSet
trigger1 = time = 0
fv = 1
value = screenpos Y
ignorehitpause = 1

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1

;[State 8300, Pos]
;type = PosAdd
;trigger1 = 1
;y = - floor(ScreenPos Y - fVar(1))
;ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,208,240
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144





;---------------------------------------------------------------------------
;ÇQ
[Statedef 8341]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8301
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,192,224
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇR
[Statedef 8342]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8302
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,176,224
time = 2
ignorehitpause = 1





[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇS
[Statedef 8343]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8303
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1




[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,160,208
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇT
[Statedef 8344]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8304
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,144,192
time = 2
ignorehitpause = 1








[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇU
[Statedef 8345]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8305
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,128,176
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇV
[Statedef 8346]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8306
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,112,160
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144


;---------------------------------------------------------------------------
;ÇW
[Statedef 8347]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8307
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,96,144
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇX
[Statedef 8348]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8308
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,80,128
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇO
[Statedef 8349]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8309
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,64,112
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇP
[Statedef 8350]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8310
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,48,96
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇQ
[Statedef 8351]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8311
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,32,80
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇR
[Statedef 8352]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8312
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,32,64
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇS
[Statedef 8353]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8313
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =       224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       240,32,32
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇT
[Statedef 8354]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8314
sprpriority = -3
ctrl = 0

[State 8300, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8300, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =        224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =         224,0,0
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =       240,16,16
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =       240,64,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =       240,96,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =       240,112,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =       240,128,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =       240,144,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =       240,160,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =       240,176,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =       240,192,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =       240,208,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =       240,208,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =       240,208,240
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =       240,192,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =       240,176,224
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =       240,160,208
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =       240,144,192
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =       240,128,176
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =       240,112,160
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =       240,96,144
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =       240,80,128
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =       240,64,112
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =       240,48,96
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =       240,32,80
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =       240,32,64
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =       240,32,32
time = 2
ignorehitpause = 1

[State 8300, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =       224,0,0
time = 2
ignorehitpause = 1




[State 8300, Infinity Finish]
type = DestroySelf
trigger1 = time = 144






;---------------------------------------------------------------------------
; ÉpÉåÉbÉgïîï™Åiê^íÜÅEóŒÅj
;---------------------------------------------------------------------------
;ÇP
[Statedef 8400]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8400
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =     16,160,0
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144





;---------------------------------------------------------------------------
;ÇQ
[Statedef 8401]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8401
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1




[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 16,160,0
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇR
[Statedef 8402]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8402
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =  16,160,0
time = 2
ignorehitpause = 1





[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇS
[Statedef 8403]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8403
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1




[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 16,176,64
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇT
[Statedef 8404]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8404
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 16,176,96
time = 2
ignorehitpause = 1








[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇU
[Statedef 8405]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8405
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 16,176,80
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇV
[Statedef 8406]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8406
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =  16,176,80
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144


;---------------------------------------------------------------------------
;ÇW
[Statedef 8407]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8407
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =   16,176,80
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇX
[Statedef 8408]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8408
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =  16,192,96
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇO
[Statedef 8409]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8409
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =  32,192,112
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇP
[Statedef 8410]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8410
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 48,208,128
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇQ
[Statedef 8411]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8411
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 80,224,144
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇR
[Statedef 8412]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8412
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 112,240,160
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇS
[Statedef 8413]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8413
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 224,240,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 176,240,192
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇT
[Statedef 8414]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8414
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 224,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 208,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 176,240,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 160,240,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 96,224,48
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 80,208,32
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 64,192,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 48,176,16
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 32,176,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =   16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =    16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  16,144,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =     16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  16,160,0
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 16,176,64
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 16,176,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =   16,176,80
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  16,192,96
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  32,192,112
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 48,208,128
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 80,224,144
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 112,240,160
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 176,240,192
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 224,240,224
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇQèdñhé~ópÅEê^íÜ
[Statedef 8430]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 4001
sprpriority = -3
ctrl = 0



[State 8430, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1

;===========================
[State 8430, Assert]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nomusic
flag3 = nokosnd
ignorehitpause = 1

[State 8430, Assert]
type = AssertSpecial
trigger1 = time < 144
;trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = globalnoshadow
ignorehitpause = 1

[State 8430, 6]
type = PlaySnd
trigger1 = time = 1
value = 50, 5
lowpriority = 1
ignorehitpause = 1

[State 8430, Assert]
type = AssertSpecial
trigger1 = time < 144
flag = nobardisplay
ignorehitpause = 1
;===========================


[State 8430, Infinity Finish]
type = EnvShake
trigger1 = 1
time = 1
freq = 0.0
ampl = 0
phase = 0

[State 8430, Infinity Finish]
type = DestroySelf
trigger1 = time = 200



;---------------------------------------------------------------------------
; ÉpÉåÉbÉgïîï™Åiê^íÜÅEê¬Åj
;---------------------------------------------------------------------------
;ÇP
[Statedef 8440]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8400
sprpriority = -3
ctrl = 0

[State 8400, PosVar]
type = VarSet
trigger1 = time = 0
fv = 0
value = pos Y
ignorehitpause = 1

[State 8400, PosVar]
type = VarSet
trigger1 = time = 0
fv = 1
value = screenpos Y
ignorehitpause = 1

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1

;[State 8400, Pos]
;type = PosAdd
;trigger1 = 1
;y = - floor(ScreenPos Y - fVar(1))
;ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add =  64,32,208
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144





;---------------------------------------------------------------------------
;ÇQ
[Statedef 8441]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8401
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 64,32,208
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇR
[Statedef 8442]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8402
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 80,48,208
time = 2
ignorehitpause = 1





[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇS
[Statedef 8443]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8403
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1




[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 96,64,224
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇT
[Statedef 8444]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8404
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1






[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 112,80,224
time = 2
ignorehitpause = 1








[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇU
[Statedef 8445]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8405
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 128,96,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇV
[Statedef 8446]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8406
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 144,112,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144


;---------------------------------------------------------------------------
;ÇW
[Statedef 8447]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8407
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 144,128,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇX
[Statedef 8448]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8408
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 160,144,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇO
[Statedef 8449]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8409
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 176,160,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇP
[Statedef 8450]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8410
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 192,176,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇQ
[Statedef 8451]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8411
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 208,192,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



;---------------------------------------------------------------------------
;ÇPÇR
[Statedef 8452]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8412
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 208,208,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇS
[Statedef 8453]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8413
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add = 208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 208,224,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144




;---------------------------------------------------------------------------
;ÇPÇT
[Statedef 8454]
movetype= I
type    = S
physics = N
juggle  = 0
anim = 8414
sprpriority = -3
ctrl = 0

[State 8400, Pos]
type = PosSet
trigger1 = 1
x = 0
y = 120 - floor(parent,screenPos Y)
ignorehitpause = 1





[State 8400, Pal]
type = PalFX
trigger1 = time = 0
trigger2 = time = 56
trigger3 = time = 114
add =  208,240,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 2
trigger2 = time = 58
trigger3 = time = 116
add =  208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 4
trigger2 = time = 60
trigger3 = time = 118
add =  208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 6
trigger2 = time = 62
trigger3 = time = 120
add =  208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 8
trigger2 = time = 64
trigger3 = time = 122
add =  192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 10
trigger2 = time = 68
trigger3 = time = 124
add =  176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 12
trigger2 = time = 70
trigger3 = time = 126
add =  160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 14
trigger2 = time = 72
trigger3 = time = 128
add =  144,128,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 16
trigger2 = time = 74
trigger3 = time = 130
add = 144,112,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 18
trigger2 = time = 76
trigger3 = time = 132
add = 128,96,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 20
trigger2 = time = 78
trigger3 = time = 134
add =  112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 22
trigger2 = time = 80
trigger3 = time = 136
add =  96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 24
trigger2 = time = 82
trigger3 = time = 138
add =  80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 26
trigger2 = time = 84
trigger3 = time = 140
add =  64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 28
trigger2 = time = 86
trigger3 = time = 142
add = 64,32,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 30
trigger2 = time = 88
trigger3 = time = 144
add = 80,48,208
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 32
trigger2 = time = 90
add = 96,64,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 34
trigger2 = time = 92
add = 112,80,224
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 36
trigger2 = time = 94
add = 128,96,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 38
trigger2 = time = 96
add = 144,112,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 40
trigger2 = time = 98
add = 144,128,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 42
trigger2 = time = 100
add = 160,144,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 44
trigger2 = time = 102
add = 176,160,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 46
trigger2 = time = 104
add = 192,176,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 48
trigger2 = time = 106
add = 208,192,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 50
trigger2 = time = 108
add = 208,208,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 52
trigger2 = time = 110
add = 208,224,240
time = 2
ignorehitpause = 1

[State 8400, Pal]
type = PalFX
trigger1 = time = 54
trigger2 = time = 112
add = 208,240,240
time = 2
ignorehitpause = 1




[State 8400, Infinity Finish]
type = DestroySelf
trigger1 = time = 144



