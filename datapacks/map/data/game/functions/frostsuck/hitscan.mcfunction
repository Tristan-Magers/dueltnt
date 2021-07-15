execute as @s at @s run tp ^ ^ ^.1

execute at @s run particle minecraft:end_rod ~ ~-.1 ~ 0 0 0 0 1 force

execute as @s at @s run function game:inblock
execute as @s[tag=in] at @s run function game:frostsuck/hitscan