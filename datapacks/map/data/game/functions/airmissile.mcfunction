execute as @s at @s run tp @s ^ ^ ^.34
particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0 8 force
scoreboard players add @s blast 1

scoreboard players set @s t5 0
execute as @s[x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000,scores={blast=7..}] store result score @s t5 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #game:bolt_place
scoreboard players operation @s t6 += @s t5
#execute as @s[scores={t5=1..}] at @s run scoreboard players set @s t4 3
#execute as @s[scores={t5=1..}] at @s run tag @s add pause
execute as @s[scores={t5=1..}] at @s run playsound minecraft:block.ancient_debris.break master @a
execute as @s[scores={t5=3..}] at @s run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 1 0.9
execute as @s[scores={t5=7..}] at @s run playsound minecraft:block.ancient_debris.break master @a ~ ~ ~ 1 0.8
#execute as @s[scores={t6=35..}] at @s run playsound minecraft:block.amethyst_block.break master @a[distance=..20] ~ ~ ~ 0.6 0.7 0.1
#execute as @s[scores={t6=35..}] at @s run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 2 20 force
#execute as @s[scores={t6=35..}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
#kill @s[scores={t6=35..}]
kill @s[scores={blast=200..}]