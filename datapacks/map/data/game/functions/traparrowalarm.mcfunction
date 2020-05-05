scoreboard players operation @a tntID -= @s tntID
execute if entity @e[tag=dummy,distance=..3] run scoreboard players set @a[scores={tntID=0,alarm=..0}] alarm 5
#execute if entity @a[scores={tntID=0},distance=..3] run scoreboard players set @a[scores={tntID=0,alarm=..0}] alarm 5
execute if entity @a[scores={tntID=1..},distance=..3] run scoreboard players set @a[scores={tntID=0,alarm=..0}] alarm 5
execute if entity @a[scores={tntID=..-1},distance=..3] run scoreboard players set @a[scores={tntID=0,alarm=..0}] alarm 5
scoreboard players operation @a tntID += @s tntID

#playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1 1