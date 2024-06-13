execute store result score @s x run data get entity @s Pos[0] 1
execute store result score @s y run data get entity @s Pos[1] 1
execute store result score @s z run data get entity @s Pos[2] 1

execute as @s at @s run execute store result entity @s Pos[0] double 1 run scoreboard players get @s x
execute as @s at @s run execute store result entity @s Pos[1] double 1 run scoreboard players get @s y
execute as @s at @s run execute store result entity @s Pos[2] double 1 run scoreboard players get @s z

execute as @s at @s run tp @s ~.5 ~ ~.5