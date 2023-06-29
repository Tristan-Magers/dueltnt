execute as @s at @s[x=580,dx=80,y=-2,dy=100,z=580,dz=80,distance=..100] run execute as @s at @s run tp @s @s
execute as @s[x=580,dx=80,y=-2,dy=46,z=580,dz=80,distance=..100] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"ground\"}"}
execute as @s[x=580,dx=80,y=45,dy=20,z=580,dz=80,distance=..100] at @s run summon armor_stand ~ 44 ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"ground\"}"}

execute as @s[x=580,dx=80,y=-1,dy=100,z=580,dz=80,distance=..100,scores={grounduse=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Ground Spell","color":"yellow","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[x=580,dx=80,y=-1,dy=100,z=580,dz=80,distance=..100,scores={grounduse=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Ground Spell","color":"yellow","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

scoreboard players add @e[name=ground] gtimer 0

execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=45,dy=20,z=580,dz=80,distance=..100] at @s run fill ~-1 44 ~-1 ~1 44 ~1 end_stone replace air

execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=35,dy=9,z=580,dz=80,distance=..100] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 end_stone replace air

execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] at @s run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 end_stone replace air
execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] at @s run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 end_stone replace air

execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=-2,dy=12,z=580,dz=80,distance=..100] at @s run fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 end_stone replace air
execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=-2,dy=12,z=580,dz=80,distance=..100] at @s run fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 end_stone replace air

#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=-2,dy=4,z=580,dz=80,distance=..100] at @s run tp @s ~ 1 ~
#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=-2,dy=4,z=580,dz=80,distance=..100] at @s run fill ~-2 0 ~-3 ~2 0 ~3 end_stone replace air
#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=-2,dy=4,z=580,dz=80,distance=..100] at @s run fill ~-3 0 ~-2 ~3 0 ~2 end_stone replace air

#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=45,dy=20,z=580,dz=80,distance=..100] at @s run fill ~-1 44 ~-1 ~1 44 ~1 end_stone replace white_stained_glass

#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=35,dy=9,z=580,dz=80,distance=..100] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 end_stone replace white_stained_glass

#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] at @s run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 end_stone replace white_stained_glass
#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=11,dy=25,z=580,dz=80,distance=..100] at @s run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 end_stone replace white_stained_glass

#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] at @s run fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 end_stone replace white_stained_glass
#execute as @e[scores={gtimer=0},name=ground,x=580,dx=80,y=2,dy=10,z=580,dz=80,distance=..100] at @s run fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 end_stone replace white_stained_glass

execute as @s at @s[x=580,dx=80,y=-2,dy=100,z=580,dz=80,distance=..100] run clear @s red_dye
execute as @s at @s[x=580,dx=80,y=-2,dy=100,z=580,dz=80,distance=..100] run scoreboard players add @s grounduse 1
execute as @s at @s[x=580,dx=80,y=-2,dy=100,z=580,dz=80,distance=..100] run scoreboard players set @s groundtime 8
execute as @s at @s[x=580,dx=80,y=-2,dy=100,z=580,dz=80,distance=..100] run playsound minecraft:item.axe.strip master @a ~ ~ ~ 2 .9
execute as @s at @s[x=580,dx=80,y=-2,dy=100,z=580,dz=80,distance=..100] run playsound minecraft:item.axe.strip master @a ~ ~ ~ 1.5 .4
execute as @s at @s[x=580,dx=80,y=-2,dy=100,z=580,dz=80,distance=..100] run playsound minecraft:item.shovel.flatten master @a ~ ~ ~ 2 1.1

playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.3 1.5
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.3 0.8
playsound minecraft:block.piston.extend master @a ~ ~ ~ 0.7 0
playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1.2
playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 2