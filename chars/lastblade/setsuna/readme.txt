
SETSUNA MUGEN PORT FINAL BETA VERSION 1!!

Product ID ROTBRC-MC-LB-080103S-0414-FBV1

A character from The Last Blade 2 by SNK (www.playmore.co.jp)
Converted into MUGEN format by Orochi Herman (hermanm at info dot com dot ph)
Made at The Riot of the Blood Rehabilitation Center (http://rotb.mgbr.net)
a division of Midare no Chi Industries, Ltd.

Proudly made in the Philippines. (Mabuhay ang mga Pinoy!)

Hello people, and mabuhay! (<---long live) This is my first MUGEN
attempt on making a character.

Well, this is the first MUGEN chracter I ever did. In my standards now,
the old Setsuna really sucked. But to solve that, I now bring you, an
all-new SETSUNA!!!

This character is Character of the month of January by MUGENGINE.
(http://www.mugengine.fr.st)

Also, the Character of the Month of February by MUGEN interface.

And also the Character of the Month by SuperMUGEN.

Nominated for Character of the Month for April by MUGENShank.

Proclaimed Character of The Year for 2001 By MUGEN POWA

Nominated as Character of The Year for 2001 at Mugen Guild

What? You got this from another site that does not display the product
ID and/or link / Warehouse? Report it to me!

Newer versions of Setsuna are always found at the official page of this
character, at http://rotb.mgbr.net.

* Elements in this character that are found in other characters are:
Mumei Kyoku no Tsui Mirror 
        Found in SF3 Kung Fu Man by Chottoko-maru-- 
Certain Slash Sound Effects
        Found in Kaname Ameri by Chottoko-maru
Super Cancel BG
        Found in Broli by TDX-- ?
Mumei Kyoku no Tsui Blood Explod
        Found in Broli by TDX-- ?
Mumei Zetsu Sound effects and sword sprites
        Found in MB01 by O_Illusionista-- Authorized
Finish BGPalFX
        Found in Evil Ryu and Evil Ken both by Reu.-- Authorized and credited.

* Elements borrowed from other characters:

        Usage of Collapse Anim standard is grafted from my own version
        of Shinnosuke Kagami.

        Finish Sound triggering code is grafted from my Shadow Dio.
        The code is adaptized and enhanced to fit LB2 standard.
        This included the BGPalFX that triggers when you kill someone
        with a super.

The list is produced to let you know that I keep an eye on my stuff.
To remove the unauthorized status, you are required to put up a link to my
site, and add credits in your readmes.

-----------------------------------------Last update at January 18, 2002!

- More Original Mode updates.
- Fixed a possible bug where if you have super armor and you are hit while
  performing a super move, it has tendencies to negate another level even
  though it has taken the required level. Double Power level drain while
  hit in super armor will no longer happen.
- Beefed up Anonymity Ultimate Continuation as an SDM.
- Resolved a glitch in the crouch combo system in Original Mode.
- SDM Level is performable when Life <= 256 of 1024.
- Corrected his HitPoints. -_- Also some CNS changes.
- Anonymity 5 can now combo from basic attacks as part of chain combos.
- Statedef 5500 is now Statedef 5600. One stupid bug fixed.
- Crossover mode now has an attackmul of .5. Power is 1.0, speed .75, ex .85.
- Corrected a critical Helper flaw in Anonymity Ultimate, as well as attack attributes.
- Improved Anonymity 5 pallete effect, somewhat very close to the original
- Throws are now affected by the global attackmul.
- Fixed an error in Setsuna's throw in the LifeAdd, where it would trigger prematurely.
  The error was introduced while migrating the LifeAdd as TargetLifeAdd.
- You can now repeatedly use Anonymity 5 in Anonymity Ulitmate for 3 times.
- Most animations where Setsuna can be hit during the super armor now has single elements
  per tick; this is intentionally done so that the rate of return from the hurt state
  will be more accurate, tick wise. This could be done also by altering the armor State,
  but this can lead to worse repercussions when the super armor State erroneously orders
  to change animation to an improper action.
- Modernized removeexplods to reflect also on the next State. This makes the removal
  immediate, at the price of some coding complication. Previously, the Explod removal
  was made a tick late. Such flaws are no longer tolerated.
- Fixed a bug where Anonymity 4 could be done after a Speed Combo finisher, which should not happen.
- Anonymity 4 will now play the correct Ko sound effect when you kill someone with this move comboed
  off sword attacks.
- A lot of previously multi-State variants compacted into one State for easier and faster system parsing.
- CMDs compacted into one State for faster parsing
- Now like in the original, physical non-weapon attacks do guard damages too in Original Power and EX mode.
- Fixed an outstanding speed combo error where it can trigger erroneously in original mode speed/ex.
- Anonymity 5 Continuation victim State tweaked more to act correctly in the air.
- Anonymity 5 and ultimate can now be incorporated within combos as well as in the original.
- In Crossover mode only, trying to throw setsuna during anonymity 5 and ultimate can result in shocking
  consequences! See for yourself! In conjunction to anonymity ult. continuation, this move is uberl33t!
- There is control during the landing State of Anonymity 2 in crossover mode, whereas in original, there is none. 
- Only Power and EX mode give guard damages to basic moves.
- More debug warning squashings.
- No more KO voice of enemy when killed by Anonymity Ult Con in Original mode.
- Anonymity 5 Continuation no longer otgs in Original mode. The effect when hitting someone in midair
  is now correctly implemented. Enemy cannot move when going down from being hit.
- Anonymity Death now has a proper sound effect in original sound mode.
- The electricity sound in anonymity ultimate continuation in setsuna's autogard now terminates
  properly.
- Dash attacks are now triggered correctly.
- Anonymity armor is now disabled during guard states. Before, guarding schematics would not kick in
  during armor mode, notable when fighting against some characters.
- Combo Timings for chain combos has been implemented to ward off his "loose" feel.
- You may see some misaligned sprites somewhere-- this is normal. Setsuna is undergoing a massive sprite
  reorganization in preparation for full doubleres=4 compliance, and this is in progress. new CLSNs are alson
  in place in some frames.
- Disabled some anti-Zero Hotaru codes because they are causing problems during proper invincibility
  in repels. If you didn't know, in the original, you can use Repel to dodge certain throws and Command throws
  when done correctly, most obvious with kagami. With this fix, you will now have to use your repels carefully in Original mode.
  With apologies to Arche for using one of his chars as a guinea pig for a feature.
- Speed Guard Crush can be airguarded in Original mode.
- Some select basic attacks can hit downed characters in Crosover mode.
- A PosAdd parameter on an enemy's anonymity ult. con. collapse State based on cns Width is implemented.
- New voice. "Soshite Shi ne!"
- Anonmity 2 projectiles now move at 1 velocity, like in the original

Previous Updates -------------------------------------------------------

- Due to popular demand, I have now given him a completely new AI
  pattern that is very effective and challenging, but not cheap and
  frustrating...
- Fixed some cancelling elements in original mode.
- His overall feel and handling should be better now.
- Reverted all of his Anonymity 5 commands to the original HCB. I have
  made a breakthrough that makes HCB commands and the like possible in
  keyboards. This is done by a mathematical formulation involving the
  ticks, most particularly, the delayed Time before the move actually
  kicks in. This does not apply to his supers.
- Paid attention to air effects of his victims and added air hittime values
  and the like.
- Air velocities of his victims has individual values now.
- In Original Mode, I have corrected certain comboing pattters to match
  the original pattern from the game. This means certain combos that were
  previously possible cannot be done now. This involves combos that uses
  the kick button.
- Speed Mode Guard Crush has been retimed to prevent any juggling for its
  victims. This lessens any chances for cheap juggles. And it doesn't allow
  juggling in the original game either.
- Optmized the jumping State to look correct when hit during armor mode.
- You can now do pursuit attacks while running to a downed victim. 
  Previously, you could only do nudge attacks while walking.
- All follow-up attacks to bouncing enemies will cause a downward velocity.
- Increased Kick priority in his Power Kick.
- Fixed the "Stupid-looking hit effect when Setsuna gets killed while in
  super armor mode" syndrome.
- Certain juggle attacks with Setsuna in Last Blade 2 are now possible.
- In original mode, kick chaining to guard crush slash in speed and EX
  mode cannot be done now, just like in the game.

- Improved Movelist explanation, thanks to Deuce's and Oren Bantal's LB2
  FAQ.
- Fixed an erroneous sound channel in his moves, that caused the
  Anonymity 5 armor sound effect to cancel when certain moves are done.
  This will no longer happen anymore.
- Increased recovery Time in Anonymity: Death, to balance out the move.
- Ugly Kaede-like ground stab frames nixed and replaced with
  better-looking ones.
- Fixed some more miscolored sprites.
- Fixed his dash kick triggering incorrectly in combos.
- Fixed stab Explod being left behind, notable when Setsuna is AI
  controlled.
- When doing a pursuit attack, you now have to press forward as well.
- Many attacks are a lot less noisy now.
- Added a sword bounce sfx when guarding attacks.
- Fixed sprite usage in Anonymity Ultimate Continuation.
- Added exit PalFX effect when setsuna leaves the Anonymity Ultimate 
  Continuation State. Gives it a more dramatical look.
- Lose animations tweaked to look like the original. I am probably
  the first person to do Lose poses BEFORE the enemy does their Win pose.
- Fixed a clsn1 glitch in Anonymity ultimate Continuation where sometimes,
  if the move hits with another clsn2 part, the timing of the move becomes
  messed up.
- Fixed his speed finisher combo Anim resetting when hit during super
  armor.
- Repel counterattacks can now be executed easier.
- Major reCLSN1ing in basic attacks.
- Just like in LB2, if you do the Power kick, and hit your enemy in
  midair, it will not drive them to the wall anymore. This applies to
  Original Modes only.
- Setsuna's KO effect screen will not activate if the partner kills the
  enemy in team play. This helps making the game less noisy.
- Fixed an annoying bug where if you try to combo speed guardcrush into
  Anonymity Severance (unsuccessfully), the slash finish sound effect will
  play even if the move did not hit at all! The glitch will no longer
  happen.
- Resolved a problem where in Team Play, victims of Setsuna's Anonymity
  4 and throws can still be knocked off by the partner.
- Retimed repels to prevent a potential abuse in it's use. Its timing is
  now in sync with LB2.
- Fixed the "Setsuna doesn't care if he dies" bug where he doesn't go to
  his liedown Anim if he is killed with the super armor on. This kind of
  bug is present with Tuki no Turugi's Aoi matsubara (who is a good 
  character to practice Repels with, btw)
- Sword sound effects while jumping will stop playing the moment he
  lands.
- Tweaked jump X velocities to act like the original. Also added a
  different runjump Vel X.
- Crouch repel in Crossover Mode can now be done by pressing Y and Z. If
  you want to Guard Crush your enemy, release the down button and press
  YZ.

- Fixed various Explod-related problems.
- Improved air repel timing.
- Fixed some comboing algorithms that are supposed to connect.
- Added a safeguard routine in his repel that will kill repelled
  helpers, as well as people caught in repels and is wielding a
  HitOverride or no CLSN2. This will kill clones that mostly cause
  confusion in gameplay.
- Use your l33t skills in killing cheap characters!
- You now have control while stopping from running. This is the original
  behavior in LB2.
- Replaced his lengthy sword trail codes with an optmized Explod, which 
  will reduce his filesize and CPU usage.
- Damage now exactly tuned as in Last blade 2.
- Big thanks to Visual Kreations, Setsuna now his exact unzoomed Anonymity
  Ultimate Confrontation sprites, mirror, chi and all.
- Original Supers now has damage patterned off Kaede.
- Added YAccel in his Speed Guard Crush HitDef as this is the behavior in
  the original game. Also removes a cheap and powerful launcher + Anonymity 
  Severance combo.
- Normals and Specials now have accurate damage. His damage rating is now back to 100.
- Fixed his repels.
- ALl of Setsuna's normals sword attacks uses a new sword trail coding
  grafted from Kakyoin. This kills numerous glitches, especially in his Air HP.
- Removed his stupid-looking Air MP, and made a new Air LP animation. 
  Needless to say, the old air LP animation is now back as his Air MP.
- Air HP has one missing frame added, and axis fixed.
- Basics per se do not give poweradds, other than when hitting an enemy or
  when the enemy guards your attack. This is the behavior in LB and LB2.
- Crossover, Speed and EX mode gives only 80% of actual damage. The exact behavior
  in the game. Why even in crossover mode? Because anywhere combos are possible
  is bound to be cheap, so, duh. :P
- His Anonymity 5 / Ultimate flashing will no longer freeze during hitpauses.
- Flashing in Anonymity 5 / Ultimate is now darker. And unfriendlier to epileptic people. >:P
- Fixed a winpose bug where he can move by disabling control when Win = 1
- Implemented flashing in Anonymity: Ultimiate Confrontation / Continuation, even
  though there was none in the original game. Looks FLASHY. :D
- In Speed Mode, Super Cancels are now disabled. This is how it was in the original game.
- After a lot of overriding and all that shit, his dash low attack is now in! @_@
- Win pose structure now as exact as in the game, for original mode..
- Changed how Anonymity 5 bases its pausetime, it now uses hitshaketime rather than hittime.
  Feels a lot better now.
- Normal speed combo is now available!
- A:UC now uses an improvised collapse Anim rather than wallbang State.
- Some standing attacks misses a frame in animation. This has been rectified.
- Many basic and special attacks refined in timing.
- All supers will no longer add to the powerbar when hitting.
- Forgot his head.pos and mid.pos. Fixed.
- Fixed Guard cancel Command being pulled off by accident.
- Resolved Air HP infinite and Air MP-Air HP infinite combos.
- More missing frames / bad frames fixed.
- Anonymity 2 tweaked to act like the original.

- Killed all debug warnings in Setsuna.
- Improved his redirection stuff, making it less buggy.
- Killed various debug naggings.
- Toned down SDM version of Anonymity Severance.
- Redid AI triggering.
- Redid GetHits to match current standard (animated types), so that they
  look fluid.
- Added some overriden states for more fluidity.
- Added numhits to throws, thanks to VK for the idea.
- Segragated all AI settings to a separate file, Setsuna.ai
- Used AnimElemNo(0) for more accuracy in removing explods.
- Added guard.kill = 0 to sword attacks in all modes.
- All Standing Attacks and crouching attacks can no longer be guarded in 
  the air. So is anonymity 2.
- In speed , ex, and enhanced, anonymity 3 does less damage.
- Setsuna does less damage in Enhanced and Speed Mode.
- Fixed some very stupid comboing elements in the cmd.

- Forgot one flag in the AssertSpecial involving the ko effect. Fixed.
- Redid yet again the colors in his sprites. This took me almost
  forever, if it wasn't for some nifty scripting stuff Adobe Photoshop has
  to offer.
- New ToHeart color pack for Setsuna! No, that doesn't mean he plays
  like Akari, etc. It makes his colors look like them! Interested? go to
  http://rotb.cjb.net and look up his page for accessories April 11. Watch
  out for it very soon!
- New full colors!
- Discarded unused sprites in his SFF.
- Changed how his wall kick works for the victim. Now looks more or less
  like in the original, using the other overlooked requried sprites in
  MUGEN. >:P Now this will give you a reason to add the sprites!!!
  NB: If your normal liedown Anim has the head Facing right, do a
  duplicate of the normal liedown sprite as the hitup one as well. This
  is to make the animation look proper.
- Fixed some wrong axis placement, introduced when I altered his axis.
- Made his AI a little more defeatable.
- Visual tweaks here and there.
- Better coding for his armor pal effect, using the newly-learned
  alternate method to TimeMod. AT the price of color freezing in
  hitpauses.
- Two New supers implemented! Check it out!
- Now contains LB.cmd. Last Blade 2 junkies will find the cmd a lot like
  the original, unlike my default CAPCOMized system. (besides, I like
  whupping people up using his original layout.)
- No optimization yet for MUGEN0401. Priority chars to be updated for
  the new MUGEN are Kaede Kasiwagi, Raiya Mikazuchi, and Shadow Dio.
  These are because of the new coded 120-140 guard states, and mandatory
  story modes.

-----------------------------------------------What needs to be implemented.

- Speed mode attack?
- toheart colors
- Rip standing / crouching Reppeled sprites
- Optimize real sprite intro.
- Elimitae duplicate sprite usage by resolving all dup sprites in sff txt.
- Power gague additions
- Verify damage values
- CLSN 1 and 2
- Axis
- Doubleres4 compliance
- Make sure Command tightness conforms to the original

----------------------------------------------What was uniquely done here?

- Better alignment
- better animation
- Better sprites! (actual white eyes, white teeth, white shoe reflection
  even in other pallate swaps!) It took ages to do!!!
- Smoother animations overall.

-------------------------------------------------what will never be done?

- Speed attack, I guess...O_o

------------------------------------------------------------------Storyline:

Setsuna is a dark, demonic creature from the world of the dead
who hates the living things, even his body. He may look young, but his
soul is the blackest, filled with the darkest of evil... well, he is the
one who slices Life, as Kouryu Gaisei declares... Because of his evil
aura, it made Hibiki's father, Genzou, enthralled to make his sword
beyond his own physical health capacity.

Before Genzou died, he told her daughter, Hibiki, to search for that
man... but she does not know what to do next...

- The following is for the MUGEN storyline...

In present Life, he's out to look for some answers... regarding
himself hating Life... He is astounded to realize that his greatest
depise of all is in abundance!

What does he do? To rid all of these needs Time, and he is not that
powerful, as he is limited to his own body.

However, it is proven that he has to throw his vendetta of killing
people away. He found himself killing people doing atrocities that
affected humans instead, rather than anyone he sees on sight.

What has happened? Why is he killing people doing evil, and not just any
person? Can a heart of an evil spirit soften? Can it Turn away from its
essence?

As spirits are still creations of God, they still have the free will
like humans, but is it really possible? Can it really happen?

---------------------------------------------------------------Instructions:

Specify the destination directory in the "chars" directory of MUGEN.
Then, in there, Name another subdiectory called "Setsuna."

----------------------------------------------------------Gameplay Overview.

Setsuna's trademark is his 2-hit button attacks. They are here too, and are
designed to be comboable. His asset lies mainly on his high-ranged
sword, called "The Blade of Eighty Days", named after the number of days
spent in crafting this dark weapon.  He also dons the Power of
black lightning.

So far, in crossover mode, new attacks to compensate for the 6 button
layout has been set, and to my surprise, his range and gameplay is not
so distant from his Neo-Geo incarnation. In contrast to the old 3 button
layout in The Last Blade 2, Setsuna now has 3-6 Slash animations, and 3
Kick buttons. He now plays somewhat like Strider Hiryu in terms of
combos, with his Anonymity 1 as the Ame no Murakumo....hmmm...that would
be cool.

But take note that Setsuna require some skill (if ever) to use properly
and to implement with flare. :) But then, he's an easy character to
learn, and he is the best choice for beginners.

