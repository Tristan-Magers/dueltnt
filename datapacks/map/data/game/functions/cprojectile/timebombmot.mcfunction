execute as @s at @s run function game:cprojectile/getdir2

execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @s Motion[0] double .0162 run scoreboard players get @s DirX
execute as @s at @s run execute store result entity @s Motion[1] double .01 run scoreboard players get @s DirY
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @s Motion[2] double .0162 run scoreboard players get @s DirZ

scoreboard players operation @s y = @s DirY

scoreboard players remove @s y 900

execute as @s at @s run execute store result entity @s Motion[1] double .005 run scoreboard players get @s y

tag @s remove newbomb