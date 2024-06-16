execute at @s run summon armor_stand ~ ~ ~ {Tags:["dart"],Invulnerable:1b,Marker:1b}
execute at @s run tp @e[tag=dart,limit=1,sort=nearest] @s
execute at @s run scoreboard players set @e[tag=dart,limit=1,sort=nearest] laserDummy 1000
execute at @s run execute as @e[tag=dart,limit=1,sort=nearest] at @s run function game:char/assassin/dartmove

playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 2
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2
playsound minecraft:entity.sheep.shear master @a ~ ~ ~ 1 1.5
playsound minecraft:block.lantern.hit master @a ~ ~ ~ 1 1.9

clear @s leather
scoreboard players add @s dartuse 1

scoreboard players set @s[scores={dartuse=..1}] dartcool 5
scoreboard players set @s[scores={dartuse=2..}] dartcool 35

#scoreboard players set @s dartcool 7

#execute as @s[scores={dartuse=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Explosive Dart","color":"red","bold":true},{"text":" (2 Remaining) ","color":"white"}]
#execute as @s[scores={dartuse=5}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Explosive Dart","color":"red","bold":true},{"text":" (1 Remaining) ","color":"white"}]
#execute as @s[scores={dartuse=6}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Explosive Dart","color":"red","bold":true},{"text":" (0 Remaining) ","color":"white"}]


