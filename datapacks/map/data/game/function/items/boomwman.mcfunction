scoreboard players remove @s[gamemode=adventure,scores={boomwandtime=0..}] boomwandtime 1
scoreboard players set @s[gamemode=adventure,scores={boomwandtime=0..54},tag=boomshard] boomwandtime 54

execute as @s[gamemode=adventure,scores={click=1..,boomwandtime=..0},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s anchored eyes positioned ^ ^ ^4 run summon tnt ~ ~ ~ {fuse:3}
scoreboard players remove @s[gamemode=adventure,scores={click=1..,boomwandtime=..0},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomcharge 1
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandcool 1
#controls increasing cooldown
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=5..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 11
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=4},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 12
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=3},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 12
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=2},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 13
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=1},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 13
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=..0},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 70

scoreboard players add @s[gamemode=adventure,scores={boomwandcool=1..},tag=!boomshard] boomwandcool 1
scoreboard players set @s[gamemode=adventure,scores={boomwandcool=120..}] boomcharge 8
scoreboard players set @s[gamemode=adventure,scores={boomwandcool=120..}] boomwandtime 0
scoreboard players set @s[gamemode=adventure,scores={boomwandcool=120..}] boomwandcool 0

execute as @s[gamemode=adventure,scores={boomwandtime=70}] at @s run particle minecraft:cloud ~ ~1.2 ~ .2 .2 .2 .1 20 force
execute as @s[gamemode=adventure,scores={boomwandtime=70}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ .3 1
execute as @s[gamemode=adventure,scores={boomwandtime=70}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ .5 0
execute as @s[gamemode=adventure,scores={boomwandtime=70}] at @s run playsound minecraft:block.barrel.close master @s ~ ~ ~ 1 0
execute as @s[gamemode=adventure,scores={boomwandtime=70}] at @s run tag @s add boomshard

scoreboard players set @s[scores={boomcharge=..0,boomwandtime=..1}] boomcharge 8

execute as @s[scores={boomcharge=1..,boomwandtime=9..11}] at @s anchored eyes run function game:boompart
#item replace entity @s[scores={boomwandtime=0,boomcharge=12}] hotbar.1 with minecraft:wooden_hoe{display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"attack_speed",Name:"attack_speed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
#item replace entity @s[scores={boomwandtime=0,boomcharge=11}] hotbar.1 with minecraft:wooden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"attack_speed",Name:"attack_speed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
#item replace entity @s[scores={boomwandtime=0,boomcharge=10}] hotbar.1 with minecraft:wooden_hoe{Damage:10,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"attack_speed",Name:"attack_speed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
#item replace entity @s[scores={boomwandtime=0,boomcharge=9}] hotbar.1 with minecraft:wooden_hoe{Damage:15,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"attack_speed",Name:"attack_speed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
execute as @s[scores={boomwandtime=0,boomcharge=8}] run function game:char/echo/give/boomwand {damage:0}
execute as @s[scores={boomwandtime=0,boomcharge=7}] run function game:char/echo/give/boomwand {damage:7}
execute as @s[scores={boomwandtime=0,boomcharge=6}] run function game:char/echo/give/boomwand {damage:15}
execute as @s[scores={boomwandtime=0,boomcharge=5}] run function game:char/echo/give/boomwand {damage:22}
execute as @s[scores={boomwandtime=0,boomcharge=4}] run function game:char/echo/give/boomwand {damage:30}
execute as @s[scores={boomwandtime=0,boomcharge=3}] run function game:char/echo/give/boomwand {damage:37}
execute as @s[scores={boomwandtime=0,boomcharge=2}] run function game:char/echo/give/boomwand {damage:45}
execute as @s[scores={boomwandtime=0,boomcharge=1}] run function game:char/echo/give/boomwand {damage:53}

#item replace entity @s[scores={boomwandtime=11,boomcharge=11}] hotbar.1 with minecraft:golden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"attack_speed",Name:"attack_speed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
#item replace entity @s[scores={boomwandtime=11,boomcharge=10}] hotbar.1 with minecraft:golden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"attack_speed",Name:"attack_speed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
#item replace entity @s[scores={boomwandtime=11,boomcharge=9}] hotbar.1 with minecraft:golden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"attack_speed",Name:"attack_speed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=8}] hotbar.1 with minecraft:golden_hoe[damage=0,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={boomwandtime=11,boomcharge=7}] hotbar.1 with minecraft:golden_hoe[damage=4,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={boomwandtime=11,boomcharge=6}] hotbar.1 with minecraft:golden_hoe[damage=8,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={boomwandtime=11,boomcharge=5}] hotbar.1 with minecraft:golden_hoe[damage=12,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={boomwandtime=11,boomcharge=4}] hotbar.1 with minecraft:golden_hoe[damage=17,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={boomwandtime=11,boomcharge=3}] hotbar.1 with minecraft:golden_hoe[damage=20,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={boomwandtime=11,boomcharge=2}] hotbar.1 with minecraft:golden_hoe[damage=24,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={boomwandtime=11,boomcharge=1}] hotbar.1 with minecraft:golden_hoe[damage=29,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]
item replace entity @s[scores={boomwandtime=70}] hotbar.1 with minecraft:golden_hoe[damage=31,custom_name='{"italic":false,"text":"§6Recharging.."}',attribute_modifiers={modifiers:[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],show_in_tooltip:false}]

execute as @s[scores={boomwandtime=55},tag=boomshard] run function game:char/echo/give/orb {wand:"§6Boom Wand§r",orb_id:{BoomOrb:1b},slot:1}