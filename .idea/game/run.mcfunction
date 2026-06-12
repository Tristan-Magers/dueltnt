scoreboard players add ArenaCheck game 1
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=5..20}] run scoreboard players set CurrentRound game 0
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=5..20}] run time set 23700

execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=25}] run scoreboard players set .silent .part_unlock 1
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=25}] run function game:menu/particle_book

execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=50}] run bossbar set minecraft:time visible false
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=50}] run title @a[gamemode=spectator] title {"text":""}

#execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=120}] if entity @e[tag=tell,nbt={CustomNameVisible:1}] run say test repair
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=50..}] if score .menu_vis .data matches 0 run function game:menu/setenable
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=0..1}] run function game:menu/setdisable
