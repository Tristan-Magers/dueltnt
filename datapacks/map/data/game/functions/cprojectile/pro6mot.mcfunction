execute as @s[x_rotation=45..100] at @s run tp @s ~ ~ ~ ~ 45

execute as @s at @s run function game:cprojectile/getdir4

execute as @s at @s positioned ~ ~1 ~ run summon minecraft:slime ^ ^ ^1 {Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["s1","newcreeper","thrown"]}

scoreboard players add @s DirY 15
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[0] double .0055 run scoreboard players get @s DirX
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[1] double .0055 run scoreboard players get @s DirY
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[2] double .0055 run scoreboard players get @s DirZ

tag @e[tag=newcreeper,distance=..3] remove newcreeper

tag @s remove newbomb

kill @s