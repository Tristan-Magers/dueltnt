execute store result score @s x run data get entity @s Pos[0] -70
execute store result score @s y run data get entity @s Pos[1] -70
execute store result score @s z run data get entity @s Pos[2] -70
tp @s ^ ^ ^.5
execute store result score @s dx run data get entity @s Pos[0] -70
execute store result score @s dy run data get entity @s Pos[1] -70
execute store result score @s dz run data get entity @s Pos[2] -70
tp @s ^ ^ ^-.5
scoreboard players operation @s x -= @s dx
scoreboard players operation @s y -= @s dy
scoreboard players operation @s z -= @s dz

execute store result entity @e[sort=nearest,limit=1,type=item] Motion[0] double 0.01 run scoreboard players get @s x
execute store result entity @e[sort=nearest,limit=1,type=item] Motion[1] double 0.01 run scoreboard players get @s y
execute store result entity @e[sort=nearest,limit=1,type=item] Motion[2] double 0.01 run scoreboard players get @s z



scoreboard players operation @e[sort=nearest,limit=1,type=item] x = @s x
scoreboard players operation @e[sort=nearest,limit=1,type=item] z = @s z
scoreboard players operation @e[sort=nearest,limit=1,type=item] y = @s y