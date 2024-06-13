execute store result score @s x run data get entity @s Rotation[0] 1
execute store result entity @s[scores={x=90..}] Rotation[0] float -1 run scoreboard players get @s x
execute store result entity @s[scores={x=-90}] Rotation[0] float -1 run scoreboard players get @s x