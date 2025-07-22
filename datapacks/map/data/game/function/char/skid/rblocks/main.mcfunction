#
scoreboard players add @s raintimer 1

execute as @s[scores={raintimer=26..}] at @s if block ~ ~ ~ purple_stained_glass run setblock ~ ~ ~ air
kill @s[scores={raintimer=26..}]