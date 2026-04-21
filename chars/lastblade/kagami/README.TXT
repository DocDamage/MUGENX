
SHINNOSUKE KAGAMI MUGEN PORT NEW MUGEN Version

Product ID: ROTBRC-MC-LB-000001SK-0414-NMV

A Character from the The Last Blade series by SNK (http://www.neogeo.co.jp)
Converted into MUGEN format by Orochi Herman (o_herman@edsamail.com.ph)
Made at The Riot of the Blood Rehabilitation Center (http://rotb.cjb.net)

Proudly made in the Philippines. (Mabuhay ang mga Pinoy!)

Hello people! This is my 5th MUGEN attempt on making a character. From
the legendary maker of Setsuna, Sakura and Whip now comes another
sure-fire fighter who can kick butt!

Who is he? It can be no ther than the man in fire and feather,
Shinnosuke Kagami!

Newer versions of Kagami are always found at the official page of this
MUGEN character, at http://rotb.cjb.net. Consider other unauthorized updates
as colorums.

---------------------------------------------------Update at May 2...

- Added PlayerPush parameter in his Gokairu move. (for victim State)
- Updated sounds.
- Killed all debug warnings in the character.
- Fixed some jump anomalies.
- Tweaked many of assertspecials.
- Added numhits = 0 to throws, thanks to VK.
- Changed erronrous hittypes in HitDef.
- Added Screenbound in his throws, jumping back, and what not.
- Improved Guren Suzaku.
- Improved animations everywhere. He now animates smoothly.
- Fixed various bugs related to explods.
- Tweaked his burn palfx.
- Tweaked commands, particularly DP commands.
- Added sound effects in his landing states for the uppercut.
- FIxed Repeated LP commands to match like the one in the original game.
- You now have control while stopping from running. This is the original
  behavior in LB2.
- His HP SHo Hoko is less noisy now.
- Added more frames, as well as corrected incorrectly colored-frames.
- All repels added.
- Crouch HP launcher relocated to fwd+yz
- Now has absolute Guard Crush.
- A lot of stuff.

-----------------------------------------------What needs to be implemented.

- Nothing more that you may notice.
- Maybe a Boss mode...>:P
- Correct all sprites with erroneous colors.


------------------------------------------------------------------Storyline:

Shinnosuke Kagami is a Japanese-European (?) student of Gaisei Kouryu. He
is one of the holders of the Power of the guardians that keeps an eye on
the gates of hell. There are four of them. Genbu, which is held by Genbu
the Okina, Byakko, by Shigen Naoe, Seiryu, held by Kaede, and Suzaku,
held by Shinnosuke. It's the same 4 guardians (Suzaku, et al) in the
story of Fushigi Yuugi, but the latter is irrelevant to Kagami.

Gaisei Kouryu is the master of Kaede, Moriya, Yuki, and Shinnosuke.

Unfortunately, in Last Blade 1, he became consumed by the powers of
Hades, making him evil. This made him kill Kouryu. In doing so, Moriya
is engrieved, which in turn, made Kaede think Moriya was the murderer
of their master, causing him grief.

During those times, he used the Power of the phoenix (Suzaku) to open up
Hell's gates, in which he almost successfully did. Kaede, Moriya
Minakata and Yuki, alongside with Genbu of Okina, successfully thwarted
Kagami's plans, but only Kaede was able to defeat him. Kagami believed that in
opening the gates of hell, he can eliminate the current generation and
make them, the human beings, better with his own plans in mind.

As he said, he will be gone with his scheme, thus, he dissapeared along
with the other things consumed by the portal to the gate. However, the
power of the Suzaku did not permit Kagami to enter hell, knowing he was
just a mere pawn, and his evil was not self invoked, although he did
aspire for a better human race. As a result, he lives again, without
the influence of Hades.

As he stepped on the earth again, he is guided this time by Genbu of
Okina. Although still thinking about the utopia he dreams, pretty much
like that of Amakusa's, Okina told him that mankind can be better if
they choose to, but Kagami is still not convinced at all.

NOTE: In Fushigi Yuugi, Miaka holds the Power of the Suzaku. Shinnosuke
holds also the Power of Suzaku...:) I wonder if there will be a Fushigi
Yuugi/Last Blade crossover...that would be fun! :)

---------------------------------------------------------------Instructions:

Set the destination unzip directory at the "chars" directory of MUGEN.
Then, specify a subdiectory called "Kagami." Overwrite any
existing files if you are upgrading. You may need to delete previous act
files for less confusion.

IF confused, do a clean install. This means deleting all of the contents
in the folder "Kagami" in your MUGEN directory, then unzipping the ones
from this zipfile.

