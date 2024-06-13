scoreboard players operation @a tntID -= @s tntID
execute as @a[scores={tntID=0}] at @s run playsound minecraft:block.note_block.snare master @p ~ ~ ~ 1 1.1
execute as @a[scores={tntID=0}] at @s run playsound minecraft:block.grass.break master @p ~ ~ ~ 1 1
scoreboard players operation @a tntID += @s tntID