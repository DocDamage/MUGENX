                                 ____________________________
================================|Ryu by Phantom.of.the.Server|=================================
                                 ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯                  [v.2.2]

- contact: potsmugen@yahoo.com.br

- modified version of Capcom's Ryu from Capcom vs Snk series

- for Linux and Windows Mugen only



===============<Features>===============

- All the essential stuff
- 3 modes: Normal, Evil and Master
- Every Ryu/Evil Ryu move ever seen in video games (let me know if i missed any :P) and more
- Details taken from his various video-game appearances and storyline
- CvS-like movement
- Damage Reduction and Zero Counter, from SFZ3
- Dodge, Roll, Original Combo and Power Charge, from CvS2
- SF3 Parry and EX moves
- Cancels and Super Cancels
- Effects edited from various games
- Sounds from various games, including SFZ3, CvS2 and DS
- CFE, CvS2 and MvC voice samples
- Various intros, win poses and special animations
- Ryu vs Evil Ryu intro
- Evil Ryu vs my Shin Gouki intro
- Ryu vs my Sakura intro
- Intro vs my Pocket Shin Gouki and Reu's Evil Ken
- Special intro vs CvS2 Another Kyo and CvS2 Ryo by Byakko
- 36 palettes



===============<Changes since v.2.0>===============

- Mostly fixes and tweaked stuff
- Added super portrait for Lv3 Supers
- Shun Goku Satsu now deals 55% damage to normal opponents and 75% to evil characters (see
Other Info), no matter how much life and defence they have >=)
- Shun Goku Satsu can now be canceled from Ashura Senkuu
- Rugal can no longer evade Shun Goku Satsu, and now takes extra damage from it. God Rugal
remains the same though
- Added Flattened special anim
- Added special intro vs Byakko's CvS2 Ryo
- Added special intro vs my Sakura
- Hadouken and Shinkuu Hadouken now have high resolution
- Standing attacks that aim low can no longer be air-blocked 
- Stricter timing on the Nidan Shoryuu Tsuki to Shin Shoryuu Ken cancel



===============<Changes since v.0.75>===============

- Made the char exclusive to Linux and Windows Mugen
- Fixed most bugs
- Either tweaked or remade everything
- Axis is now the same as in CvS2
- More differences between each mode
- Super moves now only have one level of strength but, in exchange for it, better combos are
now possible
- Changed the throw system to SFZ3
- Normal attacks can now be cancelled into the taunt
- Shun Goku Satsu now behaves like with my Shin Gouki
- Added some moves
- Added Power Charge
- Implemented a Damage Reduction system
- Replaced some voice samples with CFE ones
- Tweaked and added some fx
- Added CvS2 sparks
- New flaming Shun Goku Satsu win screen
- Added intro vs my Shin Gouki
- Added intro vs Byakko's CvS2 Another Kyo
- Lots more



===============<What's Missing>===============

- Every move is in, so i guess that from now on I'll just improve what's done
- Bug fixing and tweaking stuff
- Smoother comboability
- Intro Ryu vs Evil Ryu, from SFZ3
- Midnight Bliss anim, and some more
- Probably replace the CvS2 hadouken fx with something more classical
- If keeping the CvS2 hadouken fx, remake it with a higher color count
- Maybe a mode where Ryu turns into Evil Ryu when low on life or something
- Something, I'll probably never put away this char :P



===============<Mode Overview>===============

This char has three different modes, here follows a short description:

<<<<<Normal Ryu>>>>>
- Has the highest defence
- Can perform EX moves

<<<<<Evil Ryu>>>>>
- Moves faster and jumps higher
- Has a better movelist
- Shouryuu Ken and Tatsumaki Senpuu Kyaku cause more hits on the opponent
- Shinkuu Tatsumaki Senpuu Kyaku draws the opponent twice as fast as Ryu's

<<<<<Master Ryu>>>>>
- Is basically a mix between the first two modes, except he cannot use EX moves


Obs.: "Master Ryu" can more or less be understood for how Ryu would fight if Gouken didn't
tone down the Ansatsuken style and therefore teached him the Satsui no Hadou techniques.
But this is just a pretty explanation, the truth is I just wanted to add a mode with all of
both version's moves. =P


