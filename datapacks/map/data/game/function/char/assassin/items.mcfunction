#
#effect give @s speed 2 1 true

#dart
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:leather"}}] at @s run function game:char/assassin/dart

execute as @s[scores={dartcool=0,dartuse=2..}] run function game:char/assassin/give/magic_star {"amount":2}
item replace entity @s[scores={dartcool=0,dartuse=1}] hotbar.1 with minecraft:leather[custom_name={"italic":false,"text":"§7Explosive Dart §r: Right-click"},lore=[{"italic":false,"color":"white","text":"1 TNT (immovable)"},{"italic":false,"color":"white","text":"Reload: 1.75s (alternates)"},{"italic":false,"color":"white","text":"Fuse: 0.4s"},{"italic":false,"color":"white","text":"Speed: 30bps"},{"italic":false,"color":"white","text":"Cooldown: 0.25s"}]] 1
item replace entity @s[scores={dartcool=0,dartuse=..0}] hotbar.1 with minecraft:leather[custom_name={"italic":false,"text":"§7Explosive Dart §r: Right-click"},lore=[{"italic":false,"color":"white","text":"1 TNT (immovable)"},{"italic":false,"color":"white","text":"Reload: 1.75s (alternates)"},{"italic":false,"color":"white","text":"Fuse: 0.4s"},{"italic":false,"color":"white","text":"Speed: 30bps"},{"italic":false,"color":"white","text":"Cooldown: 0.25s"}]] 2

execute as @s[scores={dartcool=0,dartuse=1}] run function game:char/assassin/give/dart {"amount":1}
execute as @s[scores={dartcool=0,dartuse=..0}] run function game:char/assassin/give/dart {"amount":2}

scoreboard players remove @s[scores={dartcool=0..}] dartcool 1

# star reloading
execute as @s[scores={star=1..}] at @s run kill @e[sort=nearest,limit=1,type=item]
scoreboard players add @s[scores={star=1..},nbt={SelectedItem:{id:"minecraft:nether_star"}}] starUse 1
scoreboard players set @s[scores={starT=..0,starUse=2..}] starT 1
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:nether_star"}}] at @s run function game:items/magicstar

execute as @s[scores={starT=7..,starUse=1}] run function game:char/assassin/give/magic_star {"amount":1}
scoreboard players set @s[scores={starT=7..,starUse=1}] starT 0
execute as @s[scores={starT=35..}] run function game:char/assassin/give/dart {"amount":2}

scoreboard players set @s[scores={starT=35..}] starUse 0
scoreboard players set @s[scores={starT=35..}] dartuse 0
scoreboard players set @s[scores={starT=35..}] starT 0

scoreboard players add @s[scores={starT=1..}] starT 1
scoreboard players remove @s[scores={star=1..}] star 1

#sneak attack
execute as @s[scores={squidegg=1..,squidegguse=1..}] at @s run function game:player/class_team
execute as @s[scores={squidegg=1..}] at @s run scoreboard players set @s shift_cool 0
execute as @s[scores={squidegg=1..}] at @s run scoreboard players set @s timer 0
execute as @s[scores={squidegg=1..,squidegguse=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Sneak Attack","color":"blue","bold":true},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={squidegg=1..,squidegguse=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Sneak Attack","color":"blue","bold":true},{"text":" (0 Remaining) ","color":"white"}]
execute as @s[scores={squidegg=1..,squidegguse=3}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Sneak Attack","color":"blue","bold":true},{"text":" (0 Remaining) ","color":"white"}]
execute as @s[scores={squidegg=1..,squidegguse=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Sneak Attack","color":"blue","bold":true},{"text":" (0 Remaining) ","color":"white"}]

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
scoreboard players set @s[scores={FZtimer=60}] FZtimer 51
scoreboard players remove @s[scores={FZtimer=1..}] FZtimer 1
execute as @s[scores={FZtimer=169}] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ .5 .7
execute as @s[scores={FZtimer=169}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ .7 1

execute as @s[scores={FZtimer=169}] at @s run playsound minecraft:entity.snow_golem.death master @a ~ ~ ~ 1 1.8
execute as @s[scores={FZtimer=169}] at @s run playsound minecraft:entity.snow_golem.shear master @a ~ ~ ~ 1 1.2

execute as @s[scores={FZtimer=165}] at @s at @a[distance=0.01..3.25,gamemode=adventure] run particle minecraft:snowflake ~ ~1 ~ 0.5 0.3 0.5 0.2 20 force
execute as @s[scores={FZtimer=165}] at @s at @e[tag=dummy,distance=..3.25] run particle minecraft:snowflake ~ ~1 ~ 0.5 0.3 0.5 0.2 20 force

execute as @s[scores={FZtimer=165}] at @s at @a[distance=0.01..3.25,gamemode=adventure] run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 0
execute as @s[scores={FZtimer=165}] at @s at @e[tag=dummy,distance=..3.25] run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 0

execute as @s[scores={FZtimer=165}] at @s run scoreboard players set @a[distance=0.01..3.25,gamemode=adventure] frozen 30
execute as @s[scores={FZtimer=165}] at @s run scoreboard players set @e[tag=dummy,distance=..3.25] frozen 30
execute as @s[scores={FZtimer=165}] at @s run item replace entity @e[type=minecraft:skeleton,distance=..3.25] weapon.mainhand with air
execute as @s[scores={FZtimer=165}] at @s run item replace entity @e[type=minecraft:skeleton,distance=..3.25] weapon.offhand with air
execute as @s[scores={FZtimer=165}] at @s run effect give @e[type=minecraft:skeleton,distance=..4] glowing 2 1 true

execute as @s[scores={FZtimer=1}] run function game:char/assassin/give/mass_freeze

execute as @s[scores={FZtimer=169}] at @s run particle dripping_water ~ ~ ~ 2.3 2.3 2.3 0 200 force @a
execute as @s[scores={FZtimer=165}] at @s run particle block{block_state: 'minecraft:packed_ice'} ~ ~ ~ 2.3 2.3 2.3 0 100 force @a
execute as @s[scores={FZtimer=165}] at @s run particle flash ~ ~ ~ 0 0 0 0 1 force @a
execute as @s[scores={FZtimer=165}] at @s run effect give @p minecraft:levitation 2
execute as @s[scores={FZtimer=165}] at @s run effect give @p minecraft:speed 2 2 true
execute as @s[scores={FZtimer=165}] at @s run scoreboard players set @s nolev 28

#
tag @s[tag=ender_tnt_land] remove air  
execute at @s[tag=ender_tnt_land] if block ~0.3 ~-0.5 ~0.3 air if block ~0.3 ~-1.5 ~0.3 air if block ~0.3 ~-2.5 ~0.3 air if block ~0.3 ~-0.5 ~-0.3 air if block ~0.3 ~-1.5 ~-0.3 air if block ~0.3 ~-2.5 ~-0.3 air if block ~-0.3 ~-0.5 ~0.3 air if block ~-0.3 ~-1.5 ~0.3 air if block ~-0.3 ~-2.5 ~0.3 air if block ~-0.3 ~-0.5 ~-0.3 air if block ~-0.3 ~-1.5 ~-0.3 air if block ~-0.3 ~-2.5 ~-0.3 air run tag @s add air
execute as @s[tag=ender_tnt_land,tag=!air] run summon armor_stand ~ ~0.2 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",fuse:14,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
execute as @s[tag=ender_tnt_land,tag=!air] run summon armor_stand ~ ~0.2 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",fuse:14,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
execute as @s[tag=ender_tnt_land,tag=!air] at @s run tp @s ~ ~0.5 ~
tag @s remove ender_tnt_land
