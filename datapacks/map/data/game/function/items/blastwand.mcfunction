execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"blast\"}"}
execute as @s at @s run tp @e[distance=..0.1,limit=1,name=blast] @p
execute as @s at @s run tp @e[distance=..0.1,limit=1,name=blast] ~ ~1.6 ~

execute as @s at @s run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..50] ~ ~ ~ .7 1 1
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ .2 .9
execute as @s at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 2

scoreboard players add @s bwandlimit 1
scoreboard players add @s blastdur 1
scoreboard players add @s blastdurt 0

scoreboard players set @s[scores={blastdur=6..}] blastdur 6

scoreboard players set @s[scores={blastdur=1}] blastwandtime 2
scoreboard players set @s[scores={blastdur=2}] blastwandtime 4
scoreboard players set @s[scores={blastdur=3}] blastwandtime 8
scoreboard players set @s[scores={blastdur=4}] blastwandtime 13
scoreboard players set @s[scores={blastdur=5}] blastwandtime 19
scoreboard players set @s[scores={blastdur=6..}] blastwandtime 105

#(0.1s, 0.2s, 0.4s, 0.65s, 0.95s, 1.2s)

clear @s[scores={blastdur=6..}] stone_hoe

execute as @s[gamemode=adventure,scores={blastdur=6..}] at @s run particle minecraft:cloud ~ ~1.2 ~ .2 .2 .2 .1 20 force
execute as @s[gamemode=adventure,scores={blastdur=6..}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ .3 1
execute as @s[gamemode=adventure,scores={blastdur=6..}] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ .5 0
execute as @s[gamemode=adventure,scores={blastdur=6..}] at @s run playsound minecraft:block.barrel.close master @s ~ ~ ~ 1 0

item replace entity @s[scores={blastdur=1}] hotbar.2 with minecraft:golden_hoe[damage=5,custom_name={"italic":false,"text":"§aRecharging.."},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}]]
item replace entity @s[scores={blastdur=2}] hotbar.2 with minecraft:golden_hoe[damage=10,custom_name={"italic":false,"text":"§aRecharging.."},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}]]
item replace entity @s[scores={blastdur=3}] hotbar.2 with minecraft:golden_hoe[damage=15,custom_name={"italic":false,"text":"§aRecharging.."},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}]]
item replace entity @s[scores={blastdur=4}] hotbar.2 with minecraft:golden_hoe[damage=20,custom_name={"italic":false,"text":"§aRecharging.."},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}]]
item replace entity @s[scores={blastdur=5}] hotbar.2 with minecraft:golden_hoe[damage=25,custom_name={"italic":false,"text":"§aRecharging.."},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}]]
item replace entity @s[scores={blastdur=6..}] hotbar.2 with minecraft:golden_hoe[damage=31,custom_name={"italic":false,"text":"§aRecharging.."},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}]]

scoreboard players set @s[scores={blastdur=6..}] blastdur 2