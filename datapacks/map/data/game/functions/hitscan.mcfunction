scoreboard players add @s hitscan 1

execute as @s at @s run tp ^ ^ ^.1
execute as @s at @s run function game:physics/inblock

execute as @s[tag=orb] at @s run particle minecraft:ash ~ ~ ~ 0 0 0 0 1 force
tag @s[tag=orb,scores={hitscan=85..}] remove in

execute as @s[tag=in,scores={hitscan=..2000}] at @s run function game:hitscan

