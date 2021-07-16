execute as @s at @s run function game:blast
execute as @s at @s run function game:inblock
execute at @s at @s positioned ~ ~-1 ~ if entity @e[type=slime,distance=..1.5] run tag @s remove in
execute at @s at @s positioned ~ ~-1 ~ if entity @e[type=minecraft:magma_cube,distance=..1.5] run tag @s remove in
execute as @s[tag=!in] at @s run function game:blaststrike
execute as @s at @s run function game:blast
execute as @s at @s run function game:inblock
execute at @s at @s positioned ~ ~-1 ~ if entity @e[type=slime,distance=..1.5] run tag @s remove in
execute at @s at @s positioned ~ ~-1 ~ if entity @e[type=minecraft:magma_cube,distance=..1.5] run tag @s remove in
execute as @s[tag=!in,tag=!hit] at @s run function game:blaststrike