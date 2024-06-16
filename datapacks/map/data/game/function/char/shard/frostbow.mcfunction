scoreboard players set @s FrostBow 1
data merge entity @s {NoGravity:0}

execute store result score @s DirX run data get entity @s Motion[0] 1000
execute store result score @s DirY run data get entity @s Motion[1] 1000
execute store result score @s DirZ run data get entity @s Motion[2] 1000

scoreboard players operation @s mult = @s DirX
scoreboard players operation @s mult *= @s mult

scoreboard players operation @s mult2 = @s DirZ
scoreboard players operation @s mult2 *= @s mult2

scoreboard players operation @s mult += @s mult2

scoreboard players operation @s mult2 = @s DirY
scoreboard players operation @s mult2 *= @s mult2

#scoreboard players operation @s mult += @s mult2

scoreboard players operation @s sqtest = @s mult
scoreboard players set @s sqval 0
function game:sqroot
scoreboard players operation @s mult = @s sqval

summon armor_stand ~ ~ ~ {Tags:["frostmark"],Marker:1,Silent:1,Invulnerable:1}
tp @e[tag=frostmark,limit=1] @p[gamemode=adventure,distance=..10,scores={class=10}]

#right arrow
execute as @e[tag=frostmark,limit=1] at @s run tp @s ~ ~ ~ ~8 0
execute as @e[tag=frostmark,limit=1] at @s run function game:puredir

execute as @p[gamemode=adventure,distance=..10,scores={class=10}] at @s run function game:uuid/setf2
scoreboard players set @e[tag=farrowt] FrostBow 1

execute store result entity @e[tag=farrowt,limit=1] Motion[1] double .001 run scoreboard players get @s DirY

scoreboard players operation @s mag = @e[tag=frostmark,limit=1] DirZ
scoreboard players operation @s mag *= @s mult

execute store result entity @e[tag=farrowt,limit=1] Motion[2] double -.00001 run scoreboard players get @s mag

scoreboard players operation @s mag = @e[tag=frostmark,limit=1] DirX
scoreboard players operation @s mag *= @s mult

execute store result entity @e[tag=farrowt,limit=1] Motion[0] double -.00001 run scoreboard players get @s mag

tag @e[tag=farrowt] add sidearrow
tag @e[tag=farrowt] remove farrowt

#left arrow
execute as @e[tag=frostmark,limit=1] at @s run tp @s ~ ~ ~ ~-16 0
execute as @e[tag=frostmark,limit=1] at @s run function game:puredir

execute as @p[gamemode=adventure,distance=..10,scores={class=10}] at @s run function game:uuid/setf
scoreboard players set @e[tag=farrowt] FrostBow 1

execute store result entity @e[tag=farrowt,limit=1] Motion[1] double .001 run scoreboard players get @s DirY

scoreboard players operation @s mag = @e[tag=frostmark,limit=1] DirZ
scoreboard players operation @s mag *= @s mult

execute store result entity @e[tag=farrowt,limit=1] Motion[2] double -.00001 run scoreboard players get @s mag

scoreboard players operation @s mag = @e[tag=frostmark,limit=1] DirX
scoreboard players operation @s mag *= @s mult

execute store result entity @e[tag=farrowt,limit=1] Motion[0] double -.00001 run scoreboard players get @s mag

tag @e[tag=farrowt] add sidearrow
tag @e[tag=farrowt] remove farrowt

kill @e[tag=frostmark]