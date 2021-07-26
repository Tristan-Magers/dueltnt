summon minecraft:snow_golem ~ ~ ~ {NoAI:1,Tags:["new"],Invulnerable:1}
summon area_effect_cloud ^ ^ ^12 {Duration:999,Tags:["snowmark","gameae"]}
tp @e[type=minecraft:snow_golem,tag=new] @s
tp @e[type=minecraft:snow_golem,tag=new] ~ ~-0.5 ~
execute as @e[type=minecraft:snow_golem,tag=new] at @s run tp @s ~ ~ ~ facing entity @e[tag=snowmark,limit=1]
tag @e[type=snow_golem] remove new
kill @e[tag=snowmark]

clear @s yellow_dye
scoreboard players set @s snowmanT 40

playsound minecraft:entity.snow_golem.hurt master @a
playsound minecraft:entity.snow_golem.death master @a