
SHADOW DIO MUGEN PORT COMPLETE ++ Version!

Product ID: ROTBRC-MC-JJBA-081401SDB-0414-C++V

A Character of the game JoJo's Venture and JoJo's Bizarre Adventure by
CAPCOM (http://www.capcom.co.jp)
Sprites ripped using Bleem! (http://www.bleem.com)       

Converted to MUGEN format by Orochi Herman (o_herman@edsamail.com.ph)
Made at The Riot of the Blood Rehabilitation Center (http://rotb.cjb.net)
a division of the Midare no Chi Technologies, Ltd.

Proudly made in the Philippines. (Mabuhay ang mga Pinoy!!)

Hello people! This is my 7th, or 8Th...or whatever MUGEN attempt on making
a character.

Hmmm...you may not be expecting this, but you cannot be mistaken...It's
Shadow DIO!

If you downloaded this elsewhere (or any of my other characters) with
the readme removed, please report that site to me.

Newer versions of Shadow Dio are always found at the official page of this
character, at http://rotb.cjb.net. Consider other unauthorized updates
as colorums.

Character Updates --------------------------------------------------------

- Tweaked his jumps a bit.

Earlier Updates ----------------------------------------------------------

- While playing in teammode, found out most of Dio's attacks can get
  screwed in teamplay. Punishment victims will now be unhittable while
  falling down.
- Forgot to reduce Light Air Punch. O_o Fixed.
- Added forcestand parameters to standing attacks, Stand attacks, and
  the knives.
- Reprogrammed Charisma to chase the enemy, instead of going to places
  at random. This helps especially in his AI. This is also the somewhat
  correct behavior of the buds.
- Dio has some smart tactics now in his AI.
- Added ignorehitpause to the hitoverrides in his charisma helpers.
- Taught Dio how to evade raging-demon type moves in all circumstances.
  He can do it in any given situation.
- Changed his low jump to look smooth.
- On Original Mode, Charisma buds now dissapears when Dio is hit.
- Numerous sound improvements thanks to NeoGouki.
- FINALLY added the correct KO sound effect.
- FINALLY added the pissing sound in his blood drip win pose.
- FINALLY placed removeongethit on his eyebeam charge explods. :)
- Slowed down the recovery tick in his charisma, just like in the
  original game.
- Now his reversals reverses EVERY ATTACK in the book.
- Tweaked AI to act accordingly to characters which utilizes numerous
  helpers. Complete accuracy cannot be attained unless utilizing a
  waypoint-type AI, involving specific p2statenos, p2names, and the like.
- Improved Punishment distance calculation.
- Damages now exactly as in the game (except for the newer Jojo2 moves)
- Destruction / Demolition / Deception now toned down.
- Tweaked AI to fight in low damage.
- His Kuretsu Ganshisha (aka eye beam) now gives out sparks when hitting enemies.
  This is done by using manually-triggered explods. The idea is taken from Setsuna.
- Fixed a forgotten code for his punishment helpers.
- Fixed one winpose of his.

- Started exploiting the Width controller to prevent the camera from
  moving when Dio does certain basic attacks. This is because some of his
  attacks require posadd to act correctly.
- Adjusted most of Shadow Dio's basic attack guardflags. They are
  similar to the Street Fighter and Darkstalkers series. (IE. Basic
  standing attacks are not guardable in the air)
- With the Width controllers now active, it should kill various bugs
  based on his dashing movements, wherein he sometimes passes through the
  enemy.
- FOund an AI bug where Dio will do Destruction regardless of life value.
- Tweaked his aerial stand attack to experience the correct Y velocity.
- Tweaked AI to use attacks more effectively.
- Reprogrammed Kyofu no henrin to use Pause. This is also used by Arche,
  probably, for his Zero Hotaru.
- Recoded some parts of The World to utilize invincibility natively
  supported by a controller.
- Reversals will not affect Dio during The World now. (not)
- Throws recoded to fit the new reversal system.
- Added a new kick throw.
- Fixed some anomalies regarding victims during The World.
- THANkS TO VK FOR BLASTING MY LAZY BUTTOCKS INTO FIXING THE DEBUG
  FLOOD!
- Now has support of Lose screen for BBH. :P
- Fixed the hitsound using playsnd for knives. It should be a lot less
  buggy now, if not perfect.
- Adapted Ceiling and Floor triggers to prevent debug anomalies ingame.
- Redid the Charisma hitdef and made it hit with the appropriate
  effects. For instance, if the buds hit you on the gut, you get hit low.
  If on the head, High. They do less damage now.
- Dio's elements now freezes on anyone else's superpause. This should
  prevent the moving element syndrome on other people's superpauses. For
  example, if your opponent does a superpause, even if momentary, the
  Stand would normally move because it has superpausetime at 9999999. I
  have made it so that they only get that superpausetime when time is
  stopped.
  I will probably do this for his pausemovetime too.
- Optimized commands. Most states that is required by the helper for all
  states are now moved to state -1, which is recognized by the helper.
  State -1 is in use by the main player for commands.
- Moved all AI settings to state -3, and in a separate file, SDIO.AI, to
  accomodate the general state settings for the Stand.
- Thanks to VK, Najimuzo and Kyofu no Henrin now triggers in the exact
  and precise event.
- Made it so that he throws knives for juggling purposes.
- All affected Helpers which shares statedef -1 now has keyctrl = 1.
- Raised Demolition power requirement to 2, as people were complaining
  it was cheap as a Level 1 super!
- Added a hitcount randomizer after the time stop in Demolition. Now it
  simulates how Dio "attacks" the enemy during Demolition while time is
  stopped. It can be many, it can be few.
- Overridden statedef 5900 for some var optimization.
- Improved text design in his storyboard by actually using antialiasing
  in rendering the text. Now it looks like the font in the actual game!
- More AI tweaking to effectively juggle enemies.
- WIll fix DOuble/Triple/Multiple Punishment hitting in a row.
- Fixed an infinte bug during timestop.
- Added more eyecandy visuals in his screen.
- Tweaked some animations somewhat.
- Added numhits to his throws and somewhere, thanks to VK for the idea.
- Added getpower and givepower values in all hitdefs in supers.cns,
  thanks to BBHood for the idea when she gave comments about Karin.
- Merged jojo.cmd to the main cmd file. For his original mode, hold
  start while selecting.
- Various tweakings and velocity matching.
- Fixed juggling problems wherein victims of his flying High Punch will cause
  victims to go down on the floor while being juggled by the Stand.
- Various fixes and many jojo.cmd specific variants implemented.
- Fixed intro and ending storyboards, they should look better now.
- Yet again fixed some stupid AI errors.
- FIxed more stupid hitdef related things.

- Fixed a gay-ass bug in his AI routine, that imitated an auto-guarding
  system.
- Changed some graphics in his story.sff
- Added playerpush to throw victims so that they reel to the wall in
  team play. Leh, I didn't bother testing him in team play before.
- Now animates while push-guarding.
- Balanced the AI for a more fair play while retaining his tenacity. >:)
  Ppl were complaining.
- Altered his KO portrait, which appeared mangled in some act files.
- Fixed some color swaps and added more, replaced ebony with
  chamcham.act (done by Fou-Lu), added a variation of jojo2stand.act as
  Rugal.act.
- Finally found out why targetlifeadd wasn't working in najimuzo, victim
  state attributes had movetype = A when it was supposed to have
  movetype = H. Flaw rectified. This will bring the correct win icon
  when you kill someone with najimuzo.
- Fixed a gay bug where Dio will do deception regardless of power
  levels.
- Altered Destruction. His speedup when he punches are no longer
  present, but are now in his charge animation. To reach someone in
  destruction from afar, you need to charge now.
- Toned down a lot of his stuff, and nothitbys. ALthough his super
  nothitbys are still there (but only for a limited time, to emphasize
  priority), they are predictable.
- Punishment damage adjusted.

Character To-Do's --------------------------------------------------------

- Fin.
- Duh...
- MUDA! (Dio Move)
- Original Dio's throw, to be mapped as Kick throw.
- Acquire Dio's Crouchign HP effect to be used.
- Make dio choose demolition on a succesful destruction maneuver when in
  low life.

What is here that was NEVER done in JoJo PSX (and JoJo CPS3/DC?) ----------

- More Knives Frames. :)
- More Blocking and Flying frames.
- More Eyebeam frames.
- More Stance Frames!
- Much clearer sounds. (SDIO's sound has an ugly quality... not here!)
- Smoother walking animation!
- Can hurt an enemy by hurling the team member's enemy right in their
  path!
- Correct Knife colors!
- Some new chain combos and integration with crossover elements.
- An even dangerous(ly cheap) AI? ^_~ It was a piece of cake to defeat
  Shadow DIO in the arcade...although SDio versus Hol Horse is an
  exception in PSX...but Hol Horse vs SDio in JoJo's Bizarre Adventure
  (CPS3) is farken funny! Hol can get a perfect always with the mighty gun
  all the way!!!!
- Punishment can be done in the air!!!
- An alternate attack to Deception.
- 6 Button Layout. (Original JoJoers are gonna kill me for this...:P)
- All CPS3-grade sounds!

What will never be done (yet?) -------------------------------------------

- No more.

Storyline ----------------------------------------------------------------

Dio Brando (he has two forms, one shadow, and one, his real form) is a
rival of the Joestar Family. Once adopted by them, DIO was so ambitious
to rule the Joestar family. But he did not succeed in taking over the
reins of power.

As if by fate, he found the stone mask, an artifact that Jonathan's
father found in the Amazon, that turned him into a blood sucking
vampire. (By hand, mind you). Then, he slowly developed the ability to
stop time, but he had one enemy, the Hamon energy, held by Joseph
Joestar. The downside to DIO's great power is that he becomes vulnerable
to sunlight, although he becomes an immortal. The Joestars were able to
dispose of DIO by the Hamon Energy and they threw his head into the sea
before he harnessed the power of the Stand, or develop further his
ability to stop time, at the price of Jonathan Joestar's life.

Strangely, a hundred years later, he survived, and is bent on destroying
the Joestar family and any of their allies again. He survived by placing
his own head on Jonathan Joestar's body. This is why he has stitches on
his neck. This happened before his coffin was hauled out of the sea by
mistake.

He hired many people to kill the Joestar party. But, before killing
them, he intends to suck the blood of any Joestar member, in order to
heal the wounds in his neck. By then, his ability to stop the time,
using his Stand, The World, will be as long as he wishes.

And using his ability to stop time, he will rule all over the earth!

To be anyone to be a stand wielder, he/she must be shot with a special
arrow, be imbued with it, or must have a strong mind. His/her power will
vary, according to every person. And any stand wielder don't turn into a
vampire. :)

