data merge entity @s {Air:0s}

execute store result score @s DirX run data get entity @s Motion[0] 147
execute store result score @s DirY run data get entity @s Motion[1] 100
execute store result score @s DirZ run data get entity @s Motion[2] 147

execute store result entity @s Motion[0] double .01 run scoreboard players get @s DirX
execute store result entity @s[scores={DirY=1..}] Motion[1] double .01 run scoreboard players get @s DirY
execute store result entity @s Motion[2] double .01 run scoreboard players get @s DirZ