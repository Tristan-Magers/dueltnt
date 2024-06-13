execute as @s at @s run tp @s ^ ^ ^.28
execute as @s at @s run particle crit ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s blast 1
execute unless entity @e[scores={mode=1}] run execute as @s[scores={blast=82..}] at @s run particle crit ~ ~ ~ .2 .2 .2 0 20 force
execute if entity @e[scores={mode=1}] run execute as @s[scores={blast=94..}] at @s run particle crit ~ ~ ~ .2 .2 .2 0 20 force

execute unless entity @e[scores={mode=1}] run kill @s[scores={blast=82..}]
execute if entity @e[scores={mode=1}] run kill @s[scores={blast=94..}]