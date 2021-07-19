#lev
tp @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] @s
effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] minecraft:levitation 1 50 true
effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] minecraft:speed 2 3 true
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run summon tnt ~ ~ ~ {Tags:["frost"],Fuse:1}
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] nolev 3
clear @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] white_dye 1

effect give @s[scores={nolev=0}] levitation 2 0 true