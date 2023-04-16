scoreboard players add @s t1 1

particle minecraft:ash ~ ~ ~ 0 0 0 0 1 force @s

execute unless block ~ ~ ~100 air if block ~ ~ ~ air run tag @s add p_hitscan_check
tag @s[scores={t1=160..}] add p_hitscan_check
tag @s[scores={t1=160..}] add p_hitscan_check_time

execute as @s[tag=!p_hitscan_check] positioned ^ ^ ^0.1 run function game:char/trapper/phantom_hitscan
execute as @s[x_rotation=0..90,tag=p_hitscan_check,tag=!phantom_blocks,tag=!p_hitscan_check_time] positioned ~ ~-2 ~ run function game:char/trapper/phantom_blocks
execute as @s[x_rotation=-90..-0.001,tag=p_hitscan_check,tag=!phantom_blocks,tag=!p_hitscan_check_time] positioned ~ ~1 ~ run function game:char/trapper/phantom_blocks
execute as @s[tag=p_hitscan_check,tag=!phantom_blocks,tag=p_hitscan_check_time] run function game:char/trapper/phantom_blocks