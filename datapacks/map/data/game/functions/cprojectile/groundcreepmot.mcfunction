summon marker ~ ~ ~ {Tags:["dirget"]}
tp @e[tag=dirget,tag=!done,limit=1] @s
execute as @e[tag=dirget,tag=!done,limit=1] at @s run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force

execute as @e[tag=dirget,tag=!done,limit=1] at @s run function game:cprojectile/getdir4

#add upward motion (currently unused)
#execute as @e[tag=dirget,tag=!done,limit=1] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^3 run scoreboard players add @s DirY 65

scoreboard players set @e[tag=dirget,tag=!done,limit=1] DirY 75

execute as @e[tag=dirget,tag=!done,limit=1] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^3 run execute store result entity @e[type=creeper,tag=!beenaround,distance=..5,limit=1] Motion[0] double .005 run scoreboard players get @s DirX
execute as @e[tag=dirget,tag=!done,limit=1] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^3 run execute store result entity @e[type=creeper,tag=!beenaround,distance=..5,limit=1] Motion[1] double .0055 run scoreboard players get @s DirY
execute as @e[tag=dirget,tag=!done,limit=1] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^3 run execute store result entity @e[type=creeper,tag=!beenaround,distance=..5,limit=1] Motion[2] double .005 run scoreboard players get @s DirZ

execute as @e[tag=dirget,tag=!done,limit=1] at @s run tag @e[type=creeper,tag=!beenaround,distance=..16,limit=1] add thrown_creeper
team join noCol @e[type=creeper,tag=!beenaround,distance=..5,limit=1]

tag @e[tag=dirget] add done
kill @e[tag=dirget]