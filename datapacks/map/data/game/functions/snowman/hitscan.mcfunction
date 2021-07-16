execute as @s at @s run tp ^ ^ ^.1

execute at @s run particle minecraft:crit ~ ~-.1 ~ 0 0 0 0 1 force

scoreboard players add @s timer 1
scoreboard players add @s t1 1

execute as @s at @s positioned ~ ~ ~ run function game:inblock

execute as @s[scores={t1=40..}] at @s positioned ~0.3 ~0.3 ~0.3 run function game:inblock
execute as @s[tag=in,scores={t1=40..}] at @s positioned ~0.3 ~0.3 ~-0.3 run function game:inblock
execute as @s[tag=in,scores={t1=40..}] at @s positioned ~0.3 ~-0.3 ~0.3 run function game:inblock
execute as @s[tag=in,scores={t1=40..}] at @s positioned ~0.3 ~-0.3 ~-0.3 run function game:inblock
execute as @s[tag=in,scores={t1=40..}] at @s positioned ~-0.3 ~0.3 ~0.3 run function game:inblock
execute as @s[tag=in,scores={t1=40..}] at @s positioned ~-0.3 ~0.3 ~-0.3 run function game:inblock
execute as @s[tag=in,scores={t1=40..}] at @s positioned ~-0.3 ~-0.3 ~0.3 run function game:inblock
execute as @s[tag=in,scores={t1=40..}] at @s positioned ~-0.3 ~-0.3 ~-0.3 run function game:inblock

execute as @s[tag=in,scores={timer=..270}] at @s run function game:snowman/hitscan