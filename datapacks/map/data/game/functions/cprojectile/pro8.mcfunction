summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Tags:["wizcreep","newbomb"],DisabledSlots:4144959}

tp @e[limit=1,tag=wizcreep,sort=nearest] @p

scoreboard players operation @e[limit=1,tag=wizcreep,sort=nearest] tntID = @s tntID

execute as @e[limit=1,tag=wizcreep,sort=nearest] at @s run tp @s ~ ~.4 ~

clear @s gray_dye
#scoreboard players add @s creepegguse 1

#explosion delay
scoreboard players set @s[scores={CPtimer=..30}] CPtimer 30

playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0
#playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 1 0
playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 2
playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 0
playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0
playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 0.8