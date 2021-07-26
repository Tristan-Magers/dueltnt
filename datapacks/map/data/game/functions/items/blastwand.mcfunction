execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"blast\"}"}
execute as @s at @s run tp @e[distance=..0.1,limit=1,name=blast] @p
execute as @s at @s run tp @e[distance=..0.1,limit=1,name=blast] ~ ~1.6 ~
scoreboard players set @s blastwandtime 18
execute as @s at @s run playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ .7 1 1
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ .2 .9
execute as @s at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 2
item replace entity @s hotbar.2 with minecraft:golden_hoe{display:{Name:"{\"italic\":false,\"text\":\"§aRecharging..\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}

scoreboard players add @s bwandlimit 1