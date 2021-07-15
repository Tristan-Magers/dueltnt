execute as @s at @s run tp ^ ^ ^.1

execute at @s run particle minecraft:crit ~ ~-.1 ~ 0 0 0 0 1 force

scoreboard players add @s timer 1

execute as @s at @s run function game:inblock
execute as @s[tag=in,scores={timer=..250}] at @s run function game:snowman/hitscan