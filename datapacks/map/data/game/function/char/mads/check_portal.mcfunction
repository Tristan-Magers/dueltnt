tag @s remove near_portal
scoreboard players operation @e[name=Portal] tntID -= @s tntID
execute if entity @e[name=Portal,type=armor_stand,scores={tntID=0},distance=..16] run tag @s add near_portal
scoreboard players operation @e[name=Portal] tntID += @s tntID