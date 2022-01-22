execute as @s[x_rotation=45..100] at @s run tp @s ~ ~ ~ ~ 45

execute as @s at @s run function game:cprojectile/getdir4

summon minecraft:creeper ~ ~1 ~ {Tags:["creeppro","newcreeper","nodub"],ignited:1,Fuse:17,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"{\"italic\":false,\"text\":\"Bomb\"}",Health:500,powered:1,ExplosionRadius:2}

#scoreboard players set @s[scores={DirY=..-80}] DirY -80

scoreboard players add @s DirY 20
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..2,limit=1] Motion[0] double .0082 run scoreboard players get @s DirX
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..2,limit=1] Motion[1] double .0082 run scoreboard players get @s DirY
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..2,limit=1] Motion[2] double .0082 run scoreboard players get @s DirZ

tag @e[tag=newcreeper,distance=..2] remove newcreeper

tag @s remove newbomb

kill @s