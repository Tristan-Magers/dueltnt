execute as @s at @s run function game:cprojectile/getdir2

execute as @s[tag=!chickenbowsum,tag=fast] run summon minecraft:arrow ~ ~ ~ {NoGravity:1,Tags:["fast","trackshot","newtrack","critpart"]}
execute as @s[tag=!chickenbowsum,tag=!fast] run summon minecraft:arrow ~ ~ ~ {NoGravity:1,Tags:["trackshot","newtrack","critpart"]}
execute as @s[tag=chickenbowsum] run summon minecraft:arrow ~ ~ ~ {NoGravity:1,Tags:["trackshot","newtrack","trapchick","critpart"]}
scoreboard players operation @e[limit=1,tag=newtrack,sort=nearest] tntID = @s tntID
scoreboard players set @e[limit=1,tag=newtrack,sort=nearest] BombBow 1

# writing uuid data 
data modify storage proj arrow.Owner set from entity @p UUID

# data writing to arrow
data modify entity @e[tag=newtrack,limit=1] {} merge from storage proj arrow

#scoreboard players add @s DirX 8

execute as @s[tag=!fast] at @s run tag @e[limit=1,tag=newtrack] remove critpart

execute as @s[tag=slow] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[0] double .0025 run scoreboard players get @s DirX
execute as @s[tag=slow] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[2] double .0025 run scoreboard players get @s DirZ

execute as @s[tag=med] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[0] double .005 run scoreboard players get @s DirX
execute as @s[tag=med] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[2] double .005 run scoreboard players get @s DirZ

execute as @s[tag=fast] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[0] double .0085 run scoreboard players get @s DirX
execute as @s[tag=fast] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[2] double .0085 run scoreboard players get @s DirZ

scoreboard players operation @s y = @s DirY

scoreboard players remove @s y 988

execute as @s[tag=slow] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[1] double .0025 run scoreboard players get @s y
execute as @s[tag=med] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[1] double .005 run scoreboard players get @s y
execute as @s[tag=fast] at @s run execute store result entity @e[limit=1,tag=newtrack] Motion[1] double .0085 run scoreboard players get @s y

scoreboard players operation @e[limit=1,tag=newtrack] y = @s y

#execute as @s at @s run tp @s ~ ~ ~ ~ 0

tag @e[limit=1,tag=newtrack] remove newtrack

kill @s