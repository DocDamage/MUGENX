=====================
 SASQUATCHX VER. 1.0
=====================
 -SANDER 71113-


DONE:

 * January 11, 2005

 - WinMugen Patch made by Winane, 
   compiled all files in 1 rar file. ^^

 * JULY 13, 2001

 - MAPS LEADER (CUSTOM EX ala BBH :P)

 - 3 Level AI

 - Note: some sounds are still missing..

 * JULY 13, 2001

 - MAPS (DARK FORCE)

   ^CMD: z+c (HP+HK)

 - SPECIAL ANIMS 

   ^ Burned, Electrified, Midnight Bliss, Miniature

 - Complete Pallete set with extras

 * JULY 10, 2001

 - Big Resistor (Armor mode) Dark force

   ^CMD: y+b (MP+MK)

 - Fixed/Cleaned CNS file X_X

 - Fixed CMDs

 - AI

 * JULY 4, 2001

 - Big Sled EX

   ^CMD: start + y (shortcut)

   ^CMD: F, DF, D, DB, B, a+b or b+c (hcb2 lk+mk or mk+hk)

 * JUNE 26, 2001

 - Big Eisbhan EX :)

   ^CMD: start + x (temporary)

   ^CMD: B, DB, D, DF, F, a+b or b+c (hcf lk+mk or mk+hk)

 * JUNE 25, 2001 

 - Banana Peel EX

   ^CMD: D,DF,F, start (temporary)

 * JUNE 24, 2001

 - Big Freezer EX

   ^CMD: D, DF, F, D, DF, F, x+y (temporary)

 * JUNE 23, 2001

 - Big Swing Special/ES version

   ^CMD: D, DB, B, a/b/c....  ES: D, DB, B, a+b (temporary)

 * JUNE 22, 2001

 - Big Blanche Special/ES version.

   ^CMD: D, DB, B, x/y/z....  ES: D, DB, B, x+y (temporary)

 * JUNE 21, 2001

 - Big Towers Special/ES version.


 * JUNE 20, 2001

 - Big Breath SPECIAL and ES VERSION (I added an auto guard to make this move useful)

 - Big Spit SPECIAL and ES VERSION

 - PROPERLY IMPLEMENTED THE ICE/FREEZE CUSTOM HIT STATES ^_^

 * JUNE 18, 2001

 - Big Typhoon SPECIAL and ES version. (This move can guard cancel)

 - Big Blow (Sugar Ray Style :P) SPECIAL and ES version. (This move can guard cancel)

 * JUNE 17, 2001

 - Pounce ("OTG" when enemy is lying down) 

   ^CMD: (x+y).... ^ES VERSION CMD: (a+b)

 - Variable advancing guard (Increasing push distance)

   ^CMD: (x+y) (y+x) (a+b) (b+c)

 - KOF style roll [NOT VERY TRUE TO VAMPIRE SAVIOUR :P]

   ^CMD: (x+a).... ^BACK ROLL CMD: holdback+(x+a)

 - Get up roll

 - Ground Throws, Air Throws

 * June 12, 2001

 - All basic moves && attacks

 - All required anim/sprites

 - Taunt, intro, win, timeover and draw poses

 - Hit sparks :)

 - 4 palettes

 - A few more i might have forgotten to mention...


BUGS:

  - SasqautchX doesn't work well on Simul mode :(
    It has something to do with me using p2bodydist
    and p2stateno triggers. Mugen doesn't seem to
    distinguish between p2 and p4 well. If anyone
    knows how to fix this pls email me. I have
    experimented with redirection triggers, but I
    still haven't made it work perfectly so I just
    dumped the fix for the mean time... too much work
    to make squatch work perfectly in simul mode :|.


ON THE NEXT VERSION:

 - STORY BOARD
 - Additional tweaks/ fixes
 - Additional palettes
 - More custom moves/specials/es/ex








=========================================================================================

SASQUATCH "The great snowman"
Bigfoot
Born: Canada, 1903
"If I have to fight weaklings like you, you could at least make an effort!"

