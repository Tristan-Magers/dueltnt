scoreboard players operation @e[tag=megab] tntID -= @s tntID
execute as @e[scores={tntID=0},tag=!lit,tag=megab,distance=4.5..] run data merge entity @s {Fuse:9}
team join madChick @e[scores={tntID=0},tag=!lit,tag=megab,distance=4.5..]
tag @e[scores={tntID=0},tag=!lit,tag=megab,distance=4.5..] add lit
scoreboard players operation @e[tag=megab] tntID += @s tntID
