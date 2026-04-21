-------------------------------------------------------------------------------------------------
          =======================================================================
                  --------------------| SANDER 71113 |-------------------
                         http://www.angelfire.com/jazz/sander71113
                              http://www.mgbr.net/sander71113
                                    sander71113@yahoo.com
                                  http://go.to/sander71113

=========================
 RAMON 71113 VERSION 1.0
=========================

DATE: JANUARY 28, 2002

 ----------------------------------------------------------------------------------------------

 *** CHARACTER ***

 RamonX is taken from the KOF 2000/2001. One of the most unwanted KOF chars ever :P.
 This conversion is mainly based on KOF2000 gameplay, with added KOF2001 moves and a
 few crappy original moves. He also has 3 strikers, using KOF2000 striker system.
 I decided not to implement modes since it just restricts ramon to his (IMO) crappy
 KOF2000 version. Please take the time to read the accompanying documentations.
 Mugenized by Sander71113(sander71113@yahoo.com).

 *- MODE:
    1. MIX: KOF2000 + KOF2001 + SEMI-ORIGINAL

 *- STRIKERS:
    1. Another Iori
    2. Vanessa
    3. Seth

 *- Artificial Intelligence:
    1. Hard level - ramon.cmd
    2. Medium level - ramediumai.cmd
    3. Low Level - ranoai.cmd

 *- REQUIREMENTS:
    1. M.U.G.E.N. engine - found at http://www.elecbyte.com
    2. Faster than 300 mhz processor.
    3. 64MB or higher Ram.

 ----------------------------------------------------------------------------------------------

 *** M.U.G.E.N. ***

 To use Ramon X, you need the latest build of "M.U.G.E.N." engine 
 which can found at http://www.elecbyte.com.


 ----------------------------------------------------------------------------------------------

 *** RAMONX FILES AND USE ***

 Upon unzipping the Zip file(s), You should now have these:

 DOCUMENTATIONS:
 readme.txt
 rehistory.txt

 CODES:
 ramonx.def
 ramon.cns
 ramona.cns
 ramonb.cns
 ramonc.cns
 ramond.cns
 ramone.cns
 ramonf.cns

 COMMANDS AND AI:
 ramon.cmd
 ramedai.cmd
 ranoai.cmd

 ANIMATION:
 ramon.air

 SPRITES:
 ramon.sff

 SOUNDS:
 ramon.snd

 Story board:
 ending.sff
 ending.def
 ending.mp3

 PALETTES:
 pal1.act
 pal2.act
 pal3.act
 pal4.act
 pal5.act
 pal6.act
 pal7.act
 pal8.act
 pal9.act
 pal10.act
 pal11.act
 pal12.act

 Unzip or Put all the files into a folder named ramonX and insert this ramonX folder
 into the chars folder of your M.U.G.E.N. You can add ramonX to your Select Screen by simply
 adding the line "ramonx" to your "select.cfg" under the [Characters] section.

 ----------------------------------------------------------------------------------------------

 *** SPECIAL SYSTEMS ***

   * COUNTER HIT  - Allows for another free hit. This is most obvious when using knockdown
                    attacks. Some moves are not affected by counter hit (ex. Sweep). Use it
                    to your advantage.

   * GUARD CRUSH  - RamonX can be Guard Crushed. So don't block too much :P. My Guard Crush
                    System is not KOF accurate since it is still not built into the M.U.G.E.N.
                    engine itself. This is just a "work around". It works much like SFA3.
                    You can see the guard crush points in debug display.

   * DIZZY        - RamonX Can be dizzied. Again this is not KOF accurate. You can also check
                    the dizzy points in Debug Display.

   * THROW CANCEL - Tired of being thrown around? You cancel ramonX's BASIC throws by pressing
                    any punch button during the first few frames of his throw, KOF98 style.

   * WIRE DAMAGE  - Some of ramonX's attacks have wire damage capabilities. This will cause the
                    enemy to bounce off a wall, which allows for further juggling :).
                    -KOF2001 STYLE-

   * TAUNT        - KOF2000 taunt is implemented, it uses 1 power stock while adding 1 striker
                    bomb. You can not cancel out of the taunt so use wisely.


 ----------------------------------------------------------------------------------------------

 *** M.U.G.E.N. JOYSTICK CONFIGURATION ***

 (Player 1)

 *- DIRECTION KEYS

		     (U)           U = up        DF = downforward

 		 (B)  x  (F)       B = back      DB = downback

  		     (D)           F = Forward   UF = upforward

		                   D = down      UB = upback

 *- BUTTONS

		 (x) (y) (z)       x = light punch    y = hard punch   z = No Use

		 (a) (b) (c)       a = light kick     b = hard kick    c = No Use

		     (s)                              s = start


 ---------------------------------------------------------------------------------------------

 *** RAMONX STRIKER SYSTEM ***

 NOTE: RamonX's Striker System works like KOF '2000. You get 3 Striker Bombs for the
       first round, then adds another one for the next rounds. You can call a striker
       Anytime except when being hit or thrown and when doing DM/SDMs (ACTIVE STRIKER SYSTEM).
       You can also add striker bombs by using taunt which costs 1 power stock.

 STRIKER ON/OFF TOGGLE:
 During 1st Round Intro, you can enable/disable use of striker by pressing back or forward
 There is no default striker toggle, It randomly toggles on/off before round 1. So be sure
 to pick your striker preference by not skipping the intro in round 1.
 Forward - Striker: On
 Back    - Striker: Off

 ALTERNATIVE STRIKER:
 RamonX can now choose between 3 strikers (A_iori, Vanessa & Seth). You can change strikers
 by pressing lp+hk.

 (y)+(a) - Striker Summon

 (x)+(b) - Striker Change

 Start - Taunt adds 1 striker bomb and uses 1 power stock

 STRIKER DESCRIPTIONS:

 1. A_iori  : -KOF2000 attack-    Jump in Kick then rainbow attack (OTGs).
 2. Vanessa : -KOF2000 attack-    Dash punch then machine gun puncher.
 3. Seth    : -KOF2000 attack-    Jump in Kick, land and stand, then walk.
                                  Auto attacks when enemy is in range.

 --------------------------------------------------------------------------------------------

 --------------------------------------------------------------------------------------------
 *** ARTIFICIAL INTELLIGENCE SYSTEM ***

 RamonX has a 3 level AI. All you have to do is edit ramonx.def using notepad.

 ;cmd   = ramon.cmd        ;Hard Ai
 ;cmd   = ramedai.cmd      ;Medium level Ai
 cmd    = ranoai.cmd       ;Low level Ai

 Just remove the semicolon AT THE START OF THE LINE before the ai level of your choice and make
 sure the unwanted levels have semicolon before them. In the example above, it is setup to use
 low level AI.


 --------------------------------------------------------------------------------------------

 *** DM/SDM SHORTCUTS ***

 -* I used the idle buttons (z,c) as DM shortcuts. YOU CAN REMOVE THESE SHORTCUTS!!!
    You'll just have to delete the shortcut cmd portion in the .cmd file you are using.
    You can also set it to "roll" for dodge and "shingo" for striker.

 --------------------------------------------------------------------------------------------
 *** PROFILE AND MOVELIST ***

 -* MOVELIST TAKEN FROM

  1."THE KING OF FIGHTERS 2000 MINI-FAQ v0.4"
           for the arcade version
            by Chris MacDonald

  2."THE KING OF FIGHTERS 2001 FAQ v0.2"
            by Orochi Yamazaki


 -* CHARACTER PROFILE

 Fighting Style:    Lucha Libre
 Birthdate:         December 3
 Age:               25
 Country:           Mexico
 Blood Type:        A
 Height:            170cm
 Weight:            80kg
 Hobbies:           Playing with children
 Favorite Food:     Tacos, tequila
 Mastered Sport:    Pro wrestling
 Prized Things:     Mask given to him by his mentor
 Dislikes:          Foul play, losses outside the ring

 *** BASIC ATTACKS: ***

 Name:        Arm Whip
 Movement:    When in close, B / F + (y)
 Description: Ramon executes an arm drag.
 Comment:     n/a

 Name:        Flying Mayor
 Movement:    When in close, B / F + (b)
 Description: Ramon executes a snapmare.
 Comment:     Switches sides.

 Name:        Teikuu Drop Kick
 Movement:    DF + (a)
 Description: Ramon dropkicks his opponent at the shins.
 Comment:     Hits low.



 *** SPECIAL ATTACKS ***

 Name:        Tiger Neck Chancery
 Movement:    B,DB,D,DF,F + Punch
 Description: Ramon grabs his opponent and performs a snap suplex.
 Comment:     Follow up with peoples elbow.

 	Name:        People's elbow  :P
 	Movement:    (D,DB,B + kick)
 	Description: Ramon jumps low, and elbow dives on the opponent.
 	Comment:     n/a

 Name:        Somersault
 Movement:    B,DB,D,DF,F + Kick
 Description: Ramon runs forward. If the opponent is close enough, he
              will moonsault off his opponents body.
 Comment:     1. Follow up with peoples elbow.
              2. Can cancel with Stop. 

 	Name:        Stop
	Movement:    during Somersault, (x)+(y)
	Description: Ramon stops.
	Comment:     n/a

 Name:        Feint Step
 Movement:    D,DB,B + Punch (hold)
 Description: Ramon takes a few paces backwards then forwards. If done
              with light punch version, Ramon will dropkick after you release (x).
 Comment:     n/a

 Name:        Rolling Sobat - Low Kick version has WIRE DAMAGE CAPABILITY-
 Movement:    F,D,DF + Kick
 Description: Ramon performs a quick back heel kick.
 Comment:     Follow up with Flying Body Attack.

 	Name:        Flying Body Attack
 	Movement:    after Rolling Sobat hits, F,D,DF + Kick
 	Description: Ramon leaps forward, performing a splash.
 	Comment:     Follow up with Pulling Up Attack.

 		Name:        Pulling Up Attack
		Movement:    after Flying Body Attack, D,D + Punch
		Description: Ramon picks up the downed opponent for additional combos.
		Comment:     n/a

 Name:        Tiger Load
 Movement:    B,D,DB + Kick
 Description: Ramon runs backwards then performs a wall jump.
 Comment:     1. Automatically cancels to Wall Spring.
              2. Press any kick button during running anim to make the Wall Spring cancel into
                 Flying Cross Chop. He jumps down when you don't press kick.
              3. Can cancel with Stop.

	Name:        Halt
 	Movement:    during Tiger Load, (x)+(y)
 	Description: Ramon stops, and does a butt attack :P
 	Comment:     n/a

 Name:        Wall Spring
 Movement:    Near screen edge, Back/Forward + Kick (Hold)
 Description: Ramon clings to the wall.
 Comment:     1. Automatically cancels to Flying Cross Chop
              2. Can Cancel with fall

	Name:  Flying Cross Chop
 	Movement:    Automatic from Wall Spring (release kick button)
 	Description: Ramon flies forward, with two arms extended.
 	Comment:     Velocity is controllable by direction.

        Name:  Fall
 	Movement:    Any punch button
 	Description: Ramon falls down to the ground.
 	Comment:     n/a

 Name:        Jack Knife
 Movement:    D,DB,B + Kick
 Description: Anyone here know Guile... ? :P
 Comment:     Can follow up with Wall Spring when near screen edge


 *** DESPERATION MOVES ***

 Name:        Tiger Spin
 Movement:    F,DF,D,DB,B twice + any single Punch
 Description: Ramon grabs his opponent and spins around them quickly,
              before slams them down head first.
 Comment:     n/a

 Name:        El Diablo Amarillo Ramon
 Movement:    D,DB,B,DB,D,DF,F + any single Kick
 Description: Ramon runs forward. If it connects, he comboes rapidly,
              ending with a spinning dropkick.
 Comment:     n/a


 *** SUPER DESPERATION MOVES  ***

 Name:        SDM Tiger Spin
 Movement:    F,DF,D,DB,B twice + (x)+(y)
 Description: Ramon grabs his opponent, performs two Tiger Neck Chancerys 
              and spins around them quickly, before slams them down
              head first.
 Comment:     n/a

 Name:        SDM El Diablo Amarillo Ramon
 Movement:    D,DB,B,DB,D,DF,F + (a)+(b)
 Description: Ramon runs forward. If it connects, he comboes rapidly,
              ending with a spinning dropkick.
 Comment:     "VIVA MEJIKO" :P

 --------------------------------------------------------------------------------------------

 *** L33T INFINITE COMBO ***

 -* (opponent in corner)

 Standing C -> df + B -> qcb + C -> run -> Standing C -> df + B -> qcb + C
 -> walk -> Crouching C -> df + B -> qcb + C -> skill!

 Well if you can pull off this combo then...your just too good.

 --------------------------------------------------------------------------------------------

 *** Disclaimer ***

 Mugen and all related stuff is free as far as I know so if you bought this....
 You've been spoofed!! All the files included in the zip file(s) are mine...
 All the sprites and sounds are from SNK, I only ripped and programmed it for mugen..
 I will not be held responsible for any damage these files can do to your computer
 or to your life. These files are not considered roms, emulator, warez etc.
 You can modify this, BUT LET ME KNOW IF YOU ARE TO RELEASE IT PUBLICLY.
 Also DON'T USE THE EDITED SPRITES, THOSE WERE NOT MADE BY ME, YOU SHOULD ASK THE
 EDITOR FIRST. If you think some of my codings, ideas, rips etc. helped you...
 Don't Forget to credit me :)

 --------------------------------------------------------------------------------------------

 *** CREDITS ***

 SNK NEOGEO     -  For making my all time favorite game, The King Of Fighters Series.

 ELECBYTE       -  For making M.U.G.E.N... which made all this possible.

 NEORAGEX       -  For the rips and the arcade at home fun.

 Shin dio       -  For the sound rips.

 Ses'MCM        - For making mugen life a bit more bearable.

 Rag's MEE      - For making mugen life a lot more bearable.

 People at the Mugen Boards - For some help and a lot of reading fun :P

 People at #Mugen - For being fun, idle and of some help... XD

 ANGELBABEZ     - For staying with me all this years.

 JESUS          - Whom everything is of and for...

 SANDER71113    - For wasting his time in completing this ambitious project.

 And to everyone who enjoys mugen....

 If you think you deserve to be acknowledged email me..


 ---------------------------------------------------------------------------------------------
 *** ABOUT ***

 For bugs and comments suggestions whatever email me at:

 EMAIL   :   sander71113@yahoo.com

 WEB PAGE:   http://go.to/sander71113
             http://www.angelfire.com/jazz/sander71113

 TRY MY OTHER WORKS:

 IoriX      --- Pathetic Conversion of Iori.. (For now that is...)

 ChizuruX   --- Fancy illusion stuff.

 LuckyX     --- Balls and Balls

 SasquatchX --- Cute and cool.

 RyujiX     --- Bloody Violence.

 (Neo)KyoX  --- Ultimate conversion of Kyo Kusanagi
 ---------------------------------------------------------------------------------------------

===================================== END OF README.TXT =========================================
