execute as @s[scores={dx=1..}] at @s run function game:physics/movexhigh
execute as @s[scores={dx=..-1}] at @s run function game:physics/movexlow

scoreboard players remove @s[scores={dx=1..}] dx 1
scoreboard players add @s[scores={dx=..-1}] dx 1

execute as @s[scores={dx=1..}] at @s run function game:physics/wallmovex
execute as @s[scores={dx=..-1}] at @s run function game:physics/wallmovex