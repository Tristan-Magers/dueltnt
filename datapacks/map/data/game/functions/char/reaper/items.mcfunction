#feather
scoreboard players remove @s[scores={feather_cooldown=0..}] feather_cooldown 1
scoreboard players set @s[scores={click=1..,feather_cooldown=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] click 0

effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] speed 1 4
effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] levitation 1 0
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ .6 .8
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] feather_cooldown 8
scoreboard players add @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] featheruse 1

execute as @s[scores={click=1..,featheruse=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run function game:player/class_team
execute as @s[scores={click=1..,featheruse=1},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":true},{"text":" (5 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=2},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":true},{"text":" (4 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=3},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":true},{"text":" (3 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=4},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":true},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=5},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":true},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=6},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":true},{"text":" (0 Remaining) ","color":"white"}]

clear @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] feather 1

#> Phantom Jump cosmetic
# Implemented by TheViralMelon
execute as 3184a2a5-8544-4135-89ec-e63fd7a3f12f if score #woa1PJumpTimer .num matches 1.. at @s run particle minecraft:dust_color_transition{from_color:[0.5,0.0,0.0],scale:3.0,to_color:[0.0,0.0,0.0]} ~ ~ ~ 0 0 0 0.5 1 force @a
execute as 3184a2a5-8544-4135-89ec-e63fd7a3f12f if score #woa1PJumpTimer .num matches 1.. at @s run particle minecraft:firework ~ ~ ~ 0.2 0 0.2 0.1 1 force @a
execute as 3184a2a5-8544-4135-89ec-e63fd7a3f12f if score #woa1PJumpTimer .num matches 10.. at @s run particle minecraft:end_rod ~ ~ ~ 0.35 0.35 0.35 0 5 force @a
execute if score #woa1PJumpTimer .num matches 1.. run scoreboard players remove #woa1PJumpTimer .num 1