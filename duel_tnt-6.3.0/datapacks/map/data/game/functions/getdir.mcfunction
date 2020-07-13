execute store result score @s DirX run data get entity @s Pos[1] -200
execute store result score @s DirY run data get entity @s Pos[0] -7500
execute store result score @s DirZ run data get entity @s Pos[2] -7500
tp @s ^ ^ ^.1
execute store result score @s tDirX run data get entity @s Pos[1] -200
execute store result score @s tDirY run data get entity @s Pos[0] -7500
execute store result score @s tDirZ run data get entity @s Pos[2] -7500
tp @s ^ ^ ^-.1
scoreboard players operation @s DirX -= @s tDirX
scoreboard players operation @s DirY -= @s tDirY
scoreboard players operation @s DirZ -= @s tDirZ
