scoreboard players add @s t1 1
scoreboard players add @s[scores={t1=7..}] t2 1
scoreboard players set @s[scores={t1=7..}] t1 0

tag @s remove test
tag @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1}] add test
kill @s[scores={t1=1,t2=..5},tag=!test]

scoreboard players set @s[scores={t1=1,t2=7..},tag=!test] t2 11

execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10}] at @s run clone ~-1 ~-2 ~-1 ~1 ~1 ~1 ~-1 ~-1 ~-1 masked move
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10}] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=!armor_stand] at @s run tp @s ~ ~1 ~
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10}] positioned ~-2 ~-2 ~-2 run playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 1 0.6
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10}] positioned ~-2 ~-2 ~-2 run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.6 0
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10}] at @s run tp @s ~ ~1 ~

execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=35,distance=..1000,scores={t1=1,t2=11}] positioned ~-2 ~-2 ~-2 run playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 1 1
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=35,distance=..1000,scores={t1=1,t2=11}] positioned ~-2 ~-2 ~-2 run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.6 0.5
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=35,distance=..1000,scores={t1=1,t2=11}] at @s run fill ~-1 0 ~-1 ~1 ~2 ~1 air
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=35,distance=..1000,scores={t1=1,t2=11}] at @s run execute as @s at @s run particle minecraft:falling_dust snow ~ ~ ~ 1 10 1 0 120 force @a

kill @s[scores={t2=12..}]