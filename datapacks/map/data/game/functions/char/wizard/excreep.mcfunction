scoreboard players set @a[scores={CPtimer=100}] CPtimer 70

item replace entity @s[scores={CPtimer=3..}] armor.feet with air
clear @s[scores={CPtimer=3..}] minecraft:golden_boots
scoreboard players remove @s CPtimer 1

scoreboard players operation @e[type=minecraft:creeper] tntID -= @s tntID

execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run function game:char/wizard/boom_creeper
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run scoreboard players set @a[scores={CPtimer=139}] CPtimer 138

scoreboard players operation @e[type=minecraft:creeper] tntID += @s tntID

scoreboard players set @a[scores={CPtimer=139}] CPtimer 3
execute as @s[scores={CPtimer=1}] at @s run function game:char/wizard/creeptest

execute as @s[x=600,y=60,z=600,distance=3..95,scores={CPtimer=1},tag=hascreep] run function game:char/wizard/give/explode_creep
execute as @s[x=600,y=60,z=600,distance=3..95,scores={CPtimer=1},tag=!hascreep] run function game:char/wizard/give/throw_creep