----------------------------------------------------------Gameplay Overview.

Kagami is what we can call, Kyo's ancestor. His attacks are primarily
based on fire and sword, a deadly combination. Like in Setsuna, his
sword attacks can be interlinked for massive dammage. He also has a
diving fire kick now, his boss-mode move (not included in LB2, changed).

Some of his LB1 elements, such as his taunt and crouching attacks that
requires low blocking, has been ported into this incarnation but with
different functions. His old crouching attacks MUST be blocked high, as
it has been reinstated as an overhead attack. His gameplay is a little
reminiscent of Demitri, except for dashes.

Air combo ability is now possible with Kagami, adding more fangs to his
teeth.

Kagami's range is not as far as Setsuna's, but he is way faster and
damaging than the rest.

----------------------------------------------------------------------Moves

Be wary that MUGEN uses a Sega Saturn-type of controls; X,Y,Z, A,B,C,
and that some buttons are not available for all characters. In the case
of Kagami, ALL are available.

If your button orientation is at A-Z, please change it to X-C. Well,
don't blame me, it's the configuration I got when I first downloaded
MUGEN.

My characters cannot have less or more than 6 buttons. I know, it's my
taste of perfection. >:P

NORMAL MOVES -------------------------------------------------------------

* Kuoenshou (During Jump, Down Y)
Kagami dives down like a bird. Must be blocked high.

* SyoKyaku Funjou (During Jump, Down B)
Kagami dives down, feet aiming downward with flames. This is his LB1 diving
attack. Must be blocked high as well.

* Repel/Dodge (X+Y) [Standing, Crouching or flying]
Kagami has a repel attack that has two purposes. It can act as a dodge
maneuver or a parry, in similar fashion to his dual purpose reflector,
that really destroyed LB1's gameplay, but in here, it does not. :) If
the attack is a Projectile, he will not take any damage, and the
Projectile just passes through. But, if it is a physical attack, Kagami
will parry the blow, leaving the enemy open for combos. The original 
functionality of this repel move is intact in Original Mode.

No damage is inflicted unless X+Y is pressed again (timing is very
tight-- it may take some practice or luck) which will knock down the
enemy. There are no follow-up repel attacks in the air (or is there in
this version? ^_~).

Standing Repel can only counter Standing and Air attacks, and will not
react on crouching attacks. Crouching Repel will only react on crouching
and standing attacks, and Air Repel will act only on Standing and Air
attacks. Crouching and Air has no dodge maneuvers, meaning if you miss
the repel momentum, you're open for attacks!

Here, you do not need to hold forward while performing the repel attack
to counter special and/or super physical attacks. Still, the timing for
the parry must be precise.

* Guard Cancel (While blocking, QCF+X/Y/Z)
Kagami has a guard cancel move, and it varies. :) Both knocks down the
enemy, and 1« of the super meter stock is required for this. (In LB2,
the whole meter is required.) He has 4 possible attacks.

This may serve also as an escape move, in case a character doesn't have
a clsn2 in the current animation that character is doing.

* Guard Crush Total Damage (Hold Y+Z)
Kagami steps back a bit, and charges some flames, which he whips out
afterwards. This attack in unguardable. With the correct timing, you can
surprise people with this!

* Guard Crush Anti-turtler (Hold Z+C)
As with Setsuna's version, this affects crouching and flying enemies.

SPECIAL MOVES ------------------------------------------------------------

* Hien Yoku (QCF X/Y/Z Far) or Gouen Sou (QCF Y/Z Close)
A fireball move. :) B and C has different functions up close.
Gouen Sou Y/Z can be followed up with

* Shiranui (During Gouen Sou Y/Z, QCF Y or Z)
Shiranui Y will knockdown your enemy just like in LB2. Shiranui Z does
not, which means you can follow up with a...

* Gokairu (During Shiranui Z, QCF Z)
This is his old Shiranui ani from LB1. In this version, it drives your
enemy to the wall with a bang. With a damage that can kill.. >:D

* Sho Hoko (DP + X-Z)
Uppercut. Sure, he's a Kyo/Ryu/Akuma/Sakura clone, whatever you think.
But his has an important difference. In timing. Oh, and his fierce
version of the Sho Hoko is virtually identical to his boss-mode
uppercut, called "Yumi e no Tsubasa (wings to the afterlife)". Jab Sho
Hoko has 2-3 hits, short has 3, and fierce, as many as 5-8. Any combo
with the fierce Sho Hoko produces a damage that can be done by Sagat or
Chizuru.

Incidentally, the said move is rather similar to Satomi Yajima's
Kaenzan. :)