Stands cannot be seen by the naked eye of a normal human person. Only a
Stand master can see another person's Stand.

He has a psychic ability to transmit a likeness of himself into any
object, as far as the other side of the earth, depicting any idea he
wishes, only that the medium he uses is destroyed afterwards.

In his shadow form with the stone mask, he is known as J'yaku no Keshin
DIO, otherwise called "DIO's Evil Incarnation."

---------------------------------------------------------------Instructions:

Set the destination unzip directory at the "chars" directory of MUGEN.
Then, specify a subdirectory called "SDIO." Even if you have a duplicate
Shadow DIO, it's naming scheme will not overwrite the other.

MAKE SURE YOU ARE USING MUGEN BUILD 04.14.2001. Shadow Dio uses triggers
that only exists in this build. HE WILL NOT WORK ON ANY EARLIER VERSIONS!

Shadow DIO works best with TestP's common.snd, or any soundpack which
has a loud crunch in sample 7,2. It is recommended that your common.snd
have it's loud landing sound (preferrably a crunching sound) at 7,2, for
the best experience.

----------------------------------------------------------Gameplay Overview.

Well, Shadow DIO is as murky as he can be. While he is a bit slow, he is
unusually strong, typical stereotypes of any vampires (including Chinese
Vampires) and can appear/dissapear, as a reversal move.

