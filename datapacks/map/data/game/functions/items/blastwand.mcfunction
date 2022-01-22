execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"blast\"}"}
execute as @s at @s run tp @e[distance=..0.1,limit=1,name=blast] @p
execute as @s at @s run tp @e[distance=..0.1,limit=1,name=blast] ~ ~1.6 ~

execute as @s at @s run playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ .7 1 1
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ .2 .9
execute as @s at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 2

scoreboard players add @s bwandlimit 1
scoreboard players add @s blastdur 1
scoreboard players add @s blastdurt 0

scoreboard players set @s[scores={blastdur=6..}] blastdur 6

scoreboard players set @s[scores={blastdur=1}] blastwandtime 2
scoreboard players set @s[scores={blastdur=2}] blastwandtime 4
scoreboard players set @s[scores={blastdur=3}] blastwandtime 8
scoreboard players set @s[scores={blastdur=4}] blastwandtime 14
scoreboard players set @s[scores={blastdur=5}] blastwandtime 20
scoreboard players set @s[scores={blastdur=6..}] blastwandtime 105

clear @s[scores={blastdur=6..}] stone_hoe

execute as @s[gamemode=adventure,scores={blastdur=6..}] at @s run particle minecraft:cloud ~ ~1.2 ~ .2 .2 .2 .1 20 force
execute as @s[gamemode=adventure,scores={blastdur=6..}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ .3 1
execute as @s[gamemode=adventure,scores={blastdur=6..}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ .5 0
execute as @s[gamemode=adventure,scores={blastdur=6..}] at @s run playsound minecraft:block.barrel.close master @s ~ ~ ~ 1 0

item replace entity @s[scores={blastdur=1}] hotbar.2 with minecraft:golden_hoe{Damage:5,display:{Name:"{\"italic\":false,\"text\":\"§aRecharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastdur=2}] hotbar.2 with minecraft:golden_hoe{Damage:10,display:{Name:"{\"italic\":false,\"text\":\"§aRecharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastdur=3}] hotbar.2 with minecraft:golden_hoe{Damage:15,display:{Name:"{\"italic\":false,\"text\":\"§aRecharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastdur=4}] hotbar.2 with minecraft:golden_hoe{Damage:20,display:{Name:"{\"italic\":false,\"text\":\"§aRecharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastdur=5}] hotbar.2 with minecraft:golden_hoe{Damage:25,display:{Name:"{\"italic\":false,\"text\":\"§aRecharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @s[scores={blastdur=6..}] hotbar.2 with minecraft:golden_hoe{Damage:31,display:{Name:"{\"italic\":false,\"text\":\"§aRecharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}

scoreboard players set @s[scores={blastdur=6..}] blastdur 2