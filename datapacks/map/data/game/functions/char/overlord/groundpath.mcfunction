
scoreboard players add @s masterb 1
execute as @s[tag=!bar,scores={masterb=1..20}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 gold_ore replace air
execute as @s[scores={masterb=25..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace gold_ore
execute as @s[scores={masterb=25..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace blue_ice
execute if block ~ ~ ~ barrier run tag @s add bar
execute as @s[scores={masterb=1..20}] at @s run tp ^ ^ ^.4
execute as @s[scores={masterb=21}] at @s run tp ^ ^ ^-8
execute as @s[scores={masterb=25..45}] at @s run tp ^ ^ ^.4
kill @s[scores={masterb=45}]

execute as @s[scores={masterb=2..3}] at @s run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 0
execute as @s[scores={masterb=6..9}] at @s run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 .4
execute as @s[scores={masterb=10..13}] at @s run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 .8
execute as @s[scores={masterb=14..17}] at @s run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 1.2
execute as @s[scores={masterb=18..21}] at @s run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 1.6
execute as @s[scores={masterb=22..25}] at @s run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 2

execute as @s[tag=end_game] at @s run function game:char/overlord/groundpath

