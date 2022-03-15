tag @s remove hascreep
scoreboard players operation @e[type=minecraft:creeper] tntID -= @s tntID
execute if entity @e[type=creeper,scores={tntID=0}] run tag @s add hascreep
scoreboard players operation @e[type=minecraft:creeper] tntID += @s tntID