scoreboard players add @s hitscan 1

execute as @s at @s run tp ^ ^ ^.1
execute as @s at @s run function game:physics/inblock

tag @s[tag=orb,scores={hitscan=80..}] remove in

execute as @s[tag=in,scores={hitscan=..2000}] at @s run function game:hitscan

