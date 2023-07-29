#
scoreboard players set @a XPReset 0
title @a actionbar {"text":""}

execute if entity @a[tag=winner,tag=red,scores={teamed=1..}] run tag @a[tag=red,scores={ingame=1..}] add winner
execute if entity @a[tag=winner,tag=blue,scores={teamed=1..}] run tag @a[tag=blue,scores={ingame=1..}] add winner
execute if entity @a[tag=winner,tag=green,scores={teamed=1..}] run tag @a[tag=green,scores={ingame=1..}] add winner

execute if entity @a[tag=winner] run title @a[x=615,y=30,z=615,distance=..90] subtitle [{"selector":"@a[tag=winner]","color":"white"}]

execute if entity @a[tag=winner] run effect give @a[x=615,y=30,z=615,distance=..90] minecraft:blindness 2 0 true
execute if entity @a[tag=winner] run title @a[x=615,y=30,z=615,distance=..90] times 4 16 6
execute if entity @a[tag=winner,tag=red,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"translate":"\u0c0b","font":"title","color":"red"},{"translate":"\u000f","font":"title"}]
execute if entity @a[tag=winner,tag=blue,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"translate":"\u0c0a","font":"title","color":"aqua"},{"translate":"\u000f","font":"title"}]
execute if entity @a[tag=winner,tag=green,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"translate":"\u0c0c","font":"title","color":"green"},{"translate":"\u000f","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0}] run title @a[x=615,y=30,z=615,distance=..90] title [{"selector":"@a[tag=winner]","color":"white"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=1}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c00","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=0}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c01","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=2}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c02","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=3}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c03","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=4}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c04","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=5}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c05","font":"title"},{"translate":"\u000e","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=6}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c06","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=7}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c07","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=8}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c08","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=9}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c09","font":"title"},{"translate":"\u000d","font":"title"}]
execute if entity @a[tag=winner,scores={teamed=..0,class=10}] run title @a[x=615,y=30,z=615,distance=..90] title [{"translate":"\u0c10","font":"title"},{"translate":"\u000d","font":"title"}]

#
scoreboard players operation @e[name=Map,type=armor_stand] Map = Map game
scoreboard players operation @e[name=Map,type=armor_stand] RoundSetting = RoundSetting game
execute if entity @e[name=Map,type=armor_stand,scores={Map=0}] run scoreboard players operation StartMap game = @e[sort=random,limit=1,type=armor_stand,distance=..1000,scores={randomizer=1..}] randomizer
execute if entity @e[name=Map,type=armor_stand,scores={RoundSetting=1}] run scoreboard players set StartMap game 99
execute if entity @e[name=Map,type=armor_stand,scores={RoundSetting=1}] run scoreboard players operation StartMap game = @e[sort=random,limit=1,type=armor_stand,distance=..1000,scores={randomizer=1..,CustomRandom=1..}] randomizer
scoreboard players operation @e[name=Map,type=armor_stand] game = StartMap game
scoreboard players remove CurrentRound game 1
scoreboard players operation @e[name=Map,type=armor_stand] CurrentRound = CurrentRound game

#
scoreboard players set start blockreset 80
gamemode adventure @a[scores={ingame=1}]
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=..0}] run tp @a[x=620,y=20,z=620,distance=..100,scores={ingame=1..}] 500 20 500
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=..0}] run scoreboard players set @a PlaceMine 0
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=1..}] run effect give @a[scores={ingame=1..}] blindness 3 1 true
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=1..}] run effect give @a[scores={ingame=1..}] slow_falling 5 4 true
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=1..}] run tp @a[scores={ingame=1..}] 600 60 600
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=1..}] run scoreboard players set @e[name=Map,type=armor_stand] countdown 76
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=1..}] if entity @a[tag=winner] run scoreboard players set @e[name=Map,type=armor_stand] countdown 96
scoreboard players set @a Y 45
scoreboard players reset @a l

#
tag @a remove winner
