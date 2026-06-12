execute as @s[scores={Lives=..6}] at @s run function game:player/class_team
execute as @s[scores={Lives=..6}] at @s run tellraw @a [{"selector":"@s"},{"text":" gained an ","color":"gray","bold":false},{"text":"Extra Life","color":"green","bold":true}]
scoreboard players add @s[scores={Lives=..6}] Lives 1
execute as @s[scores={Lives=..7}] at @s run function game:ui/name_markers

scoreboard players set @s harvest 0
scoreboard players set @s harvest_time 0
scoreboard players add @s harvest_level 1

playsound minecraft:entity.zombie_nautilus.death master @a ~ ~ ~ 1 2
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.4 2
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5
particle minecraft:totem_of_undying ~ ~2 ~ 0.5 0.5 0.5 0.8 10