execute as @s at @s run particle item_slime ~ ~ ~ .3 .3 .3 0 2 force
scoreboard players add @s acid 1
scoreboard players add @s acidTimer 1
execute as @s at @s if block ~ ~ ~ barrier run kill @e[name=acid,type=armor_stand,distance=..1]
execute as @s at @s if block ~ ~-.5 ~ barrier run kill @s
kill @s[scores={acid=200..}]

execute as @s[scores={acidTimer=2..}] at @s run function game:char/mads/acidtick