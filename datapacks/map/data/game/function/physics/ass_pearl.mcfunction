#execute as @s[scores={ass_pearl=1..}] at @s run tp @s @s

execute as @s[scores={ass_pearl=1}] at @s run scoreboard players set $x delta.api.launch 0
execute as @s[scores={ass_pearl=1}] at @s run scoreboard players set $y delta.api.launch -5500
execute as @s[scores={ass_pearl=1}] at @s run scoreboard players set $z delta.api.launch 0
execute as @s[scores={ass_pearl=1}] at @s run function delta:api/launch_xyz

scoreboard players remove @s ass_pearl 1