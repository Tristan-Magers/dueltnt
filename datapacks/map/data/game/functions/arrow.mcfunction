function game:boosttrap

#wizard fireball bow
execute unless entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=1}] at @s run summon minecraft:fireball ~ ~4 ~ {Motion:[0.0d, 0.0d, 0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:3,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.3d,-0.0d],direction:[0.0d, -0.3d, 0.0d]}
#execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=1}] at @s run summon minecraft:fireball ~ ~1.2 ~ {Motion:[0.0d, 0.0d, 0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:5,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,0.001d,-0.0d],direction:[0.0d, 0.0d, 0.0d]}
#execute as @s[type=arrow,scores={isBall=1}] at @s positioned ~ ~1.2 ~ run data merge entity @e[type=minecraft:fireball,limit=1,sort=nearest] {power: [0.0d,0.0d,0.0d],Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d]}
execute as @s[type=arrow,scores={isBall=1}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ .4 1.5
execute as @s[type=arrow,scores={isBall=1}] at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ .7 2

#wizard powderize bow
execute as @s[type=arrow,scores={isBall=2}] at @s run summon tnt ~ ~.5 ~ {Fuse:28}
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~ ~ air unless block ~ ~ ~ barrier run setblock ~ ~ ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~ ~ air unless block ~1 ~ ~ barrier run setblock ~1 ~ ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~ ~1 air unless block ~ ~ ~1 barrier run setblock ~ ~ ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~ ~ air unless block ~-1 ~ ~ barrier run setblock ~-1 ~ ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~ ~-1 air unless block ~ ~ ~-1 barrier run setblock ~ ~ ~-1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~1 ~ air unless block ~1 ~1 ~ barrier run setblock ~1 ~1 ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~1 ~1 air unless block ~ ~1 ~1 barrier run setblock ~ ~1 ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~ ~1 air unless block ~1 ~ ~1 barrier run setblock ~1 ~ ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~-1 ~ air unless block ~-1 ~-1 ~ barrier run setblock ~-1 ~-1 ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~-1 ~-1 air unless block ~ ~-1 ~-1 barrier run setblock ~ ~-1 ~-1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 barrier run setblock ~-1 ~ ~-1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~1 ~ air unless block ~-1 ~1 ~ barrier run setblock ~-1 ~1 ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~-1 ~1 air unless block ~ ~-1 ~1 barrier run setblock ~ ~-1 ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 barrier run setblock ~-1 ~ ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~-1 ~ air unless block ~1 ~-1 ~ barrier run setblock ~1 ~-1 ~ minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~1 ~-1 air unless block ~ ~1 ~-1 barrier run setblock ~ ~1 ~-1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 barrier run setblock ~1 ~ ~-1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~1 ~1 air unless block ~1 ~1 ~1 barrier run setblock ~1 ~1 ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~1 ~1 air unless block ~-1 ~1 ~1 barrier run setblock ~-1 ~1 ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~-1 ~1 air unless block ~1 ~-1 ~1 barrier run setblock ~1 ~-1 ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~1 ~-1 air unless block ~1 ~1 ~-1 barrier run setblock ~1 ~1 ~-1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~-1 ~1 air unless block ~-1 ~-1 ~1 barrier run setblock ~-1 ~-1 ~1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~-1 ~-1 air unless block ~1 ~-1 ~-1 barrier run setblock ~1 ~-1 ~-1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~1 ~-1 air unless block ~-1 ~1 ~-1 barrier run setblock ~-1 ~1 ~-1 minecraft:yellow_concrete_powder
execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~-1 ~-1 air unless block ~-1 ~-1 ~-1 barrier run setblock ~-1 ~-1 ~-1 minecraft:yellow_concrete_powder

execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~2 ~ air unless block ~ ~2 ~ barrier run setblock ~ ~2 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~2 ~ air unless block ~1 ~2 ~ barrier run setblock ~1 ~2 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~2 ~ air unless block ~-1 ~2 ~ barrier run setblock ~-1 ~2 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~2 ~1 air unless block ~ ~2 ~1 barrier run setblock ~ ~2 ~1 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~2 ~-1 air unless block ~ ~2 ~-1 barrier run setblock ~ ~2 ~-1 minecraft:yellow_concrete_powder

execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~-2 ~ air unless block ~ ~-2 ~ barrier run setblock ~ ~-2 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~-2 ~ air unless block ~1 ~-2 ~ barrier run setblock ~1 ~-2 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~-2 ~ air unless block ~-1 ~-2 ~ barrier run setblock ~-1 ~-2 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~-2 ~1 air unless block ~ ~-2 ~1 barrier run setblock ~ ~-2 ~1 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~-2 ~-1 air unless block ~ ~-2 ~-1 barrier run setblock ~ ~-2 ~-1 minecraft:yellow_concrete_powder

execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~2 ~ ~ air unless block ~2 ~ ~ barrier run setblock ~2 ~ ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~2 ~1 ~ air unless block ~2 ~1 ~ barrier run setblock ~2 ~1 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~2 ~-1 ~ air unless block ~2 ~-1 ~ barrier run setblock ~2 ~-1 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~2 ~ ~1 air unless block ~2 ~ ~1 barrier run setblock ~2 ~ ~1 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~2 ~ ~-1 air unless block ~2 ~ ~-1 barrier run setblock ~2 ~ ~-1 minecraft:yellow_concrete_powder

execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-2 ~ ~ air unless block ~-2 ~ ~ barrier run setblock ~-2 ~ ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-2 ~1 ~ air unless block ~-2 ~1 ~ barrier run setblock ~-2 ~1 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-2 ~-1 ~ air unless block ~-2 ~-1 ~ barrier run setblock ~-2 ~-1 ~ minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-2 ~ ~1 air unless block ~-2 ~ ~1 barrier run setblock ~-2 ~ ~1 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-2 ~ ~-1 air unless block ~-2 ~ ~-1 barrier run setblock ~-2 ~ ~-1 minecraft:yellow_concrete_powder

execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~ ~2 air unless block ~ ~ ~2 barrier run setblock ~ ~ ~2 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~1 ~2 air unless block ~ ~1 ~2 barrier run setblock ~ ~1 ~2 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~-1 ~2 air unless block ~ ~-1 ~2 barrier run setblock ~ ~-1 ~2 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~ ~2 air unless block ~1 ~ ~2 barrier run setblock ~1 ~ ~2 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~ ~2 air unless block ~-1 ~ ~2 barrier run setblock ~-1 ~ ~2 minecraft:yellow_concrete_powder

execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~ ~-2 air unless block ~ ~ ~-2 barrier run setblock ~ ~ ~-2 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~1 ~-2 air unless block ~ ~1 ~-2 barrier run setblock ~ ~1 ~-2 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~ ~-1 ~-2 air unless block ~ ~-1 ~-2 barrier run setblock ~ ~-1 ~-2 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~1 ~ ~-2 air unless block ~1 ~ ~-2 barrier run setblock ~1 ~ ~-2 minecraft:yellow_concrete_powder
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=2}] at @s unless block ~-1 ~ ~-2 air unless block ~-1 ~ ~-2 barrier run setblock ~-1 ~ ~-2 minecraft:yellow_concrete_powder

