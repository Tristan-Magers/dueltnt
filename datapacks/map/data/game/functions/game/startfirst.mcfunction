#
gamemode adventure @a[scores={ingame=1}]
scoreboard objectives remove p
scoreboard objectives add p dummy {"text":"Points","color":"yellow","bold":true}

#
scoreboard players set RoundAnnounce game 1

#
scoreboard players operation @e[name=Map,type=armor_stand] RoundSetting = RoundSetting game
execute if entity @e[name=Map,type=armor_stand,scores={RoundSetting=0..9}] run scoreboard players operation StartMap game = Map game
execute if entity @e[name=Map,type=armor_stand,scores={RoundSetting=0..9}] run scoreboard players operation CurrentRound game = Round game
execute if entity @e[name=Map,type=armor_stand,scores={RoundSetting=0..9}] run function game:game/start

setblock 490 17 495 air
scoreboard players set ArenaCheck game -40