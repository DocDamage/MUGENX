=================
    Charlie
=================
version 1.60
8/2/2001

by MystikBlaze
(mystik3984@hotmail.com)

http://home.maine.rr.com/mystik3984



-------------------
Contents
-------------------
1.  Updates
2.  Stuff Needed to Add
3.  Button Layout
4.  Moves List
5.  Miscellaneous
6.  Credits


===============================================================
1.     Updates


   8/2/01 (ver 1.60)
     -Completely redid the Crossfire Blitz (Alpha version) to
      match SFA3.

     -Redid the super jump (so now it's more accurate to the
      Vs style, in that you can do multiple moves in the air
      while doing a super jump).

     -Redid the falling Recovery Rolls.

     -Fixed the Alpha Counter.

     -Added Custom Combo mode.

     -Added Guard Push.

     -Added the intro where he jumps of a plane (it looks weird in
      indoor stages though).

     -Altered his intro against Bison (so now it matches SFA3)

     -Sonicboom now able to be canceled into a super.

     -Redid the Downward Somersault (now it's more accurate to the
      Vs games)

     -The Crossfire Blitz (Vs version) can knock the opponent all
      the way across the screen where Charlie will then dash in
      (like in the Vs games)

     -Completely redid the AI (I toned it down).

     -Redid the palettes.

     -Recounted the ticks in some moves (mostly the basic
      attacks). The change isn't really noticable though.

     -Throw attempts can now be done anywhere, rather than having
      to be right next to the opponent (a la SFA3).

     -Added some effects (such as the XMvSF fireball dust trails).

     -Altered some effects (just check out the super jump or do any
      of the supers).

     -Adjusted some of the basic attack velocities.

     -Er... a few other things that I probably forgot.


   4/9/2001 (ver 1.47)

     -Optimized Charlie a little bit by reducing some useless
      and long coding (so now the cns, cmd, and air file sizes
      are smaller).

     -Deleted a few repeat sprites in the sff

     -Fixed a few minor bugs

     -The only really new feature added: a special intro against
      Guile


   4/7/2001 (ver 1.45)

     -Added an intro and ending for the new Mugen

     -Fixed a few minor errors
 

   4/5/2001 (ver 1.40)
     -Added Sonicbreak (Vs Style)

     -Added Somersault Justice (Vs Style)

     -Added Crossfire Blitz (Vs Style)

     -Added an air throw (backbreaker)

     -Added his air somersault throw (from SFA3)

     -Added a projectile to his Somersault Shell (like in the Vs series)

     -Added special intro against M. Bison

     -Added special intro against Cammy

     -Added special intro against Rolento

     -Now has 12 palettes

     -Redid his forward and backward dash (sprites ripped from
      X-Men Vs. Street Fighter)

     -Made some minor adjustments here and there


   2/28/2001 (ver 1.15)

     -Added Final Mission

     -Redid the Level 1,2,3 charging sparks

     -Tweaks and fixes


   2/22/2001 (ver 1.10)

     -Added an AI

     -Made some moves OTG-able

     -Increased the speed of some moves

     -Decreased his overall damage (his combos were too powerful)

     -Redid his palettes

     -Changed the hit sparks (ripped them from SFA2)

     -Added a special intro against Guile

     -Tweaks and fixes


   2/17/2001 (ver 1.00)

     -Added Somersault Justice

     -Added Aerial Sonicbreak

     -Added his kick throw

     -Added a rolling evade move

     -Added forward and backward recovery roll

     -Added two new win poses

     -As always, I made some minor tweaks and fixes


   2/10/2001 (ver .85)

     -Added his punch throw

     -Alpha/Zero Counter implemented

     -Added his downward Somersault Shell

     -Minor tweaks


   2/05/2001 (ver .80)

     -Added two supers (Sonicbreak and Crossfire Blitz)

     -Added 1 win pose (now with a grand total of 2 poses)

     -Minor fixes


   2/02/2001 (ver .75)

     -Added a superjump

     -Minor tweaks and fixes


   1/31/2001 (ver .70)

     -First version; finished all of his standard moves.

     -Finished all of his special moves (I think).



===============================================================
2.     Stuff Needed to Add


     -Ummmm.... nothing that I can think of.