Like Orochi, he can grab the chi of a character and crush it. ;)

White hair rules!!! >:D

Setsuna is the best character recommended for l33t ass-kicking.
If you liked him in LB2, the more you will like him here now!

----------------------------------------------------------------------Moves

Be wary that MUGEN uses a Sega Saturn-type of controls; X,Y,Z, A,B,C,
and that some buttons are not available for all characters. In the case
of Setsuna, ALL are available.

If your button orientation is at A-Z, please change it to X-C. Well,
don't blame me, it's the configuration I got when I first downloaded
MUGEN.

My characters cannot have less or more than 6 buttons. I know, it's my
taste of perfection. >:P

What, you don't like 6 button LB characters?! I knew you'ld say that.
His original mode allows you to play him like you would in LB2.

Hold Start and...

X-A for Power Mode
Y-B for Speed Mode
Z-C for EX Mode

If you still can't figure out what I meant, then tough titties; learn
how to use MUGEN. >:P

Normals! -------------------------------------------------------------

Setsuna still has Last Blade elements in his gameplay. Among those
retained are...

MP - When using Crossover / Speed / EX Mode, upon contact, press MP (or
LP for original modes) again for another hit. This is exactly like in
his Speed and Extreme mode.

HP - Press forward and you get another 2-hit attack that has some
amazing range, and devastating damage. Watch the lag though. This is
chainable in Crossover, Speed, and EX mode.

