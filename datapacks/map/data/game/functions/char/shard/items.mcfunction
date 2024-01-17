#lev
scoreboard players remove @s[scores={float_cooldown=0..}] float_cooldown 1
scoreboard players set @s[scores={click=1..,float_cooldown=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] click 0

tp @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] @s
effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] minecraft:levitation 1 50 true
effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] minecraft:speed 2 3 true

execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @a[distance=..50] ~ ~ ~ 1 2
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 2

execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run summon tnt ~ ~ ~ {Tags:["frost"],fuse:1}
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] float_cooldown 16
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] nolev 3
scoreboard players add @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] floatuse 1

execute as @s[scores={click=1..,floatuse=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] run function game:player/class_team
execute as @s[scores={click=1..,floatuse=1},nbt={SelectedItem:{id:"minecraft:white_dye"}}] run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Float","color":"dark_aqua","bold":true},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,floatuse=2},nbt={SelectedItem:{id:"minecraft:white_dye"}}] run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Float","color":"dark_aqua","bold":true},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={click=1..,floatuse=3},nbt={SelectedItem:{id:"minecraft:white_dye"}}] run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Float","color":"dark_aqua","bold":true},{"text":" (0 Remaining) ","color":"white"}]

clear @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:white_dye"}}] white_dye 1

effect give @s[scores={nolev=0}] levitation 2 0 true