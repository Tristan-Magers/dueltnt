execute as @s[x=580,dx=80,y=45,dy=20,z=580,dz=80,distance=..100] at @s run fill ~-1 44 ~-1 ~1 44 ~1 air replace end_stone
execute as @s[x=580,dx=80,y=35,dy=9,z=580,dz=80,distance=..100] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace end_stone

execute as @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] at @s run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 air replace end_stone
execute as @s[x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] at @s run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 air replace end_stone

execute as @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] at @s run fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 air replace end_stone
execute as @s[x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] at @s run fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 air replace end_stone

playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1.5
playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 .8
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0

kill @s