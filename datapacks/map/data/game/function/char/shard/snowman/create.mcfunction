execute positioned ~ ~-0.5 ~ run summon minecraft:armor_stand ^ ^ ^0.2 {NoAI:1,Tags:["new","snowman"],Invulnerable:1,Marker:1,equipment:{head:{id:"minecraft:carved_pumpkin",count:1}}}
summon marker ^ ^ ^30 {Tags:["snowmark","gameae"]}
tp @e[tag=snowman,tag=new] @s
tp @e[tag=snowman,tag=new] ~ ~-0.5 ~
execute as @e[tag=snowman,tag=new] at @s run tp @s ~ ~ ~ facing entity @e[tag=snowmark,limit=1]
execute as @e[tag=snowman,tag=new] at @s run tp @s ^ ^ ^0.2 facing entity @e[tag=snowmark,limit=1]
tag @e[tag=snowman] remove new
kill @e[tag=snowmark]

clear @s yellow_dye
scoreboard players set @s snowmanT 40

team join noCol @e[tag=snowman]

playsound minecraft:entity.snow_golem.hurt master @a
playsound minecraft:entity.snow_golem.death master @a