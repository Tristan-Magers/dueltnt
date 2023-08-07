scoreboard players set @s dy -40
execute as @s at @s run function game:physics/wallmovey

execute at @s positioned ~0.4 ~-1 ~0.4 unless block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ air
execute at @s positioned ~-0.4 ~-1 ~-0.4 unless block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ air
execute at @s positioned ~0.4 ~-1 ~-0.4 unless block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ air
execute at @s positioned ~-0.4 ~-1 ~0.4 unless block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ air

scoreboard players remove @s grave 1