effect give @s minecraft:blindness 2
effect give @s minecraft:slowness 3 4

tp @s ~ ~1 ~
execute as @s at @s if block ~ ~.9 ~ minecraft:black_stained_glass if block ~ ~1.9 ~ minecraft:black_stained_glass run function game:darkpillar
#execute as @s at @s if block ~ ~ ~ minecraft:black_stained_glass if block ~ ~.1 ~ minecraft:air run tp @s ~ ~ ~

scoreboard players set @s DPeffect 40