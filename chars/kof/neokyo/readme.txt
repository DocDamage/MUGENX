=================================================================================================
                  --------------------| SANDER 71113 |-------------------
                                   sander71113@yahoo.com
                                  http://go.to/sander71113 

============================
Neo Kyo Kusanagi X ver. 1.0
============================

-* PROGRAMMING AND RIPPING:
   Sander71113

-* MAIN RIPPING AND CLSNING:
   Neogouki

-* SPRITE EDITS:
   Kaddet -> Dodge, Dodge attack, Charge up, 182 Shiki SDM.
          -> old edits: Kamijiri SDM, and Kototsuki you 2001.
   Ruddy(R.B.) -> Kototsuki you and Oboro goruma.

DATE: 12/17/2001

 *** NEO-WHAT? ***

 This is originally just intended to be kyoX's alternative SFF. I decided to release him
 as another character because KyoX's progress is delayed. Many thanks to Neogouki for
 allowing me to use his famous neokyo sprites along with it's clsns.
 
 *** CHARACTER ***

 Neo Kyo Kusanagi X is taken from SNK's King of Fighters Series. All of his varying moves and
 abilities from KOF'94 to KOF'99 are made available. An all in one Kyo, which gives the user
 the power to choose between the many different modes and grooves that KOF has implemented.
 Just an added note, Mix and 2K1 mode uses KOF2K1 damages, and the rest uses KOF98 based damage.
 Pls take the time to read the accompanying docs (readme.txt,cmd.txt,history.txt).
 "Mugenized" by Sander71113 (sander71113@yahoo.com).

