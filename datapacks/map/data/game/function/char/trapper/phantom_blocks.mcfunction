tag @s add phantom_blocks

#clone ~-1.5 ~-1.5 ~98.5 ~1.5 ~1.5 ~101.5 ~-1.5 ~-1.5 ~-1.5

particle minecraft:dolphin ~ ~1 ~ 1.5 1.5 1.5 0.25 30 force @s
particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0 20 force @s
particle minecraft:sweep_attack ~ ~1 ~ 1.5 1.5 1.5 0 40 force @s

tag @e[tag=phantom_block] add old_spawn

scoreboard players set @s block_count 0

execute positioned ~1.5 ~1.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~1.5 ~1.5 ~-0.5 run function game:char/trapper/phantom_block_check

execute positioned ~1.5 ~0.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~1.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~1.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~1.5 ~0.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~1.5 ~-0.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~1.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~1.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~1.5 ~-0.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~1.5 ~-1.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~1.5 ~-1.5 ~-0.5 run function game:char/trapper/phantom_block_check

execute positioned ~0.5 ~1.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~1.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~1.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~1.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~0.5 ~0.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~0.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~0.5 ~-0.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~-0.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~0.5 ~-1.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~-1.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~-1.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~0.5 ~-1.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~-1.5 ~1.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-1.5 ~1.5 ~-0.5 run function game:char/trapper/phantom_block_check

execute positioned ~-1.5 ~0.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~-1.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-1.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-1.5 ~0.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~-1.5 ~-0.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~-1.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-1.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-1.5 ~-0.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~-1.5 ~-1.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-1.5 ~-1.5 ~-0.5 run function game:char/trapper/phantom_block_check

execute positioned ~-0.5 ~1.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~1.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~1.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~1.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~-0.5 ~0.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~0.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~-0.5 ~-0.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~-0.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute positioned ~-0.5 ~-1.5 ~1.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~-1.5 ~0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~-1.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute positioned ~-0.5 ~-1.5 ~-1.5 run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~ ~ ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~ ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~2.5 ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~-2.5 ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~ ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~ ~ run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~0.5 ~ ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~ ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~2.5 ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~-2.5 ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~0.5 ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~0.5 ~ run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~-0.5 ~ ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~ ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~2.5 ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~-2.5 ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~-0.5 ~ run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~-0.5 ~ run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~ ~0.5 ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~0.5 ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~2.5 ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~-2.5 ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~ ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~ ~0.5 run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~ ~-0.5 ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~-0.5 ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~2.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~ ~-2.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~ ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~ ~-0.5 run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~-1.5 ~-1.5 ~1.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-1.5 ~-1.5 ~-1.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-1.5 ~1.5 ~-1.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-1.5 ~1.5 ~1.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~1.5 ~-1.5 ~-1.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~1.5 ~-1.5 ~1.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~1.5 ~1.5 ~-1.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~1.5 ~1.5 ~1.5 run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~0.5 ~0.5 ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~0.5 ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~2.5 ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~-2.5 ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~0.5 ~0.5 run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~-0.5 ~-0.5 ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~-0.5 ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~2.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~-2.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~-0.5 ~-0.5 run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~0.5 ~-0.5 ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~-0.5 ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~2.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~0.5 ~-2.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~0.5 ~-0.5 run function game:char/trapper/phantom_block_check

execute as @s[scores={block_count=..34}] positioned ~-0.5 ~0.5 ~2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~0.5 ~-2.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~2.5 ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-0.5 ~-2.5 ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~2.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check
execute as @s[scores={block_count=..34}] positioned ~-2.5 ~-0.5 ~0.5 run function game:char/trapper/phantom_block_check

execute at @s run tag @e[tag=phantom_block,tag=!old_spawn,limit=10,sort=nearest] add close_shoot
execute as @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot] at @s positioned ~ ~1 ~ if entity @e[tag=phantom_block,distance=..0.5] run tag @s remove close_shoot
execute as @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot] at @s if block ~1 ~ ~ #game:bolt_place if block ~-1 ~ ~ #game:bolt_place if block ~ ~ ~1 #game:bolt_place if block ~ ~ ~-1 #game:bolt_place run tag @s remove close_shoot

execute at @s run tag @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot,limit=1,sort=random] add close_shoot_2
execute as @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot_2] at @s run tag @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot,tag=!close_shoot_2,limit=3,sort=nearest] add close_shoot_2

execute as @s[scores={block_count=8..}] as @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot_2,limit=1,sort=nearest] at @s run function game:char/trapper/phantom_block_undo
execute as @s[scores={block_count=8..}] as @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot_2,limit=1,sort=nearest] at @s run function game:char/trapper/phantom_block_undo
execute as @s[scores={block_count=8..}] as @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot_2,limit=1,sort=nearest] at @s run function game:char/trapper/phantom_block_undo
execute as @s[scores={block_count=8..}] as @e[tag=phantom_block,tag=!old_spawn,tag=close_shoot_2,limit=1,sort=nearest] at @s run function game:char/trapper/phantom_block_undo