* Shizuka Naru Koduo (QCB + K)
Kagami's Extra Mode charge. Being an EX-boss, he deserves such move. He
charges his meter quickly and can cancel it anytime (especially if the
enemy approaches). Hold the button to charge until full.

There ARE certain boss-mode moves in here that activates at low Life!

* Meifu E no Michibiki (at low Life, QCF+A/B/C)
This is his low-life special move. Note that you can do this if your
life is lower than 400. This delivers a glass-like wave that pummels
enemies away. Can be incorporated into combos.

THROWS -------------------------------------------------------------------

* Gusha no Nageki (Z+C) (also in air)
Kagami grabs the enemy, lifting him/her high. Then the enemy explodes
with a moderate damage inflicted.

* En Hoko (QCB + X-Z)
Same as in throw, but he stabs the opponent, adding more damage, before
he sets the enemy ablaze. The motion has been set like so to make its
execution simpler on keyboards.

SUPERS -------------------------------------------------------------------

* Seiki Ryougen (QCFx2, P)
Kagami charges flames in his hands, and immediately aims it at his
enemy. This fireball is UNBLOCKABLE at any aspect, and your only choice
is to jump.

SDM Version empties the enemies' Life gague, leavng him dizzy. And with
that, you can follow up with a...

* Suzaku no Mai (QCBx2, P)
This is actually, Kagami's Power Mode guard crush move. I had a better
idea for this, thanks to NeoKyo and Classic Kyo. Use it like you would
use it on Kyo, but there are drastic differences, as his invincibility,
determined by the button, is obvious. Jab has Standing/Projectile
Invincibility, Short has Crouching Invincibility, and Fierce has Air
Invincibility. His SDM renders him totally invincible. The downside is,
you won't burn when you touch Kagami at SDM, pretty much like Orochi
Chris.

* Guren Suzaku (QCFx2, P in the air)
Kagami's trademark move, which is reminiscent of Leona's. After any
version of Sho Hoko, you can cancel into this super. Hits rack up to 5.

In SDM mode, the hits can be as many as 8 or 10.

* Houou Tenshou (QCFx2, K in the air)
This does not kill in LB2, but it does, in LB1. The attack Power of this
move has been raised at it's old LB1 glory, and in those times, it was
launched from ground to air, not air-to-air.

Weaker characters will die from this move. And there is even a super
version of this, quite as powerful as Bison's Super Psycho Crusher,
and/or Orochi's Mu-ni-kaerou super.

* Funsho Koju (QCFx2, K on land, hold button used to charge)
This move is his old LB1 SDM. Damages still like in LB1, but in SDM
mode, this becomes something like in his boss mode super.

----------------------------------------------------------------Some bugs:

--------------------------------------------------------------------------

If you have comments or suggestions, my E-mail is above, or my ICQ
11596428

I am also reachable in the TESTP Message Board.

visit my site for more MUGEN characters:
http://rotb.cjb.net

CREDITS!

Thanks to SNK (RIP) for bring us this game, The Last Blade (and last blade 2)

Big thanks to NeoRageX for this was the only emulator that can rip
sprites! >:D

Thanks also to NeoJuke for the sound ripping capability.

Thanks to Karin Kanzuki for some words, encouragements, and some things
that are...candid. >:P

Thanks to DJ Boogie for the inspiration and advice.
Thanks to Neogouki and Gama for the reports....
And to Dark Sun! :)

Also thanks to VK for some bits about Kagami and his, of course,
ranting, and about saying how my sound effects sucks. >:P

Also thanks to the maker of the LB and LB2 FAQ, Deuce, from where the
movelist was based. Support his character, Zantetsu and Gato, which are
blockbusters. :)

Certain Pinoy guys (whom I ment in ICQ) who patronizes MUGEN. They think
I rock the most...^___^! and others (you know who you are!!)...

This character is an awardee of MUGEN4EVER for the Character of The
Month. >:D

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

3. #mugen LAMERS.

NOTES:

Mirror producers, make sure to MIRROR my LATEST versions of
characters. This is to prevent conflict versions. Updates on characters
are now posted on the main page, so you will know. IF you have no Time,
link directly. I won't get mad unlike other creators.

If you have any comments or suggestions regarding Kagami, please contact
me by my message board. Don't try modifying Kagami yourselves and
releasing its patch. That was the reason some creators have packed up
and quitted MUGEN. But this doesn't mean you are forbidden to change
Kagami to suit your taste, just don't release your edition.

Use the following URL.

rotb.cjb.net

Only link to those, but use rotb.cjb.net as much as possible; it will
work even when a technical problem comes up.

All right. Enough Ranting.
