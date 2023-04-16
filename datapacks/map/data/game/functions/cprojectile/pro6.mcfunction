summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,Tags:["slimepro","newbomb"],DisabledSlots:4144959}

tp @e[limit=1,tag=slimepro,sort=nearest] @p

execute as @e[limit=1,tag=slimepro,sort=nearest] at @s run tp @s ~ ~.4 ~

clear @s slime_spawn_egg 1
scoreboard players add @s slimeegguse 1

playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0
#playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 1 0
playsound minecraft:entity.slime.squish master @a ~ ~ ~ 1 1.4
playsound minecraft:entity.slime.squish_small master @a ~ ~ ~ 1 1.3
playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0
playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
