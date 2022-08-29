RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name Lug Paladin Launch
#version 1
#group F R E S H
#defaultfor BloodElf
#next 6-10 Eversong Woods
step << !BloodElf
    #sticky
    #completewith next
.goto Eversong Woods,38.2,20.8
    +You have selected a guide meant for Blood Elves. I DO NOT recommend doing the 1-6 zone due to there being no quests for non-Blood Elves. You should choose the same starter zone that you start in
step << !Paladin
    #sticky
    #completewith next
.goto Eversong Woods,38.2,20.8
    +You have selected a guide meant for Paladins. Choose a different guide.
step
    .goto Eversong Woods,39.3,22.1
    .xp 2 >> Grind on Springpaw to level 2
step << Paladin/Rogue
    .goto Eversong Woods,38.7,20.3
    .vendor >>Go inside, vendor trash
step << Paladin
    .goto Eversong Woods,39.5,20.6
    .train 465 >> Train Devotion Aura
step
    .goto Eversong Woods,38.8,19.4
    >>Go upstairs
    .accept 8330 >> Accept Solanian's Belongings
    .accept 8345 >> Accept The Shrine of Dath'Remar
step
    >>Loot the Journal on the floor
    .goto Eversong Woods,37.7,24.9
    .complete 8330,3 --Collect Solanian's Journal (x1)
step
    >>Loot the Red Orb
    .goto Eversong Woods,35.1,28.9
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step
    >>Kill Tenders on the way, esp. level 2s
    >>Loot the Scroll on the floor
    .goto Eversong Woods,31.3,22.7
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    >>Kill Tenders on the way, esp. level 2s
    >>Read the plaque on the wall.
    .goto Eversong Woods,29.6,19.4
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step
    .xp 3+320 >> Grind to 320 / 1400
step
    #label sliverhs << wotlk
    #completewith next
    .goto Eversong Woods,38.7,20.3
    .hs >> Hearth to Sunstrider Isle
step << Paladin/Rogue
    .goto Eversong Woods,38.7,20.3
    .vendor >>Go inside, vendor trash
step
    >>Go upstairs in the building
    .goto Eversong Woods,38.7,19.4
    .turnin 8330 >> Turn in Solanian's Belongings
    .turnin 8345 >> Turn in The Shrine of Dath'Remar
step << Paladin
    .goto Eversong Woods,39.5,20.6
    .train 20271 >>Train Judgement
    .train 19740 >>Train Blessing of Might
step
    .goto Eversong Woods,40.4,32.2
    .accept 9704 >> Accept Slain by the Wretched
step
    .goto Eversong Woods,42.0,35.7
    .turnin 9704 >> Turn in Slain by the Wretched
    .accept 9705 >> Accept Package Recovery
step
    .goto Eversong Woods,40.4,32.2
    .turnin 9705 >> Turn in Package Recovery
    .accept 8350 >> Accept Completing the Delivery
step
    .goto Eversong Woods,47.3,46.3,30 >> Run to Falconwing Square
step
    >> Talk to Magister Jaronis
    .goto Eversong Woods,47.3,46.3
    .accept 8472 >> Accept Major Malfunction
step
    .goto Eversong Woods,47.7,47.2,20 >>Go in the inn
step << BloodElf
    >> Talk to Innkeeper Delaniel
    .goto Eversong Woods,48.2,47.7
    .turnin 8350 >> Turn in Completing the Delivery
    .home >> Set your Hearthstone to Falconwing Square
step
    #completewith next
    .goto Eversong Woods,47.7,47.2,10 >>Go outside
step
    >> Talk to the Wanted Poster
    .goto Eversong Woods,48.1,46.2
    .accept 8463 >> Accept Unstable Mana Crystals
step
    >>Loot Arcane Cores from the Arcane Patrollers. Loot the Unstable Mana Crystals from boxes on the ground in the area
    .goto Eversong Woods,46.8,41.1,40,0
    .goto Eversong Woods,46.7,34.9,40,0
    .goto Eversong Woods,40.6,37.9,40,0
    .goto Eversong Woods,44.4,45.8,40,0
    .goto Eversong Woods,46.8,39.5
    .complete 8472,1 --Collect Arcane Core (x6)
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
step
    .xp 5+1450 >> Grind to 1450+/2800xp
step
    .goto Eversong Woods,47.3,46.3
    >> Talk to Maigster Jaronis
    .turnin 8472 >> Turn in Major Malfunction
    .accept 8895 >> Accept Delivery to the North Sanctum
step
    .goto Eversong Woods,48.2,46.0
    >> Talk to Aeldon Sunbrand
    .turnin 8463 >> Turn in Unstable Mana Crystals
step << Paladin
    >> Go inside
    .goto Eversong Woods,48.4,46.5
    .train 639 >>Train Holy Light r2
step << Warrior/Paladin
    .goto Eversong Woods,48.5,45.9
    .money <0.0509
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step
    >> Leave Falconwing Square and talk to Ley-Keeper Caidanis
    .goto Eversong Woods,44.6,53.1
    >>Move onto step 17 of the 6-10 Eversong Woods guide
]])
