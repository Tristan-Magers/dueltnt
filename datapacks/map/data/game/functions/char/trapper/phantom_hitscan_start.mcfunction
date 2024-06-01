#
scoreboard players set @s TBtimer 1150

scoreboard players operation @s TBtimer -= @s trapper_swap_extra

clear @s emerald

#
tag @s remove p_hitscan_check
tag @s remove phantom_blocks
tag @s remove p_hitscan_check_time
scoreboard players set @s t1 0

execute positioned ~ ~1.6 ~ positioned ^ ^ ^2.5 run function game:char/trapper/phantom_hitscan