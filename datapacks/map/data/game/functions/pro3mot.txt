execute as @s at @s run function game:getdir2

#scoreboard players add @s DirX 8

execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @s Motion[0] double .01 run scoreboard players get @s DirX
execute as @s at @s run execute store result entity @s Motion[1] double .01 run scoreboard players get @s DirY
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @s Motion[2] double .01 run scoreboard players get @s DirZ

execute if entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @s Motion[0] double .015 run scoreboard players get @s DirX
execute if entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @s Motion[2] double .015 run scoreboard players get @s DirZ

scoreboard players operation @s y = @s DirY

scoreboard players remove @s y 870

execute as @s at @s run execute store result entity @s Motion[1] double .004 run scoreboard players get @s y

#execute as @s at @s run tp @s ~ ~ ~ ~ 0

tag @s remove newbomb