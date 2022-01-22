execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,Tags:["phantommissile"]}
execute as @s at @s run tp @e[distance=..0.1,limit=1,tag=phantommissile] @p
execute as @s at @s run tp @e[distance=..0.1,limit=1,tag=phantommissile] ~ ~1.6 ~

execute as @s at @s run playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ .7 1 1
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ .2 .9
execute as @s at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ .5 2
execute as @s at @s run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ .6 2
execute as @s at @s run playsound minecraft:entity.phantom.death master @a ~ ~ ~ .3 2

execute as @s at @s run tellraw @a [{"selector":"@s"},{"text":" used ","color":"gray","bold":false},{"text":"Phanton Missile","color":"gold","bold":true}]

clear @s porkchop