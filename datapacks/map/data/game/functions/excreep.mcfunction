replaceitem entity @s[scores={CPtimer=119..}] armor.feet air
scoreboard players remove @s CPtimer 1
execute as @s[scores={CPtimer=139}] at @s run scoreboard players operation @e[type=minecraft:creeper] tntID -= @s tntID
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 .5 100 force
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run data merge entity @s {Fuse:1,ignited:1}
execute as @s[scores={CPtimer=139}] at @s run execute as @e[type=creeper,scores={tntID=0}] at @s run scoreboard players set @a[scores={CPtimer=139}] CPtimer 138
execute as @s[scores={CPtimer=139}] at @s run scoreboard players operation @e[type=minecraft:creeper] tntID += @s tntID
scoreboard players set @a[scores={CPtimer=139}] CPtimer 3
replaceitem entity @s[x=600,y=60,z=600,distance=3..95,scores={CPtimer=1}] hotbar.4 golden_boots{display:{Name:"{\"text\":\"§r§bExplode Ghost Creeper §r: Right Click (summoned by shift)\"}"}}