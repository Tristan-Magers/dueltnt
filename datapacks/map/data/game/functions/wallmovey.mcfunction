execute as @s[scores={dy=1..}] at @s run function game:moveyhigh
execute as @s[scores={dy=..-1}] at @s run function game:moveylow

scoreboard players remove @s[scores={dy=1..}] dy 1
scoreboard players add @s[scores={dy=..-1}] dy 1

execute as @s[scores={dy=1..}] at @s run function game:wallmovey
execute as @s[scores={dy=..-1}] at @s run function game:wallmovey