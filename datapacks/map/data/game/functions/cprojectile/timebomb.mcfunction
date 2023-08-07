summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:0,Invulnerable:1,Tags:["timebombpro","newbomb"],Invisible:1,ArmorItems:[{},{},{},{Count:1,id:sculk_sensor}],DisabledSlots:4144959}
scoreboard players operation @e[tag=newbomb,tag=timebombpro] tntID = @s tntID

tp @e[limit=1,tag=timebombpro,sort=nearest] @p

execute as @e[limit=1,tag=timebombpro,sort=nearest] at @s run tp @s ~ ~.4 ~

playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0
#playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 1 0
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1.3
playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0
playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
#playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 2
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 2

scoreboard players set @s TBtimer 1150

effect give @s minecraft:slow_falling 1 0

clear @s emerald