For an inactive Stand wielder, Shadow DIO is pretty dangerous in the
hands of a competent person, and can go far to cheapness. This is
because his stand attacks are fast. However, because stands are just
virtual extensions of the human body, whenever the stand gets hurt, so
does its wielder.

You can tell so well that he likes his knives and cuttlery so much to
use them against his enemies. And Bloody Mary*, anyone? >:P

*Is a real cocktail drink found in bars. The reason I said this is
because DIO's drink is red. And yes, it's blood, but I want to
sensationalize. >:P

- SO why Shadow DIO is rated an Inactive Stand Wielder?
+ All Inactive Stand Wielders do not have a stand that shows up as a whole
  with the character. In Helper sense, they just appear and dissapear. In
  the case of Active Stand Wielders, they appear all throughout the game
  beside them as long as the respective wielder summons them. Active
  Stand Wielders integrates or accompanys its respective wielder like a
  normal character. Inactive stands cannot do so, and are a bit weaker than
  Active Stand Wielders. However, they have more freedom in motion, whereas
  Active Wielders must watch their defense or risk their Stand being crashed
  at.

Some caution regarding stand-based characters (applicable to JoJo chars):

1. Whatever hits the Stand, reflects on its wielder. If your Stand gets
   hit by a shoryuken, your main character will experience being hit by it!
