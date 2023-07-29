summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:1,Invulnerable:1,Tags:["stormtnt"],Invisible:1,ArmorItems:[{},{},{},{Count:1,id:lapis_ore}],DisabledSlots:4144959}

scoreboard players operation @e[limit=1,tag=stormtnt,sort=nearest] object_id = @s object_id
tp @e[limit=1,tag=stormtnt,sort=nearest] @p

#execute as @e[limit=1,tag=stormtnt,sort=nearest] at @s run tp @s ~ ~2.1 ~

playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0
#playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 1 0
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1.3
playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0
playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
#playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.8

clear @s cooked_salmon