HK - Pressing forward in his High Kick (in crossover mode, or kick
button in Original mode) will drive your enemy to the wall and knock
him/her down.

Repel (X+Y or X+Z, A in Original Mode) - press this and you can parry an
enemy's attack. Unlike in Kagami, you can be punished if timed wrong. In
addition, try always pressing forward while repelling. This will give
you more options in attacking in the event you have repelled an attack.
Pressing the Repel button again will knockdown your enemy.

HINT: You can repel while guarding.

Throw - Press HP and HK at the same Time in Crossover Mode. Press Kick
and Repel button at the same Time in Original mode.

Guard Crush (Y+Z, Not Available in Speed/EX mode) - Does your enemy
really like to block your attack? With the right timing, break through
their guard with this attack! Do not abuse this, though, but feel free
to abuse this on CHEAP CHARACTERS!! MUWAHAHAHAHAHAHAH!!! This attack can
be held slightly longer. This attack is unguardable from any angle!

Speed Guard Crush (B+C, Not available in Power mode) - Same as
guard crush, only it affects crouching and airborne enemies. This can
only be blocked high.

Dash Punch (While running, fwd+X/Z) - Setsuna will bump your enemy,
stunning him/her. A great combo-starter, especially with the Anonymity 5
armor on!

Running Knockdown Kick (while running, down+A/B) - Setsuna will
slide-stop, and attack from under. This attack hits low, and must be
blocked low.

