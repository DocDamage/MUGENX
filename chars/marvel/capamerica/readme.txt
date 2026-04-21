=================
 Captain America
=================
version 1.00
9/23/2001

by MystikBlaze
(mystik3984@hotmail.com)

http://mgbr.net/mystik



-------------------
Contents
-------------------
1.  Updates
2.  Stuff Needed to Add
3.  Shield Systems
4.  Gems
5.  Button Layout
6.  Moves List
7.  MSH Mode and MvC Mode
8.  Miscellaneous
9.  Known Issues
10.  Credits


===============================================================
1.     Updates


   9/23/2001 (ver. 1.00)
     -Added an ending
     -Fixed a whole bunch of bugs

   9/20/2001 (ver. 0.99)
     -All gems completed
     -Added Hyper Stars N' Stripes in MvC mode
     -Added Hyper Charging Star in MvC mode
     -Finalized MvC mode
     -Added Infinite Counter
     -Added his two other win poses
     -Able to get dizzied

   9/08/2001 (ver. 0.90)
     -Power Gem, Soul Gem, and Mind Gem, implemented
     -Fixed a bunch of bugs
     -Made a 2nd shield system for slower computers

   8/26/2001 (ver. 0.75)
     -Air throw
     -Cap's Jump Down+C kick (I can't believe I missed that earlier >_<)
     -MSH mode and MvC mode (hold start while selecting Cap for MvC mode)

   8/26/2001 (ver. 0.60)
     -Final Justice
     -His standing kick throw
     -Bug fixes

   8/24/2001 (ver. 0.40)
     -Charging Star
     -Taunt
     -A lot of fine-tuning

   8/21/2001 (ver. 0.35)
     -All his basics
     -Gethit animations done
     -All required sprites done
     -Ground and air Shield Slash
     -Stars N' Stripes
     -Cartwheel
     -Standing Throw P


===============================================================
2.     Stuff Needed to Add


     -Nothing else that I know of.


===============================================================
3.     Shield Systems

      Captain America might slow down Mugen if you have a slower
      computer. And because of this, I created a 2nd shield system
      which is more optomized. To switch to the alternate system,
      open "capamerica.def" with any text editor. Once you open the
      file, in the middle of the text, you should see this:

         st      = capamerica.cns
         st1     = shield.cns
         ;st1     = shield2.cns ;alternate shield CNS file (for slower computers)
         stcommon = common1.cns
         sprite  = capamerica.sff
         anim    = capamerica.air
         ;anim    = capamerica2.air ;alternate AIR file (for slower computers)

      What you have to do is switch the semicolons for st1 and anim.
      After, it should look like this:

         st      = capamerica.cns
         ;st1     = shield.cns
         st1     = shield2.cns ;alternate shield CNS file (for slower computers)
         stcommon = common1.cns
         sprite  = capamerica.sff
         ;anim    = capamerica.air
         anim    = capamerica2.air ;alternate AIR file (for slower computers)

      Note the re-positioning of the semicolons. Now just go into Mugen
      and try again. If CapAm still runs slowly, then you'll just have
      to upgrade your computer :p


===============================================================
4.     Gems

      If you ever played MSH, then you know about the gems system.
      Basically, these are different power-ups, depending on the
      color of the gem. I didn't reproduce MSH's system but, rather,
      I just made a random gem appear each round. Also, only MSH
      mode has gems. You don't get to use them in MvC mode. Anyway,
      press B, DB, B, two punches to activate the gems.

      Mind Gem
         -This gem gradually fills up the power meter. Useful if
          you want to quickly gain power without doing anything.

      Power Gem
         -Ah yes, Captain America's special gem. Not only does Cap's
          attacks do more damage, but you get a more powerful version
          of Shield Slash, Stars N' Stripes, and Charging Star. Use
          it to inflict more damage and beat down opponents.

      Reality Gem
         -While active, this gem fires different projectiles
          depending on the the strength of your attack. A weak
          punch/kick causes 3 small balls of fire to shoot out.
          A medium punch/kick will have icicles fall onto the
          opponent. And a strong punch/kick will fire homing
          electrical balls.

      Soul Gem
         -Like the Mind Gem, but instead of filling up the power
          meter, it gradually fills part of your life meter.
          Helpful if you just need that extra life to defeat an
          opponent.

      Space Gem
         -This is basically a super armor. You take less damage and
          your attacks are uninterrupt-able.

      Time Gem
         -Speed is drastically increased, normal including attacks.


===============================================================
5.     Button Layout:



         UB   U   UF      
                             [x]   [y]   [z]
          B   n   F          
                             [a]   [b]   [c]
         DB   D   DF
        
        ----------------------------------------

          F = forward
          B = back       x = jab     y = strong     z = fierce
          U = up         a = short   b = forward    c = roundhouse
          D = down
  


