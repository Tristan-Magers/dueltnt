execute as @s at @s run tp @s @s
execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"ground\"}"}

execute as @s at @s[x=580,dx=80,y=49,dy=100,z=580,dz=80,distance=..100] run fill ~ ~-1 ~-1 ~ ~-1 ~1 end_stone replace air
execute as @s at @s[x=580,dx=80,y=49,dy=100,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~ ~1 ~-1 ~ end_stone replace air

execute as @s at @s[x=580,dx=80,y=35,dy=15,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 end_stone replace air

execute as @s at @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 end_stone replace air
execute as @s at @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 end_stone replace air

execute as @s at @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] run fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 end_stone replace air
execute as @s at @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] run fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 end_stone replace air

execute as @s at @s[x=580,dx=80,y=49,dy=100,z=580,dz=80,distance=..100] run fill ~ ~-1 ~-1 ~ ~-1 ~1 end_stone replace white_stained_glass
execute as @s at @s[x=580,dx=80,y=49,dy=100,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~ ~1 ~-1 ~ end_stone replace white_stained_glass

execute as @s at @s[x=580,dx=80,y=35,dy=15,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 end_stone replace white_stained_glass

execute as @s at @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 end_stone replace white_stained_glass
execute as @s at @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 end_stone replace white_stained_glass

execute as @s at @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] run fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 end_stone replace white_stained_glass
execute as @s at @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] run fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 end_stone replace white_stained_glass

clear @s red_dye
scoreboard players add @s grounduse 1
scoreboard players set @s groundtime 8
playsound minecraft:item.axe.strip master @a ~ ~ ~ 2 .9
playsound minecraft:item.axe.strip master @a ~ ~ ~ 1.5 .4
playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 2 1.1