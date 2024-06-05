effect give @s minecraft:blindness 2
effect give @s minecraft:slowness 3 4
effect give @s minecraft:glowing 1

execute at @s run tag @e[scores={NArrow=1},name="NArrow",distance=..4.5] add hit_player

tp @s ~ ~1 ~
execute as @s at @s if block ~0.3 ~.9 ~0.3 minecraft:black_stained_glass if block ~0.3 ~1.9 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s at @s if block ~0.3 ~.9 ~-0.3 minecraft:black_stained_glass if block ~0.3 ~1.9 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s at @s if block ~-0.3 ~.9 ~0.3 minecraft:black_stained_glass if block ~-0.3 ~1.9 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s at @s if block ~-0.3 ~.9 ~-0.3 minecraft:black_stained_glass if block ~-0.3 ~1.9 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
#execute as @s at @s if block ~ ~ ~ minecraft:black_stained_glass if block ~ ~.1 ~ minecraft:air run tp @s ~ ~ ~

scoreboard players set @s DPeffect 40