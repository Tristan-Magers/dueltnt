execute as @s at @s run tp @s ^ ^ ^.34
particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0 8 force
scoreboard players add @s blast 1

execute as @s[x=597.1,z=597.1,y=0,dx=40.8,dz=40.8,dy=108,distance=..1000,scores={blast=7..}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
kill @s[scores={blast=200..}]