-------------------------------------------------------------------------------------------------
          =======================================================================
                  --------------------| SANDER 71113 |-------------------
                         http://www.angelfire.com/jazz/sander71113
                              http://www.mgbr.net/sander71113
                                    sander71113@yahoo.com
                                  http://go.to/sander71113

===========================
 GORO DAIMON X VERSION 1.0
===========================

----------------------------------------------------------------------------------------------
January 11, 2005
 WinMugen Patch made by Winane, compiled all files in 1 rar file. ^^


----------------------------------------------------------------------------------------------
FEBRUARY 28, 2002


 *** CHARACTER ***

 Goro Daimon X is taken from the KOF SERIES (94-98/2001). One of the most fearsome (cheap)
 KOF chars ever :P. This conversion is based on his KOF98 incarnation, using kof2000 groove
 (armor/counter) and a few KOF2001 extras (Wire Damage, Special to DM/SDM cancel). He has a
 lot of high damaging combos, juggles and what not, so research a bit or watch his Ai mash on
 your "lightwieght" character :P. Definitely my favorite character in KOF98. There are hidden
 original moves which are undocumented, have fun finding them. Please take the time to read
 the accompanying documentations. Mugenized by Sander71113(sander71113@yahoo.com).

 *- MODE:
    1. MIX: (KOF95 to KOF98) + KOF2001

 *- Artificial Intelligence: 
    1. Hard level   - daimon.cmd
    2. Medium level - daimediumai.cmd
    3. Low Level    - dainoai.cmd

 *- REQUIREMENTS:
    1. M.U.G.E.N. engine - found at http://www.elecbyte.com
    2. Faster than 300 mhz processor.
    3. 64MB or higher Ram.

----------------------------------------------------------------------------------------------

 *** M.U.G.E.N. ***

 To use Goro Daimon X, you need the latest build of "M.U.G.E.N." engine
 which can found at http://www.elecbyte.com.


 ----------------------------------------------------------------------------------------------

 ----------------------------------------------------------------------------------------------

 *** DAIMONX FILES AND USE ***

 Upon unzipping the Zip file(s), You should now have these:

 DOCUMENTATIONS:
 readme.txt
 history.txt

 CODES:
 daimonx.def
 daimon.cns
 daimona.cns
 daimonb.cns
 daimonc.cns

 COMMANDS AND AI:
 daimon.cmd
 daimedai.cmd
 dainoai.cmd

 ANIMATION:
 daimon.air

 SPRITES:
 daimon.sff

 SOUNDS:
 daimon.snd

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

 Unzip or Put all the files into a folder named daimonX and insert this daimonX folder
 into the chars folder of your M.U.G.E.N. You can add daimonX to your Select Screen by simply
 adding the line "daimonx" to your "select.cfg" under the [Characters] section.

 ----------------------------------------------------------------------------------------------

 *** SPECIAL SYSTEMS ***

   * COUNTER HIT  - Allows for another free hit. This is most obvious when using knockdown
                    attacks. Some moves are not affected by counter hit (ex. Sweep). Use it
                    to your advantage.

   * GUARD CRUSH  - DaimonX can be Guard Crushed. So don't block too much :P. My Guard Crush
                    System is not KOF accurate since it is still not built into the M.U.G.E.N.
                    engine itself. This is just a "work around". It works much like SFA3.
                    You can see the guard crush points in debug display.

   * DIZZY        - DaimonX Can be dizzied. Again this is not KOF accurate. You can also check
                    the dizzy points in Debug Display.

   * THROW CANCEL - Tired of being thrown around? You cancel daimonX's BASIC throws by pressing
                    any punch button during the first few frames of his throw, KOF98 style.

   * WIRE DAMAGE  - Some of daimonX's attacks have wire damage capabilities. This will cause the
                    enemy to bounce off a wall, which allows for further juggling :).
                    -KOF2001 STYLE-

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

 --------------------------------------------------------------------------------------------
 *** ARTIFICIAL INTELLIGENCE SYSTEM ***

 DaimonX has a 3 level AI. All you have to do is edit daimonx.def using notepad.

 ;cmd   = daimon.cmd        ;Hard Ai
 ;cmd   = daimedai.cmd      ;Medium level Ai
 cmd    = dainoai.cmd       ;Low level Ai

 Just remove the semicolon AT THE START OF THE LINE before the ai level of your choice and make
 sure the unwanted levels have semicolon before them. In the example above, it is setup to use
 low level AI.


 --------------------------------------------------------------------------------------------

 --------------------------------------------------------------------------------------------

 *** DM/SDM SHORTCUTS ***

 -* I used the idle buttons (z,c) as DM shortcuts. YOU CAN REMOVE THESE SHORTCUTS!!!
    You'll just have to delete the shortcut cmd portion in the .cmd file you are using.
    You can also set it to "roll" for dodge and "shingo" for striker.

 --------------------------------------------------------------------------------------------

