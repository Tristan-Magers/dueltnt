scoreboard players remove @s[gamemode=adventure,scores={boomwandtime=0..}] boomwandtime 1
scoreboard players set @s[gamemode=adventure,scores={boomwandtime=0..15},tag=boomshard] boomwandtime 15

execute as @s[gamemode=adventure,scores={click=1..,boomwandtime=..0},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] at @s anchored eyes positioned ^ ^ ^4 run summon tnt ~ ~ ~ {Fuse:3}
scoreboard players remove @s[gamemode=adventure,scores={click=1..,boomwandtime=..0},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomcharge 1
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandcool 1
#controls increasing cooldown
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=5..},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 11
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=4},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 12
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=3},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 13
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=2},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 14
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=1},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 14
scoreboard players set @s[gamemode=adventure,scores={click=1..,boomwandtime=..0,boomcharge=..0},nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] boomwandtime 65

scoreboard players add @s[gamemode=adventure,scores={boomwandcool=1..},tag=!boomshard] boomwandcool 1
scoreboard players set @s[gamemode=adventure,scores={boomwandcool=120..}] boomcharge 8
scoreboard players set @s[gamemode=adventure,scores={boomwandcool=120..}] boomwandtime 0
scoreboard players set @s[gamemode=adventure,scores={boomwandcool=120..}] boomwandcool 0

execute as @s[gamemode=adventure,scores={boomwandtime=65}] at @s run particle minecraft:cloud ~ ~1.2 ~ .2 .2 .2 .1 20 force
execute as @s[gamemode=adventure,scores={boomwandtime=65}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ .3 1
execute as @s[gamemode=adventure,scores={boomwandtime=65}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ .5 0
execute as @s[gamemode=adventure,scores={boomwandtime=65}] at @s run playsound minecraft:block.barrel.close master @s ~ ~ ~ 1 0
execute as @s[gamemode=adventure,scores={boomwandtime=65}] at @s run tag @s add boomshard

scoreboard players set @s[scores={boomcharge=..0,boomwandtime=..1}] boomcharge 8

execute as @s[scores={boomcharge=1..,boomwandtime=9..11}] at @s anchored eyes run function game:boompart
item replace entity @s[scores={boomwandtime=0,boomcharge=12}] hotbar.1 with minecraft:wooden_hoe{display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=11}] hotbar.1 with minecraft:wooden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=10}] hotbar.1 with minecraft:wooden_hoe{Damage:10,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=9}] hotbar.1 with minecraft:wooden_hoe{Damage:15,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=8}] hotbar.1 with minecraft:wooden_hoe{Damage:0,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=7}] hotbar.1 with minecraft:wooden_hoe{Damage:7,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=6}] hotbar.1 with minecraft:wooden_hoe{Damage:15,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=5}] hotbar.1 with minecraft:wooden_hoe{Damage:22,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=4}] hotbar.1 with minecraft:wooden_hoe{Damage:30,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=3}] hotbar.1 with minecraft:wooden_hoe{Damage:37,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=2}] hotbar.1 with minecraft:wooden_hoe{Damage:45,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=0,boomcharge=1}] hotbar.1 with minecraft:wooden_hoe{Damage:53,display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}

item replace entity @s[scores={boomwandtime=11,boomcharge=11}] hotbar.1 with minecraft:golden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=10}] hotbar.1 with minecraft:golden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=9}] hotbar.1 with minecraft:golden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=8}] hotbar.1 with minecraft:golden_hoe{Damage:0,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=7}] hotbar.1 with minecraft:golden_hoe{Damage:4,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=6}] hotbar.1 with minecraft:golden_hoe{Damage:8,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=5}] hotbar.1 with minecraft:golden_hoe{Damage:12,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=4}] hotbar.1 with minecraft:golden_hoe{Damage:17,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=3}] hotbar.1 with minecraft:golden_hoe{Damage:20,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=2}] hotbar.1 with minecraft:golden_hoe{Damage:24,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=11,boomcharge=1}] hotbar.1 with minecraft:golden_hoe{Damage:29,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={boomwandtime=65}] hotbar.1 with minecraft:golden_hoe{Damage:31,display:{Name:"{\"italic\":false,\"text\":\"§6Recharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}

item replace entity @s[scores={boomwandtime=50},tag=boomshard] hotbar.1 with minecraft:pink_dye{display:{Name:"{\"italic\":false,\"text\":\"§eBoom Shard §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}