DC Comics' Lobo
Version: DCvM Beta 3 release (March 2006)

Created by Buyog2099 ( buyog2099@yahoo.com )
for the MUGEN DC vs Marvel project
-----------------------------------------------------------------------

CHARACTER PROFILE:
(Adapted from the profile at http://www.heroicimages.com)
As a child, Lobo unleashed genocide upon his home planet Czarnia.
Then, as the last Czarnian, bounty hunting and contract killing
seemed perfectly natural to the Main Man--who could track his quarries
across open space with the keenest predatory senses and an unquenchable
thirst for mayhem. Four hundred years later and very little has changed...

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Things that will tick me off related to the use of this character:
- Don't host it on your site unless you ASK me first, and give me
    proper credit. Email isn't hard, and I'll probably say yes,
    so don't be afraid to ask. =P
- Don't extract the sprites from his SFF and try and pass them off
    as your own. Trust me, you'll be found out, and you'll be branded
    a liar and a charlatan for the rest of your spriting career. IT'S NOT WORTH IT.
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


GAMEPLAY
Lobo's got a 6-button play style:

x - Weak Punch (WP)
y - Medium Punch (MP)
z - Strong Punch (SP)
a - Weak Kick (WK)
b - Medium Kick (MK)
c - Strong Kick (SK)

f,f:    Hop/Dash forward (can also be triggered by pressing all 3 punch buttons at once)
b,b:    Hop backward
d,u:    Super Jump (also triggered by pressing all 3 kick buttons)


NOTE
Lobo was developed almost entirely on WinMUGEN; I have no idea if he'll even work right on DOS MUGEN,
because I don't have a computer that will run it anymore. If it works for you, great; if not, sorry. :(


SPECIALS
Mr. Hook (QCB + P)
  -- Lobo uses his old friend Mr. Hook to get "up close and personal" with his opponent >=)

Frag! (QCF + P) (air version too)
  -- gun blast... WP fires once, MP twice, SP three times. When your ammo is used up (check 
     the display in the bottom corner), hit START to reload.

Rot Gut (D,DB,B + K)
  -- Lobo takes a swig from his bottle of cheap rotgut liquor, gaining a random
     powerup (but watch out! It might sometimes make him sick, and it leaves
     him wide open to attack!)

     Current effects:
     - Life up (random amount, 10-25%) -- briefly flashes green
     - Life down / sick (random amount, again 10-25%) -- briefly flashes red
     - Power up (1 full lifebar / 1000 points) -- briefly flashes blue
     -- (more effect types are planned for future releases)


HYPERS
Main Men (QCB + KK)  -- needs full powerbar
  -- Lobo slashes his wrist to draw some blood, which grows into a couple of Lobo-clones.
     These guys mimic his moves until they run out of energy & die (or get fragged)
Lights Out, Clyde! (QCB + PP)
  -- brutal multi-hit combo with the hook & chain


COMBO SYSTEM
So far I've only implemented the basic Capcom-style "chain" combos
1. WP+MP+SP: you can chain the three punches together, weakest to strongest, for a 3 or 4 hit combo.
2. WK+MK+SK: like the punches, you can chain the three kicks together as well.
3. WP+WK+MP+MK+SP: The basic "zigzag" combo. Chains up to 6 hits.

A few crouching chain combos also exist:
4. WP+MP+SP: you can chain the three punches together, weakest to strongest, for a 3 or 4 hit combo.
5. WK+MK+SK: like the punches, you can chain the three kicks together as well.

He has a launcher: crouching strong punch, when not in a combo... but air combos aren't finished yet.

More to come as I implement additional basic attacks, launchers, etc.



-----------------------------------------------------------------------
VERSION HISTORY:
--------------------
Beta 3 (March 2006):
- revamped Frag special:
  - added ammo counter & reload command (taunt)
  - made the shot count vary with the strength of the punch button used
  - added an air version
- new hyper: Lights Out, Clyde! (some sprites: Magus)
- new sparks throughout
- several minor bugfixes & tweaks

(Public) Beta 2 (June 14, 2005):
- tweaked Mr.Hook & RotGut specials slightly (and added some new sprites & palfx, thanks Loganir!)
- tweaked jump & superjump
- other minor bugfixes
- taunt

(Private) Beta 1 (June 8, 2005):
- 3 specials:
    - Mr. Hook (some sprites: Loganir)
    - Frag!
    - RotGut (sprites: McCready)
- 1 hyper:
    - Main Men
- dizzy
- one intro & winpose (sprites: Loganir)
- losepose (it kinda sucks, though -_-)
- lots of redone sprites, most now with added shinguards & kneepads (some sprites: Magus)
- added several basic attacks:
    - standing throw (fwd+HP near opponent)
    - double-handed uppercut (crouching HP) - this is his launcher
    - re-enabled the headbutt (fwd+MP near opponent)
    - new air MP/HP
    - new air HK
- added voice sounds (a few still need cleanup)

Alpha 3 (1/20/2004):
- Added two crouching punches
- Added sound! (Thanks Erradicator!)
- A few more chain combos (crouching versions of 3P and 3K)
- A few other minor touchups here and there
- intro & win sounds (no anims yet)

Alpha 2 (Early January 2004):
- ALL crouching punches/kicks
- Most jumping attacks
- "Electrocuted" special anim
- Forward & backward dash/hop
- 3P, 3K and zigzag combos
- Basic sounds!

Alpha 1 (December 2003):
- Basic punches/kicks
- Some jumping/crouching attacks
- Superjump


WHAT'S COMING IN THE NEXT RELEASE:
----------------------------------
- His "real" walk animation (the one that's in there now is pretty much a placeholder)
- Air recover
- more specials:
  - Man's Best Mutt -- striker attack, Lobo's pet/friend Mutt
  - Fraggaboom! -- grenade attack
- more hypers:
  - Main Man Airlines -- 'Bo hops on his bike and charges at the user, doing massive chip damage (think Megaman's Rush Drill)
  - Amalgam hyper (for DC vs Marvel version)




-----------------------------------------------------------------------
CREDITS

I couldn't have come this far without help and encouragement from a LOT of people.
Here are some of the ones that have really gone out of their way to help me out...
if I've missed you, I'm sorry! Let me know and I'll credit you in the next release.

- DG & McCready for letting me use the sparks he put into Guido after I handed him off.
- GokuSSJ4 for his awesome Lobo select/Amalgam portrait... it blew mine away. O_o
- Loganir for the space bike intro, cigar-lighting winpose, and MrHook chain-retraction -- I'm just in awe...
- Magus for helping add kneepads & shinguards to so many of the sprites
- McCready for the awesome Howard & Lobo the Duck portraits for the Amalgam
    attack, for early design help, the hook & chain sprites, RotGut anim,
    the sweet hyper portrait, and probably other stuff I can't remember. MEGA thanks, man! =)
- The folks on the DC vs Marvel, Warmachine Madness, & ScrollBoss/Prime Central Station forums for
    feedback and support... I wouldn't have gotten this far on Lobo without you!
- The entire DC vs Marvel team... a more talented, helpful group of people
    I've never before seen online. :)
- Keith Giffen and DC comics for creating the Main Man in the first place.
- and YOU! For playing. =)

LINKAGE
Buyog's email:            buyog2099@yahoo.com
Buyog's webspace:         http://www.buyog.com/MUGEN
DCvsMarvel webspace:      http://dcvsmarvel.asteroidm.com
Warmachine Madness forum: http://s10.invisionfree.com/Warmachine_Madness
Prime Central Station:    http://s4.invisionfree.com/PrimeCentralStation
