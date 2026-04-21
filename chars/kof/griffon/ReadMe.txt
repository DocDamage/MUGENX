**********************************************************************

 The Griffon Mask For M.U.G.E.N. (From Garou MOTW)

                           Ver. Final (150% Complete !!)  2000/Jul./22
                                                  by M.M.R.
**********************************************************************

 Sorry, I'm not good at English so, it is poor at English.(^_^;)

======================================================================
 !!!  Caution  !!!
 These files are patch files for Mugen Ver.0627 only !
 So you can't use it for Mugen Ver.0101.
 Please caution !!!
======================================================================

 o Great thanks for convert program made by "MHz".
 o Great thanks "erika" for many advices to convert.

+++++++++++++++++++++++
 BugFix (Final !)
+++++++++++++++++++++++
 / I removed a bug that Marco freezed when he was thrown or caught his
  attacks.
 / In the case, The Griffon's opponent or partner is Marco, you can't 
  use the striker's(Marco's) attacks. If you want to use striker(Marco)
  always, please change Griffon.def file like below.

  ;cmd     = Griffon_a.cmd    ;Commands (When VS Marco, no striker)
  cmd     = Griffon_b.cmd    ;Commands (With Marco always)
  ;cns     = Griffon_a.cns    ;Constants (When VS Marco, no striker) 
  cns     = Griffon_b.cns    ;Constants (With Marco always)
  ;st      = Griffon_a.cns    ;States (When VS Marco, no striker)
  st      = Griffon_b.cns    ;States (With Marco always)


+++++++++++++++++++++++
 BugFix + a (Final ?)
+++++++++++++++++++++++
 / I remove some bugs in Tag Mode. But it isn't perfect. These are
   Mugen's Bugs (?), I think.
 / It is possible that you can choose a kind of Top Mode.
   Top A ... Life = (1000,1500]
   Top B ... Life = (500,1000]
   Top C ... Life = (0,500]
   < How to choose a kind of Top Mode>
    Top A ... CharacterColor 1 & 4 & 7 & 10
    Top B ... CharacterColor 2 & 5 & 8 & 11
    Top C ... CharacterColor 3 & 6 & 9 & 12
    The pallete ording is ,
    X  Y  Z
    1  2  3
    4  5  6
    A  B  C
    Holding start while selecting will add 6 to the palette number.


+++++++++++
 First
+++++++++++
 This character is "The Griffon Mask" for M.U.G.E.N. 2K.
 His original game is "Garou -Mark Of the Wolves" by SNK.

+++++++++++++++
 Installation
+++++++++++++++
 DownLoad 2 files named "Griffon1.zip" & "Griffon2.zip".
 The "Griffon1.zip" contains 21 files shown below.
  Griffon.air		Griffon7.act
  Griffon.cmd		Griffon8.act
  Griffon.cns		Griffon9.act
  Griffon.def		Griffon10.act
  Griffon.sff		Griffon11.act
  Griffon1.act		Griffon12.act
  Griffon2.act		Griffon13.act
  Griffon3.act		ReadMe_J.txt (In Japanese)
  Griffon4.act		ReadMe.txt (In English, this file)
  Griffon5.act		Skill.zip (Containes commands)
  Griffon6.act
 And the "Griffon2.zip" contains 1 file shown below.
  Griffon.snd

 Unzip 2 files then, put these files into 1 folder named "Griffon".
 Then Put "Griffon" folder into your Mugen "charas" folder.

 Ex.)
   muk00101-----charas
              :    |____Griffon
              :    :       |____Griffon.air
              :    :       :
              :    :       :
              :    :       :

 Add this line in your "select.cfg" in "data" folder.

 Griffon, stages/******.def

 Replace ****** with your favorite background name.

 Ok, run your Mugen then the Griffon's face is added your character
 select screen. Let's enjoy !!!


++++++++++++++++
 Commands
++++++++++++++++
 Unzip "Skill.zip".
 Please show "Skill_E.htm" in the "Skill" folder.
 Button layout is below...

  X Y Z
 (l ; :) : Deffault Keys
  A B C
 (, . /) : Deffault Keys


++++++++++++++
 Version ?
++++++++++++++
 This version is final version.
 But I'll do Bug Fix , don't worry. If you find bugs , please report me.

++++++++++++++
 Caution !
++++++++++++++
 Please do not link directly to the files on our site &
 Please do not upload the files on our site, Thank you.

++++++++++++++++++
 Special Thanx
++++++++++++++++++
 o NeoGouki's "Rock Howard". His CNS file is a good reference for me.
   Specially T.O.P. mode & JustDefend.
 o Many creaters' character helped me in my work. Thanx.
 o Thank Elecbyte for making the great 2D Game Engine "M.U.G.E.N.".
 o Thank SNK for making the great 2D Game "Garou -Mark Of the Wolves".
 o Thank many people who report me bugs.


++++++++++++++++++
 WebSite & E-Mail
++++++++++++++++++
 WebSite:  http://www12.freeweb.ne.jp/play/kpm/index.htm
           * This site is Link Free. The place of link is above address.
 E-Mail ;  m.m.r@anet.ne.jp


