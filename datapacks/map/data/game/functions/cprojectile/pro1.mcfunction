scoreboard players set @p Sreload 100
clear iron_hoe

#function game:takeang

summon armor_stand ~ ~ ~ {Pose:{RightArm:[90f,40f,0f]},DisabledSlots:4144959,Invisible:1,NoGravity:1,NoAI:1,Invulnerable:1,Size:0,tags:["newS"],CustomName:"{\"text\":\"pro1\"}",ArmorItems:[{},{},{},{}],HandItems:[{id:"iron_hoe",Count:1b},{}],Pose:{LeftArm:[90f,-70f,0f]}}
tp @e[limit=1,name=pro1,sort=nearest] @p
execute as @e[limit=1,name=pro1,sort=nearest] at @s run function game:cprojectile/getdir

scoreboard players operation @e[limit=1,name=pro1,sort=nearest] DirY /= .40 .num
scoreboard players operation @e[limit=1,name=pro1,sort=nearest] DirZ /= .40 .num

scoreboard players add @e[limit=1,name=pro1,sort=nearest] DirX 8
#scoreboard players set @e[limit=1,name=pro1,sort=nearest] DirZ 0
#scoreboard players set @e[limit=1,name=pro1,sort=nearest] DirY 0

execute as @e[limit=1,name=pro1,sort=nearest] at @s run tp @s ~ ~ ~ ~ 0

tp @e[limit=1,name=pro1,sort=nearest] ~ ~1 ~

#scoreboard players operation @e[name=pro1,limit=1] DirY = @s DirY
#scoreboard players operation @e[name=pro1,limit=1] DirX = @s DirX
#scoreboard players operation @e[name=pro1,limit=1] DirZ = @s DirZ
##scoreboard players operation @e[name=pro1,limit=1] DirY *= @e[name=num] two
##scoreboard players operation @e[name=pro1,limit=1] DirZ *= @e[name=num] two
#scoreboard players operation @e[name=pro1,limit=1] DirX /= @e[name=num] two
#scoreboard players add @e[name=pro1,limit=1] DirX 4

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ .7 1.1
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 1 .8

playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 1 1.7
playsound minecraft:entity.firework_rocket.large_blast_far master @a[distance=..50] ~ ~ ~ 1 1.2