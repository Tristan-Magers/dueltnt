
execute as @s at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 .5 100 force

execute as @s[tag=!time_boom] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 0.5 2
execute as @s[tag=!time_boom] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 0.5 0
execute as @s at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 0.5 1.8
execute as @s at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 2
execute as @s[tag=!time_boom] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ .35 2

execute as @s at @s run execute store result score @s x run data get entity @s Motion[0] 100
execute as @s at @s run execute store result score @s y run data get entity @s Motion[1] 100
execute as @s at @s run execute store result score @s z run data get entity @s Motion[2] 100

execute as @s at @s run summon creeper ~ ~ ~ {Invulnerable:1,ignited:1,powered:1,Fuse:7,Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0}],Tags:["newmotme"],Motion:[0.0,2.0,0.0]}
execute as @s at @s run summon creeper ~ ~ ~ {Invulnerable:1,ignited:1,powered:1,Fuse:7,Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0}],Tags:["newmotme"],Motion:[0.0,2.0,0.0]}

team join noCol @e[tag=newmotme]

execute as @s at @s run scoreboard players operation @e[tag=newmotme] x = @s x
execute as @s at @s run scoreboard players operation @e[tag=newmotme] y = @s y
execute as @s at @s run scoreboard players operation @e[tag=newmotme] z = @s z

execute as @e[tag=newmotme] run execute store result entity @s Motion[0] double .01 run scoreboard players get @s x
execute as @e[tag=newmotme] run execute store result entity @s Motion[1] double .01 run scoreboard players get @s y
execute as @e[tag=newmotme] run execute store result entity @s Motion[2] double .01 run scoreboard players get @s z

tag @e[tag=newmotme] remove newmotme

execute as @s at @s run tp @s ~ ~-1000 ~
execute as @s at @s run tag @s add kill_this
