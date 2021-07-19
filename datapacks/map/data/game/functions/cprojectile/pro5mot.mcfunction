execute as @s at @s run function game:cprojectile/getdir2

summon minecraft:creeper ~ ~ ~ {Tags:["creeppro","newcreeper"],ignited:1,Fuse:17,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"{\"italic\":false,\"text\":\"Bomb\"}",Health:500,powered:1,ExplosionRadius:2}

execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..1,limit=1] Motion[0] double .0085 run scoreboard players get @s DirX
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..1,limit=1] Motion[1] double .0085 run scoreboard players get @s DirY
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..1,limit=1] Motion[2] double .0085 run scoreboard players get @s DirZ

tag @e[tag=newcreeper,distance=..1] remove newcreeper

tag @s remove newbomb

kill @s