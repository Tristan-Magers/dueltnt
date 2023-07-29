#
#effect give @s speed 2 1 true

#dart
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:leather"}}] at @s run function game:char/assassin/dart

item replace entity @s[scores={dartcool=0,dartuse=2..}] hotbar.1 with nether_star{display:{Name:"{\"italic\":false,\"text\":\"Magic Star §f: Right-click\"}"}} 2
item replace entity @s[scores={dartcool=0,dartuse=1}] hotbar.1 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 1
item replace entity @s[scores={dartcool=0,dartuse=..0}] hotbar.1 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 2
#item replace entity @s[scores={dartcool=0,dartuse=0}] hotbar.4 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 6
#item replace entity @s[scores={dartcool=0,dartuse=1}] hotbar.4 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 5
#item replace entity @s[scores={dartcool=0,dartuse=2}] hotbar.4 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 4
#item replace entity @s[scores={dartcool=0,dartuse=3}] hotbar.4 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 3
#item replace entity @s[scores={dartcool=0,dartuse=4}] hotbar.4 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 2
#item replace entity @s[scores={dartcool=0,dartuse=5}] hotbar.4 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 1

#item replace entity @s[scores={dartcool=0,dartuse=6}] hotbar.4 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 1
scoreboard players remove @s[scores={dartcool=0..}] dartcool 1

# star reloading
execute as @s[scores={star=1..}] at @s run kill @e[sort=nearest,limit=1,type=item]
scoreboard players add @s[scores={star=1..},nbt={SelectedItem:{id:"minecraft:nether_star"}}] starUse 1
scoreboard players set @s[scores={starT=..0,starUse=2..}] starT 1
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:nether_star"}}] at @s run function game:items/magicstar

item replace entity @s[scores={starT=7..,starUse=1}] hotbar.1 with nether_star{display:{Name:"{\"italic\":false,\"text\":\"Magic Star §f: Right-click\"}"}} 1
scoreboard players set @s[scores={starT=7..,starUse=1}] starT 0
item replace entity @s[scores={starT=35..}] hotbar.1 with minecraft:leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 2
#item replace entity @s[scores={starT=40..}] hotbar.1 with nether_star{display:{Name:"{\"italic\":false,\"text\":\"Magic Star §f: Right-click\"}"}} 2
scoreboard players set @s[scores={starT=35..}] starUse 0
scoreboard players set @s[scores={starT=35..}] dartuse 0
scoreboard players set @s[scores={starT=35..}] starT 0

scoreboard players add @s[scores={starT=1..}] starT 1
scoreboard players remove @s[scores={star=1..}] star 1

#sneak attack
execute as @s[scores={squidegg=1..,squidegguse=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Sneak Attack","color":"blue","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={squidegg=1..,squidegguse=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Sneak Attack","color":"blue","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]
execute as @s[scores={squidegg=1..,squidegguse=3}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Sneak Attack","color":"blue","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]
execute as @s[scores={squidegg=1..,squidegguse=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Sneak Attack","color":"blue","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

scoreboard players remove @s[scores={sneakdisable=1..}] sneakdisable 1

execute as @s[scores={squidegg=1..}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @s[scores={squidegg=1..}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0

execute as @s[scores={squidegg=1..}] at @s run tag @a remove sneakat
execute as @s[scores={squidegg=1..}] at @s run tag @a[gamemode=adventure,distance=..100] add sneakat
execute as @s[scores={squidegg=1..}] at @s run tag @e[tag=dummy] add sneakat
execute as @s[scores={squidegg=1..}] at @s run tag @s remove sneakat
execute as @s[scores={squidegg=1..}] at @s run execute as @e[tag=sneakat,limit=1,sort=nearest] at @s run tp @a[scores={squidegg=1..}] @s
effect give @s[scores={squidegg=1..}] slow_falling 2
execute as @s[scores={squidegg=1..}] at @s run tp @s ~ 35 ~ ~ 70

execute as @s[scores={squidegg=1..}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @s[scores={squidegg=1..}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0

scoreboard players set @s squidegg 0

# mass freeze
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond"}}] FZtimer 170
clear @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond"}}] diamond
scoreboard players set @s[scores={FZtimer=60}] FZtimer 30
scoreboard players remove @s[scores={FZtimer=1..}] FZtimer 1
execute as @s[scores={FZtimer=169}] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ .5 .7
execute as @s[scores={FZtimer=169}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .7 1

execute as @s[scores={FZtimer=169}] at @s run scoreboard players set @a[distance=..3,gamemode=adventure] frozen 40
execute as @s[scores={FZtimer=169}] at @s run scoreboard players set @e[tag=dummy,distance=..3,gamemode=adventure] frozen 60
item replace entity @s[scores={FZtimer=1}] hotbar.3 with diamond{display:{Name:"{\"italic\":false,\"text\":\"§3Mass Freeze§r §r: Right-click [everyone within 3 blocks]\"}"}}
execute as @s[scores={FZtimer=169}] at @s run particle dripping_water ~ ~ ~ 2 2 2 0 250 force @a
execute as @s[scores={FZtimer=169}] at @s run scoreboard players set @p[distance=..2,gamemode=adventure] frozen 0
execute as @s[scores={FZtimer=169}] at @s run effect give @p minecraft:levitation 2
execute as @s[scores={FZtimer=169}] at @s run effect give @p minecraft:speed 2 2 true
execute as @s[scores={FZtimer=169}] at @s run scoreboard players set @s nolev 28

#
tag @s[tag=ender_tnt_land] remove air  
execute at @s[tag=ender_tnt_land] if block ~0.3 ~-0.5 ~0.3 air if block ~0.3 ~-1.5 ~0.3 air if block ~0.3 ~-2.5 ~0.3 air if block ~0.3 ~-0.5 ~-0.3 air if block ~0.3 ~-1.5 ~-0.3 air if block ~0.3 ~-2.5 ~-0.3 air if block ~-0.3 ~-0.5 ~0.3 air if block ~-0.3 ~-1.5 ~0.3 air if block ~-0.3 ~-2.5 ~0.3 air if block ~-0.3 ~-0.5 ~-0.3 air if block ~-0.3 ~-1.5 ~-0.3 air if block ~-0.3 ~-2.5 ~-0.3 air run tag @s add air
execute as @s[tag=ender_tnt_land,tag=!air] run summon armor_stand ~ ~0.2 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",Fuse:14,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
execute as @s[tag=ender_tnt_land,tag=!air] run summon armor_stand ~ ~0.2 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",Fuse:14,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
execute as @s[tag=ender_tnt_land,tag=!air] at @s run tp @s ~ ~0.5 ~
tag @s remove ender_tnt_land
