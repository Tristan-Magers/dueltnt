scoreboard players add ArenaCheck game 1
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=5..20}] run scoreboard players set CurrentRound game 0
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=5..20}] run time set 23600

execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=50}] run title @a[gamemode=spectator] title {"text":""}