===============================================================
3.     Button Layout:



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
4.     Moves List


   --------------------------------------
   Basic Moves:
   --------------------------------------

      DASH FORWARD
         -F, F

      DASH BACK
         -B, B

      SPINNING BACKFIST
         -F + z

      OVERHEAD KICK
         -F + b

      THRUST KICK
         -F + c

      KNEE BAZOOKA
         -press a kick button while dashing forward

      THROW (Suplex)
         -F/B + any two punch buttons


      THROW (Knee Bash)
         -F/B + any two kick buttons

      AIR THROW (Backbreaker)
         -F/B + any two punch buttons

      AIR THROW (Somersault Throw)
         -F/B + any two kick buttons

      SUPER JUMP
         -D, U


   --------------------------------------
   Defensive Moves:
   --------------------------------------

      ALPHA/ZERO COUNTER
       -while blocking:
         -B, DB, D, x/y/z


      GUARD PUSH
       -while blocking:
         -press any two punches (can be done while crouching or in air)


      RECOVERY ROLL FORWARD
       -while falling in the air:
         -B, DB, D, x/y/z


      RECOVERY ROLL BACKWARD
       -while falling in the air:
         -B, DB, D, a/b/c


      ROLL EVADE
         -D, DB, B, x/y/z


   --------------------------------------
   Special Moves:
   --------------------------------------

      SONICBOOM
         -charge B, then F + x/y/z
             or
         -D, DF, F, x/y/z


      AERIAL SONICBOOM
       -while in the air:
         -charge B, then F + x/y/z
             or
         -D, DF, F, x/y/z


      SOMERSAULT SHELL
         -charge D, then U + a/b/c
             or
         -D, DF, F, a/b/c


      DOWNWARD SOMERSAULT SHELL
       -while in the air:
         -U, UF, F, a/b/c
             or
         -D, DF, F, a/b/c


   --------------------------------------
   Super Moves:
   --------------------------------------

      SONICBREAK
          -charge B, F, B, F + x/y/z
              or
          -D, DF, F, D, DF, F, x/y/z
           (tap x/y/z for more fireballs)


      SONICBREAK (Vs Style)
          -D, DF, F + two punch buttons


      CROSSFIRE BLITZ
          -charge B, F, B, F + a/b/c
              or
          -D, DF, F, D, DF, F, a/b/c


      CROSSFIRE BLITZ (Vs Style)
          -D, DF, F + two kick buttons


      SOMERSAULT JUSTICE
          -D, DB, B, D, DB, B, a/b/c


      SOMERSAULT JUSTICE (Vs Style)
          -D, DB, B + two kick buttons


      AERIAL SONICBREAK
       -While in the air:
          -D, DF, F, D, DF, F, x/y/z
           (tap x/y/z for more fireballs)


      FINAL MISSION
          -Charge B, F, + any two punches
              or
          -x, x, F, a, z


      CUSTOM COMBO
          -A punch and kick button of the same strength


===============================================================
5.     Miscellaneous


     -You can choose your win pose by holding down one of the
      attack buttons.

     -You can choose Shadow's palettes by holding down the start
      button while selecting Charlie.

     -If you have any comments or suggestions about this char,
      e-mail me at mystik3984@hotmail.com

     -In case you didn't read the move list, I editted the move
      commands, because I don't like the charging motions.  So
      while you can still do the charge B then F moves, I made it
      so you can now do D, DF, F motions.


===============================================================
6.     Credits


     -Elecbyte for creating MUGEN.
     
     -Capcom for creating the best 2D fighting games
      (and for the sprites and sounds that I ripped).

     -FStrike for providing nearly all of the sprites.

     -VK for creating Gouki, which helped me quite a bit.

     -FallenAngel for making a great tutorial that helped on
      making chains and projectiles.

     -Limited Moon for the superjump sparks that I used on the
      earlier versions of Charlie.

     -K3nShiN for the AI Auto-Guard code tutorial.

     -Tenshin for the SFA Super Sparks (which saved me a lot of
      time from having to re-rip them).

     -Various people at the MUGEN Dev Forum for providing useful
      information and tips.

     -...and me, for making Charlie :)