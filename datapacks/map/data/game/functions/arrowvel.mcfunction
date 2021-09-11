execute store result score @s DirX run data get entity @s Motion[1] 1000
execute store result score @s DirY run data get entity @s Motion[0] 1000
execute store result score @s DirZ run data get entity @s Motion[2] 1000

scoreboard players operation @s t1 = @s DirX
scoreboard players operation @s t1 *= @s DirX
scoreboard players operation @s t2 = @s DirZ
scoreboard players operation @s t2 *= @s DirZ
scoreboard players operation @s t3 = @s DirY
scoreboard players operation @s t3 *= @s DirY

scoreboard players set @s vel 0
scoreboard players operation @s vel += @s t1
scoreboard players operation @s vel += @s t2
scoreboard players operation @s vel += @s t3

scoreboard players set @s t1 0
function game:velsqr

scoreboard players operation @s vel = @s t1

#scoreboard players operation @e[tag=trackshot2,tag=newbomb,limit=1] vel = @s vel