2. Because a Stand is a part of you, you cannot guard while the stand is
   around. The only exception is on Active Stand Wielders.
3. If the Stand successfully attacks, you can be able to add more hits
   by physically hitting your enemy. (for Inactive Stand Wielders)
4. Other Stand attacks cannot be done, while the Stand is active and
   attacking (of course). This means that while the stand is attacking,
   you cannot do specials nor supers, unless they are not Stand-based.
   For instance, while the Stand attacks, you can throw knives around,
   because the knives are non-Stand based. However, you cannot do
   Punishment, as it is a stand-based attack. The exceptions are
   Destruction and Charisma.
   In original JoJo mode, you cannot do other special moves while the
   Stand is attacking.
5. If you are hit, and a stand is active, that Stand dissapears. (for
   inactive wielders only) If you are using an Active Stand Wielder, it
   will deplete a chunk of your Stand meter.
6. Inactive Stand Wielders or normal people take guard damage when
   guarding a Stand attack. Active wielders will have zero chipping
   damage in an activated Stand, which instead reflects to the stand
   meter. The chipping damage they may take depends on the type of
   attack they are defending against. Normal Stand attacks has the most
   Stand Meter chipping damage. People with Active Stands will negate
   all kinds of chipping damage, except for Hyper (super) attacks.

----------------------------------------------------------------------Moves

Be wary that MUGEN uses a Sega Saturn-type of controls; X,Y,Z, A,B,C,
and that some buttons are not available for all characters.

There is an alternate CMD file, called JoJo.CMD, which has the original
button layout as in JoJo's Venture. The default one installed is in
VS-game fashion, meaning abilities to air combo and other cool stuff. If
you install JoJo.CMD, however, he will play in an old-school style, if
you know what I mean. Improvements found in the default setting
is not present in that CMD file.

If your button orientation is at A-Z, please change it to X-C. Well,
don't blame me, it's the configuration I got when I first downloaded
MUGEN. >:P

My characters cannot have less or more than 6 buttons. I know, it's my
taste of perfection. >:P

NORMAL MOVES -------------------------------------------------------------

- Ditch (x+y+z) (also c in JoJo.cmd)
Shadow DIO will move to the other side, completely invincible, Use when
in corners. Might be a bit tricky in team play. You cannot ditch for 60
ticks (or one second) after successfully performing the move.

In JoJo.cmd, you are still vulnerable to throws while ditching.

- Guard Cancel (DP + X/Z)
He will drive away enemies while guarding. :)

- Advancing Guard (X+Y or Y+Z or X+Y+Z) (also c in JOJo.cmd)
  Supports QOH and JOJO style of motion.
This is your typical push guard motion. Can be done in the air, but a
bit difficult on keyboards.

This also shoves eveyone out of the way (except your partner) in team
play, front and back. If you're taking on Go Hibiki or Psycho Shredder,
this move is something you will use all the time.

Make sure all characters has CLSN2 on every attacks, or the push guard
may not work.

- Stand attack (c) (a in JoJo.cmd)
Shadow DIO summons The World, his Stand. Depending on the directional
button used, his stand will attack in a different angle. Because this is
a Stand attack, this has block (guard) damage, and can kill. For instance...

Standing Stand Attack:
C button defaults to straightforward attack.
Back+C (or Upward Back + C) His stand will attack upwards; does good air
defense.

Crouching Stand Attack:
C button defaults to downward attack; this is his knockdown attack.
Back+C does an upward attack; this will knock down the enemy, no
questions asked.

Air Stand Attack:
C button defaults to straightforward attack.
Upward Forward +C (or Upward Back + C) His stand will attack upwards
Downward Forward +C (or Downward Back + C) His stand will attack
downwards.

SPECIAL MOVES ------------------------------------------------------------

