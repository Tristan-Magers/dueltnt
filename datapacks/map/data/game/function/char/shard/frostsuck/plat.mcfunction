scoreboard players add @s frostT 1

#execute as @s[scores={frostT=1}] at @s run fill ~-2 ~-1 ~-2 ~2 ~-3 ~2 blue_ice replace air

execute as @s[scores={frostT=..30,frostsize=1..},tag=grow] at @s run fill ~ ~-1 ~ ~ ~-1 ~ blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=3..},tag=grow] at @s run fill ~ ~-1 ~1 ~ ~-1 ~-1 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=5..},tag=grow] at @s run fill ~1 ~-1 ~ ~-1 ~-1 ~ blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=9..},tag=grow] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=14..},tag=grow] at @s run fill ~ ~-1 ~1 ~ ~-2 ~-1 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=14..},tag=grow] at @s run fill ~1 ~-1 ~ ~-1 ~-2 ~ blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=18..},tag=grow] at @s run fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=22..},tag=grow] at @s run fill ~2 ~-1 ~ ~-2 ~-1 ~ blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=22..},tag=grow] at @s run fill ~ ~-1 ~2 ~ ~-1 ~-2 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=30..},tag=grow] at @s run fill ~2 ~-1 ~1 ~-2 ~-1 ~-1 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=30..},tag=grow] at @s run fill ~1 ~-1 ~2 ~-1 ~-1 ~-2 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=35..},tag=grow] at @s run fill ~ ~-3 ~1 ~ ~-3 ~-1 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=35..},tag=grow] at @s run fill ~1 ~-3 ~ ~-1 ~-3 ~ blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=42..},tag=grow] at @s run fill ~1 ~-3 ~1 ~-1 ~-3 ~-1 blue_ice replace air
execute as @s[scores={frostT=..30,frostsize=42..},tag=grow] at @s run fill ~ ~-4 ~ ~ ~-5 ~ blue_ice replace air

tag @s remove grow

scoreboard players set @s[scores={frostsize=60..}] frostsize 60

#timing is from 30 to 1000 (adds 900 [to control timing] and removes up to 60 [to give extra time for more ice)
tag @s[scores={frostT=31},tag=!delay] add delayT
scoreboard players operation @s[tag=delayT] frostT -= @s frostsize
scoreboard players add @s[tag=delayT] frostT 950
tag @s[tag=delayT] add delay
tag @s remove delayT

execute as @s[scores={frostT=1000}] at @s run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 1 0
execute as @s[scores={frostT=1000}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 0.2 2
execute as @s[scores={frostT=1000}] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.7
execute as @s[scores={frostT=1000}] at @s run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1 0

execute as @s[scores={frostT=1000,frostsize=1..}] at @s run fill ~ ~-1 ~ ~ ~-1 ~ air replace blue_ice
execute as @s[scores={frostT=1001,frostsize=3..}] at @s run fill ~ ~-1 ~1 ~ ~-1 ~-1 air replace blue_ice
execute as @s[scores={frostT=1002,frostsize=5..}] at @s run fill ~1 ~-1 ~ ~-1 ~-1 ~ air replace blue_ice
execute as @s[scores={frostT=1003,frostsize=9..}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air replace blue_ice
execute as @s[scores={frostT=1004,frostsize=14..}] at @s run fill ~ ~-1 ~1 ~ ~-2 ~-1 air replace blue_ice
execute as @s[scores={frostT=1005,frostsize=14..}] at @s run fill ~1 ~-1 ~ ~-1 ~-2 ~ air replace blue_ice
execute as @s[scores={frostT=1006,frostsize=18..}] at @s run fill ~1 ~-1 ~1 ~-1 ~-2 ~-1 air replace blue_ice
execute as @s[scores={frostT=1007,frostsize=22..}] at @s run fill ~2 ~-1 ~ ~-2 ~-1 ~ air replace blue_ice
execute as @s[scores={frostT=1008,frostsize=22..}] at @s run fill ~ ~-1 ~2 ~ ~-1 ~-2 air replace blue_ice
execute as @s[scores={frostT=1009,frostsize=30..}] at @s run fill ~2 ~-1 ~1 ~-2 ~-1 ~-1 air replace blue_ice
execute as @s[scores={frostT=1010,frostsize=30..}] at @s run fill ~1 ~-1 ~2 ~-1 ~-1 ~-2 air replace blue_ice
execute as @s[scores={frostT=1011,frostsize=35..}] at @s run fill ~ ~-3 ~1 ~ ~-3 ~-1 air replace blue_ice
execute as @s[scores={frostT=1012,frostsize=35..}] at @s run fill ~1 ~-3 ~ ~-1 ~-3 ~ air replace blue_ice
execute as @s[scores={frostT=1013,frostsize=42..}] at @s run fill ~1 ~-3 ~1 ~-1 ~-3 ~-1 air replace blue_ice
execute as @s[scores={frostT=1014,frostsize=42..}] at @s run fill ~ ~-4 ~ ~ ~-5 ~ air replace blue_ice

execute as @s[scores={frostT=1014}] at @s run fill ~-2 ~-1 ~-2 ~2 ~-3 ~2 air replace blue_ice
kill @s[scores={frostT=1014..}]