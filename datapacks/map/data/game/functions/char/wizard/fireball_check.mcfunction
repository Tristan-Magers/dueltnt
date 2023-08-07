execute as @s at @s positioned ~ ~.5 ~ positioned ~.5 ~ ~ run function game:physics/inblock
execute as @s[tag=in] at @s positioned ~ ~.5 ~ positioned ~-.5 ~ ~ run function game:physics/inblock
execute as @s[tag=in] at @s positioned ~ ~.5 ~ positioned ~ ~ ~.5 run function game:physics/inblock
execute as @s[tag=in] at @s positioned ~ ~.5 ~ positioned ~ ~ ~-.5 run function game:physics/inblock
execute as @s[tag=in] at @s positioned ~ ~.5 ~ positioned ~ ~.5 ~ run function game:physics/inblock
execute as @s[tag=in] at @s positioned ~ ~.5 ~ positioned ~ ~-.5 ~ run function game:physics/inblock

execute as @s[tag=!in] at @s run summon minecraft:marker ~ ~0.2 ~ {Tags:["soldiershift"]}
execute as @s[tag=!in] at @s run kill @s

