RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name Lug Orc/Troll Launch
#version 1
#group F R E S H
#defaultfor Orc/Troll
#next 1-10 Durotar
step << !Orc !Troll
    #sticky
    #completewith next
.goto Durotar,43.3,68.5
    +You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in
step
    .xp 5 >> Grind to level 5, and 2s 90c
step
    #completewith next
    .goto Durotar,44.7,52.5,15
    +Perform a Logout skip to Razor Hill from top corner of rock pointing at the water.
    step
.goto Durotar,51.1,42.6
    .vendor >>Vendor trash
step
    .goto Durotar,50.2,43.1,15 >>Go up this path here
step
    >>Go up the tower
.goto Durotar,49.9,40.3
    .accept 791 >>Accept Carry Your Weight
step << Warrior/Rogue/Paladin
    .goto Durotar,51.8,40.9
    .train 2580 >> Train Mining.
    .cast 2580 >>Cast “Find Minerals” in your spellbook
step << Warrior/Rogue/Paladin
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >> Buy a Mining Pick.
step << Warrior/Rogue/Paladin
    .goto Durotar,52.0,40.7
    .train 2018 >> Train Blacksmithing.
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    .home >> Set your Hearthstone to Razor Hill
step << Warrior
    .goto Durotar,54.2,42.5
    .train 772 >>Train Rend
    .train 100 >>Train Charge
step
    .goto Durotar,58.0,54.0,15
    >>Kill Kul Tiras mobs. Loot them for Scraps
    .complete 791,1 --Canvas Scraps (8)
step
    .xp 5+1862 >> Grind to 1862+/2800xp, 1s 90c would be ideal
step
    #completewith next
    .goto Durotar,49.9,40.3
    .hs >> Hearth back to Razor Hill
step
    .goto Durotar,49.9,40.3
    .turnin 791 >>Turn in Carry Your Weight
step
    .goto Durotar,51.1,42.4
    .accept 815 >>Accept Break a Few Eggs
step
    .goto Durotar,51.9,43.5
    .accept 837 >>Accept Encroachment
step << Warrior
    .goto Durotar,54.2,42.5
    .train 6343 >>Train Thunder Clap
    .train 34428 >>Train Victory Rush
step
    .goto Durotar,52.1,68.3,15
    >>Grind and look for Copper Veins on the way
    >>Move onto step 42 of the 1-10 Durotar guide
    .accept 2161 >>Accept A Peon's Burden
]])