- Throw Knives (QCF + X/Z) + (QCB + X/Z or QCD + X/Z)
Shadow DIO will lash out knives on his hands, and will throw them,
depending on the button pressed. X will spray the knives in all
directions, Y will lash it out more in a 45 degree, and Z will launch it
horizontally. Same knife directions for the second batch.
Originally, it's HCF+A (attack button), but we all know we can't do HCF
in keyboards...>:P

- Kuretsu Ganshisha (QCB + X/Z)
This is his optic blast. Charging it with the button used may make the
projectile behave differently. I'm not gonna spoil it here. However, be
cautious when using this move; It will not hit short characters that are
just standing, like those Queen of Hearts characters. :) This move does
best as an anti-air or juggling attack.

- Scales of Horror aka. Dreaded Portions [Kyoufu no Henrin] (RDP + X/Z)
DIO turns away, and reads a book, just like Shingo does. But, if you hit
him while reading, he will dissapear, his book dropping to the ground,
and a large exclamation (with a cool sound effect) and DIO at your back,
ready to kick your gluteus maximus.

- NajiMuzo (DP + X/Z)
DIO does a charging maneuver, and will catch your enemy, his hands
choking the enemy's neck. Blood trickles from the enemy's neck and then,
he slams his enemy down. Very very sadistic, but you'll do anything to
win. >:P Oh, and it's true insane damage ability is still here. :)

- World21 (QCF + A/C) (QCF+A only in JoJo.cmd)
DIO launches The World. But this time, the stand attacks not once, not
twice, but THRICE!!! Depending on the button used, it will attack at
different angles. This gives him more of an edge, as some of the attacks
works perfectly for offense, air defense, or comboability. These attacks
complement him as he can also rush in for extra hits.

Note the color difference when he does the stand attack. Normal ones are
plain white. World21 has a reddish motif to distinguish it with black
afterimages. This is how they encoded the World21 in JoJo's Venture in
CPS3. Punishment Stand color is green.

In JoJo PSX, Capcom gave the stand a distinct color when doing World21.
This can be simulated via palfx.

THROWS -------------------------------------------------------------------

- "KURAEE!!" (Fwd + P or Back + P)
DIO grabs the enemy, and slams him/her to the wall. Mind you, this one
really hurts. :)
And did you know his victim can hurt the enemy's member with this?

SUPERS -------------------------------------------------------------------

- Punishment (QCF + X-Y/Z)
DIO does his Stand attack, and hits the target. Time stops. Guess what he
does next? He drinks blood in a goblet, while watching his enemy rained
with lots and LOTS of knives. Feed your sadistic side of your
personality by pulling this move off! >:D Oh, and 33 hits, anyone?

You can also do this in mid-air, but you must choose the direction the
Stand will attack by holding the direction button.

- Destruction (DP + X-Y/Z) [Also called "WWRYYYY~~~!"]
This is his new super in JoJo's Bizarre Adventure (2nd version). Quite
useless, but you can combo into this attack in certain situations. This
version is a bit similar to its incarnation in JoJo2, so same tactics
apply, only he has a bit more range than usual. Hold any key used to
delay the hit. After the hit connects...

- Deception (DP + X-Y/Z, after Destruction connects. Hold button used
  until within range)
DIO runs to the other side of the enemy, then kicks the S#1t out of the
enemy, causing him/her to fly into the opposite direction!! >:D
This is so much fun to do in wide stages!!! >:P

- Demolition (DP + A-B/C IMMEDIATELY after Destruction connects, be in
  very close range to work. Requires 2 levels)
Dio knocks down the enemy to the pavement. Yeap, with all the crunch and
all fancy effects. But Dio will reach for the enemy, and toss 'em up
high, and he follows! Time stops! Then Dio does his intro pose,
laughing. The hapless victim falls down to the ground! >:)

- Charisma (QCB + X-Y/Z)
DIO bends downward, his hair expanding. Afterwards, glistening stuff
comes out of his hair and onto the enemy. These stuff are UNBLOCKABLE,
but does moderate damage. Takes two levels off.

Beware that the buds coming out of DIO's hair are actually dandruff.
Naw, that was just a joke...^_~

Charisma can juggle your enemy for some VERY nasty damage. The buds seems to
follow the enemy, if I can remember correctly...^_~

- THE WORLD (x, F, z, B, a or F, z, x, F, a)
He arches back, with noticeable lag time. Then time stops. In fighting
terms, this is a Free-for-all attack. >:D But watch the time tick; it is
very fast. 10 levels is 10 seconds.

