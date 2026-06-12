execute as @s at @s run function game:cprojectile/getdir2

execute as @s[scores={offground=0}] at @s positioned ~ ~0.2 ~ run summon minecraft:fireball ^ ^ ^0.1 {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,acceleration_power:1d,direction:[0.0d,-0.001d,0.0d]}
execute if entity @s[x_rotation=42..190] as @s[scores={offground=1..9}] at @s positioned ~ ~0.0 ~ positioned ^ ^ ^1.1 if block ~ ~ ~ air run summon minecraft:fireball ^ ^ ^ {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d,-0.001d,0.0d]}
execute if entity @s[x_rotation=42..190] as @s[scores={offground=1..9}] at @s positioned ~ ~0.0 ~ positioned ^ ^ ^1.1 unless block ~ ~ ~ air run summon minecraft:fireball ^ ^ ^-0.4 {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d,-0.001d,0.0d]}
execute if entity @s[x_rotation=42..190] as @s[scores={offground=10..}] at @s positioned ~ ~0.0 ~ positioned ^ ^ ^1.8 if block ~ ~ ~ air run summon minecraft:fireball ^ ^ ^ {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d,-0.001d,0.0d]}
execute if entity @s[x_rotation=42..190] as @s[scores={offground=10..}] at @s positioned ~ ~0.0 ~ positioned ^ ^ ^1.8 unless block ~ ~ ~ air run summon minecraft:fireball ^ ^ ^-1.1 {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d,-0.001d,0.0d]}

execute unless entity @s[x_rotation=42..190] as @s[scores={offground=1..9}] at @s positioned ~ ~0.0 ~ positioned ^ ^ ^0.5 if block ~ ~ ~ air run summon minecraft:fireball ^ ^ ^ {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d,-0.001d,0.0d]}
execute unless entity @s[x_rotation=42..190] as @s[scores={offground=1..9}] at @s positioned ~ ~0.0 ~ positioned ^ ^ ^0.5 unless block ~ ~ ~ air run summon minecraft:fireball ^ ^ ^-0.1 {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d,-0.001d,0.0d]}
execute unless entity @s[x_rotation=42..190] as @s[scores={offground=10..}] at @s positioned ~ ~0.0 ~ positioned ^ ^ ^0.8 if block ~ ~ ~ air run summon minecraft:fireball ^ ^ ^ {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d,-0.001d,0.0d]}
execute unless entity @s[x_rotation=42..190] as @s[scores={offground=10..}] at @s positioned ~ ~0.0 ~ positioned ^ ^ ^0.8 unless block ~ ~ ~ air run summon minecraft:fireball ^ ^ ^-0.4 {Tags:["trackshot2","newtrack"],Motion:[0.0d,0.0d,0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:4,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.001d,-0.0d],direction:[0.0d,-0.001d,0.0d]}

scoreboard players operation @e[limit=1,tag=newtrack,sort=nearest] tntID = @s tntID
scoreboard players set @e[limit=1,tag=newtrack,sort=nearest] BombBow 1

scoreboard players operation @e[limit=1,tag=newtrack,sort=nearest] vel = @s vel

# writing uuid data 
data modify storage proj fireball.OwnerUUIDMost set from entity @p UUIDMost
data modify storage proj fireball.OwnerUUIDLeast set from entity @p UUIDLeast

# data writing to fireball
data modify entity @e[tag=newtrack,limit=1] {} merge from storage proj fireball

scoreboard players operation @s y = @s DirY

scoreboard players remove @s y 988

scoreboard players operation @e[limit=1,tag=newtrack] vel = @s vel

scoreboard players add @s vel 255

scoreboard players operation @s DirX *= @s vel
scoreboard players operation @s DirZ *= @s vel
scoreboard players operation @s DirY *= @s vel
scoreboard players operation @s y *= @s vel

scoreboard players set @s vel 2000

scoreboard players operation @s DirX /= @s vel
scoreboard players operation @s DirZ /= @s vel
scoreboard players operation @s DirY /= @s vel
scoreboard players operation @s y /= @s vel

scoreboard players operation @e[limit=1,tag=newtrack] DirX = @s DirX
scoreboard players operation @e[limit=1,tag=newtrack] DirZ = @s DirZ
scoreboard players operation @e[limit=1,tag=newtrack] DirY = @s DirY
scoreboard players operation @e[limit=1,tag=newtrack] y = @s y

scoreboard players set @e[limit=1,tag=newtrack] fballtimer 1
execute as @s[tag=delay] run tag @e[limit=1,tag=newtrack] add delay

tag @e[limit=1,tag=newtrack] remove newtrack

kill @s