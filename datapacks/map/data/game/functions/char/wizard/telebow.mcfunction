scoreboard players add @s t1 1
scoreboard players add @s t2 0
scoreboard players add @s[scores={t1=4..},tag=!down] t2 1
scoreboard players set @s[scores={t1=4..},tag=!down] t1 0

scoreboard players add @s[scores={t1=5..},tag=down] t2 1
scoreboard players set @s[scores={t1=5..},tag=down] t1 0

tag @s remove test
tag @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1}] add test
kill @s[scores={t1=1,t2=..3},tag=!test]

scoreboard players set @s[tag=!test,scores={t1=1,t2=4..10}] t2 11

execute as @s[scores={t1=1,t2=0}] at @s run scoreboard players operation @a tntID -= @s tntID
execute as @s[scores={t1=1,t2=0}] at @s if entity @e[tag=dummy,distance=..18] unless entity @a[scores={tntID=0},distance=..6.0] run tag @s add down
execute as @s[scores={t1=1,t2=0}] at @s if entity @a[scores={tntID=1..},distance=..18] unless entity @a[scores={tntID=0},distance=..6.0] run tag @s add down
execute as @s[scores={t1=1,t2=0}] at @s if entity @a[scores={tntID=..-1},distance=..18] unless entity @a[scores={tntID=0},distance=..6.0] run tag @s add down
execute as @s[scores={t1=1,t2=0},tag=!down] at @s run tag @e[tag=telebow,tag=down,distance=..3] add stop_moving
execute as @s[scores={t1=1,t2=0},tag=down] at @s run tag @e[tag=telebow,tag=!down,distance=..3] add stop_moving
execute as @s[scores={t1=1,t2=0},tag=!down] at @s if entity @a[scores={tntID=0},distance=..50] run tag @s add stay
execute as @s[scores={t1=1,t2=0}] at @s run scoreboard players operation @a tntID += @s tntID

execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=!stop_moving] run playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 1 0.6
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=!stop_moving] run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.6 0
#execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=stay] run playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 1 0

execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=down,tag=!stop_moving] at @s run clone ~-1 ~-2 ~-1 ~1 ~1 ~1 ~-1 ~-3 ~-1 masked move
#execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=down] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=!armor_stand] at @s run tp @s ~ ~-1 ~
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=down] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=armor_stand,tag=blue_tnt_marker] at @s run tp @s ~ ~-1 ~
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=down,tag=!stop_moving] at @s run tp @s ~ ~-1 ~

execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=!down,tag=!stop_moving] at @s run clone ~-1 ~-2 ~-1 ~1 ~1 ~1 ~-1 ~-1 ~-1 masked move
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=!down,tag=!stop_moving] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=!armor_stand] at @s run tp @s ~ ~1 ~
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=!down,tag=!stop_moving] positioned ~-2 ~-2 ~-2 run execute as @e[distance=..10,dx=2,dz=2,dy=3.5,type=armor_stand,tag=blue_tnt_marker] at @s run tp @s ~ ~1 ~
execute as @s[x=599,z=599,y=5,dx=36,dz=36,dy=25,distance=..1000,scores={t1=1,t2=..10},tag=!down,tag=!stop_moving] at @s run tp @s ~ ~1 ~

execute as @s[x=599,z=599,y=0,dx=36,dz=36,dy=55,distance=..1000,scores={t1=1,t2=11},tag=!stay] at @s run playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 1 1
execute as @s[x=599,z=599,y=0,dx=36,dz=36,dy=55,distance=..1000,scores={t1=1,t2=11},tag=!stay] at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.6 0.5
execute as @s[x=599,z=599,y=0,dx=36,dz=36,dy=55,distance=..1000,scores={t1=1,t2=11},tag=!stay] at @s run fill ~-1 0 ~-1 ~1 ~2 ~1 air
execute as @s[x=599,z=599,y=0,dx=36,dz=36,dy=55,distance=..1000,scores={t1=1,t2=11},tag=!stay] at @s run execute as @s at @s run particle minecraft:falling_dust{block_state: 'minecraft:snow'} ~ ~ ~ 1 10 1 0 120 force @a

execute as @s[x=599,z=599,y=0,dx=36,dz=36,dy=55,distance=..1000,scores={t1=1,t2=60},tag=stay] at @s run playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 1 1
execute as @s[x=599,z=599,y=0,dx=36,dz=36,dy=55,distance=..1000,scores={t1=1,t2=60},tag=stay] at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 0.6 0.5
execute as @s[x=599,z=599,y=0,dx=36,dz=36,dy=55,distance=..1000,scores={t1=1,t2=60},tag=stay] at @s run fill ~-1 0 ~-1 ~1 ~2 ~1 air
execute as @s[x=599,z=599,y=0,dx=36,dz=36,dy=55,distance=..1000,scores={t1=1,t2=60},tag=stay] at @s run execute as @s at @s run particle minecraft:falling_dust{block_state: 'minecraft:snow'} ~ ~ ~ 1 10 1 0 120 force @a

kill @s[scores={t2=12..},tag=!stay]
kill @s[scores={t2=61..},tag=stay]