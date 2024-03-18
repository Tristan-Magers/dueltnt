function game:char/gardener/boosttrap

#wizard fireball bow
execute unless entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=1}] at @s run summon minecraft:fireball ~ ~4 ~ {Motion:[0.0d, 0.0d, 0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:3,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,-0.3d,-0.0d],direction:[0.0d, -0.3d, 0.0d]}
#execute if entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={isBall=1}] at @s run summon minecraft:fireball ~ ~1.2 ~ {Motion:[0.0d, 0.0d, 0.0d],Invulnerable:0b,Air:300s,OnGround:0b,Dimension:0,ExplosionPower:5,PortalCooldown:0,Rotation:[0.0f,0.0f],Fire:-1s,power:[0.0d,0.001d,-0.0d],direction:[0.0d, 0.0d, 0.0d]}
#execute as @s[type=arrow,scores={isBall=1}] at @s positioned ~ ~1.2 ~ run data merge entity @e[type=minecraft:fireball,limit=1,sort=nearest] {power: [0.0d,0.0d,0.0d],Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d]}
execute as @s[type=arrow,scores={isBall=1}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ .4 1.5
execute as @s[type=arrow,scores={isBall=1}] at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ .7 2

#wizard powderize bow
execute as @s[type=arrow,scores={isBall=2}] at @s run summon tnt ~ ~.5 ~ {fuse:20}
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
execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Small:1,Marker:1,Silent:1,Invulnerable:1,Tags:["telebow"],DisabledSlots:4144959}
execute as @s[type=arrow,x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={Inbarrier=..0,isBall=3}] at @s run scoreboard players operation @e[tag=telebow,limit=1,distance=..5,sort=nearest] tntID = @s tntID

#ghost bow
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s run fill ~-2 ~-1 ~ ~2 ~ ~ minecraft:air replace cyan_stained_glass
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s run fill ~ ~-1 ~-2 ~ ~ ~2 minecraft:air replace cyan_stained_glass
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~-1 ~-2 ~-1 ~1 ~1 ~1 minecraft:air replace cyan_stained_glass

#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s positioned ~-2 ~-1 ~ unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_stained_glass destroy
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s positioned ~-2 ~ ~ unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_stained_glass destroy
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s positioned ~2 ~-1 ~ unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_stained_glass destroy
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s positioned ~2 ~ ~ unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_stained_glass destroy
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s positioned ~ ~-1 ~-2 unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_stained_glass destroy
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s positioned ~ ~ ~-2 unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_stained_glass destroy
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s positioned ~ ~-1 ~2 unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_stained_glass destroy
#execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s positioned ~ ~ ~2 unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_stained_glass destroy

execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=crit,x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~-1 ~-2 ~-1 ~1 ~2 ~1 air destroy
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=crit,x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air destroy
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=crit,x=620,z=620,y=40,distance=..120] at @s run fill ~-1 ~-2 ~-1 ~1 ~2 ~1 minecraft:air replace #game:bolt_place
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=crit,x=620,z=620,y=40,distance=..120] at @s run fill ~-2 ~-1 ~ ~2 ~1 ~ minecraft:air replace #game:bolt_place
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=crit,x=620,z=620,y=40,distance=..120] at @s run fill ~ ~-1 ~-2 ~ ~1 ~2 minecraft:air replace #game:bolt_place
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=!crit,x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air destroy
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=!crit,x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~-1 ~-2 ~ ~1 ~-2 ~ air destroy
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=!crit,x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run fill ~ ~-2 ~-1 ~ ~-2 ~1 air destroy
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=!crit,x=620,z=620,y=40,distance=..120] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #game:bolt_place
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=!crit,x=620,z=620,y=40,distance=..120] at @s run fill ~-1 ~-2 ~ ~1 ~-2 ~ minecraft:air replace #game:bolt_place
execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=!crit,x=620,z=620,y=40,distance=..120] at @s run fill ~ ~-2 ~-1 ~ ~-2 ~1 minecraft:air replace #game:bolt_place

execute as @s[type=arrow,scores={Inbarrier=..0,VaporBow=1..},tag=crit,x=598.1,z=598.1,y=0,dx=38.8,dz=38.8,dy=108,distance=..1000] at @s run particle minecraft:poof ~ ~ ~ 1 1 1 0.2 15 force

#scientist bow
execute unless entity @e[scores={mode=1}] run execute as @s[type=arrow,scores={SciBow=1..}] at @s run summon tnt ~ ~ ~ {fuse:5,Motion:[0.0,0.24,0.0]}
execute as @s[type=arrow,scores={SciBow=1..}] at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ .4 1.4

#necro bow
execute as @s[type=arrow,scores={NecroBow=1..},x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Marker:1,Silent:1,Invisible:1,CustomName:"{\"text\":\"NArrow\"}",NoAI:1}

#soldier arrow
execute as @s[type=arrow,scores={SolBow=1}] at @s run summon tnt ~ ~ ~ {fuse:10,Motion:[0.0,0.26,0.0],CustomName:"{\"text\":\"TNTarrow\"}"}
execute as @s[type=arrow,scores={SolBow=1}] at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1

