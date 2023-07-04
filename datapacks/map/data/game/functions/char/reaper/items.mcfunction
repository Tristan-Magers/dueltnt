#feather
scoreboard players remove @s[scores={feather_cooldown=0..}] feather_cooldown 1
scoreboard players set @s[scores={click=1..,feather_cooldown=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] click 0

effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] speed 1 4
effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] levitation 1 0
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ .6 .8
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] feather_cooldown 8
scoreboard players add @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] featheruse 1

execute as @s[scores={click=1..,featheruse=1},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (5 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=2},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (4 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=3},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=4},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=5},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,featheruse=6},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

clear @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] feather 1
