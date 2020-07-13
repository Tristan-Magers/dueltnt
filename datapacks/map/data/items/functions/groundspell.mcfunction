execute as @s at @s[x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100] run execute as @s at @s run tp @s @s
execute as @s[x=580,dx=80,y=2,dy=42,z=580,dz=80,distance=..100] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"ground\"}"}
execute as @s[x=580,dx=80,y=45,dy=20,z=580,dz=80,distance=..100] at @s run summon armor_stand ~ 44 ~ {NoGravity:1,Marker:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"ground\"}"}

execute as @s at @s[x=580,dx=80,y=45,dy=20,z=580,dz=80,distance=..100] run fill ~-1 44 ~-1 ~1 44 ~1 end_stone replace air

execute as @s at @s[x=580,dx=80,y=35,dy=9,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 end_stone replace air

execute as @s at @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 end_stone replace air
execute as @s at @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 end_stone replace air

execute as @s at @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] run fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 end_stone replace air
execute as @s at @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] run fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 end_stone replace air

execute as @s at @s[x=580,dx=80,y=45,dy=20,z=580,dz=80,distance=..100] run fill ~-1 44 ~-1 ~1 44 ~1 end_stone replace white_stained_glass

execute as @s at @s[x=580,dx=80,y=35,dy=9,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 end_stone replace white_stained_glass

execute as @s at @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 end_stone replace white_stained_glass
execute as @s at @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 end_stone replace white_stained_glass

execute as @s at @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] run fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 end_stone replace white_stained_glass
execute as @s at @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] run fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 end_stone replace white_stained_glass

execute as @s at @s[x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100] run clear @s red_dye
execute as @s at @s[x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100] run scoreboard players add @s grounduse 1
execute as @s at @s[x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100] run scoreboard players set @s groundtime 8
execute as @s at @s[x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100] run playsound minecraft:item.axe.strip master @a ~ ~ ~ 2 .9
execute as @s at @s[x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100] run playsound minecraft:item.axe.strip master @a ~ ~ ~ 1.5 .4
execute as @s at @s[x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 2 1.1