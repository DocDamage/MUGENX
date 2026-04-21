;CHINESE (GB)
麟
版本号:0.8

完成了基本动作,必杀技、超杀……
援助还没有作.还没有决定用谁呢^^
招式出法和kof2000基本一样,我就不多说了.
超杀毒手掌的效果要在你的人物的[statedef -3]下面加上这句话才能有kof2000的效果.
[State lin's lifeadd ]
type = lifeadd
triggerall = life >50 && time%5 =0 
trigger1 = enemy,name = "lin"
trigger1 = enemy,var(18) = 1
value = -1

关于人物的问题请到我们论坛或mugen-bbs或mugen-x留言版发表.



Lin vision 0.8

-- What's done? --

* all intros
* all win poses
* All getting hit, guarding and falling animations
* All required frames
* Running forward, dashing back
* All standing, crouching and jumping normal attacks
* Two throws 
* all special attack
* all special moves
* all super moves

lin's SDM Super "poison hand" 's effect cann't work perfect if your charater
haven't this code.
add this under your [statedef -3] please.

[State lin's lifeadd ]
type = lifeadd
triggerall = life >50 && time%5 =0 
trigger1 = enemy,name = "lin"
trigger1 = enemy,var(18) = 1
value = -1


--------------------------
EMAIL：kyoung@21cn.com
HOMEPAGE:http://kyoung.yeah.net/

Misamu K Young
China
2001-12-09