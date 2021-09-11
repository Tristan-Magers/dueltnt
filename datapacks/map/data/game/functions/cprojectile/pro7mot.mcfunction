#tnt0
execute as @s at @s run function game:cprojectile/getdir2

execute as @s at @s positioned ~ ~1 ~ run summon minecraft:tnt ^ ^ ^1 {NoGravity:0,Fuse:18,Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["newcreeper"]}

scoreboard players add @s DirY 50
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[0] double .0035 run scoreboard players get @s DirX
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[1] double .0035 run scoreboard players get @s DirY
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[2] double .0035 run scoreboard players get @s DirZ

tag @e[tag=newcreeper,distance=..3] remove newcreeper


#tnt1
execute as @s at @s run tp @s ~ ~ ~ ~-5 ~-5
execute as @s at @s run function game:cprojectile/getdir2

execute as @s at @s positioned ~ ~1 ~ run summon minecraft:tnt ^ ^ ^1 {NoGravity:0,Fuse:18,Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["newcreeper"]}

scoreboard players add @s DirY 50
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[0] double .0035 run scoreboard players get @s DirX
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[1] double .0035 run scoreboard players get @s DirY
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[2] double .0035 run scoreboard players get @s DirZ

tag @e[tag=newcreeper,distance=..3] remove newcreeper

#tnt2
execute as @s at @s run tp @s ~ ~ ~ ~10 ~

execute as @s at @s run function game:cprojectile/getdir2
execute as @s at @s positioned ~ ~1 ~ run summon minecraft:tnt ^ ^ ^1 {NoGravity:0,Fuse:18,Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["newcreeper"]}

scoreboard players add @s DirY 50
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[0] double .0035 run scoreboard players get @s DirX
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[1] double .0035 run scoreboard players get @s DirY
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[2] double .0035 run scoreboard players get @s DirZ

tag @e[tag=newcreeper,distance=..3] remove newcreeper

#tnt3
execute as @s at @s run tp @s ~ ~ ~ ~-10 ~10

execute as @s at @s run function game:cprojectile/getdir2

execute as @s at @s positioned ~ ~1 ~ run summon minecraft:tnt ^ ^ ^1 {NoGravity:0,Fuse:18,Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["newcreeper"]}

scoreboard players add @s DirY 50
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[0] double .0035 run scoreboard players get @s DirX
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[1] double .0035 run scoreboard players get @s DirY
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[2] double .0035 run scoreboard players get @s DirZ

tag @e[tag=newcreeper,distance=..3] remove newcreeper

#tnt4
execute as @s at @s run tp @s ~ ~ ~ ~10 ~

execute as @s at @s run function game:cprojectile/getdir2

execute as @s at @s positioned ~ ~1 ~ run summon minecraft:tnt ^ ^ ^1 {NoGravity:0,Fuse:18,Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["newcreeper"]}

scoreboard players add @s DirY 50
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[0] double .0035 run scoreboard players get @s DirX
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[1] double .0035 run scoreboard players get @s DirY
execute as @s at @s positioned ~ ~1 ~ run execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..3,limit=1] Motion[2] double .0035 run scoreboard players get @s DirZ

tag @e[tag=newcreeper,distance=..3] remove newcreeper

#end
tag @s remove newbomb

kill @s