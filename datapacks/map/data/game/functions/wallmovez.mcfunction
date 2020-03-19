execute as @s[scores={dz=1..}] at @s run function game:movezhigh
execute as @s[scores={dz=..-1}] at @s run function game:movezlow

scoreboard players remove @s[scores={dz=1..}] dz 1
scoreboard players add @s[scores={dz=..-1}] dz 1

execute as @s[scores={dz=1..}] at @s run function game:wallmovez
execute as @s[scores={dz=..-1}] at @s run function game:wallmovez