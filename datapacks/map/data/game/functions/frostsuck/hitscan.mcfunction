execute as @s at @s run tp ^ ^ ^.1
scoreboard players add @s t1 1

execute at @s run particle minecraft:end_rod ~ ~-.1 ~ 0 0 0 0 1 force

execute as @s at @s positioned ~ ~ ~ run function game:inblock

execute as @s[scores={t1=20..}] at @s positioned ~0.3 ~0.3 ~0.3 if block ~ ~ ~ packed_ice run tag @s remove in
execute as @s[tag=in,scores={t1=20..}] at @s positioned ~0.3 ~0.3 ~-0.3 if block ~ ~ ~ packed_ice run tag @s remove in
execute as @s[tag=in,scores={t1=20..}] at @s positioned ~0.3 ~-0.3 ~0.3 if block ~ ~ ~ packed_ice run tag @s remove in
execute as @s[tag=in,scores={t1=20..}] at @s positioned ~0.3 ~-0.3 ~-0.3 if block ~ ~ ~ packed_ice run tag @s remove in
execute as @s[tag=in,scores={t1=20..}] at @s positioned ~-0.3 ~0.3 ~0.3 if block ~ ~ ~ packed_ice run tag @s remove in
execute as @s[tag=in,scores={t1=20..}] at @s positioned ~-0.3 ~0.3 ~-0.3 if block ~ ~ ~ packed_ice run tag @s remove in
execute as @s[tag=in,scores={t1=20..}] at @s positioned ~-0.3 ~-0.3 ~0.3 if block ~ ~ ~ packed_ice run tag @s remove in
execute as @s[tag=in,scores={t1=20..}] at @s positioned ~-0.3 ~-0.3 ~-0.3 if block ~ ~ ~ packed_ice run tag @s remove in

execute as @s[tag=in,scores={t1=..1000}] at @s run function game:frostsuck/hitscan

