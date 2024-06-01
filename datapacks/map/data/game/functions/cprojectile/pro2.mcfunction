clear @s gold_ore 6
scoreboard players remove @s masterb 6

scoreboard players set @s master_bomb_cooldown 30

summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:0,Invulnerable:1,Tags:["mastertnt","newbomb"],Invisible:1,ArmorItems:[{},{},{},{id:"air",count:1}],DisabledSlots:4144959}

tp @e[limit=1,tag=mastertnt,sort=nearest] @p

execute as @e[limit=1,tag=mastertnt,sort=nearest] at @s run tp @s ~ ~.4 ~-100

function game:char/overlord/masterwanditems

playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0
#playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 1 0
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1.3
playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0
playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
#playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 2
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 2

clear @s salmon