===============================================================
6.     Moves List


   --------------------------------------
   Basic Moves:
   --------------------------------------

      DASH FORWARD
         -F, F

      DASH BACK
         -B, B

      SUPER JUMP
         -D, U

      TAUNT
         -start

      GROUND THROW 1 (one-hand slam)
         -F/B + y or z while standing next to opponent

      GROUND THROW 2 (kick launch)
         -F/B + b or c while standing next to opponent

      AIR THROW 1 (bash-down)
         -F/B + y or z while next to opponent in the air

      ACTIVATE GEM
         -D, DB, B, any two punches


   --------------------------------------
   Defensive Moves:
   --------------------------------------

      RECOVERY ROLL
       -While falling through the air:
         -B, DB, D, any button

      INFINITE COUNTER
       -While blocking:
         -B, DB, D, punch


   --------------------------------------
   Special Moves:
   --------------------------------------

      SHIELD SLASH (low)
         -D, DF, F, x (can be done in air)

      SHIELD SLASH (high)
         -D, DF, F, y (can be done in air)

      SHIELD SLASH (diagonal)
         -D, DF, F, z (can be done in air)

      STARS N' STRIPES
         -F, D, DF, punch

      CHARGING STAR
         -B, DB, D, DF, F, kick (in MSH mode)
            or
         -D, DF, F, kick (in MvC mode)

      CARTWHEEL
         -F, DF, D, DB, B, punch


   --------------------------------------
   Super Moves:
   --------------------------------------

      FINAL JUSTICE
         -D, DF, F, any two punches

      HYPER CHARGING STAR (only available in MvC mode)
         -D, DF, F, any two kicks

      HYPER STARS N' STRIPES (only available in MvC mode)
         -F, D, DF, any two punches


===============================================================
7.     MSH Mode / MvC Mode


      *Hold start while selecting Cap to choose MvC mode.


      MSH Mode (normal select):
         -Stand Y launches the opponent into the air
         -There are no dust effects
         -There is no explosion at the end of Final Justice
         -No super portrait background
         -Gems
         -Lacks Hyper Charging Star and Hyper Stars N' Stripes
         -Opponents don't recover after being thrown
         -Charging Star and Stars N' Stripes, while he has his
          shield, will cause the opponent to fall


      MvC Mode (holding start and select):
         -Stand Y only launches if the opponent is in the air
         -Dust effects when doing a special move
         -Huge explosion at the end of Final Justice
         -Displays a super portrait when starting a super/hyper attack
         -No Gems
         -Hyper Charging Star
         -Hyper Stars N' Stripes
         -Different velocities on his throws
         -Charging Star and Stars N' Stripes knocks the opponent
          throught the air, but they recover and land on their feet

      There are a couple other minor differences, but they're negligible.


===============================================================
8.     Miscellaneous


     -You can select his win pose by holding down the punch button.
        Weak Punch - Holds up his shield and says "Victory"
        Medium Punch - Gives a thumbs up to the downed opponent
        Strong Punch - Doves fly above Cap while he has his back turned

     -You can select a different gem by pressing an attack button
      while taunting.
        Weak Punch - Mind Gem
        Medium Punch - Power Gem
        Strong Punch - Reality Gem
        Weak Kick - Soul Gem
        Medium Kick - Space Gem
        Strong Kick - Time Gem


===============================================================
9.     Known Issues


     -Cap's shield will become temperarily misaligned when thrown.
      This is due to the lack of a trigger to detect which custom
      state frame Cap is in. There's nothing I can do about that
      currently.

     -Cap's Hyper Charging Star, while he has the shield, is supposed
      to block fireballs and super beams. However, he completely
      goes through a few characters' beams, including Ryu Plus and
      Ryu-X's Shinkuu Hadouken. This is because Cap is only able to
      get hit by a projectile and because those hyper beams' attributes
      aren't set to projectile (ie, the attr in the hitdef isn't set to
      NP, SP, or HP), Cap goes right through them without slowing down.

     -For some odd reason, Cap's launcher (crouch z) doesn't work
      on Kenshin and Dark-Sun's Guy. He just floats above the
      ground for a little bit and returns to his recover state.
      He doesn't get launched into the air at all. This is an
      issue that has to do with Guy and not Captain America because
      his launcher works on every other character I've tested it on
      (besides Guy of course).


===============================================================
10.     Credits


     -Elecbyte for creating MUGEN
     
     -Capcom for creating the best 2D fighting games
      (and for the sprites and sounds that I ripped)

     -Marvel for creating Captain America

     -Sés, for probably one of the useful tools to use - M.C.M.

     -Sunboy, who's dizzy system I used as reference to create
      Cap's dizzy system

     -Kamek for his Combo Ranking code, which helped to develop
      CapAm's AttackMulSet/Damage reduction code

     -BlackJack for ripping Cap's Hyper Charging Star sprites

     -Mictlantecuhtli for the MSHvsSF large portrait