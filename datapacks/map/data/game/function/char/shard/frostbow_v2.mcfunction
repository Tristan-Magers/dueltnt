# VERSION 2 Frostbow
# Adds extra arrows
# In this version arrows are shot in same exact direction (Season 9 change)

#
scoreboard players set @s FrostBow 1
data merge entity @s {NoGravity:0}

execute store result score @s DirX run data get entity @s Motion[0] 1000
execute store result score @s DirY run data get entity @s Motion[1] 1000
execute store result score @s DirZ run data get entity @s Motion[2] 1000

#right arrow
#execute as @p[gamemode=adventure,distance=..10,scores={class=10}] at @s run function game:uuid/setf2
#scoreboard players set @e[tag=farrowt] FrostBow 1

#execute store result entity @e[tag=farrowt,limit=1] Motion[1] double .001 run scoreboard players get @s DirY
#execute store result entity @e[tag=farrowt,limit=1] Motion[2] double .001 run scoreboard players get @s DirZ
#execute store result entity @e[tag=farrowt,limit=1] Motion[0] double .001 run scoreboard players get @s DirX

#tag @e[tag=farrowt] add sidearrow
#tag @e[tag=farrowt] remove farrowt

#left arrow
#execute as @p[gamemode=adventure,distance=..10,scores={class=10}] at @s run function game:uuid/setf
#scoreboard players set @e[tag=farrowt] FrostBow 1

#execute store result entity @e[tag=farrowt,limit=1] Motion[1] double .001 run scoreboard players get @s DirY
#execute store result entity @e[tag=farrowt,limit=1] Motion[2] double .001 run scoreboard players get @s DirZ
#execute store result entity @e[tag=farrowt,limit=1] Motion[0] double .001 run scoreboard players get @s DirX

#tag @e[tag=farrowt] add sidearrow
#tag @e[tag=farrowt] remove farrowt

#
kill @e[tag=frostmark]