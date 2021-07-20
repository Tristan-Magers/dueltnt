#
gamerule mobGriefing true
scoreboard players set @a XPReset 0
title @a actionbar {"text":""}

#
scoreboard players operation @e[name=Map,type=armor_stand] Map = Map game
scoreboard players operation @e[name=Map,type=armor_stand] RoundSetting = RoundSetting game
execute if entity @e[name=Map,type=armor_stand,scores={Map=0}] run scoreboard players operation StartMap game = @e[sort=random,limit=1,type=armor_stand,distance=..10,scores={randomizer=1..}] randomizer
execute if entity @e[name=Map,type=armor_stand,scores={RoundSetting=1}] run scoreboard players set StartMap game 99
execute if entity @e[name=Map,type=armor_stand,scores={RoundSetting=1}] run scoreboard players operation StartMap game = @e[sort=random,limit=1,type=armor_stand,distance=..10,scores={randomizer=1..,CustomRandom=1..}] randomizer
scoreboard players operation @e[name=Map,type=armor_stand] game = StartMap game
scoreboard players remove CurrentRound game 1
scoreboard players operation @e[name=Map,type=armor_stand] CurrentRound = CurrentRound game

#
scoreboard players set start blockreset 80
#gamemode adventure @a[scores={ingame=1}]
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=..0}] run tp @a[x=620,y=20,z=620,distance=..100,scores={ingame=1..}] 500 20 500
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=..0}] run scoreboard players set @a PlaceMine 0
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=1..}] run effect give @a[scores={ingame=1..}] blindness 6 4 true
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=1..}] run tp @a[scores={ingame=1..}] 600 60 600
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=1..}] run scoreboard players set @e[name=Map,type=armor_stand] countdown 76
scoreboard players set @a Y 45
scoreboard players reset @a l