#execute as @s[x_rotation=45..100] at @s run tp @s ~ ~ ~ ~ 45

execute as @s at @s run function game:cprojectile/getdir4

summon minecraft:creeper ~ ~1 ~ {Tags:["newcreeper","nodub","wizcreep"],ignited:1,Fuse:1000,Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:'{"italic":false,"text":"Bomb"}',Health:500,powered:1,ExplosionRadius:2}

scoreboard players set @s[scores={DirY=..-80}] DirY -80

scoreboard players add @s DirY 20
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..2,limit=1] Motion[0] double .0079 run scoreboard players get @s DirX
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..2,limit=1] Motion[1] double .0079 run scoreboard players get @s DirY
execute unless entity @e[scores={mode=1}] run execute as @s at @s run execute store result entity @e[tag=newcreeper,distance=..2,limit=1] Motion[2] double .0079 run scoreboard players get @s DirZ

scoreboard players add @e[tag=wizcreep,type=creeper] tntID 0
scoreboard players operation @e[limit=1,tag=newcreeper,tag=wizcreep,sort=nearest,scores={tntID=0}] tntID = @s tntID

tag @e[tag=newcreeper] remove newcreeper

tag @s remove newbomb

kill @s