FAQ TAKEN FROM :
Vampire Savior FAQ v1.0
by Kenichiro Tanaka
03.13.98

NOTES are added by me [x_X].

================================================================================
J. Sasquatch, the Bigfoot
================================================================================

Dash forward:
  -o -o

Dash backward:
  o- o-

Throw: THERE IS AN AIR THROW
  o- or -o + strong / fierce (when close to opponent)



Forward slide / roll (when getting up):
  -o + P

Backward slide / roll (when getting up):
  o- + P

Pounce (after knocking down opponent):
  (x+y)for normal, (a+b) for ES

Taunt:
  press start

Advancing Guard:
  Tap P or K while blocking an attack. The button used determines how far the
  opponent is pushed back. (x+y) (y+x) (a+b) (b+c)

NOTE:
You can pull back on the joystick during Sasquatch's dash to shorten the distance
he travels.

.----------------------------------------------------------------- Special Moves
|  Big Breath
|
|     | \  -o + punch
|     o  o
|
|  Sasquatch blows out through his nose and freezes his opponent.
|
|  NOTE: Added auto guard (ala kyo) during startup.
|
|-------------------------------------------------------------------------------
|  Big Spit
|
|     | \  -o + kick
|     o  o
|
|  Sasquatch spits a snowman through his mouth and freezes his opponent.
|
|  NOTE: LK: Priority = 9999, short distance
|        MK: Priority = 2,    medium distance
|        HK: Priority = 1,    fast and far distance
|        ES: 3 snowman spits
|
|-------------------------------------------------------------------------------
|  Big Blow
|
|     -o | \  + punch (hold)
|        o  o
|
|  Sasquatch winds up his arm and punches his opponent. Holding the button down
|  makes Sasquatch wind up longer.
|
|  NOTE: The velocity and damage of this move depends on how long you press the 
|  button. When held until auto release, it becomes unblockable. :P
|
|-------------------------------------------------------------------------------
|  Big Typhoon
|
|     -o | \  + kick
|        o  o
|
|  Sasquatch kicks out, spinning his foot around.
|
|-------------------------------------------------------------------------------
|  Big Towers
|
|     | | + punch
|     o o
|
|  Sasquatch crouches down and forms a circle of ice pillars around himself.
|
|  ES: Sasquatch sends a wave of ice pillars across the screen.
|
|  NOTE: Added auto guard (ala kyo) on startup.
|
'-------------------------------------------------------------------------------
.------------------------------------------------------------------------ Throws
|  Big Blanche
|
|     -o \  |  / o- + punch
|         o o o
|
|  Sasquatch swallows his opponent whole and spits him back out, frozen solid.
|  You can follow up another move with timing.
|
|  NOTE: Special: Opponent is in fall state / ES: Opponent is in stand state.
|
|-------------------------------------------------------------------------------
|  Big Swing
|
|     360 + kick
|
|  Sasquatch grabs his opponent by the feet, spins him around, and throws him
|  across the screen.
|
|  NOTE: The ES version of this move throws the opponent of screen :P
|
'-------------------------------------------------------------------------------
.------------------------------------------------------------------- EX Specials
|  Big Freezer
|
|     o-  / | \  -o + PP
|        o  o  o
|
|  Sasquatch opens wide and fires a giant freeze ray across the screen. Slow
|  start up time, but will cut through just about anything.
|
|  NOTE: I changed the motion anim, I used the DS1 spit motion.
|
|-------------------------------------------------------------------------------
|  Big Eisbahn
|
|     o-  / | \  -o + KK [unblockable]
|        o  o  o
|
|  Sasquatch blows on the ground, freezing it. If his opponent is standing on
|  the frozen patch of ground, he falls through, and is knocked out by a
|  whale's tail, frozen into a block of ice.
|
|  NOTE: I changed this move a bit because i found it cheap :P. The patch of ice
|  will only hurt anyone who is on the ground and MOVING. So if the opponent stands
|  and does not move, he won't slip.
|
|  NOTE: CMD CHANGED:
|
|  ^CMD: start + x (temporary)
|
|  ^CMD: B, DB, D, DF, F, a+b (hcf lk+mk or mk+hk)
|
|
|-------------------------------------------------------------------------------
|  Big Sledge
|
|  720 + KK [throw]
|
|  Sasquatch rides his opponent like a sleigh, as snow dogs pull them along.
|  Sasquatch finishes his opponent with a butt attack.
|
|  NOTE: CMD CHANGED:
|
|  ^CMD: start + y (shortcut)
|
|  ^CMD: F, DF, D, DB, B, a+b (hcb lk+mk or mk+hk)
|
|
|-------------------------------------------------------------------------------
|  Banana
|
|     o-  / | \  -o + start [unblockable]
|        o  o  o
|
|  Sasquatch peels a banana, eats it, and throws the banana on the ground. The
|  peel will lie on the ground for a long time :P. If the squatch or opponent
|  steps on the  banana peel, he will slip and fall over.
|
|  NOTE: The banana peel move adds 150 to sasquatchX's life
|
'-------------------------------------------------------------------------------
.-------------------------------------------------------------------- Dark Force
|  Super Armor: Big Resistor (with MAPS (Magical Avalanche Penguin Super-units))
|
|     same strength P + K
|
|  [Super armor / Option] Sasquatch will not go into hit stun if hit by a single
|  attack.
|
|  Using fierce + RH results in a different move--a little troupe of penguin
|  shaped bombs follows Sasquatch around. They will blow up when you press
|  punch.
|
|  ^CMD: MP+MK --> Big Resistor
|
|  ^CMD: HP+HK --> MAPS
'-------------------------------------------------------------------------------



 ========================
  ---<> Disclaimer <>---
 ========================

 Mugen and all related stuff is free
 as far as i know so if you bought this.... you've been spoofed!!
 All the files included in the zip file(s) are mine...
 All the sprites and sounds are from CAPCOM, i only ripped and programmed it for mugen..
 I'm sure you all know that i will not be held responsible for any damage
 these files can do to your computer or to your LIFE...

 =========
  THANKS:
 =========

 CAPCOM                - For creating sasquatch in the first place.

 Elecbyte              - The friendly and loving creators of mugen.

 FINALBURN/CPS2MAMESF  - For the rips and for the "arcade at home" fun!

 QPLAYER, CABBIT       - For the sound rips.

 MCM                   - For making mugen life a bit more bearable.

 YONGMING              - I learned everything about new mugen from his clark99,

                         Absolutely one of the best!

 NEOGOUKI              - For some of the advanced codes and tips.

 DRKINTENT             - For some rips, testing and feedback.

 SORROWEDGE            - For the technical help(s) i got while i was starting.

 ALL FRIENDS AT #MUGEN - For all the help, jokes and fun  :)

 PEOPLE AT DEV         - For some help and a lot of frustrations.

 OTHER PEEPS AT #MUGEN - For being fun and idle..

 KENICHIRO TANAKA      - For his great Vampire Saviour FAQ

 MAPPY                 - For his exemplary DS character Q-bee from which I learned a lot.

 BBH                   - For the special animation numbers and some ideas I reffered to.

 ANGELBABEZ            - For all the inspiration i need.. (AYAN BIDA KA NANAMAN ^_^)

 TO JESUS              - Whom everything is of and for...

 and to everyone who enjoys mugen....

 if you think you deserve to be acknowledged email me..

________________________________________________________________
For bugs and comments suggestions whatever email me at :

              sander71113@yahoo.com

 WEB PAGE:    http://go.to/sander71113
              http://sander71113.mgbr.net
              http://www.angelfire.com/jazz/sander71113

 TRY MY OTHER WORKS:

 IoriX        --- The best conversion of iori.. at least for me :P

 ChizuruX     --- A good Chizuru Kagura conversion

 YamazakiX    --- Bloody Violence

 LuckyX       --- Balls and Balls 

