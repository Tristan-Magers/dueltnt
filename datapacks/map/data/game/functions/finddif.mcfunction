scoreboard players operation @s R11 -= @s R1
scoreboard players operation @s R22 -= @s R2

scoreboard players remove @s[scores={R11=180..}] R11 500
scoreboard players add @s[scores={R11=..-180}] R11 500

