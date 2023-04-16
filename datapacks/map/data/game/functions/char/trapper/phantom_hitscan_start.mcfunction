#
scoreboard players set @s TBtimer 1110

clear @s emerald

#
tag @s remove p_hitscan_check
tag @s remove phantom_blocks
tag @s remove p_hitscan_check_time
scoreboard players set @s t1 0

execute positioned ~ ~1.6 ~ positioned ^ ^ ^2.2 run function game:char/trapper/phantom_hitscan