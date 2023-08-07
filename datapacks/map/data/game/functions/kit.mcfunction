title @s actionbar [{"text":"Class selected.","color":"green"}]
execute as @s at @s run playsound minecraft:entity.player.levelup master @p ~ ~100 ~ 10000 2
execute as @s[scores={kit=0}] at @s run scoreboard players set @p class 0
execute as @s[scores={kit=1}] at @s run scoreboard players set @p class 1
execute as @s[scores={kit=2}] at @s run scoreboard players set @p class 2
execute as @s[scores={kit=3}] at @s run scoreboard players set @p class 3
execute as @s[scores={kit=4}] at @s run scoreboard players set @p class 4
execute as @s[scores={kit=5}] at @s run scoreboard players set @p class 5
execute as @s[scores={kit=6}] at @s run scoreboard players set @p class 6
execute as @s[scores={kit=7}] at @s run scoreboard players set @p class 7
execute as @s[scores={kit=8}] at @s run scoreboard players set @p class 8
execute as @s[scores={kit=9}] at @s run scoreboard players set @p class 9
execute as @s[scores={kit=10}] at @s run scoreboard players set @p class 10

execute as @s[scores={kit=0},x=484,y=16,z=504,distance=..9] at @s run advancement grant @s only classes:class0
execute as @s[scores={kit=1},x=484,y=16,z=504,distance=..9] at @s run advancement grant @s only classes:class1
execute as @s[scores={kit=2},x=484,y=16,z=504,distance=..9] at @s run advancement grant @s only classes:class2
execute as @s[scores={kit=3},x=482,y=11,z=487,distance=..7] at @s run advancement grant @s only classes:class3
execute as @s[scores={kit=4},x=479,y=10,z=505,distance=..7] at @s run advancement grant @s only classes:class4
execute as @s[scores={kit=5},x=500,y=11,z=500,distance=..7] at @s run advancement grant @s only classes:class5
execute as @s[scores={kit=6},x=517,y=11,z=514,distance=..7] at @s run advancement grant @s only classes:class6
execute as @s[scores={kit=7},x=473,y=10,z=506,distance=..7] at @s run advancement grant @s only classes:class7
execute as @s[scores={kit=8},x=482,y=17,z=453,distance=..7] at @s run advancement grant @s only classes:class8
execute as @s[scores={kit=9},x=495,y=24,z=563,distance=..20] at @s run advancement grant @s only classes:class9
execute as @s[scores={kit=10},x=487,y=11,z=477,distance=..11] at @s run advancement grant @s only classes:class10

execute as @s[scores={kit=0}] at @s run setblock 495 31 564 minecraft:red_glazed_terracotta
execute as @s[scores={kit=1}] at @s run setblock 492 30 564 minecraft:yellow_glazed_terracotta
execute as @s[scores={kit=2}] at @s run setblock 490 27 564 minecraft:blue_glazed_terracotta
execute as @s[scores={kit=3}] at @s run setblock 491 24 564 minecraft:brown_glazed_terracotta
execute as @s[scores={kit=4}] at @s run setblock 493 22 564 minecraft:light_blue_glazed_terracotta
execute as @s[scores={kit=5}] at @s run setblock 497 22 564 minecraft:purple_glazed_terracotta
execute as @s[scores={kit=6}] at @s run setblock 499 24 564 minecraft:black_glazed_terracotta
execute as @s[scores={kit=7}] at @s run setblock 500 27 564 minecraft:gray_glazed_terracotta
execute as @s[scores={kit=8}] at @s run setblock 498 30 564 minecraft:green_glazed_terracotta

execute as @s[scores={kit=3}] at @s run clone 488 17 513 488 17 513 488 17 510
execute as @s[scores={kit=4}] at @s run clone 487 17 513 487 17 513 487 17 510
execute as @s[scores={kit=5}] at @s run clone 486 17 513 486 17 513 486 17 510
execute as @s[scores={kit=6}] at @s run clone 488 16 513 488 16 513 488 16 510
execute as @s[scores={kit=7}] at @s run clone 487 16 513 487 16 513 487 16 510
execute as @s[scores={kit=8}] at @s run clone 486 16 513 486 16 513 486 16 510
execute as @s[scores={kit=9}] at @s run clone 487 18 513 487 18 513 487 18 510
execute as @s[scores={kit=10}] at @s run clone 488 18 513 488 18 513 488 18 510

tag @s[scores={kit=..98}] remove randclass
tag @s[scores={kit=99}] add randclass
execute as @s[scores={kit=99}] at @s run scoreboard players set @p class 99
scoreboard players set @s[scores={kit=0..}] kit -1
item replace entity @s armor.legs with air