===============<.DEF Overview>===============

This char has four different .def files, here's what each one does:

<RYU.def>
The mode is selected via palette:
Palettes 1 to 6  -> Normal Ryu
Palettes 7 to 11 -> Evil Ryu
Palette 12       -> Master Ryu
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Ryu,

<NORMALRYU.def>
Only Normal Ryu mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Ryu\NormalRyu.def,

<EVILRYU.def>
Only Evil Ryu mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Ryu\EvilRyu.def,

<MASTERRYU.def>
Only Master Ryu mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
Ryu\MasterRyu.def,



===============<Movelist>===============

U - up          x - weak punch         a - weak kick
D - down        y - medium punch       b - medium kick
F - forward     z - strong punch       c - strong kick
B - back        p - any punch          k - any kick
s - start       2p- two punches        2k- two kicks

(Air)- Move must be performed in the air.

(EX)- Move with an EX version. EX moves are performed by pressing two punch/kick buttons.
e.g.: Hadouken - D, DF, F, p
      EX Hadouken - D, DF, F, 2p

EX moves are more powerful than regular Special moves, but consume half of a power stock.
Only Normal Ryu can use them.

(N)- Move can only be performed by Normal or Master Ryu.
(E)- Move can only be performed by Evil or Master Ryu.
     *When not specified, any mode can perform the move.


<<<<<NORMAL>>>>>

.Seoi Nage: F/B + 2p (near opponent)

.Tomoe Nage: F/B + 2k (near opponent)

.Sakotsu Wari: F + y
   * Must be blocked high

.(N)Kyuubi Kudaki: F + z

.Seichuu Nidan Tsuki: 2p

.Senpuu Kyaku: F + b

.(E)Tenma Kuujin Kyaku: D + b (while jumping forward)


<<<<<SPECIAL>>>>>

.Hadou Ken: D, DF, F, p (EX)
   * EX version is the Shakunetsu Hadou Ken

.(E)Shakunetsu Hadou Ken: B, DB, D, DF, F, p

.Shouryuu Ken: F, D, DF, p (EX)

.Tatsumaki Senpuu Kyaku: D, DB, B, k (EX)

.Kuuchuu Tatsumaki Senpuu Kyaku: D, DB, B, k (Air)(EX)

.Joudan Sokutou Geri: D, DF, F, k (EX)
   * EX version will make the opponent bounce off the wall

.(E)Ashura Senkuu Zenpou: F, D, DF, 2p/2k
   * Punch travels further

.(E)Ashura Senkuu Kouhou: B, D, DB, 2p/2k
   * Punch travels further


<<<<<Lv1 SUPERS>>>>>

.Shinkuu Hadou Ken: D, DF, F, D, DF, F, p

.(N)Denjin Hadou Ken: D, DB, B, D, DB, B, p
   * Mash any buttons (without releasing the punch) to charge faster

.Shinkuu Tatsumaki Senpuu Kyaku: D, DB, B, D, DB, B, p
   * Pulls opponents towards you

.(N)Nidan Shouryuu Tsuki: D, DF, F, D, DF, k

.(E)Messatsu Gou Shouryuu: D, DF, F, D, DF, k

.??? (Master mode only)


<<<<<Lv2 SUPERS>>>>>

.(N)Reppuu Jinrai Shou: D, DF, F, DF, D, DB, B, p


<<<<<Lv3 SUPERS>>>>>

.(E)Metsu Hadou Ken: D, DB, B, D, DB, B, p
   * Mash any buttons (without releasing the punch) to charge faster

.(E)Ryuu Koku Hadou Ken: fully charge Metsu Hadou Ken

.(N)Shin Shoryuu Ken: D, DF, F, D, DF, 2k

.(E)Metsu Shoryuu ken: B, DB, D, DF, F, 2k

.Shun Goku Satsu: x, x, F, a, z


<<<<<MISCELANEOUS>>>>>

.Backward Dash: B, B

.Forward Dash: F, F

.Run: F, F (hold)

.Dodge: a + x

.Roll: F + a + x

.Parry (can also be done in the air, and during guard):
    - F (tap) -> high attacks
    - D (tap) -> low attacks