In team play, when this happens, only DIO can attack. Everyone else is
frozen, unless your parter happens to be Shadow DIO too, and he is also
performing THE WORLD. (or possibly Jotaro, or any other member who can
stop time)

You can only do normal attacks (including stand ones) and some selected
special moves. Throw moves and the like are disabled at this duration.

You may also want to make sure that your enemy doesn't go into a motion
that renders him/her invincible while doing this motion. If in doubt, do
not use unless getting out of corners. >:P

----------------------------------------------------------------Some bugs:

- If you deploy all the knives during THE WORLD, and do a charged
  eyebeam, the PALFX affects one of the knives. The cause is still being
  traced, and may remain as a bug until Elecbyte fixes it.

- Warning about missing helpers; This is not really my fault, and can be
  ignored. Overall, you shouldn't pay any attention to "no target"
  errors.
+ Fixed by placing numhelper triggers in the first line of evaluation,
  which deters the no helper flooding. Inspired by VK.

- KO sound for THE WORLD victim may not echo for those which their KO
  echo setting is at 1. This is because it is manually coded. Anyway,
  most ppl doesn't use echo. >:P

- It seems MUGEN doesn't allow reversals against projectiles. Well, that
  was possible in MUGEN 0101. Strangely, it works for helpers with the
  projectile attributes, but not for real projectiles. >_< This is in
  particular with his Scales of Horror attack, which can counter projjies
  too.
+ Solved by utilizing Hitoveride. To emulate the actual effect, Pause
  was used to freeze the enemy.

- Punishment may not look correct for certain chars, as it is a
  whole-sprite knives, in contrast to the old encoding. This utilizes
  the Stand helper to bind to the middle pos of the enemy. If it doesn't
  look correct, check your mid pos and head pos. If your char doesn't
  have them, it's recommended that you put it in, unless they look
  proportionally correct already.

- An extra hit appears after doing THE WORLD. Not really a bug. It's a
  bonus.

- The finale effect may or may not work sometimes. There are still
  limitations in MUGEN that causes some fluctuations. Thankfully, you may
  not be able to see this, but it happened once.

- If you use kill two characters with lose portrait effect in a super
  (in my camp, I have Kaede, SDio and Multi with those), both their
  portraits will appear, and has tendencies to look extremely gay.
  Especially watch out against DioANMC, JotaroANMC and NeoEdifel.

- The throw direction may be slightly off-balanced seldomly. This could
  be a MUGEN bug.
+ Fixed by adding targetstate when command = "holdback" is detected via
  a var.

- In his intro, the music seems to be muted rather than paused when he
  does his time stop intro. This is a MUGEN fault. It has been reported
  and may be fixed in future versions of MUGEN.

- Cham-Cham seems to mess with Dio's win pose helpers at times.
  Especially when victimed by The World.

- Kenshin's Guy may cause glitches in throws if against Shadow Dio.
  He will hang especially if kicked to the wall by Setsuna.
+ To fix this, convert Guy's [Statedef -2] to [statedef -3]. This will also
  eliminate the problem with Setsuna.

- Majorie's A-Ko and B-Ko has tendencies to affect var(5) of Shadow Dio.
  This will cause the system to think that time has stopped, when it
  actually did not.

--------------------------------------------------------------------------

If you have comments or suggestions, my e-mail is above, or my ICQ
11596428. Say senseless things or ads and out you go.

If you have IRC, see me in EFnet #mugen. I go in as O_Herman or similiar
to the nick, or D-I-O. I also go in as Tamah0me or Tasuki. If you can't
find me, leave a message to the ppl there.

I am only reachable in my own message board. This is at my homepage.
Look under FORUM.

visit my site for more MUGEN characters:
http://rotb.cjb.net

--------------------------------------------------------------------------

Try other works of Orochi Herman!

- Setsuna = Demonic killer
- Raiya = Uhh, do I have to say how good she is? O_o

------------------------------------------------------------------ CREDITS!

- VK for sending me the Jojo sfx and voices fifty times over, and for
  bearing with my shit speed. Also for tweaking my Shadow DIO countless
  times! We know, VK likes Shadow DIO a lot because he finds many things
  in him similar to himself in a way...^_~ Murderous instinct,
  indifference, world domination, what else could you ask for? >:P

  Also thanks to this guy for direct tipping on how to make Dio smarter,
  and some DC rips (which are unclean, I had to rerender them by hand)
  to totally lay the smack down. :) And a lot more advices.

