tag @s remove new
scoreboard players add @s phantom 1
execute as @s at @s run spreadplayers 615 615 14 13 under 40 false @s

execute as @s at @s run execute if entity @s[scores={phantom=..5}] if entity @a[distance=..5,gamemode=adventure] run function game:mode/phantom/phantomsummonitem
execute as @s at @s run execute if entity @s[scores={phantom=6..10}] if entity @a[distance=..2,gamemode=adventure] run function game:mode/phantom/phantomsummonitem

execute as @s at @s run tp @s ~ ~ ~ facing entity @p

execute as @s at @s run particle minecraft:end_rod ~ ~.5 ~ 0 0 0 .1 10 force