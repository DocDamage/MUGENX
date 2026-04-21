
[YAGYU JUBEI V2.5]
------------------

(M.U.G.E.N.-CONVERSION)

2001/01/07 by KGenjuro (kgenjuro@daddelkingz.de)

www.daddelkingz.de

Original Sprites from "Samurai Spirits: Amakusa Korin" by SNK

Additional Sprites added by KGenjuro:

- Seppuku Sprites (edited by KGenjuro from original SS4 sprites)
- Waza-FX (intro SS3)
- Leaf (intro LB1)
- Straw Puppet (SS1)

All palettes done by [Deuce]


for use with M.U.G.E.N. 001129 only!
                        ======
the character is free to use and copy.

Spread it!

PLEASE, DO NOT MODIFY THE JUBEI-CHARACTER-SET!!!
YOU CAN EXPLORE OR TAKE SMALL PARTS OF IT TO CREATE
AN OWN M.U.G.E.N.-CHARACTER, BUT DON´T MODIFY THE
ORIGINAL CHARACTER!


[INSTALLATION]
--------------

1. Unzip JUBEI.ZIP into MUGEN\CHARS\JUBEI\

2. edit MUGEN\DATA\SELECT.CFG and insert the following line:

   jubei, stages/flamesbg.def

   (FLAMESBG is just an example, insert a valid stage!)



****************
* updates v2.5 *
****************

-> seperated cmd/cns AI
-> fixed Seppuku Bug (added a timerfreeze assert special)
-> Stand/Crouch Close B now comboable


****************
* updates v2.0 *
****************

-> added Counter Feature
-> added Chain-Combo Feature
-> added Keyring Feature
-> added Mid/Head Pos for Hattori Hanzo
-> Roll Bug fixed (you can dodge projectiles now, too)
-> Reversal Bug fixed
-> Guard.Sound
-> Get/Give Power Balance fixed


[FEATURES]
----------

ANTI ARTIFICAL STUPIDITY SYSTEM (ANTI-A.S.S.)
---------------------------------------------

the custom AI kicks in, when you see Jubei laughing at his opponent.
Apart from attacking much more offensiv, Jubei also only jumps and
executes Long-Range-Attacks if he is far away from the opp. The same
goes for Short-Range-Attacks except he only uses them from short
range.

There are much more and deeper changes from the original AI, but I
won't tell you everything ;)

SEPPUKU
-------

For Jubei being the only proper Samurai in the Samurai Spirits Series,
I gave him this little goodie... the oportunity to kill himself.

But be aware... unhonorable opponents maybe didn't knew anything
about traditional Seppuku. Use it only while fighting honorable
Samurais.

Instruction:

P1 (Jubei) needs to execute the following command: HCB + START at any
given time in the match.

After P1 cut his Stomach, P2 (a honorable Samurai with a Blade(!),
who acts as a 'Kaishakunin') needs to cut off Jubei's Head with
a precisly aimed slash. 'Kaishakunin'-Slashes are different from
char to char. Remember: only a few Slashes can be used as
'Kaishakunin'-Slashes.

Right now, there are only four of my characters, who got
'Kaishakunin'-Slashes:

- YAGYU JUBEI
- KIBAGAMI GENJURO
- TACHIBANA UKYO
- TAKEZO

done by me (you can get them from my site, too)

SLASH + BUST
------------

I added both moves from Jubei's Bust as well as his Slash-Personality.
I didn't put in the "YAGYU_SOUGETSUJIN", cause it's a pain in the ass
to execute (the opponent needs to guard it... otherwise it missed).
Maybe i will add an edited version of it in future JUBEI-releases...



[BUTTON_CONFIG]
---------------

X   - LIGHT SLASH (execute light specials)

Y   - MEDIUM SLASH (execute medium specials)

Z   - STRONG SLASH (execute strong specials)

A   - KICKS (execute original specials)

XY  - EVADE (you can perform some specials from the evade-stance)

AB  - CROUCH GUARD BREAKER

XYZ - POWERBAR CHARGE



[METHODS OF MAYHEM]
-------------------

QCF + SLASH       - KATTOU_SUIGETSUTOU

DP  + SLASH *     - NIKKAKURATOU (WITH A POWER-VERSION AT LEVEL 3!)

SLASH RADIDLY     - HASSOU_HAPPA

B, D, DB + A      - HASSOU_HAPPA_DENSETSU

QCB + Z           - YAGYU_SHINGAN_TOU_TENRA

QCB + Y           - YAGYU_SHINGAN_TOU_SOUHA

QCB + X           - YAGYU_SHINGAN_TOU_SUIGETSU

HCB + START       - SEPPUKU

CQF, B + Y        - SUPER DEFORMED TRANSFORMATION (Keyring-feature)
 


[WAZA'S]
--------

2 x QCF + X       - GEKI_SOURANJIN (BUST-WAZA)

2 x QCF + Y       - ZETSU_SUIGETSUTOU (SLASH-WAZA)

2 x QCF + Z       - KASUMI GIRI (OROGINAL WAZA)



*****************************
* OFFENSIVE COUNTER FEATURE *
*****************************

Like in the previous version of my Genjuro, you can perform
all kind of attacks during evading (XY). In this version you
can gain attack-power by evading an incoming attack and then
counter it with an attack by yourself. It's no matter what
kind of attack you choose: basics, specials and waza's will
work. A succesful counter-attack from the evade-stance will
rise your move's damage-value to 150%!



[THANX]
-------

- [DEUCE]           - for the palettes and a little beta-testing.

- MY GF             - for not quitting with me beacue i sit here all
                      night, making MUGEN-chars... o_o;

- and all people who d/led any of my chars!



THANK YOU!

and now... ENJOY!


"YOU'VE GOT GUTS... PICK THEM UP!"

...Yagyu Jubei