- SHam Bun for his kickass site (which I don't know if it is still up)
  and for supporting VK with the JoJo ost.

- Maruta & Rmarker also deserves a space here for encouragements, and
  for telling me the real name of Shadow DIO. :)

- Certain Pinoy guys (whom I met in ICQ) who patronizes MUGEN. They
  think I rock the most...^___^! and others like K3nshin, B.B. Hood and
  Wang_Tang!!... Oh, and also the wacky "tambalan" of Jaymz and Anarchy!
  :P

- Thanks to kenshin for the fun time...>:P And also for making specifix
  AI against SDio... which caused bugs!!! >:P

- MBS for making the first JoJo character in MUGEN, Hol Horse. (I
  borrowed some elements in him too. :) hehehe!)

- The maker of Mariah, from wherein I borrowed some sound effects from.
  (like the super sound)

- Douglas Heung for his JoJo's Venture FAQ, where the move lists were
  acquired.

- Eternal gratitude goes to Gatchan for his copy of the game Angel Eyes.
  And to Kenshin who found that game in a flea market near my place.
  (WTH?!!? >_<)

- Thanks also to Kyo Kusanagi, the one whose eyes can spot infinite
  combos easily...:P

- Gratitude also goes to Nemisis (Deux, Fou-Lu) for providing Shadow DIO
  pallates and some extra frames. :)

- Things goes to Deuce for some bug info regarding helpers and Lb style
  repel.

- MITOKON, The other Shadow DIO maker for reference in some missing sprites.

- Subaru for his DIO brando. Although it is not quite as good as I
  expected, I used it as reference to fill in the missing sprites to
  make Shadow DIO animate in CPS3 quality as well. Of course, you can
  tell that the PSX version of JoJo doesn't animate like its CPS3/DC
  counterparts. His Fuku Dio has also animations I thought were left out
  altogether.

- Arche for some tipping about victim states, and more. ^^;;

- Palehorse for his loyalty to Sir DIO. >:P

- Karai and Koga for ending code suggestions.

- ANMC for some stand codings.

- BetterDays MUGEN for cleaner movement sounds, which I used.

- Me of course, for bothering to do this. >:P

- NeoGouki for his few suggestions, wackiness, and you know what. >:P

- Kami-sama, the one whom I offer this masterpiece to. (That's God in
  Japanese.)

WHOOPS...we have a FLAME LIST....

1. THE LAMER WHO THINKS KAGAMI STINKS AND NEVER DESERVES AN AWARD.
Hello? This guy is narrow minded enough to rant about the awards, and he
thinks Classic Kyo deserves better. Boy, what a retard. Kagami took a
LOT LOT harder to reproduce, because he has two incarnations, and he is
a past creation (with tons of bugs) of mine, an alternate when I had a
disk disaster involving Setsuna. To you who thinks Kagami stinks, KNOW
YOUR ROLE and make sure you have my latest version before you RANT!! and
if you still believe he stinks, go make your own awards!!! (as said by
many mates in TESTP.)

2. THE GUYS THAT MADE VK QUIT. J00 SUCK ASS!

NOTES:

Mirror producers, make sure to MIRROR my LATEST versions of
characters. This is to prevent conflict versions. Updates on characters
are now posted on the main page, so you will know. IF you have no time,
link directly. I won't get mad unlike other creators.

If you encounter bad CRC's try downloading it without any download
managers such as Getright. But if the upload is REALLY corrupted, just
mail me, and I might give you the replacement for the corrupted files.
No gurantees tho...>:P

If you have any comments or suggestions regarding DIO, please contact
me by my message board. Don't try modifying DIO yourselves and
releasing its patch. That was the reason some creators have packed up
and quitted MUGEN. But this doesn't mean you are forbidden to change
DIO to suit your taste, just don't release your edition.

If you want JoJo sounds, please write to me at the e-mail address above.
I do not have all of the sound effects, though.

Use the following URL only.

rotb.cjb.net

Use rotb.cjb.net as much as possible; it will work even when a technical
problem comes up.

All right. Enough Ranting. GO ENJOY HIM! HEHAHAHAHA!!!
