execute as @s at @s anchored eyes positioned ^ ^ ^5.2 positioned ~ ~-0.4 ~ run summon minecraft:armor_stand ~ ~1 ~ {Small:1,NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"vortex\"}"}
execute as @s at @s anchored eyes positioned ^ ^ ^5.2 positioned ~ ~-0.4 ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1,NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b}],Tags:["vortex_box"]}
scoreboard players add @e[name=vortex] tntID 0
execute as @s at @s anchored eyes positioned ^ ^ ^5.2 positioned ~ ~-0.4 ~ run team join gray @e[tag=vortex_box,limit=1,sort=nearest]
execute as @s at @s anchored eyes positioned ^ ^ ^5.2 positioned ~ ~-0.4 ~ run scoreboard players operation @e[name=vortex,limit=1,sort=nearest,scores={tntID=0}] tntID = @s tntID
scoreboard players set @s vortextime 320
playsound minecraft:ambient.underwater.enter master @a ~ ~ ~ .5 0
playsound minecraft:block.portal.trigger master @a ~ ~ ~ .5 2
playsound minecraft:block.portal.trigger master @a ~ ~ ~ .9 .6
playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ .5 0
playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ .5 0
playsound minecraft:block.bubble_column.whirlpool_inside master @a
clear @s clay_ball
