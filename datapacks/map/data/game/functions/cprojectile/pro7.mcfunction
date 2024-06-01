#summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Tags:["tntpro","newbomb"],DisabledSlots:4144959}

#tp @e[limit=1,tag=tntpro,sort=nearest] @p

#execute as @e[limit=1,tag=tntpro,sort=nearest] at @s run tp @s ~ ~ ~

function game:items/orb

item replace entity @s[nbt={SelectedItemSlot:1}] hotbar.1 with minecraft:golden_hoe[custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers=[{operation:"add_value",type:"generic.attack_speed",amount:10,name:"generic.attack_speed",uuid:[I;1,2,3,4]}]]
item replace entity @s[nbt={SelectedItemSlot:2}] hotbar.2 with minecraft:golden_hoe[custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers=[{operation:"add_value",type:"generic.attack_speed",amount:10,name:"generic.attack_speed",uuid:[I;1,2,3,4]}]]
tag @s[nbt=!{SelectedItemSlot:2}] remove boomshard

scoreboard players set @s[gamemode=adventure,scores={blastwandtime=80..},nbt={SelectedItemSlot:2}] blastwandtime 55

playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0

playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 1.4
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 2
playsound minecraft:block.note_block.snare master @a ~ ~ ~ 1 0.7
playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 0.8

playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 0
playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