#wizard tele bow
#execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] at @s run fill ~-1 ~-2 ~-1 ~1 ~1 ~1 air replace black_stained_glass
execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] at @s run clone ~-1 ~-2 ~-1 ~1 ~1 ~1 ~-1 ~ ~-1 masked move
#execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] at @s run fill ~-1 ~-2 ~-1 ~1 ~1 ~1 air
#execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] positioned ~-2 ~-2 ~-2 run effect give @e[distance=..10,dx=2,dz=2,dy=3.5] slowness 3 3
execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=!armor_stand] at @s run tp @s ~ ~2 ~
execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] positioned ~-2 ~-2 ~-2 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ .5 1
execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] positioned ~-2 ~-2 ~-2 run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 0

#ghost bow
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air destroy
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~-1 ~-2 ~ ~1 ~-2 ~ air destroy
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~ ~-2 ~-1 ~ ~-2 ~1 air destroy
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 air destroy
execute as @s[type=arrow,scores={Inbarrier=2,VaporBow=1..}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace snow

#scientist bow
execute unless entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={SciBow=1..}] at @s run summon tnt ~ ~ ~ {Fuse:5,Motion:[0.0,0.23,0.0]}
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={SciBow=1..}] at @s run summon tnt ~ ~ ~ {Fuse:4,Motion:[0.0,0.23,0.0]}
execute as @s[type=arrow,scores={SciBow=1..}] at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ .4 1.4

#necro bow
execute as @s[type=arrow,scores={NecroBow=1..},x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Invisible:1,CustomName:"{\"text\":\"NArrow\"}",NoAI:1}

#soldier arrow
execute unless entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={SolBow=1}] at @s run summon tnt ~ ~ ~ {Fuse:11,Motion:[0.0,0.26,0.0],CustomName:"{\"text\":\"TNTarrow\"}"}
execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={SolBow=1}] at @s run summon tnt ~ ~ ~ {Fuse:6,Motion:[0.0,0.26,0.0],CustomName:"{\"text\":\"TNTarrow\"}"}
execute as @s[type=arrow,scores={SolBow=1}] at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1

#echo bow
execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=598,z=598,y=0,dx=39,dz=39,dy=108,distance=..1000] at @s run fill ~-1 0 ~-1 ~1 80 ~1 air
execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=598,z=598,y=0,dx=39,dz=39,dy=108,distance=..1000] at @s run particle crit ~ ~ ~ 1 10 1 0 100 force
execute as @s[type=arrow,scores={AprBow=1..},x=598,z=598,y=0,distance=..1000] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=!armor_stand,tag=!nowalllev] at @s run effect give @s levitation 1 1
execute as @s[type=arrow,scores={AprBow=1..},x=598,z=598,y=0,distance=..1000,nbt={inBlockState:{Name:"minecraft:barrier"}}] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=!armor_stand,tag=!nowalllev] at @s run scoreboard players set @s grtest 3
execute as @s[type=arrow,scores={AprBow=1..},x=598,z=598,y=0,distance=..1000,nbt={inBlockState:{Name:"minecraft:barrier"}}] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=!armor_stand,tag=!nowalllev] at @s run tag @s add nowalllev
execute as @s[type=arrow,scores={AprBow=1..},x=598,z=598,y=0,distance=..1000] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=!armor_stand] at @s run teleport @s ~ ~4 ~

#gardener bow
execute as @s[type=arrow,scores={GardBow=1..}] at @s run summon tnt ~ ~ ~ {Fuse:1}