SAISYU KUSANAGI
from The King of Fighters '98 for Neo*Geo
converted to MUGEN by Deuce
deuce@classicgaming.com
http://come.to/deucemugen

Public Release:  Wednesday, July 26th, 2000

****** FOR USE WITH MUGEN 2000.06.27 ONLY ******

--------------------------------------------------------------------

                          DISCLAIMER
All images and sounds are the sole copyright of SNK.  All layout,
documentation, and programming (except where otherwise noted) is
copyright 2000 Deuce.  No portion of this archive is to be in any
way modified or redistributed without the express permission of the
author.

In other words, don't copy this and say you made it, or any part of
it.  Because unless I explicitly state so in the credits section,
you did not.  If you don't think plagiarism is illegal, I suggest
you do a little bit of research. :P
--------------------------------------------------------------------

What's In:
All normal moves
All special moves
All poses/taunts/etc.
KOF99-style forward roll, with dodge attack
KOF-style recovery roll
CD counter/guard cancel rolls
Fully functioning KOF97/98 Advanced Mode
Two "new" moves

What's Left:
Extra Mode hop forward and charge up.  These are not in, and will
  NEVER be in.  So don't ask.

Known Bugs:
Nothing yet.

--------------------------------------------------------------------
                       SOME INFO FOR YOU

I've been receiving some feedback of late, complaining that my KOF
conversions play "too much like KOF."  Um, what are they supposed to
play like?  Street Fighter?  I don't @#$%ing think so.  I hate
Street Fighter with a passion, and will never do any characters from
the series.  The last thing I intend to do is convert chars from a
series I *do* like to conform the gameplay specs of a series I
don't.  Personally, I see no flaw in this policy.

It's a simple point of fact.  I make my characters the way I want
them, so that I can enjoy them in MUGEN.  If other people like them,
then so far, so hoopy.  If not, then don't download them.  It
doesn't really matter to me.  But DON'T gripe to me because they
don't fit in with how YOU think KOF characters should play.  I don't
care if you don't like KOF's gameplay.  I do, and that's how I make
my conversions.  That's how I will continue to make my conversions.
How would you like someone pestering people to convert Capcom chars
to KOF play mechanics?  Didn't think so.

If this perceived rant does not apply to you, then no big deal.  If
it does, then take heed.  I'm not making these characters for your
sake.  With all that said, enjoy.

--------------------------------------------------------------------
                       MISCELLANEOUS NOTES

1. If you don't like the button layout (freak;P), then edit the DEF
   file and set it to use "saisyu-capcommie.cmd" for the button
   layout instead.

2. Saisyu is compatible with TESTP's Blue Mary.  In order to fix
   your copy of Blue Mary to call up Saisyu's special animations,
   copy and paste the following code into [Statedef 1230]:

     [State 1230, 2C] ; Saisyu Kusanagi (by Deuce)
     type = ChangeAnim
     Triggerall = Time = 0
     Trigger1 = P1Name = "Saisyu Kusanagi"
     value = 4090

   And the following into [Statedef 1630]:

     [State 1630, 2C] ; Saisyu Kusanagi (by Deuce)
     type = ChangeAnim
     Triggerall = Time = 0
     Trigger1 = P1Name = "Saisyu Kusanagi"
     value = 4095

   And voila.  He's set to go.

--------------------------------------------------------------------
                        Character Profile
Name:                Saisyu Kusanagi
Birthplace:          Japan
Birthdate:           November 27, 1947
Height:              5'8"
Weight:              150 lbs
Blood type:          B
Hobbies:             Fishing
Favorite food:       Curry/Udon noodles, strawberry charlotte
Favorite sport:      Golf
Most valued things:  Pride as head clansman, Shizuka (his wife)
Hates:               High places
Fighting style:      Kusanagi style Ancient Martial Arts


--------------------------------------------------------------------
                           Move List

Legend:
WP  = Weak Punch            SP  = Strong Punch
WK  = Weak Kick             SK  = Strong Kick
qcf = down, down-forward, forward
qcb = down, down-back, back
dp  = forward, down, down-forward
hcb = forward, down-forward, down, down-back, back
f   = forward
b   = back
x2  = Perform stated motion twice

****** Throws ******
Hikari Tsuchi                     when close, forward + SP
Issetsu Seoi Nage                 when close, forward + SK

****** Command Normals ******
Ge Shiki Gou Tsuchi               forward + WP (chainable)
Ge Shiki Atama Tsui               forward + WK

****** Movement Options ******
Slide Forward                     WP + WK
  Dodge Attack                    WP or WK during slide
Roll Backward                     back + WP + WK
Recovery Roll                     WP + WK when near the ground
                                    during a fall

****** Miscellaneous (requires 1 level of super) ******
POW Explode (enables SDMs)        WP + WK + SP
CD Counter                        while guarding, SP + SK
Guard Cancel Roll                 while guarding, WP + WK
Guard Cancel Backward Roll        while guarding, back + WP + WK

****** Special Moves ******
108 Shiki: YamiBarai              qcf + WP
888 Shiki: YamiBarai Kairyouban   qcf + SP
712 Shiki: EnJuu                  qcb + punch (perform twice)
100 Shiki: Oniyaki                dp + punch
110 Shiki: Nata Guruma            dp + kick
427 Shiki: Shin Ken               hcb + WK
834 Shiki: Kaen Shingeki          hcb + SK

****** Desperation Moves ******
Ura 108 Shiki: Orochi Nagi        qcb,hcf + punch (hold to delay)
1127 Shiki: Miyako Bougai         qcfx2 + punch

When performed while in MAX state, these become Super Desperation
Moves and are considerably more powerful.

--------------------------------------------------------------------
THANKS TO:
  First and foremost, Chris Cruz, for his creative input, and for
    always being a better friend than I could ever dream of asking.
    This one goes out especially to you.
  Shadow Watcher, as always, for tons of creative input and beta
    testing.
  KGenjuro, for his extremely useful help for getting the MAX timer
    bar to look right.
  Kyo Kusanagi, For being a ruthless critic and helping me to get
    the OniYaki to look/feel right.