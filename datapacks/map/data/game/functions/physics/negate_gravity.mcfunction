#
execute store result score @s t4 run data get entity @s Motion[1] 1000

scoreboard players add @s t4 25

execute as @s at @s run execute store result entity @s Motion[1] double .001 run scoreboard players get @s t4