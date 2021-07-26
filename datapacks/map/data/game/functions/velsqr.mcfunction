scoreboard players add @s t1 2

scoreboard players operation @s t2 = @s t1
scoreboard players operation @s t2 *= @s t2

execute if score @s t2 < @s vel run function game:velsqr