#echo bow
#execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=598,z=598,y=0,dx=39,dz=39,dy=108,distance=..1000] at @s run fill ~-1 0 ~-1 ~1 80 ~1 air
#execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=598,z=598,y=0,dx=39,dz=39,dy=108,distance=..1000] at @s run particle crit ~ ~ ~ 1 10 1 0 100 force
#execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=598,z=598,y=0,distance=..1000] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=4.5,type=!armor_stand,tag=!nowalllev] at @s run effect give @s levitation 1 1
#execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=598,z=598,y=0,distance=..1000,nbt={inBlockState:{Name:"minecraft:barrier"}}] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=4.5,type=!armor_stand,tag=!nowalllev] at @s run scoreboard players set @s grtest 3
#execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=598,z=598,y=0,distance=..1000,nbt={inBlockState:{Name:"minecraft:barrier"}}] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=4.5,type=!armor_stand,tag=!nowalllev] at @s run tag @s add nowalllev
#execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=598,z=598,y=0,distance=..1000] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=4.5,type=!armor_stand] at @s run teleport @s ~ ~4 ~

execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=620,z=620,y=40,distance=..120] at @s run fill ~-1 0 ~-1 ~1 80 ~1 air replace #game:bolt_place
execute as @s[type=arrow,scores={Inbarrier=..0,AprBow=1..},x=620,z=620,y=40,distance=..120] at @s run particle crit ~ ~ ~ 1 10 1 0 100 force
execute as @s[type=arrow,scores={AprBow=1..},x=598,z=598,y=0,distance=..1000] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=4.5,type=!armor_stand,tag=!nowalllev] at @s run effect give @s levitation 1 1
execute as @s[type=arrow,scores={AprBow=1..},x=598,z=598,y=0,distance=..1000,nbt={inBlockState:{Name:"minecraft:barrier"}}] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=4.5,type=!armor_stand,tag=!nowalllev] at @s run scoreboard players set @s grtest 3
execute as @s[type=arrow,scores={AprBow=1..},x=598,z=598,y=0,distance=..1000,nbt={inBlockState:{Name:"minecraft:barrier"}}] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=4.5,type=!armor_stand,tag=!nowalllev] at @s run tag @s add nowalllev
execute as @s[type=arrow,scores={AprBow=1..},x=598,z=598,y=0,distance=..1000] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=4.5,type=!armor_stand] at @s run teleport @s ~ ~4 ~

#gardener bow
execute as @s[type=arrow,scores={GardBow=1..}] at @s run summon tnt ~ ~ ~ {fuse:1}

#frost bow
#execute as @s[type=arrow,scores={FrostBow=1..},nbt={inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon wither_skeleton ~ ~0.5 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["kill_next"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:999,show_particles:0b}]}
#execute as @s[type=arrow,scores={FrostBow=1..},nbt={inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon wither_skeleton ~ ~0.7 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["kill_next"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:999,show_particles:0b}]}
execute as @s[type=arrow,scores={FrostBow=1..},nbt={inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon tnt ~ ~0.6 ~ {Tags:["frost"],fuse:5,NoGravity:1,Motion:[0.0,0.61,0.0]}
execute as @s[type=arrow,scores={FrostBow=1..},nbt={inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon tnt ~ ~0.5 ~ {Tags:["frost"],fuse:7,NoGravity:1,Motion:[0.0,0.35,0.0]}
execute as @s[type=arrow,scores={FrostBow=1..},nbt={inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon tnt ~ ~0.5 ~ {Tags:["frost"],fuse:8,NoGravity:1,Motion:[0.0,0.18,0.0]}
execute as @s[type=arrow,scores={FrostBow=1..},nbt=!{inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon armor_stand ~ ~ ~ {Tags:["frostset"],Marker:1,Silent:1,Invulnerable:1,NoGravity:1}

#execute as @s[type=arrow,tag=sidearrow,scores={FrostBow=1..},nbt={inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon tnt ~ ~0.5 ~ {Tags:["frost"],fuse:4}
#execute as @s[type=arrow,tag=sidearrow,scores={FrostBow=1..},nbt=!{inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon armor_stand ~ ~ ~ {Tags:["frostset"],Marker:1,Silent:1,Invulnerable:1,NoGravity:1}

#execute as @s[type=arrow,tag=!sidearrow,scores={FrostBow=1..},nbt={inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon tnt ~ ~0.5 ~ {Tags:["frost"],fuse:2}
#execute as @s[type=arrow,tag=!sidearrow,scores={FrostBow=1..},nbt=!{inBlockState:{Name:"minecraft:blue_ice"}}] at @s run summon armor_stand ~ ~ ~ {Tags:["frostset"],Marker:1,Silent:1,Invulnerable:1,NoGravity:1}

#21 blocks no jump without delay
#36 blocks with jump without delay

#15 blocks no jump without delay
#23(ish) blocks with jump without delay (note: much harder)