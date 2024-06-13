#
execute as @s[scores={DirZ=1..}] at @s run tp @s ~ ~ ~0.001
execute as @s[scores={DirZ=..-1}] at @s run tp @s ~ ~ ~-0.001

scoreboard players remove @s[scores={DirZ=1..}] DirZ 1
scoreboard players add @s[scores={DirZ=..-1}] DirZ 1

execute as @s[scores={DirZ=1..}] at @s run function game:physics/z_move_rec
execute as @s[scores={DirZ=..-1}] at @s run function game:physics/z_move_rec