execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,Tags:["phantomairmissile"]}
execute as @s at @s run tp @e[distance=..0.1,limit=1,tag=phantomairmissile] @p
execute as @s at @s run tp @e[distance=..0.1,limit=1,tag=phantomairmissile] ~ ~1.6 ~

execute as @s at @s run playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ .5 1 1
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ .15 .9
execute as @s at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ .5 2
execute as @s at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1 1.5
execute as @s at @s run playsound minecraft:item.elytra.flying master @a ~ ~ ~ .1 1.4
execute as @s at @s run playsound minecraft:entity.ender_eye.launch master @a ~ ~ ~ 1 0

function game:player/class_team
execute as @s at @s run tellraw @a [{"selector":"@s"},{"text":" used ","color":"gray","bold":false},{"text":"Air Missile","color":"blue","bold":true}]

clear @s cooked_porkchop