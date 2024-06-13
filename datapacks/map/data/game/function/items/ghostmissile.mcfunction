execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,Tags:["phantomairmissile"]}
execute as @s at @s run tp @e[distance=..0.1,limit=1,tag=phantomairmissile] @p
execute as @s at @s run tp @e[distance=..0.1,limit=1,tag=phantomairmissile] ~ ~1.6 ~

execute as @s at @s run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..50] ~ ~ ~ .5 1 1
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ .15 .9
execute as @s at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ .5 2
execute as @s at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1 1.5
execute as @s at @s run playsound minecraft:item.elytra.flying master @a ~ ~ ~ .1 1.4
execute as @s at @s run playsound minecraft:entity.ender_eye.launch master @a ~ ~ ~ 1 0

scoreboard players set @s misreload 60

#effect clear @p minecraft:levitation
#effect give @p minecraft:levitation 1 0 true

tag @s remove coal
clear @s coal

execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^2 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^3 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^4 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^5 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^6 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^7 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^8 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^9 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^10 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^11 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^12 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^13 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^14 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^15 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^16 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^17 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^18 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^19 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^20 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^21 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^22 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^23 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^24 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^25 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^26 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^27 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^28 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^29 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^30 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^31 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^32 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^33 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^34 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^35 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^36 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^37 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^38 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^39 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^40 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^41 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^42 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^43 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^44 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^45 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^46 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^47 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^48 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^49 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^50 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^51 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^52 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^53 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^54 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^55 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^56 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^57 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^58 0 0 0 0 1 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:enchanted_hit ^ ^ ^59 0 0 0 0 1 force