execute at @s run summon armor_stand ~ ~ ~ {Tags:["dart"]}
execute at @s run tp @e[tag=dart] @s
execute at @s run scoreboard players set @e[tag=dart] laserDummy 300
execute at @s run execute as @e[tag=dart] at @s run function items:dartmove

clear @s leather
scoreboard players add @s dartuse 1
scoreboard players set @s dartcool 7