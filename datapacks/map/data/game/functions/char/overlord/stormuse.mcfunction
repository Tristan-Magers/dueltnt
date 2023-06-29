scoreboard players add .object_id .data 1
scoreboard players operation @s object_id = .object_id .data

scoreboard players set @s masterstorm 9
scoreboard players remove @s masterb 8
clear @s gold_ore 8

scoreboard players set @s storm_cooldown 70

execute as @s at @s run function game:char/overlord/masterwanditems