.Power Charge: b+y  (hold)

.Original Combo: c+z  (can also be done in the air)

.Zero Counter (Shouryuu Ken): B, DB, D, p  (during standing or crouching guard)

.Zero Counter (Sweep): B, DB, D, k  (during standing or crouching guard)

.Fall Recovery: 2p (while falling when hit)

.Low Jump: U (tap)

.High Jump: D, U

.Chouhatsu: s
  * Normal and Master modes have 3 variations (s, F+s and B+s)

.(N)Hadou no Kamae: D, DF, F, s
  * in Master mode it has a special treat for all you Ryu fans ^_^


NOTE: Some Super moves in Master mode have a different command, as follows:

.Nidan Shoryuu Tsuki: B, DB, D, DF, F, 2k
.Metsu Hadou Ken: F, DF, D, DB, B, 2p
.Shin Shoryuu Ken: D, DB, B, DB, D, DF, F, k



===============<Gameplay Notes>===============

- You can only cancel Lv1 Supers and Lv2 Supers into others that aren't Lv3 Supers, even if
your partner's power bar has more than three stocks. The only exception to this rule is
pointed out below;

- You can use a Lv1 Super during Original Combo, but it will consume all of your power bar;

- During Original Combo, you can't guard any attacks, and if you get hit you lose half of the
power bar;

- During Original Combo, you can cancel any connecting normal attack into any attack, and any
connecting special attack into any special or super attack;

- Ryu's attack power increases along with his power bar. If you have three (or more) power
stocks it increases 5%, two stocks increases it 2% and one stock 1%;

- If you hit an opponent while he's attacking, you'll do 20% extra damage; you'll know this
happened when the screen briefly pauses and flashes white;

- While you are getting hit, or even guarding an attack, mash any button to slightly increase
your defence; if done rightt it may save you.

- You can cancel Nidan Shouryuu Tsuki to Shin Shoryuken, if you successfully hit your opponent
with it and repeat its command just before Ryu connects the second hit. If successful Ryu will
flash golden, say something and switch to Shin Shoryuken. Be aware that this way it'll cause
less damage than a regular Shin Shoryuken.

- Some opponents are able to break out of Shun Goku Satsu, such as Gen or Gouki. However other
opponents may recieve extra damage, such as Vega (M.Bison) or Geese Howard (for more details,
check "Other Info"). To break out of Shun Goku Satsu, the victim must have more than half of
his life points and quickly mash any buttons;

- When Ryu fires the Ryuu Koku Hadou Ken, any opponent behind him will be blown away. Useful to
prevent getting hit out of the move while firing the beam.


===============<Tips and Tricks>===============

- Crouching kicks and Tenma Kuujin Kyakku can hit lying down opponents, so don't give
them any time to rest >=)

- Use crouching kicks to hit lying down opponents;

- Parry! It fills your power bar and negates all damage the opponent would inflict;

- Try Parrying while guarding to perform a Red Parry, which allows you to cancel your guard
and counter your opponent's attack;

- Zero Counter is probably the best ability CAPCOM ever made up, it can easily turn the tables
so don't be afraid to use it;



===============<Other Info>===============

<Chars that have maximum resistance to Shun Goku Satsu>
   - Gen, Gouki, Mech Gouki, Pocket Shin Gouki, Shin Gouki and Soul Gen

<Chars that have medium resistance to Shun Goku Satsu>
   - Blaze Agent, Dark Sakura, Evil Ryu, God Rugal and Oyaji

<Chars that recieve 25% extra damage from Shun Goku Satsu>
   - Demitri, Jedah, Shadow DIO and Vega (M.Bison)
   - Geese Howard, Mukai, Orochi, Ryuji Yamazaki and Setsuna
   - Goro, Kintaro, Motaro, Shang Tsung and Shao Kahn
   - Dr. Doom
   - Mech Rugal, Omega Rugal and Rugal
   - Original Zero, Perfect Weapon MB-02, Sevil Nahte and Shadow Dio


More can be added here, so contact me if you know any and I'll consider it.
Also, if you notice that this system isn't working with some char please contact me so I can fix it.


<<<<<Selecting the win pose>>>>>
(Speech translations by Kibagami)

