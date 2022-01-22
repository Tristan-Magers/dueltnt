summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Tags:["creeppro","newbomb"],DisabledSlots:4144959}

tp @e[limit=1,tag=creeppro,sort=nearest] @p

execute as @e[limit=1,tag=creeppro,sort=nearest] at @s run tp @s ~ ~.4 ~

clear @s creeper_spawn_egg 1
scoreboard players add @s creepegguse 1

playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0
#playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 1 0
playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 2
playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 0
playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0
playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 0.8