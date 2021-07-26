execute as @s[scores={dy=1..}] at @s run function game:physics/moveyhigh
execute as @s[scores={dy=..-1}] at @s run function game:physics/moveylow

scoreboard players remove @s[scores={dy=1..}] dy 1
scoreboard players add @s[scores={dy=..-1}] dy 1

execute as @s[scores={dy=1..}] at @s run function game:physics/wallmovey
execute as @s[scores={dy=..-1}] at @s run function game:physics/wallmovey