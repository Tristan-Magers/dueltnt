tag @s add phantom_blocks

#clone ~-1.5 ~-1.5 ~98.5 ~1.5 ~1.5 ~101.5 ~-1.5 ~-1.5 ~-1.5

particle minecraft:dolphin ~ ~1 ~ 1.5 1.5 1.5 0.25 30 force @s
particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0 20 force @s
particle minecraft:sweep_attack ~ ~1 ~ 1.5 1.5 1.5 0 40 force @s

#execute positioned ~1.5 ~1.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~1.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~1.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
#execute positioned ~1.5 ~1.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~1.5 ~0.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~0.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~1.5 ~-0.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~-0.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

#execute positioned ~1.5 ~-1.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~-1.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~1.5 ~-1.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
#execute positioned ~1.5 ~-1.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~0.5 ~1.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~1.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~1.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~1.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~0.5 ~0.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~0.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~0.5 ~-0.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~-0.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~0.5 ~-1.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~-1.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~-1.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~0.5 ~-1.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

#execute positioned ~-1.5 ~1.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~1.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~1.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
#execute positioned ~-1.5 ~1.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~-1.5 ~0.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~0.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~-1.5 ~-0.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~-0.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

#execute positioned ~-1.5 ~-1.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~-1.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-1.5 ~-1.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
#execute positioned ~-1.5 ~-1.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~-0.5 ~1.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~1.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~1.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~1.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~-0.5 ~0.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~0.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~-0.5 ~-0.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~-0.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile

execute positioned ~-0.5 ~-1.5 ~1.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~-1.5 ~0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~-1.5 ~-0.5 run function game:char/trapper/phantom_block_check_tile
execute positioned ~-0.5 ~-1.5 ~-1.5 run function game:char/trapper/phantom_block_check_tile