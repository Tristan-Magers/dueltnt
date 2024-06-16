execute as @s at @s run tp ^ ^ ^.1

execute at @s[scores={t2=1..}] run particle minecraft:electric_spark ~ ~-.1 ~ 0 0 0 0 1 force
execute at @s[scores={t2=0}] run particle minecraft:snowflake ~ ~-.1 ~ 0 0 0 0 1 force

scoreboard players add @s timer 1
scoreboard players add @s t1 1
scoreboard players add @s t2 1

execute as @s at @s positioned ~ ~ ~ run function game:physics/inblock

execute as @s[scores={t1=1..29}] at @s positioned ~0.15 ~0.15 ~0.15 run function game:physics/inblock
execute as @s[tag=in,scores={t1=1..29}] at @s positioned ~0.15 ~0.15 ~-0.15 run function game:physics/inblock
execute as @s[tag=in,scores={t1=1..29}] at @s positioned ~0.15 ~-0.15 ~0.15 run function game:physics/inblock
execute as @s[tag=in,scores={t1=1..29}] at @s positioned ~0.15 ~-0.15 ~-0.15 run function game:physics/inblock
execute as @s[tag=in,scores={t1=1..29}] at @s positioned ~-0.15 ~0.15 ~0.15 run function game:physics/inblock
execute as @s[tag=in,scores={t1=1..29}] at @s positioned ~-0.15 ~0.15 ~-0.15 run function game:physics/inblock
execute as @s[tag=in,scores={t1=1..29}] at @s positioned ~-0.15 ~-0.15 ~0.15 run function game:physics/inblock
execute as @s[tag=in,scores={t1=1..29}] at @s positioned ~-0.15 ~-0.15 ~-0.15 run function game:physics/inblock

execute as @s[scores={t1=30..}] at @s positioned ~0.3 ~0.3 ~0.3 run function game:physics/inblock
execute as @s[tag=in,scores={t1=30..}] at @s positioned ~0.3 ~0.3 ~-0.3 run function game:physics/inblock
execute as @s[tag=in,scores={t1=30..}] at @s positioned ~0.3 ~-0.3 ~0.3 run function game:physics/inblock
execute as @s[tag=in,scores={t1=30..}] at @s positioned ~0.3 ~-0.3 ~-0.3 run function game:physics/inblock
execute as @s[tag=in,scores={t1=30..}] at @s positioned ~-0.3 ~0.3 ~0.3 run function game:physics/inblock
execute as @s[tag=in,scores={t1=30..}] at @s positioned ~-0.3 ~0.3 ~-0.3 run function game:physics/inblock
execute as @s[tag=in,scores={t1=30..}] at @s positioned ~-0.3 ~-0.3 ~0.3 run function game:physics/inblock
execute as @s[tag=in,scores={t1=30..}] at @s positioned ~-0.3 ~-0.3 ~-0.3 run function game:physics/inblock

execute at @s if entity @e[type=slime,distance=..1.6] run tag @s remove in
execute at @s if entity @e[type=magma_cube,distance=..1.6] run tag @s remove in

execute as @s[tag=in,scores={t2=..12}] at @s run function game:char/shard/snowman/hitscan