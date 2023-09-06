item replace entity @s[scores={nobow=3..}] hotbar.0 with minecraft:bow{Damage:200,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§3Space Warp§r : Throw to switch\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:wooden_hoe",Slot:1b}]},scores={boomwandtime=..0}] wooden_hoe
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:wooden_hoe",Slot:1b}]},scores={boomwandtime=..0}] boomwandtime 2

clear @s[nbt=!{Inventory:[{id:"minecraft:stone_hoe",Slot:2b}]},scores={blastwandtime=..0}] stone_hoe
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:stone_hoe",Slot:2b}]},scores={blastwandtime=..0}] blastwandtime 2

clear @s[nbt=!{Inventory:[{id:"minecraft:diamond_hoe",Slot:3b}]},scores={airwandtime=..0}] diamond_hoe
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:diamond_hoe",Slot:3b}]},scores={airwandtime=..0}] airwandtime 2

clear @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0}] red_dye
execute unless entity @e[scores={mode=1}] run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=1}] hotbar.4 with minecraft:red_dye{display:{Name:"{\"italic\":false,\"text\":\"§eGround Spell §r: Right-click\"}"}}
execute unless entity @e[scores={mode=1}] run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=0}] hotbar.4 with minecraft:red_dye{display:{Name:"{\"italic\":false,\"text\":\"§eGround Spell §r: Right-click\"}"}} 2

execute if entity @e[scores={mode=1}] run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=2}] hotbar.4 with minecraft:red_dye{display:{Name:"{\"italic\":false,\"text\":\"§eGround Spell : Right-click\"}"}}
execute if entity @e[scores={mode=1}] run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=1}] hotbar.4 with minecraft:red_dye{display:{Name:"{\"italic\":false,\"text\":\"§eGround Spell : Right-click\"}"}} 2
execute if entity @e[scores={mode=1}] run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=0}] hotbar.4 with minecraft:red_dye{display:{Name:"{\"italic\":false,\"text\":\"§eGround Spell : Right-click\"}"}} 3

clear @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:2b}]},scores={blastwandtime=89..90}] minecraft:pink_dye{display:{Name:"{\"italic\":false,\"text\":\"§eUnstable Orb §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:9,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:2b}]},scores={blastwandtime=89..90}] hotbar.2 with minecraft:pink_dye{display:{Name:"{\"italic\":false,\"text\":\"§eUnstable Orb §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:9,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
execute as @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:2b}]},scores={blastwandtime=89..90}] run scoreboard players set @s blastwandtime 50

clear @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:1b}]},tag=boomshard,scores={boomwandtime=12..54}] minecraft:pink_dye{display:{Name:"{\"italic\":false,\"text\":\"§eUnstable Orb §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:1b},{id:"minecraft:pink_dye",Slot:2b}]},tag=boomshard,scores={boomwandtime=12..54}] hotbar.1 with minecraft:pink_dye{display:{Name:"{\"italic\":false,\"text\":\"§eUnstable Orb §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
execute as @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:1b}]},tag=boomshard,scores={boomwandtime=12..54}] run tag @s remove boomshard
