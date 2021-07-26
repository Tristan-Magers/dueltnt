item replace entity @s[scores={CPtimer=119..}] armor.feet with air
clear @s[scores={CPtimer=119..}] minecraft:golden_boots
scoreboard players remove @s CPtimer 1

execute as @s[scores={CPtimer=139}] at @s run scoreboard players operation @e[type=minecraft:creeper] tntID -= @s tntID
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 .5 100 force

execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 2
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 1.8
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ .7 2

execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run execute store result score @s x run data get entity @s Motion[0] 100
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run execute store result score @s y run data get entity @s Motion[1] 100
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run execute store result score @s z run data get entity @s Motion[2] 100

execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run summon creeper ~ ~ ~ {Invulnerable:1,ignited:1,powered:1,Fuse:7,Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0}],Tags:["newmotme"],Motion:[0.0,2.0,0.0]}
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run summon creeper ~ ~ ~ {Invulnerable:1,ignited:1,powered:1,Fuse:7,Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0}],Tags:["newmotme"],Motion:[0.0,2.0,0.0]}

execute as @s[scores={CPtimer=139}] at @s run team join noCol @e[tag=newmotme]

execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run scoreboard players operation @e[tag=newmotme] x = @s x
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run scoreboard players operation @e[tag=newmotme] y = @s y
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run scoreboard players operation @e[tag=newmotme] z = @s z

execute as @e[tag=newmotme] run execute store result entity @s Motion[0] double .01 run scoreboard players get @s x
execute as @e[tag=newmotme] run execute store result entity @s Motion[1] double .01 run scoreboard players get @s y
execute as @e[tag=newmotme] run execute store result entity @s Motion[2] double .01 run scoreboard players get @s z

tag @e[tag=newmotme] remove newmotme

execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run tp @s ~ ~-1000 ~
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run scoreboard players set @a[scores={CPtimer=139}] CPtimer 138
execute as @s[scores={CPtimer=139}] at @s run scoreboard players operation @e[type=minecraft:creeper] tntID += @s tntID
scoreboard players set @a[scores={CPtimer=139}] CPtimer 3
item replace entity @s[x=600,y=60,z=600,distance=3..95,scores={CPtimer=1}] hotbar.4 with golden_boots{display:{Name:"{\"text\":\"§r§bExplode Ghost Creeper §f: Right Click (summoned by crouch)\"}"}}