Normal/Master Ryu:
X, Y or Z -> Ryu raises his arm and says "Ore no kachi da!" ("Victory is mine!").
A, B or C -> Ryu crosses his arms and wind starts ruffling his clothes. There's a random chance
that a small leaf will appear, blown by the wind, or hold Start to see it.

Evil Ryu:
X, Y or Z -> Ryu turns his back and says "Shin no tsu, tometekureru!" ("I will stop your heartbeat!").
A, B or C -> Ryu stomps the ground and says "Zetsu!" ("Death!").


<<<<<Extra win poses>>>>>

Normal Ryu:
Win by Metsu Shoryuken or Shin Shoryuken -> Ryu turns his back and looks away from the opponent.

Evil Ryu:
Win by Ryuu Koku Hadou Ken -> Ryu falls on his knees, exhausted.
Win by Shun Goku Satsu -> Ryu has his back turned, breathing heavily, saying "Ware, Kobushi
kiwame tari..." ("I mastered my fist...") while the Metsu kanji is displayed in the background.

Master mode has all of the above.



===============<Move Name Translations>===============

- Credit goes to Chris McDonald

Seoi Nage:                         Over-the-Shoulder Throw
Tomoe Nage:                        Overhead Judo Throw
Sakotsu Wari:                      Collarbone Splitter
Kyuubi Kudaki:                     Solarplexus Smasher
Seichuu Nidan Tsuki:               Mid-Level Two-Part Thrust
Senpuu Kyaku:                      Whirlwind Kick
Tenma Kuujin Kyaku:                Demonic Air Blade Kick

Hadou Ken:                         Surge Fist
Shakunetsu Hadou Ken:              Scorching Heat Surge Fist
Shouryuu Ken:                      Rising Dragon Fist
Tatsumaki Senpuu Kyaku:            Tornado Whirlwind Kick
Kuuchuu Tatsumaki Senpuu Kyaku:    Mid-air Tornado Whirlwind Kick
Joudan Sokutou Geri:               Upward Sword Leg Kick
Ashura Senkuu Zenpou:              (demonic warrior) Forward Air Flash
Ashura Senkuu Kouhou:              (demonic warrior) Backward Air Flash

Shinkuu Hadou Ken:                 Vacuum Surge Fist
Denjin Hadou Ken:                  Electric Blade Surge Fist
Shinkuu Tatsumaki Senpuu Kyaku:    Vacuum Tornado Whirlwind Kick
Nidan Shouryuu Tsuki:              Two-Part Rising Dragon Thrust
Messatsu Gou Shouryuu:             Great Rising Dragon Deadly Attack

Reppuu Jinrai Shou:                Gale Thunderclap Palm

Metsu Hadou Ken:                   Surge Fist of Destruction
Ryuu Koku Hadou Ken:               Dragon Cutting Surge Fist
Shin Shoryuu Ken:                  True Rising Dragon Fist
Metsu Shoryuken:                   Rising Dragon Fist of Destruction
Shun Goku Satsu:                   Imprisoning Death Flash


===============<Special Thanks>===============

- The Dreamslayer, for always helping me when I needed, thanks man =D
- H" and Warusaki3 for their CvS2 effects
- Hoshi, Loverman and The DreamSlayer, for the CvS2 rips
- TMasta, for helping me out with some edits
- Byakko, GCNMario, Reu and The Dreamslayer for some missing CvS voices
- Byakko, for his tips on how to rip from PSX
- Ex Inferis, for teaching me how to rip from Melty Blood
- IxnayDK and Synk for their tips
- The Mugen Fighters Guild people, even being one more Ryu, they supported me :P
- Those who I forgot to mention :P
- You, for downloading my char ;)



===============<Not So Special Thanks>===============

- Everyone that had fun saying "How exciting... yet another Ryu for Mugen..." and is now
reading this (mwhahahahaha >=D)
- Everyone who downloaded this char from a warehouse



===============<Disclaimer>===============

- Ryu, Evil Ryu, Capcom Fighting Evolution, Capcom vs Snk and Street Fighter are property
of Capcom
- No part of this char can be used for any commercial purposes


.If you find any bugs or would like to make any suggestion/comment, feel free to contact me.