scoreboard players add @s frostT 1

#execute as @s[scores={frostT=1}] at @s run fill ~-2 ~-1 ~-2 ~2 ~-3 ~2 packed_ice replace air

execute as @s[scores={frostT=..30,frostsize=1..},tag=grow] at @s run fill ~ ~-1 ~ ~ ~-1 ~ packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=3..},tag=grow] at @s run fill ~ ~-1 ~1 ~ ~-1 ~-1 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=5..},tag=grow] at @s run fill ~1 ~-1 ~ ~-1 ~-1 ~ packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=9..},tag=grow] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=14..},tag=grow] at @s run fill ~ ~-1 ~1 ~ ~-2 ~-1 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=14..},tag=grow] at @s run fill ~1 ~-1 ~ ~-1 ~-2 ~ packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=18..},tag=grow] at @s run fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=22..},tag=grow] at @s run fill ~2 ~-1 ~ ~-2 ~-1 ~ packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=22..},tag=grow] at @s run fill ~ ~-1 ~2 ~ ~-1 ~-2 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=30..},tag=grow] at @s run fill ~2 ~-1 ~1 ~-2 ~-1 ~-1 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=30..},tag=grow] at @s run fill ~1 ~-1 ~2 ~-1 ~-1 ~-2 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=35..},tag=grow] at @s run fill ~ ~-3 ~1 ~ ~-3 ~-1 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=35..},tag=grow] at @s run fill ~1 ~-3 ~ ~-1 ~-3 ~ packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=42..},tag=grow] at @s run fill ~1 ~-3 ~1 ~-1 ~-3 ~-1 packed_ice replace air
execute as @s[scores={frostT=..30,frostsize=42..},tag=grow] at @s run fill ~ ~-4 ~ ~ ~-5 ~ packed_ice replace air

tag @s remove grow

scoreboard players set @s[scores={frostsize=60..}] frostsize 60

tag @s[scores={frostT=100},tag=!delay] add delayT
scoreboard players operation @s[tag=delayT] frostT -= @s frostsize
tag @s[tag=delayT] add delay
tag @s remove delayT

execute as @s[scores={frostT=100}] at @s run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 1 0
execute as @s[scores={frostT=100}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 0.2 2
execute as @s[scores={frostT=100}] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.7
execute as @s[scores={frostT=100}] at @s run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1 0

execute as @s[scores={frostT=100,frostsize=1..}] at @s run fill ~ ~-1 ~ ~ ~-1 ~ air replace packed_ice
execute as @s[scores={frostT=101,frostsize=3..}] at @s run fill ~ ~-1 ~1 ~ ~-1 ~-1 air replace packed_ice
execute as @s[scores={frostT=102,frostsize=5..}] at @s run fill ~1 ~-1 ~ ~-1 ~-1 ~ air replace packed_ice
execute as @s[scores={frostT=103,frostsize=9..}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air replace packed_ice
execute as @s[scores={frostT=104,frostsize=14..}] at @s run fill ~ ~-1 ~1 ~ ~-2 ~-1 air replace packed_ice
execute as @s[scores={frostT=105,frostsize=14..}] at @s run fill ~1 ~-1 ~ ~-1 ~-2 ~ air replace packed_ice
execute as @s[scores={frostT=106,frostsize=18..}] at @s run fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 air replace packed_ice
execute as @s[scores={frostT=107,frostsize=22..}] at @s run fill ~2 ~-1 ~ ~-2 ~-1 ~ air replace packed_ice
execute as @s[scores={frostT=108,frostsize=22..}] at @s run fill ~ ~-1 ~2 ~ ~-1 ~-2 air replace packed_ice
execute as @s[scores={frostT=109,frostsize=30..}] at @s run fill ~2 ~-1 ~1 ~-2 ~-1 ~-1 air replace packed_ice
execute as @s[scores={frostT=110,frostsize=30..}] at @s run fill ~1 ~-1 ~2 ~-1 ~-1 ~-2 air replace packed_ice
execute as @s[scores={frostT=111,frostsize=35..}] at @s run fill ~ ~-3 ~1 ~ ~-3 ~-1 air replace packed_ice
execute as @s[scores={frostT=112,frostsize=35..}] at @s run fill ~1 ~-3 ~ ~-1 ~-3 ~ air replace packed_ice
execute as @s[scores={frostT=113,frostsize=42..}] at @s run fill ~1 ~-3 ~1 ~-1 ~-3 ~-1 air replace packed_ice
execute as @s[scores={frostT=114,frostsize=42..}] at @s run fill ~ ~-4 ~ ~ ~-5 ~ air replace packed_ice

execute as @s[scores={frostT=114}] at @s run fill ~-2 ~-1 ~-2 ~2 ~-3 ~2 air replace packed_ice
kill @s[scores={frostT=114..}]