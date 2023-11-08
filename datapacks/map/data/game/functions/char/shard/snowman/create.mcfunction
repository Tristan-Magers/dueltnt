execute positioned ~ ~1.2 ~ run summon minecraft:snow_golem ^ ^ ^-1.2 {NoAI:1,Tags:["new"],Invulnerable:1}
summon area_effect_cloud ^ ^ ^16 {Duration:999,Tags:["snowmark","gameae"]}
tp @e[type=minecraft:snow_golem,tag=new] @s
tp @e[type=minecraft:snow_golem,tag=new] ~ ~1.2 ~
execute as @e[type=minecraft:snow_golem,tag=new] at @s run tp @s ~ ~ ~ facing entity @e[tag=snowmark,limit=1]
execute as @e[type=minecraft:snow_golem,tag=new] at @s run tp @s ^ ^ ^-1.2 facing entity @e[tag=snowmark,limit=1]
tag @e[type=snow_golem] remove new
kill @e[tag=snowmark]

clear @s yellow_dye
scoreboard players set @s snowmanT 40

team join noCol @e[type=minecraft:snow_golem]

playsound minecraft:entity.snow_golem.hurt master @a
playsound minecraft:entity.snow_golem.death master @a