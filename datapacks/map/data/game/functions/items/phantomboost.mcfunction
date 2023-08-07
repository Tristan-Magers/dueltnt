effect give @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] speed 5 11
effect give @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] jump_boost 5 11

execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:entity.wolf.shake master @s ~ ~ ~ 1 2
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:entity.wolf.shake master @s ~ ~ ~ 1 1.5
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:entity.wolf.shake master @s ~ ~ ~ 1 1.2
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 1 0
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 2 0
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:block.note_block.cow_bell master @s

function game:player/class_team
tellraw @a [{"selector":"@s"},{"text":" used ","color":"gray","bold":false},{"text":"Phantom Boost","color":"dark_aqua","bold":true}]
clear @s cookie
scoreboard players set @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] phantomboost 101