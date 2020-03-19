scoreboard players operation @e[type=ender_pearl] tntID -= @s tntID
kill @e[type=ender_pearl,scores={tntID=0}]
scoreboard players operation @e[type=ender_pearl] tntID += @s tntID