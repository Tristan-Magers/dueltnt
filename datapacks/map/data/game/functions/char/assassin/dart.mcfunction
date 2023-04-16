execute at @s run summon armor_stand ~ ~ ~ {Tags:["dart"]}
execute at @s run tp @e[tag=dart] @s
execute at @s run scoreboard players set @e[tag=dart] laserDummy 300
execute at @s run execute as @e[tag=dart] at @s run function game:char/assassin/dartmove

playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 2
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2
playsound minecraft:entity.sheep.shear master @a ~ ~ ~ 1 1.5
playsound minecraft:block.lantern.hit master @a ~ ~ ~ 1 1.9

clear @s leather
scoreboard players set @s[scores={dartuse=..0}] dartcool 6
scoreboard players set @s[scores={dartuse=1..}] dartcool 40
scoreboard players add @s dartuse 1

scoreboard players set @s dartcool 7

execute as @s[scores={dartuse=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Explosive Dart","color":"red","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={dartuse=5}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Explosive Dart","color":"red","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={dartuse=6}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Explosive Dart","color":"red","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

