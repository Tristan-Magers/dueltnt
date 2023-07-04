#
execute as @s[scores={DirX=1..}] at @s run tp @s ~0.001 ~ ~
execute as @s[scores={DirX=..-1}] at @s run tp @s ~-0.001 ~ ~

scoreboard players remove @s[scores={DirX=1..}] DirX 1
scoreboard players add @s[scores={DirX=..-1}] DirX 1

execute as @s[scores={DirX=1..}] at @s run function game:physics/x_move_rec
execute as @s[scores={DirX=..-1}] at @s run function game:physics/x_move_rec
