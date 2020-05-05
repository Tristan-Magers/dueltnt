execute as @s at @s run function game:getdir2

summon minecraft:fireball ~ ~ ~ {Tags:["trackshot2","newtrack"],Motion:[0.0d, 0.0d, 0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d, -0.001d, 0.0d]}
scoreboard players operation @e[limit=1,tag=newtrack,sort=nearest] tntID = @s tntID
scoreboard players set @e[limit=1,tag=newtrack,sort=nearest] BombBow 1

# writing uuid data 
data modify storage proj fireball.OwnerUUIDMost set from entity @p UUIDMost
data modify storage proj fireball.OwnerUUIDLeast set from entity @p UUIDLeast

# data writing to fireball
data modify entity @e[tag=newtrack,limit=1] {} merge from storage proj fireball

scoreboard players operation @e[limit=1,tag=newtrack] DirX = @s DirX
scoreboard players operation @e[limit=1,tag=newtrack] DirZ = @s DirZ

#execute as @s at @s run execute store result entity @e[limit=1,tag=newtrack] power[0] double .0025 run scoreboard players get @s DirX
#execute as @s at @s run execute store result entity @e[limit=1,tag=newtrack] power[2] double .0025 run scoreboard players get @s DirZ

#execute as @s at @s run execute store result entity @e[limit=1,tag=newtrack] direction[0] double .0025 run scoreboard players get @s DirX
#execute as @s at @s run execute store result entity @e[limit=1,tag=newtrack] direction[2] double .0025 run scoreboard players get @s DirZ

scoreboard players operation @s y = @s DirY

scoreboard players remove @s y 988

scoreboard players operation @e[limit=1,tag=newtrack] y = @s y

#execute as @s at @s run execute store result entity @e[limit=1,tag=newtrack] power[1] double .0025 run scoreboard players get @s y
#execute as @s at @s run execute store result entity @e[limit=1,tag=newtrack] direction[1] double .0025 run scoreboard players get @s y

#execute as @s at @s run tp @s ~ ~ ~ ~ 0

scoreboard players set @e[limit=1,tag=newtrack] fballtimer 1

tag @e[limit=1,tag=newtrack] remove newtrack

kill @s