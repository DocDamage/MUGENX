progress:
7/13/05 - added anim for taunt #1 (taunt 2 was already done); tweaked jump; added CLSNs for many frames


Recent observations from Chankast:
- Ricochet (both versions) goes the same distance, regardless of how far you are from the back of the screen when you start it.
    - weak can miss the opponent if they're too far back
    - hard can miss if they're too close
    - 1st two hits are High anims; 3rd is a knock-down anim (e.g. animtype Back) 
- standing hard punch knocks p2 off their feet briefly (slight DiagUp in the hitdef)
- bonerang hard version rotates the projectile sprites, just like ricochet fierce =P
- Towering Spine does 5 hits
 


                                                Marrow
                                        From Marvel vs Capcom 2
                      by XPachin (ripping) and Buyog2099 (cleaning & programming)

Original screens capped from by XPachin from the Dreamcast emulator, Chankast (www.chanka.org)
Some sprites provided freeware by Kung Fu Man

---------------------------------------------------------------------------
(from http://www.geocities.com/liquidfists/mvsc2/faqs/mvc2.txt)
    Moves:
       Bonerang: QCF + P (air)
       Towering Spine: DP + P
       Ricochet Slash: QCB + K
       Ride & Slash: HCB+P (air)
    Supers:
       Stinger Bones: QCF + PP
       Bone Buster: QCB + PP (air)
    Assists:
       A-Projectile Type: Bonerang / Bone Buster
       B-Anti-Air Type: Towering Spine / Bone Buster
       C-Expansion Type: Ricochet Slash / Stinger Bones
    Launcher: C.Fierce
    Snapback: S.Fierce
    Ground Chain: Hunter
    Air Chain:
    Super Jump Chain: Hunter
    Colors:
       Jab: Green    Fierce: Lavender        A1: Grey
       Short: Blue   Roundhouse: Lt. Green   A2: Purple

 A pixie character. Has a double jump. Her Boneerang stays in place for a 
bit and allows her to zone.
---------------------------------------------------------------------------

What's in:
* standing movements
* standing attacks
* crouching attacks
* air attacks
* vertical/forward/backward jumps
* ground bonerang (recode projectile as a helper, tweak its movement, and different versions depending on which punch button is used)
* 2 taunts
* 2 winposes
* KO
* intro (mostly)
* forward/backward dashes
* basic air combos
* lose by timeover
* wall cling/jump
* crouching guard
* crouching turn
* stinger bones (intro only)
* ride & slash (intro only)
* ricochet slash (needs hit anim, crumbling bone sparks, and programming tweaks: what does she do when close to the back edge?)
* being thrown sprites
* grab/throw (3/26/2005)


What's cleaned, but not yet programmed:
* crouching attacks need hitdef tweaks (sparks/damage)
* need to fix Towering Spine programming (should knock opponent into the air & do up to 5 hits)
* intro - manhole cover needs to bounce, roll, & fade away
* falling (requireds)


What's ripped, just needs cleaning & programming:
* the rest of the required/gethit stuff
* air recovery
* air bonerang
* ride & slash special
* bone buster hyper (ground & air versions)
* stinger bones hyper

What's left to rip/clean:
* sparks:
  - superjump
  - dash
  - hyper
  - basic hits
  - movement spark for hyper startup
  
* Announcer comments:
  - YES (3 hit)
  - GOOD (4 hit)
  - VERY GOOD
  - GREAT (5 hit?)
  - FANTASTIC
  - MONSTER
  - (any others?)

* Bugs in the current programming:
  - bonerang doesn't move right, and it doesn't do any damage
  - stinger bones doesn't do any damage (because the bones aren't in yet!)
  - air bonerang isn't working right at all
  - ride and slash: she can jump onto the opponent, but can't actually attack them yet (and the opponent doesn't act like they're BEING attacked! =P)
  - Bone Buster is completely screwed up... really jut a stub at the moment.


Later:
* dizzy
* burning
* electrocuted
* assist chars (maybe)


Credits:
NeoGouki for the Team Hyper portrait
