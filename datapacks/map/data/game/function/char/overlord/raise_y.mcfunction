execute as @s[scores={t1=0..}] at @s run tp @s ~ ~1 ~

scoreboard players remove @s t1 1
execute as @s[scores={t1=0..}] at @s run function game:char/overlord/raise_y