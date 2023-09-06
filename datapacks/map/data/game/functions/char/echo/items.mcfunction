#blast wand
#scoreboard players set @s[scores={grtest=0}] bwandlimit 0
#limits uses in air. currently unused and negated by previous command
scoreboard players set @s[nbt={OnGround:1b},scores={grtest=0}] bwandlimit 0
scoreboard players remove @s[scores={blastwandtime=0..}] blastwandtime 1
execute as @s[scores={click=1..,blastwandtime=..0,bwandlimit=..5},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run function game:items/blastwand

item replace entity @s[scores={blastwandtime=0,blastdur=0}] hotbar.2 with minecraft:stone_hoe{Damage:0,display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastwandtime=0,blastdur=1}] hotbar.2 with minecraft:stone_hoe{Damage:22,display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastwandtime=0,blastdur=2}] hotbar.2 with minecraft:stone_hoe{Damage:43,display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastwandtime=0,blastdur=3}] hotbar.2 with minecraft:stone_hoe{Damage:65,display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastwandtime=0,blastdur=4}] hotbar.2 with minecraft:stone_hoe{Damage:84,display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastwandtime=0,blastdur=5}] hotbar.2 with minecraft:stone_hoe{Damage:104,display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastwandtime=0,blastdur=6..}] hotbar.2 with minecraft:stone_hoe{Damage:130,display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}

scoreboard players set @s[scores={blastdur=0}] blastdurt 0
scoreboard players set @s[scores={blastwandtime=1..}] blastdurt 0
scoreboard players add @s[scores={blastdur=1..,blastwandtime=..0}] blastdurt 1
scoreboard players remove @s[scores={blastdurt=20..}] blastdur 1
scoreboard players set @s[scores={blastdurt=20..}] blastwandtime 1
scoreboard players set @s[scores={blastdurt=20..}] blastdurt 0

item replace entity @s[scores={blastwandtime=90}] hotbar.2 with minecraft:pink_dye{display:{Name:"{\"italic\":false,\"text\":\"§eUnstable Orb §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:9,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
scoreboard players set @s[scores={blastwandtime=89..90}] blastwandtime 90


scoreboard players remove @s[scores={grtest=1..}] grtest 1
