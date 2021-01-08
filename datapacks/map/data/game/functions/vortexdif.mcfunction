scoreboard players operation @a tntID -= @s tntID

tag @e remove pull
tag @a[gamemode=adventure,scores={tntID=1..}] add pull
tag @a[gamemode=adventure,scores={tntID=..-1}] add pull
tag @e[type=zombie] add pull

scoreboard players operation @a tntID += @s tntID

scoreboard players operation @e[tag=pull] tntID -= @s tntID
tag @e[tag=pull,scores={tntID=0}] remove pull
scoreboard players operation @e[tag=pull] tntID += @s tntID

execute as @s[scores={vortex=..100}] at @s run effect give @e[distance=..8,tag=pull] levitation 1 0

execute as @e[distance=..8,tag=pull] at @s run execute store result score @s dx run data get entity @s Pos[0] 1.5
execute as @e[distance=..8,tag=pull] at @s run execute store result score @s dy run data get entity @s Pos[1] 1.5
execute as @e[distance=..8,tag=pull] at @s run execute store result score @s dz run data get entity @s Pos[2] 1.5

execute store result score @s x run data get entity @s Pos[0] 1.5
execute store result score @s y run data get entity @s Pos[1] 1.5
execute store result score @s z run data get entity @s Pos[2] 1.5

scoreboard players operation @e[distance=..8,tag=pull] dx -= @s x
scoreboard players operation @e[distance=..8,tag=pull] dy -= @s y
scoreboard players operation @e[distance=..8,tag=pull] dz -= @s z

execute as @e[distance=..8,tag=pull] at @s run scoreboard players operation @s x = @s dx
execute as @e[distance=..8,tag=pull] at @s run scoreboard players operation @s y = @s dy
execute as @e[distance=..8,tag=pull] at @s run scoreboard players operation @s z = @s dz

scoreboard players operation @e[distance=..8,scores={dx=1..},tag=pull] x += @e[scores={vortexdisneg=..-1},limit=1] vortexdisneg
scoreboard players operation @e[distance=..8,scores={dy=1..},tag=pull] y += @e[scores={vortexdisneg=..-1},limit=1] vortexdisneg
scoreboard players operation @e[distance=..8,scores={dz=1..},tag=pull] z += @e[scores={vortexdisneg=..-1},limit=1] vortexdisneg

scoreboard players operation @e[distance=..8,scores={dx=..-1},tag=pull] x += @e[scores={vortexdis=0..},limit=1] vortexdis
scoreboard players operation @e[distance=..8,scores={dy=..-1},tag=pull] y += @e[scores={vortexdis=0..},limit=1] vortexdis
scoreboard players operation @e[distance=..8,scores={dz=..-1},tag=pull] z += @e[scores={vortexdis=0..},limit=1] vortexdis

execute as @e[distance=..8,tag=pull] at @s run scoreboard players operation @s dx = @s x
execute as @e[distance=..8,tag=pull] at @s run scoreboard players operation @s dy = @s y
execute as @e[distance=..8,tag=pull] at @s run scoreboard players operation @s dz = @s z

execute as @e[distance=..8,tag=pull] at @s run function game:detailwall