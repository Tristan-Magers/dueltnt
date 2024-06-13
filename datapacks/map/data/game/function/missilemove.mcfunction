execute as @s at @s run tp @s ^ ^ ^.22
execute as @s at @s run particle poof ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s blast 1

kill @s[scores={blast=300..}]