*- MODES: 
    1. Kyo Kusanagi '95
    2. Kyo Kusanagi '98
    3. Kyo-1
    4. Kyo-2
    5. Kyo Kusanagi '99
    6. Kyo Kusanagi '2000
    7. Kyo Kusanagi '2001
    8. Kyo Kusanagi Mix

 *- GROOVES:
    1. Advance Groove
    2. Extra Groove
    3. KOF'99 Groove
    4. KOF '2000 Groove
    5. KOF '2001 Groove
    6. Mix Groove

 *- STRIKERS:
    1. Another Iori
    2. Kyoko
    3. Syo
    4. Saisyu

 *- Artificial Intelligence:
    1. Hard level - Neokyo.cmd
    2. Medium level - Mediumai.cmd
    3. Low Level - Noai.cmd

 *- STORY BOARD:
    1. KOF2000 ENDING

 *- WHATS DONE:
    1. EVERYTHING AND MORE...
    2. TOO MANY TO LIST HERE...

 *- REQUIREMENTS:
    1. M.U.G.E.N. engine - found at http://www.elecbyte.com
    2. Faster than 300 mhz processor.
    3. 64MB or higher Ram.

 *** M.U.G.E.N. ***

 To use Neo Kyo Kusanagi X, you need the latest build of "M.U.G.E.N." engine
 which can found at http://www.elecbyte.com.

 *** NEOKYOX FILES AND USE ***

 Upon unzipping the Zip file(s), You should now have these:

 DOCUMENTATIONS:
 Readme.txt
 history.txt
 cmds.txt

 CODES:
 neokyox.def       neokyo.cmd
 neokyo.cns        neokyoa.cns
 neokyob.cns       neokyoc.cns
 neokyod.cns       neokyoe.cns
 neokyof.cns       neoaiori.cns
 neokyoko.cns      neosyo.cns
 neokyo.air        mediumai.cmd
 noai.cmd

 SPRITES:
 neokyo.sff

 SOUNDS:
 kyo.snd

 Story board:
 ending.sff
 ending.def
 ending1.mp3

 PALETTES:
 Neokyo.act
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

 Unzip or Put all the files into a folder named neokyoX and insert this neokyoX folder
 into the chars folder of your M.U.G.E.N. You can add neokyoX to your Select Screen by simply
 adding the line "neokyox" to your "select.cfg" under the [Characters] section.
 ---------------------------------------------------------------------------------------------

 ---------------------------------------------------------------------------------------------
 *** NEOKYO X SYSTEM AND COMMANDS ***
 ---------------------------------------------------------------------------------------------
  ** SPECIAL SYSTEMS ***

   * COUNTER HIT  - Allows for another free hit. This is most obvious when using knockdown
                   attacks. Some moves are not affected by counter hit (ex. Sweep). Use it
                   to your advantage.

   * GUARD CRUSH  - KyoX can be Guard Crushed. So don't block too much :P. My Guard Crush
                   System is not KOF accurate since it is still not built into the M.U.G.E.N.
                   engine itself. This is just a "work around". It works much like SFA3. 
                   You can see the guard crush points in debug display.

   * DIZZY        - KyoX Can be dizzied. Again this is not KOF accurate. You can also check the
                   dizzy points in Debug Display.

   * THROW CANCEL - Tired of being thrown around? You cancel KyoX's throws by pressing any punch
                    button during the first few frames of his throw, KOF98 style.
 ----------------------------------------------------------------------------------------------

 ----------------------------------------------------------------------------------------------
  ** M.U.G.E.N. JOYSTICK CONFIGURATION **
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

 ---------------------------------------------------------------------------------------------
  ** DEFAULT MODES AND GROOVES **

 KyoX is a bit more complicated than your normal straight forward character so here is an
 explanation that I hope will clear up things for you. KyoX has different modes and grooves
 which you can choose from either by palette selection or pressing cmds during fight.

 NOTES: Modes and Grooves will reset to Palette default every start of a 1ST round.

    M.U.G.E.N. BUTTON PALETTE MAP: * Palettes are the different color schemes of kyo.

                          (s) - start

			  (x) (y) (z)

			  (a) (b) (c)

   When selecting you kyoX, each button represents a default Mode and Groove.

	 (x) - pal4.act   - 98 MODE / ADV GROOVE            - COLOR: Dark Green

	 (y) - pal5.act   - 95 MODE / EXTRA GROOVE          - COLOR: Lavander

	 (z) - neokyo.act - 2000 MODE/ 2000 GROOVE          - COLOR: Original

	 (a) - pal1.act   - Kyo-1 MODE / 99 GROOVE          - COLOR: Grey  (Darker skin tone)

	 (b) - pal2.act   - Kyo-2 MODE / 99 GROOVE          - COLOR: Brown (Darker skin tone)

	 (c) - pal3.act   - 99 MODE / 99 GROOVE             - COLOR: Dark Blue

   -* Extra Palettes [Hold start then press the corresponding button]

         (x) - pal9.act   - RANDOM MODE/ RANDOM GROOVE      - COLOR: Green

         (y) - pal10.act  - RANDOM MODE/ RANDOM GROOVE      - COLOR: Violet

         (z) - pal11.act  - RANDOM MODE/ RANDOM GROOVE      - COLOR: Black Skin Tone

         (a) - pal6.act   - MIX MODE / MIX GROOVE           - COLOR: Black & Red

         (b) - pal7.act   - 2001 MODE/ 2001 GROOVE          - COLOR: Black

         (c) - pal8.act   - RANDOM MODE/ RANDOM GROOVE      - COLOR: Blue (Shingo!!!)
 ---------------------------------------------------------------------------------------------

 ---------------------------------------------------------------------------------------------
  *** TAUNTS ***

 Kyo has 4 taunts. Each with it's own particular use:

    Taunt 1 = start         : KOF98 style taunt -Cancelable-
    Taunt 2 = Down+start    : KOF2000 Style Taunt -Striker Bomb Add-
    Taunt 3 = Forward+start : Groove Selection
    Taunt 4 = Back+start    : Mode Selection
 ---------------------------------------------------------------------------------------------

 ---------------------------------------------------------------------------------------------
  ** MODE AND GROOVE SELECTION DURING FIGHT**

 NOTES: Grooves and Modes can be changed during fight. They are activated by Taunt1 and Taunt2
        respectively. Here is the explanation:

 GROOVE SELECTION :

     CMD: FORWARD+START

     -* During Groove Selection, you can change KyoX's Groove by pressing one of
        these buttons. An appropriate display appears upon a succesful Groove change.
        I've also added a chart so you won't have to memorize this.. :P

 		    *- DURING TAUNT1

 	      BUTTON:     GROOVE:     DISPLAY

  	        (x)    -  Advance  -   Groove: ADV

		(y)    -   Extra   -   Groove: EX

 		(z)    -    Mix    -   Groove: MIX

 		(a)    -    99     -   Groove: KOF'99

 		(b)    -    2K     -   Groove: KOF'00

                (c)    -    2001   -   Groove: KOF'01


 MODE SELECTION :

     CMD: BACK+START

     -* During Mode Selection you can change KyoX's Mode by pressing one of these buttons.
        An appropriate display appears upon a succesful Mode change. I've also added a
        chart so you won't have to memorize this.. :P

                   *- DURING TAUNT2

 	      BUTTON:      MODE:     DISPLAY

  	        (x)    -   Kyo'98    -   Mode: Kyo'98

		(y)    -   Kyo'95    -   Mode: Kyo'95

 		(z)    -   Kyo'2K    -   Mode: Kyo'2K

 		(a)    -   Kyo-1     -   Mode: Kyo-1

 		(b)    -   Kyo-2     -   Mode: Kyo-2

                (c)    -   Kyo'99    -   Mode: Kyo'99

                (s)    -   Mix       -   Mode: Kyo-Mix

              (x)+(y)  -   Kyo'2001  -   Mode: Kyo'2001

 --------------------------------------------------------------------------------------------

 --------------------------------------------------------------------------------------------
 *** NEOKYO X STRIKER SYSTEM ***

 NOTE: NeoKyoX's Striker System works like KOF '2000. You get 3 Striker Bombs for the
       first round, then adds another one for the next rounds. You can call a striker
       Anytime except when being hit or thrown and when doing DM/SDMs (ACTIVE STRIKER SYSTEM).
       You can also add striker bombs by using taunt2 which costs 1 power stock.

 STRIKER ON/OFF TOGGLE:
 During 1st Round Intro, you can enable/disable use of striker by pressing back or forward
 There is no default striker toggle, It randomly toggles on/off before round 1. So be sure
 to pick your striker preference by not skipping the intro in round 1.
 Forward - Striker: On
 Back    - Striker: Off

 ALTERNATIVE STRIKER:
 NeoKyoX can now choose between 4 strikers (A_iori, Kyoko, Syo & Saisyu). You can change strikers
 by pressing lp+hk.

 (y)+(a) - Striker Summon

 (x)+(b) - Striker Change

 Down+start - Taunt2 adds 1 striker bomb and uses 1 power stock

 STRIKER DESCRIPTIONS:

 1. A_iori : -KOF2000 attack-     Jump in Kick then rainbow attack (OTGs)
 2. Kyoko  : -KOF2000 attack-     R.E.D. kick then shiki kai.
 3. Syo    : -KOF2000 attack-     Head dive then burning upper.
 4. Saisyu : -SETH style KOF2000- Jump in Kick, land and stand, then walk.
                                  Auto attacks when enemy is in range.

 --------------------------------------------------------------------------------------------
 *** ARTIFICIAL INTELLIGENCE SYSTEM ***

 NeokyoX has a 3 level AI. All you have to do is edit neokyox.def using notepad.

 ;cmd      = neokyo.cmd        ;Hard Ai
 ;cmd      = mediumai.cmd      ;Medium level Ai
 cmd      = noai.cmd           ;Low level Ai

 Just remove the semicolon AT THE START OF THE LINE before the ai level of your choice and make
 sure the unwanted levels have semicolon before them. In the example above, it is setup to use
 low level AI.

 --------------------------------------------------------------------------------------------

 --------------------------------------------------------------------------------------------
 *** COMMANDS MOVES ***

 -* I used the idle buttons (z,c) as DM shortcuts. YOU CAN REMOVE THESE SHORTCUTS!!!
    You'll just have to delete the shortcut cmd portion in the .cmd file you are using.
    You can also set it to "roll" for dodge and "shingo" for striker.

 For NeoKyoX's moves and commands, see Cmds.txt
 --------------------------------------------------------------------------------------------

 --------------------------------------------------------------------------------------------
 *** HISTORY ***

 To see NeoKyoX's progress and to know what's new on this release, see History.txt
 --------------------------------------------------------------------------------------------

 --------------------------------------------------------------------------------------------
 *** Disclaimer ***

 Mugen and all related stuff is free as far as I know so if you bought this....
 You've been spoofed!! All the files included in the zip file(s) are mine... 
 Almost all the sprites and sounds are from SNK, I only ripped and programmed it for mugen..
 I will not be held responsible for any damage these files can do to your computer 
 or to your life. These files are not considered roms, emulator, warez etc.
 You can modify this, BUT LET ME KNOW IF YOU ARE TO RELEASE IT PUBLICLY.
 Also DON'T USE THE EDITED SPRITES, THOSE WERE NOT MADE BY ME, YOU SHOULD ASK THE
 EDITOR FIRST. If you think some of my codings, ideas, rips etc. helped you...
 Don't Forget to credit me :)
 --------------------------------------------------------------------------------------------

 --------------------------------------------------------------------------------------------
 *** CREDITS: ***


        SNK NEOGEO - For making my favorite game... The King of Fighters! and for making
                     my all time favorite character... Kyo Kusanagi!

        ELECBYTE   - For making M.U.G.E.N... the Best 2D fighting game engine!

        NEORAGEX   - For the rips and for the "arcade at home" fun!

        NEOJUKE    - Sound rips

        NeoGouki   - I used Neokyo Sprites (thus the name neokyoX).
                     He also answers a lot of my stupid questions.. :P

        Kaddet     - For the KOF2001 SDM edits and the dodge/charge up edits.

        Ruddy(R.B.)- For the kototsuki you and oboro goruma edits.

        Ses'MCM    - For making mugen life a bit more bearable.

        Rag's MEE  - For making mugen life a lot more bearable.

        Shin_DIO   - For a lot of sound rips and for working on special intros.

        Yongming   - I learned everything about new mugen from his characters.

        Sorrowedge - For a lot of help while I was starting.

        J[E]NUS    - For his continuous command issues and beta testing.

        [K3nShiN]  - For his Quick Edit Program.

        K_Kusanag  - For his GBKyo's Readme and his great beta testing help.

        Tenshin    - For beta testing.

        People at the Mugen Boards - For some help and a lot of frustrations...

        People at #Mugen - For being fun, idle and of some help... XD

        ANGELBABEZ - For staying with me all this years.

        JESUS   - Whom everything is of and for...

        ME..(SANDER71113) - For wasting my time in completing this ambitious project.

        And to everyone who enjoys mugen....

        If you think you deserve to be acknowledged email me..
 ---------------------------------------------------------------------------------------------

 ---------------------------------------------------------------------------------------------
 *** ABOUT ***

 For bugs and comments suggestions whatever email me at:

 EMAIL   :   sander71113@yahoo.com

 WEB PAGE:   http://go.to/sander71113
             http://www.angelfire.com/jazz/sander71113

  ---------------------------------------------------------------------------------------------

===================================== END OF README.TXT =========================================