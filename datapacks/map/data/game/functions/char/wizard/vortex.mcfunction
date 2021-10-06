execute as @s at @s anchored eyes positioned ^ ^ ^3.7 run summon minecraft:armor_stand ~ ~1 ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"vortex\"}"}
execute as @s at @s anchored eyes positioned ^ ^ ^3.7 run scoreboard players operation @e[name=vortex,limit=1,sort=nearest] tntID = @s tntID
scoreboard players set @s vortextime 300
playsound minecraft:ambient.underwater.enter master @a ~ ~ ~ .5 0
playsound minecraft:block.portal.trigger master @a ~ ~ ~ .5 2
playsound minecraft:block.portal.trigger master @a ~ ~ ~ .9 .6
playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ .5 0
playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ .5 0
clear @s clay_ball