MOVELIST/PROFILE: "THE KING OF FIGHTERS 2001 FAQ v0.2" by Orochi Yamazaki

-------------
 GORO DAIMON
-------------

  Looks like: A shirtless buff man with a white Japanese headband.

 =PROFILE= 

 Fighting Style:        Judo and Self Taught Techniques
 Birthday:              May 5th 1967
 Age:                   34
 Nationality:           Japan
 Blood Type:            A
 Height:                204cm
 Weight:                138kg
 Hobby:                 Being with Nature
 Favorite Food:         Zaru Soba
 Best Sport:            Judo
 Most Important:        Geta Sandals
 Dislikes:              Complex machinery


 Critical Wire Attack : Air Knockdown Attack
 Counter Wire Attack  : ------
 Super Cancel Move(s) : Evade


 ==============================COMMAND LIST================================

 Name:        Smack
 Movement:    When in close, B + (y)
 Description: Daimon slams the opponent head first.
 Comment:     n/a

 Name:        Squeeze
 Movement:    When in close, F + (y)
 Description: Daimon grounds his opponent and starts choking them.
 Comment:     n/a

 Name:        Trip
 Movement:    When in close, B / F + (b)
 Description: Daimon trips his opponent.
 Comment:     Switches sides.

 Name:        Smash
 Movement:    F + (x)
 Description: Daimon performs a thunderous elbow strike.
 Comment:     Negates projectiles.

 Name:        Elbow/Backfist
 Movement:    DF + (y)
 Description: Daimon swings his arm upwards.
 Comment:     Cancelable.


 ===============================MOVES LIST=================================

 Name:        Hammer Quake
 Movement:    F,D,DF + Punch
 Description: Daimon slams the ground with his palms.
 Comment:     High Punch version is a fake out move. Hits low.

 Name:        Leg Tackle
 Movement:    close, F,D,DF + Kick
 Description: Daimon fiercely trips his opponent to the ground.
 Comment:     Invincible start up.

 Name:        Evade
 Movement:    D,DB,B + Kick
 Description: Daimon rolls forward, causing a loud thunderous sound.
 Comment:     Evades most attacks.

 Name:        Reversal Grab
 Movement:    D,DF,F + Kick
 Description: Daimon holds out his hands. If he is attacked, he grabs his
              opponent, puts them on his back and drops down with them.
 Comment:     Counter all basic attacks.

 Name:        Double Throw
 Movement:    close, F,DF,D,DB,B,F + Punch
 Description: Daimon smashes his opponent to the ground, then tosses them
              into the air.
 Comment:     n/a

 Name:        Running Throw
 Movement:    close, F,DF,D,DB,B,F + Kick
 Description: Daimon runs behind the enemy and slams him to the ground.
 Comment:     n/a

 Name:        Cloud Grab
 Movement:    B,DB,D,DF,F + (x)
 Description: Daimon grabs the air. If an opponent is jumping, Daimon grabs
              the opponent and slams them hard to the ground.
 Comment:     Can grab tall standing characters.

 Name:        Kirikabu Gaeshi
 Movement:    B,DB,D,DF,F + (y)
 Description: Daimon grabs the ground. Daimon grabs the opponent and slams
              them hard to the ground.
 Comment:     Can hit lying down opponents.

 ============================DESPERATIONS LIST=============================

 Name:        Super Earth Throw
 Movement:    close, F,DF,D,DB,B,F,DF,D,DB,B + Punch
 Description: Daimon grabs his opponent and repeatedly slams them into the
              ground before tossing them high into the air.
 Comment:     n/a

 Name:        Super Chain Grab # 1
 Movement:    B,DB,D,DF,F,B,DB,D,DF,F + Kick
 Description: Daimon puts the opponent on his back and drops down with them
              with a crunch.
 Comment:     Follow up with Super Chain Grab # 2. Has Armor effect.

 Name:        Super Chain Grab # 2
 Movement:    after Super Chain Grab # 1, B,DB,D,DF,F + Kick
 Description: Daimon grabs his opponent off the ground and slams them into
              the ground opposite him.
 Comment:     Follow up with Super Chain Grab # 3

 Name:        Super Chain Grab # 3
 Movement:    after Super Chain Grab # 3, F,D,DF + Kick
 Description: Daimon grabs his opponent and shoulder dives them.
 Comment:     n/a

 =========================SUPER DESPERATIONS LIST==========================

 Name:        SDM Hyper Earth Throw
 Movement:    F,DF,D,DB,B,F,DF,D,DB,B + (x)+(y)
 Description: Daimon grabs his opponent and shoulder dives them.
 Comment:     Follow up with Arashi no Yama (Zoku Kirikabu Gaeshi).
              Autoguard.

 Name:        Hyper Chain Grab # 1
 Movement:    B,DB,D,DF,F,B,DB,D,DF,F + Kick
 Description: Daimon puts the opponent on his back and drops down with them
              with a crunch.
 Comment:     Follow up with Hyper Chain Grab # 2. Has Armor effect.

 Name:        Hyper Chain Grab # 2
 Movement:    after Hyper Chain Grab # 1, B,DB,D,DF,F + Kick
 Description: Daimon grabs his opponent off the ground and slams them into
              the ground opposite him.
 Comment:     Follow up with Hyper Chain Grab # 3

 Name:        Hyper Chain Grab # 3
 Movement:    after Hyper Chain Grab # 3, F,D,DF + Kick
 Description: Daimon picks the opponent up, slams it 3 times and toss it in the air.
              Daimon finishes it by grabbing the enemy while falling and slamming
              him hard to the ground.
 Comment:     n/a

 --------------------------------------------------------------------------------------------

 *** Disclaimer ***

 Mugen and all related stuff is free as far as I know so if you bought this....
 You've been spoofed!! All the files included in the zip file(s) are mine...
 All the sprites and sounds are from SNK, I only ripped and programmed it for mugen..
 I will not be held responsible for any damage these files can do to your computer
 or to your life. These files are not considered roms, emulator, warez etc.
 You can modify this, BUT LET ME KNOW IF YOU ARE TO RELEASE IT PUBLICLY.
 If you think some of my codings, ideas, rips etc. helped you...
 Don't Forget to credit me :)

 --------------------------------------------------------------------------------------------

 *** CREDITS *** 

 SNK NEOGEO     - For making my all time favorite game, The King Of Fighters Series.

 ELECBYTE       - For making M.U.G.E.N... which made all this possible.

 NEORAGEX       - For the best Neogeo emulator :)

 Ses'MCM        - For making mugen life a bit more bearable

 Rag's MEE      - For making mugen life a lot more bearable.

 SMI            - For his Damage data

 [E], sorrowedge, Yongming - For a lot of help while I was starting.

 People at the Mugen Boards - For some help and a lot of reading fun :P

 People at #Mugen - For being fun, idle and of some help... XD

 People that helped me while I was starting - Thank you guys.

 ANGELBABEZ     - For staying with me all this years.

 JESUS          - Whom everything is of and for...

 SANDER71113    - For wasting his time in completing this project.

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

 RamonX     --- High flying and Wall clinging action hero :P
 ---------------------------------------------------------------------------------------------

===================================== END OF README.TXT =========================================