Specials! ------------------------------------------------------------

The specs in the moves are for Crossover Mode mostly. Some do not apply to
Original Mode, as I have crafted the moves myself.

Anonymity 1 (Mumei Ichi)
A hadoken-type move (sans fireball) that can slice projectiles. Once
hit, it will shock the enemy in black lightning. Deals 2 hits to the
enemy.

QCF + P
LP = Quick but does not knock down
MP = Moderately fast, but knocks down, and has more damage
HP = Sorta slow, but is a whopper. >:P

Anonymity 2 (Mumei Ni)
What do you expect? This shoryuken is giga-ass big! Not a good solid
air-defense maneuver, but you need this attack anyway as a combo! >:P

DP + P
LP = Simple anti-air move
MP = Combo-maker.
HP = Total offense move!

Anonymity 3 (Mumei San)
A dashing lightning arc attack (Think of Orochi Chris' overhead attack)
that must be blocked high. It combos so fast, it can confuse enemies
especially if cancelled from crouching attacks.

HINT: This move has improved priority with Anonymity 5 / Ultimate armor on.

QCB + P
LP = In place (somewhat)
MP = Moderate distance
HP = Err...combo maker too!

HP Anonymity 3 in some cases acts as a crossover attack, meaning you'll
end up in the other side when done close. You might find this useful for
getting out of corners when you do not desire to be confined to.

Anonymity 4 (Mumei Yon)
A special Command throw that will shock enemies alike! You wanted air
defense? This is the one of the two moves to use!

DP + K
LK - Catches flying enemies
MK - Also catches flying enemies, but faster. In addition, it can catch
     people landing down from a Dragon punch like move!
HK - Catches standing enemies

Precise timing is required to be able to connect with this move. It can
be an air-recovery foiling move, or an anti-turtler move.

The HK version has priority over other moves, as it executes faster than
the original Anonymity 4

A fun way to use this is to determine when people with air fireballs
attack you (like Gouki, Shin Shiho, for instance) and you have Anonymity
5 Armor on. You will trade hits, but you will stay, and slam your enemy
down.

In Power Mode, the move is slower than Speed / EX mode.

Anonymity 5 (Mumei Go)
Setsuna holds out his sword, and lighting flashes at him. He also has
what we commonly call autoguard. He takes damage, but he ignores it, and
attacks anyway. Damage recieved during anonymity 5 can still kill him.
He is also surrounded by lightning. Note that this move is too slow to
launch, so it requires strategy to succeed performing this bonus-like
move.

QCB + K

While it doesn't sound so good as it seems, this move alone can matter
in a heated battle. Say, if you have an enemy that does combos, and you
are in the middle of the move, you will not go into your hit animation,
and instead do your move and hit your enemy! This is one of his arsenal
that makes him the top character choice in LB2. This is one of the few
things in him that makes him strong.

And during this function, there is a move he can only do during this
duration.

Anonymity 5 continuation (Mumei Go no Tsui)

While under Anonymity 5, flashing with lightning QCF + K

You can combo into this move. He can only do this once, and wether he
hits or misses, the duration of Anonymity 5 ends as the move finishes.
Once hit, the enemy will be stunned for a few seconds, rendering him/her
open to any attack. This move is also possible under Anonymity:
Ultimate. Read on for details.

Anonymity; Severance (Mumei Zetsu)
This is a big-ass verson of Anonymity 1. Well, it can be cancelled
off any Anonymity 1 variants. This super attack has long range! 
Beware that the recovery Time for this attack is longer than 
anonymity 1! You miss, you pay!

QCFx2 + P (with at least level 1; No power required when in low life)

Anonymity: Black Lightning (Mumei Kujin)
(CROSSOVER MODE ONLY)
Setsuna pokes his sword to the ground after a brief moment of charging,
then lighting comes from his sword, rising vertically! Well, can juggle
at certain conditions, and can be cancelled off Anonymity 3 for a
can of whup-ass!

QCFx2 + P (Needs at least level 1; No power required in low life.)

Anonymity: Ultimate (Mumei Kyoku)

Pissed off by people thwarting your Anonymity 5 attempt? Do this!
Setsuna is then covered by lightning from above, and becomes extremely
powerul. He has 3 levels of autoguard, and damages he recieve will not
kill him immediately. All of Setsuna's attacks in this duration are a
lot stronger. Its duration is notably longer, about 10 seconds.

QCBx2 + P (with full level, or low Life with any Power level, minimum of 1)

Anonymity 5 Continuation can also be done here, but will not end
anonymity ultimate upon hit. Or you can choose a much damaging attack,
such as...

Anonymity: Ultimate Continuation (Mumei Kyoku no Tsui)
Setsuna will hit the enemy as if he was doing Anonymity 5 continuation,
but you see, he plans to do more than that! Once hitting the enemy, a
large pane of glass will appear before him, with the enemy stunned
behind the mirror. He'll smear blood on it, grab the enemy's chi (life
force) from the hara (center) of the enemy, and will jump away. Then as
he crushes the chi, the glass shatters. A grand finale attack that will
reward your effort!

QCF + xy/xz/yz

Because of the fact that it drains energy and Life, the victim will Lose
all of his/her Power stock as well.

And if you are doing this move to your enemy and you have low Life, and
your enemy somewhere near full, say goodbye to him/her...

Anonymity: End (Mumei Hashi)
(CROSSOVER MODE ONLY!)

Setsuna again aims his sword to the ground. But this Time, you can hold
the Command. If held longer, he flashes red, and releases a deadly
lightning bolt from above. It tracks the position of the enemy too!

QCBx2 + K (with full level, or low Life with any Power level, minimum of 1)
D,B,D,F Y in LB.CMD

If performed with Anonymity 5 / Ultimate armor on, this is a deadly trap
for your enemy! If they attack, they'll get hit! If they guard, they'll
get hit too!

----------------------------------------------------------------Some bugs:

- Explods may be deleted a tick late. Not really a serious bug, but it's
  rather annoying.
+ Caused by a glitch in MUGEN State -2. Nuff said. Now fixed by longhand but
  effective coding.
- Anonymity 5 and Anonymity Ultimate armors may falter occasionally,
  popularly in attacks that requires custom states.
+ Now fixed with disabling of armor in guard states, and fallback coding for
  armoring in his gethit states. 
- Kick victim animation doesn't work in all characters, at least
  visually, in some.
- His autoguard still falters against reversaldefs. This will be fixed
  soon.
+ Currently researching for method that will make
  his attacks invulnerable to reversals.
- When against Mappy's MOTW chars, like Hokutomaru and Kevin Rian, their
  TOP Pause activates repeatedly when kicked to the wall with Setsuna's
  Power kick move.
+ That's because I use a VarSet. I may be rudely overwriting their vars. O_o
- With Mappy's Hokutomaru, there are tendencies where Hokutomaru
  continuously spawns his TOP Pause, making the round unplayable. This is
  Mappy's programming fault. The same with his Kevin Rian, but no Pause
  was used.
- Some anomaly can also happen with Kenshin's Guy.

--------------------------------------------------------------------------

If you have comments or suggestions, my E-mail is above, or visit my
messageboard.

visit my site for more MUGEN characters:
http://rotb.mgbr.net

E-Mail me first before doing attempts of mirroring setsuna.

--------------------------------------------------------------------------

Credits!

VK for the very elusive Anonymity 2 Explod. And for beta testing and a
lot more.

Razorgolem for the l33t mirroring service in hard times!

Maruta for some advice and encouragements about Setsuna!

Baby Bonnie Hood for the kwela Time. (You know what I mean. >:P)

Deuce for Speed Mode pattern, and for some concepts applied to Setsuna.

Shadow Watcher and Kyo Kusanagi over #mugen for tips.

Sanders for his kwela Time too. >:P

Camrat for improving the superarmor code. :)

