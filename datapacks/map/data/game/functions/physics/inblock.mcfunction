tag @s remove in

execute if block ~ ~ ~ air run tag @s add in

execute as @s[tag=!in] run function game:physics/detailin

execute as @s at @s positioned ~ -100 ~ run tag @s[distance=..100] remove in