SNK/Playmore for Setsuna and The Last blade.

Adobe Photoshop as it is the phat in all image editing softwares!

Neogouki for his SFMAME which proved useful for capturing several
sprites in Setsuna's animation.

MHZ, for his Kawaks and his tileviewer, which proved useful for
reconstructing some of Setsuna's sprites.

The NeorageX team, for their NeoRageX emulator.

My family, of course, your unchanging allies for all Time.

God, of course, for everything.

WHOOPS...we have a FLAME LIST.... Skip this if you are sensitive to
swearings.

A BIG WHOPPING FUCK YOU TO:

- AMA Computer University (formerly college) for having the crappiest 
  enrollment and enlistment system on earth that causes hapless students 
  to enroll on already-passed subjects!!!
- THE WHOLE FUCKING IT STAFF OF AMA COMPUTER UNIVERSITY FOR BEING THE BIGGEST 
  COMMUNIST ASSHOLES Alive ON EARTH.
- EXNEM for attempting to spread a nude Raiya patch, which was specifically 
  forbidden by me.
- EXNEM again for thinking such prohibitation is like the olden days where
  religion was the dominant sector or something.
- All the bullies one earth picking on helpless people especially those
  without reason!
- UST Pay High School for being the greatest bullfuck excuse of a school!
- All the savage feminist and communist teachers in that same school, all but 
  one teacher and the administration section.
- UST Pay High School again, for scarring me for Life.
- All the people who made VK quit!
- Some other people for reason that I will not specifically elaborate.

Well, enough ranting...>:P Now go kill everyone!
