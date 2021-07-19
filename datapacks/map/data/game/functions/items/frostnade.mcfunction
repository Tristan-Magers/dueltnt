scoreboard players add @s airnade 1

execute as @s[scores={airnade=1}] at @s run tp @e[type=chicken,distance=..2] ~ ~-1000 ~

#execute as @s[scores={airnade=1}] if block ~ ~-1 ~ packed_ice run tp @s ~ ~-1 ~

execute as @s[scores={airnade=1}] at @s run particle minecraft:cloud ~ ~ ~ .1 .1 .1 .2 100 force
execute as @s[scores={airnade=1}] at @s run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0 100 force
execute as @s[scores={airnade=1}] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2
execute as @s[scores={airnade=1}] at @s run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 0
execute as @s[scores={airnade=1}] at @s run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 2
execute as @s[scores={airnade=1}] at @s run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 0

scoreboard players set @s[scores={airnade=2}] airnade 7

#turn air

execute as @s[scores={airnade=7}] at @s if block ~ ~ ~ packed_ice run setblock ~ ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~1 ~ ~ packed_ice run setblock ~1 ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~-1 ~ ~ packed_ice run setblock ~-1 ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~ ~1 ~ packed_ice run setblock ~ ~1 ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~ ~-1 ~ packed_ice run setblock ~ ~-1 ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~ ~ ~1 packed_ice run setblock ~ ~ ~1 air destroy
execute as @s[scores={airnade=7}] at @s if block ~ ~ ~-1 packed_ice run setblock ~ ~ ~-1 air destroy

execute as @s[scores={airnade=8}] if block ~1 ~ ~1 packed_ice run setblock ~1 ~ ~1 air destroy
execute as @s[scores={airnade=8}] if block ~-1 ~ ~1 packed_ice run setblock ~-1 ~ ~1 air destroy
execute as @s[scores={airnade=8}] if block ~1 ~ ~-1 packed_ice run setblock ~1 ~ ~-1 air destroy
execute as @s[scores={airnade=8}] if block ~-1 ~ ~-1 packed_ice run setblock ~-1 ~ ~-1 air destroy
execute as @s[scores={airnade=8}] if block ~1 ~1 ~ packed_ice run setblock ~1 ~1 ~ air destroy
execute as @s[scores={airnade=8}] if block ~-1 ~1 ~ packed_ice run setblock ~-1 ~1 ~ air destroy
execute as @s[scores={airnade=8}] if block ~1 ~-1 ~ packed_ice run setblock ~1 ~-1 ~ air destroy
execute as @s[scores={airnade=8}] if block ~-1 ~-1 ~ packed_ice run setblock ~-1 ~-1 ~ air destroy
execute as @s[scores={airnade=8}] if block ~ ~1 ~1 packed_ice run setblock ~ ~1 ~1 air destroy
execute as @s[scores={airnade=8}] if block ~ ~-1 ~1 packed_ice run setblock ~ ~-1 ~1 air destroy
execute as @s[scores={airnade=8}] if block ~ ~1 ~-1 packed_ice run setblock ~ ~1 ~-1 air destroy
execute as @s[scores={airnade=8}] if block ~ ~-1 ~-1 packed_ice run setblock ~ ~-1 ~-1 air destroy

execute as @s[scores={airnade=9}] if block ~1 ~1 ~1 packed_ice run setblock ~1 ~1 ~1 air destroy
execute as @s[scores={airnade=9}] if block ~-1 ~1 ~1 packed_ice run setblock ~-1 ~1 ~1 air destroy
execute as @s[scores={airnade=9}] if block ~1 ~-1 ~1 packed_ice run setblock ~1 ~-1 ~1 air destroy
execute as @s[scores={airnade=9}] if block ~1 ~1 ~-1 packed_ice run setblock ~1 ~1 ~-1 air destroy
execute as @s[scores={airnade=9}] if block ~-1 ~-1 ~1 packed_ice run setblock ~-1 ~-1 ~1 air destroy
execute as @s[scores={airnade=9}] if block ~1 ~-1 ~-1 packed_ice run setblock ~1 ~-1 ~-1 air destroy
execute as @s[scores={airnade=9}] if block ~-1 ~1 ~-1 packed_ice run setblock ~-1 ~1 ~-1 air destroy
execute as @s[scores={airnade=9}] if block ~-1 ~-1 ~-1 packed_ice run setblock ~-1 ~-1 ~-1 air destroy

execute as @s[scores={airnade=10}] if block ~2 ~ ~ packed_ice run setblock ~2 ~ ~ air destroy
execute as @s[scores={airnade=10}] if block ~-2 ~ ~ packed_ice run setblock ~-2 ~ ~ air destroy
execute as @s[scores={airnade=10}] if block ~ ~2 ~ packed_ice run setblock ~ ~2 ~ air destroy
execute as @s[scores={airnade=10}] if block ~ ~-2 ~ packed_ice run setblock ~ ~-2 ~ air destroy
execute as @s[scores={airnade=10}] if block ~ ~ ~2 packed_ice run setblock ~ ~ ~2 air destroy
execute as @s[scores={airnade=10}] if block ~ ~ ~-2 packed_ice run setblock ~ ~ ~-2 air destroy

execute as @s[scores={airnade=11}] if block ~2 ~1 ~ packed_ice run setblock ~2 ~1 ~ air destroy
execute as @s[scores={airnade=11}] if block ~2 ~ ~1 packed_ice run setblock ~2 ~ ~1 air destroy
execute as @s[scores={airnade=11}] if block ~2 ~-1 ~ packed_ice run setblock ~2 ~-1 ~ air destroy
execute as @s[scores={airnade=11}] if block ~2 ~ ~-1 packed_ice run setblock ~2 ~ ~-1 air destroy
execute as @s[scores={airnade=11}] if block ~-2 ~1 ~ packed_ice run setblock ~-2 ~1 ~ air destroy
execute as @s[scores={airnade=11}] if block ~-2 ~ ~1 packed_ice run setblock ~-2 ~ ~1 air destroy
execute as @s[scores={airnade=11}] if block ~-2 ~-1 ~ packed_ice run setblock ~-2 ~-1 ~ air destroy
execute as @s[scores={airnade=11}] if block ~-2 ~ ~-1 packed_ice run setblock ~-2 ~ ~-1 air destroy

execute as @s[scores={airnade=11}] if block ~1 ~2 ~ packed_ice run setblock ~1 ~2 ~ air destroy
execute as @s[scores={airnade=11}] if block ~-1 ~2 ~ packed_ice run setblock ~-1 ~2 ~ air destroy
execute as @s[scores={airnade=11}] if block ~ ~2 ~1 packed_ice run setblock ~ ~2 ~1 air destroy
execute as @s[scores={airnade=11}] if block ~ ~2 ~-1 packed_ice run setblock ~ ~2 ~-1 air destroy
execute as @s[scores={airnade=11}] if block ~1 ~-2 ~ packed_ice run setblock ~1 ~-2 ~ air destroy
execute as @s[scores={airnade=11}] if block ~-1 ~-2 ~ packed_ice run setblock ~-1 ~-2 ~ air destroy
execute as @s[scores={airnade=11}] if block ~ ~-2 ~1 packed_ice run setblock ~ ~-2 ~1 air destroy
execute as @s[scores={airnade=11}] if block ~ ~-2 ~-1 packed_ice run setblock ~ ~-2 ~-1 air destroy

execute as @s[scores={airnade=11}] if block ~1 ~ ~2 packed_ice run setblock ~1 ~ ~2 air destroy
execute as @s[scores={airnade=11}] if block ~-1 ~ ~2 packed_ice run setblock ~-1 ~ ~2 air destroy
execute as @s[scores={airnade=11}] if block ~ ~1 ~2 packed_ice run setblock ~ ~1 ~2 air destroy
execute as @s[scores={airnade=11}] if block ~ ~-1 ~2 packed_ice run setblock ~ ~-1 ~2 air destroy
execute as @s[scores={airnade=11}] if block ~1 ~ ~-2 packed_ice run setblock ~1 ~ ~-2 air destroy
execute as @s[scores={airnade=11}] if block ~-1 ~ ~-2 packed_ice run setblock ~-1 ~ ~-2 air destroy
execute as @s[scores={airnade=11}] if block ~ ~1 ~-2 packed_ice run setblock ~ ~1 ~-2 air destroy
execute as @s[scores={airnade=11}] if block ~ ~-1 ~-2 packed_ice run setblock ~ ~-1 ~-2 air destroy

execute as @s[scores={airnade=12}] if block ~2 ~1 ~1 packed_ice run setblock ~2 ~1 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~2 ~1 ~-1 packed_ice run setblock ~2 ~1 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~2 ~-1 ~1 packed_ice run setblock ~2 ~-1 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~2 ~-1 ~-1 packed_ice run setblock ~2 ~-1 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~-2 ~1 ~1 packed_ice run setblock ~-2 ~1 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~-2 ~1 ~-1 packed_ice run setblock ~-2 ~1 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~-2 ~-1 ~1 packed_ice run setblock ~-2 ~-1 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~-2 ~-1 ~-1 packed_ice run setblock ~-2 ~-1 ~-1 air destroy

execute as @s[scores={airnade=12}] if block ~1 ~2 ~1 packed_ice run setblock ~1 ~2 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~2 ~-1 packed_ice run setblock ~1 ~2 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~2 ~1 packed_ice run setblock ~-1 ~2 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~2 ~-1 packed_ice run setblock ~-1 ~2 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~-2 ~1 packed_ice run setblock ~1 ~-2 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~-2 ~-1 packed_ice run setblock ~1 ~-2 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~-2 ~1 packed_ice run setblock ~-1 ~-2 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~-2 ~-1 packed_ice run setblock ~-1 ~-2 ~-1 air destroy

execute as @s[scores={airnade=12}] if block ~1 ~1 ~2 packed_ice run setblock ~1 ~1 ~2 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~-1 ~2 packed_ice run setblock ~1 ~-1 ~2 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~1 ~2 packed_ice run setblock ~-1 ~1 ~2 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~-1 ~2 packed_ice run setblock ~-1 ~-1 ~2 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~1 ~-2 packed_ice run setblock ~1 ~1 ~-2 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~-1 ~-2 packed_ice run setblock ~1 ~-1 ~-2 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~1 ~-2 packed_ice run setblock ~-1 ~1 ~-2 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~-1 ~-2 packed_ice run setblock ~-1 ~-1 ~-2 air destroy

execute as @s[scores={airnade=13}] if block ~3 ~ ~ packed_ice run setblock ~3 ~ ~ air destroy
execute as @s[scores={airnade=13}] if block ~3 ~1 ~ packed_ice run setblock ~3 ~1 ~ air destroy
execute as @s[scores={airnade=13}] if block ~3 ~-1 ~ packed_ice run setblock ~3 ~-1 ~ air destroy
execute as @s[scores={airnade=13}] if block ~3 ~ ~1 packed_ice run setblock ~3 ~ ~1 air destroy
execute as @s[scores={airnade=13}] if block ~3 ~ ~-1 packed_ice run setblock ~3 ~ ~-1 air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~ ~ packed_ice run setblock ~-3 ~ ~ air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~1 ~ packed_ice run setblock ~-3 ~1 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~-1 ~ packed_ice run setblock ~-3 ~-1 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~ ~1 packed_ice run setblock ~-3 ~ ~1 air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~ ~-1 packed_ice run setblock ~-3 ~ ~-1 air destroy

execute as @s[scores={airnade=13}] if block ~ ~3 ~ packed_ice run setblock ~ ~3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~1 ~3 ~ packed_ice run setblock ~1 ~3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-1 ~3 ~ packed_ice run setblock ~-1 ~3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~ ~3 ~1 packed_ice run setblock ~ ~3 ~1 air destroy
execute as @s[scores={airnade=13}] if block ~ ~3 ~-1 packed_ice run setblock ~ ~3 ~-1 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-3 ~ packed_ice run setblock ~ ~-3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~1 ~-3 ~ packed_ice run setblock ~1 ~-3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-1 ~-3 ~ packed_ice run setblock ~-1 ~-3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~ ~-3 ~1 packed_ice run setblock ~ ~-3 ~1 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-3 ~-1 packed_ice run setblock ~ ~-3 ~-1 air destroy

execute as @s[scores={airnade=13}] if block ~ ~ ~3 packed_ice run setblock ~ ~ ~3 air destroy
execute as @s[scores={airnade=13}] if block ~1 ~ ~3 packed_ice run setblock ~1 ~ ~3 air destroy
execute as @s[scores={airnade=13}] if block ~-1 ~ ~3 packed_ice run setblock ~-1 ~ ~3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~1 ~3 packed_ice run setblock ~ ~1 ~3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-1 ~3 packed_ice run setblock ~ ~-1 ~3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~ ~-3 packed_ice run setblock ~ ~ ~-3 air destroy
execute as @s[scores={airnade=13}] if block ~1 ~ ~-3 packed_ice run setblock ~1 ~ ~-3 air destroy
execute as @s[scores={airnade=13}] if block ~-1 ~ ~-3 packed_ice run setblock ~-1 ~ ~-3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~1 ~-3 packed_ice run setblock ~ ~1 ~-3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-1 ~-3 packed_ice run setblock ~ ~-1 ~-3 air destroy

execute as @s[scores={airnade=13}] if block ~ ~2 ~2 packed_ice run setblock ~ ~2 ~2 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-2 ~2 packed_ice run setblock ~ ~-2 ~2 air destroy
execute as @s[scores={airnade=13}] if block ~ ~2 ~-2 packed_ice run setblock ~ ~2 ~-2 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-2 ~-2 packed_ice run setblock ~ ~-2 ~-2 air destroy

execute as @s[scores={airnade=13}] if block ~2 ~2 ~ packed_ice run setblock ~2 ~2 ~ air destroy
execute as @s[scores={airnade=13}] if block ~2 ~-2 ~ packed_ice run setblock ~2 ~-2 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-2 ~2 ~ packed_ice run setblock ~-2 ~2 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-2 ~-2 ~ packed_ice run setblock ~-2 ~-2 ~ air destroy

execute as @s[scores={airnade=13}] if block ~2 ~ ~2 packed_ice run setblock ~2 ~ ~2 air destroy
execute as @s[scores={airnade=13}] if block ~2 ~ ~-2 packed_ice run setblock ~2 ~ ~-2 air destroy
execute as @s[scores={airnade=13}] if block ~-2 ~ ~2 packed_ice run setblock ~-2 ~ ~2 air destroy
execute as @s[scores={airnade=13}] if block ~-2 ~ ~-2 packed_ice run setblock ~-2 ~ ~-2 air destroy

execute as @s[scores={airnade=14}] if block ~3 ~1 ~1 packed_ice run setblock ~3 ~1 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~3 ~1 ~-1 packed_ice run setblock ~3 ~1 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~3 ~-1 ~1 packed_ice run setblock ~3 ~-1 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~3 ~-1 ~-1 packed_ice run setblock ~3 ~-1 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-3 ~1 ~1 packed_ice run setblock ~-3 ~1 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-3 ~1 ~-1 packed_ice run setblock ~-3 ~1 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-3 ~-1 ~1 packed_ice run setblock ~-3 ~-1 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-3 ~-1 ~-1 packed_ice run setblock ~-3 ~-1 ~-1 air destroy

execute as @s[scores={airnade=14}] if block ~1 ~1 ~3 packed_ice run setblock ~1 ~1 ~3 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-1 ~3 packed_ice run setblock ~1 ~-1 ~3 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~1 ~3 packed_ice run setblock ~-1 ~1 ~3 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-1 ~3 packed_ice run setblock ~-1 ~-1 ~3 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~1 ~-3 packed_ice run setblock ~1 ~1 ~-3 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-1 ~-3 packed_ice run setblock ~1 ~-1 ~-3 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~1 ~-3 packed_ice run setblock ~-1 ~1 ~-3 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-1 ~-3 packed_ice run setblock ~-1 ~-1 ~-3 air destroy

execute as @s[scores={airnade=14}] if block ~1 ~3 ~1 packed_ice run setblock ~1 ~3 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~3 ~-1 packed_ice run setblock ~1 ~3 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~3 ~1 packed_ice run setblock ~-1 ~3 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~3 ~-1 packed_ice run setblock ~-1 ~3 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-3 ~1 packed_ice run setblock ~1 ~-3 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-3 ~-1 packed_ice run setblock ~1 ~-3 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-3 ~1 packed_ice run setblock ~-1 ~-3 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-3 ~-1 packed_ice run setblock ~-1 ~-3 ~-1 air destroy

execute as @s[scores={airnade=14}] if block ~1 ~2 ~2 packed_ice run setblock ~1 ~2 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~2 ~-2 packed_ice run setblock ~1 ~2 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-2 ~2 packed_ice run setblock ~1 ~-2 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-2 ~-2 packed_ice run setblock ~1 ~-2 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~2 ~2 packed_ice run setblock ~-1 ~2 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~2 ~-2 packed_ice run setblock ~-1 ~2 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-2 ~2 packed_ice run setblock ~-1 ~-2 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-2 ~-2 packed_ice run setblock ~-1 ~-2 ~-2 air destroy

execute as @s[scores={airnade=14}] if block ~2 ~2 ~1 packed_ice run setblock ~2 ~2 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~2 ~-1 packed_ice run setblock ~2 ~2 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~-2 ~1 packed_ice run setblock ~2 ~-2 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~-2 ~-1 packed_ice run setblock ~2 ~-2 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~2 ~1 packed_ice run setblock ~-2 ~2 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~2 ~-1 packed_ice run setblock ~-2 ~2 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~-2 ~1 packed_ice run setblock ~-2 ~-2 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~-2 ~-1 packed_ice run setblock ~-2 ~-2 ~-1 air destroy

execute as @s[scores={airnade=14}] if block ~2 ~1 ~2 packed_ice run setblock ~2 ~1 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~1 ~-2 packed_ice run setblock ~2 ~1 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~-1 ~2 packed_ice run setblock ~2 ~-1 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~-1 ~-2 packed_ice run setblock ~2 ~-1 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~1 ~2 packed_ice run setblock ~-2 ~1 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~1 ~-2 packed_ice run setblock ~-2 ~1 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~-1 ~2 packed_ice run setblock ~-2 ~-1 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~-1 ~-2 packed_ice run setblock ~-2 ~-1 ~-2 air destroy

#turn ice

execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~ white_stained_glass unless block ~ ~ ~ air unless block ~ ~ ~ barrier run setblock ~ ~ ~ packed_ice
execute as @s[scores={airnade=7}] at @s unless block ~1 ~ ~ white_stained_glass unless block ~1 ~ ~ air unless block ~1 ~ ~ barrier run setblock ~1 ~ ~ packed_ice
execute as @s[scores={airnade=7}] at @s unless block ~-1 ~ ~ white_stained_glass unless block ~-1 ~ ~ air unless block ~-1 ~ ~ barrier run setblock ~-1 ~ ~ packed_ice
execute as @s[scores={airnade=7}] at @s unless block ~ ~1 ~ white_stained_glass unless block ~ ~1 ~ air unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ packed_ice
execute as @s[scores={airnade=7}] at @s unless block ~ ~-1 ~ white_stained_glass unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ packed_ice
execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~1 white_stained_glass unless block ~ ~ ~1 air unless block ~ ~ ~1 barrier run setblock ~ ~ ~1 packed_ice
execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~-1 white_stained_glass unless block ~ ~ ~-1 air unless block ~ ~ ~-1 barrier run setblock ~ ~ ~-1 packed_ice

execute as @s[scores={airnade=8}] at @s unless block ~1 ~ ~1 white_stained_glass unless block ~1 ~ ~1 air unless block ~1 ~ ~1 barrier run setblock ~1 ~ ~1 packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~-1 ~ ~1 white_stained_glass unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 barrier run setblock ~-1 ~ ~1 packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~1 ~ ~-1 white_stained_glass unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 barrier run setblock ~1 ~ ~-1 packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~-1 ~ ~-1 white_stained_glass unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 barrier run setblock ~-1 ~ ~-1 packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~1 ~1 ~ white_stained_glass unless block ~1 ~1 ~ air unless block ~1 ~1 ~ barrier run setblock ~1 ~1 ~ packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~-1 ~1 ~ white_stained_glass unless block ~-1 ~1 ~ air unless block ~-1 ~1 ~ barrier run setblock ~-1 ~1 ~ packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~1 ~-1 ~ white_stained_glass unless block ~1 ~-1 ~ air unless block ~1 ~-1 ~ barrier run setblock ~1 ~-1 ~ packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~-1 ~-1 ~ white_stained_glass unless block ~-1 ~-1 ~ air unless block ~-1 ~-1 ~ barrier run setblock ~-1 ~-1 ~ packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~ ~1 ~1 white_stained_glass unless block ~ ~1 ~1 air unless block ~ ~1 ~1 barrier run setblock ~ ~1 ~1 packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~ ~-1 ~1 white_stained_glass unless block ~ ~-1 ~1 air unless block ~ ~-1 ~1 barrier run setblock ~ ~-1 ~1 packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~ ~1 ~-1 white_stained_glass unless block ~ ~1 ~-1 air unless block ~ ~1 ~-1 barrier run setblock ~ ~1 ~-1 packed_ice
execute as @s[scores={airnade=8}] at @s unless block ~ ~-1 ~-1 white_stained_glass unless block ~ ~-1 ~-1 air unless block ~ ~-1 ~-1 barrier run setblock ~ ~-1 ~-1 packed_ice

execute as @s[scores={airnade=9}] at @s unless block ~1 ~1 ~1 white_stained_glass unless block ~1 ~1 ~1 air unless block ~1 ~1 ~1 barrier run setblock ~1 ~1 ~1 packed_ice
execute as @s[scores={airnade=9}] at @s unless block ~-1 ~1 ~1 white_stained_glass unless block ~-1 ~1 ~1 air unless block ~-1 ~1 ~1 barrier run setblock ~-1 ~1 ~1 packed_ice
execute as @s[scores={airnade=9}] at @s unless block ~1 ~-1 ~1 white_stained_glass unless block ~1 ~-1 ~1 air unless block ~1 ~-1 ~1 barrier run setblock ~1 ~-1 ~1 packed_ice
execute as @s[scores={airnade=9}] at @s unless block ~1 ~1 ~-1 white_stained_glass unless block ~1 ~1 ~-1 air unless block ~1 ~1 ~-1 barrier run setblock ~1 ~1 ~-1 packed_ice
execute as @s[scores={airnade=9}] at @s unless block ~-1 ~-1 ~1 white_stained_glass unless block ~-1 ~-1 ~1 air unless block ~-1 ~-1 ~1 barrier run setblock ~-1 ~-1 ~1 packed_ice
execute as @s[scores={airnade=9}] at @s unless block ~1 ~-1 ~-1 white_stained_glass unless block ~1 ~-1 ~-1 air unless block ~1 ~-1 ~-1 barrier run setblock ~1 ~-1 ~-1 packed_ice
execute as @s[scores={airnade=9}] at @s unless block ~-1 ~1 ~-1 white_stained_glass unless block ~-1 ~1 ~-1 air unless block ~-1 ~1 ~-1 barrier run setblock ~-1 ~1 ~-1 packed_ice
execute as @s[scores={airnade=9}] at @s unless block ~-1 ~-1 ~-1 white_stained_glass unless block ~-1 ~-1 ~-1 air unless block ~-1 ~-1 ~-1 barrier run setblock ~-1 ~-1 ~-1 packed_ice

execute as @s[scores={airnade=10}] at @s unless block ~2 ~ ~ white_stained_glass unless block ~2 ~ ~ air unless block ~2 ~ ~ barrier run setblock ~2 ~ ~ packed_ice
execute as @s[scores={airnade=10}] at @s unless block ~-2 ~ ~ white_stained_glass unless block ~-2 ~ ~ air unless block ~-2 ~ ~ barrier run setblock ~-2 ~ ~ packed_ice
execute as @s[scores={airnade=10}] at @s unless block ~ ~2 ~ white_stained_glass unless block ~ ~2 ~ air unless block ~ ~2 ~ barrier run setblock ~ ~2 ~ packed_ice
execute as @s[scores={airnade=10}] at @s unless block ~ ~-2 ~ white_stained_glass unless block ~ ~-2 ~ air unless block ~ ~-2 ~ barrier run setblock ~ ~-2 ~ packed_ice
execute as @s[scores={airnade=10}] at @s unless block ~ ~ ~2 white_stained_glass unless block ~ ~ ~2 air unless block ~ ~ ~2 barrier run setblock ~ ~ ~2 packed_ice
execute as @s[scores={airnade=10}] at @s unless block ~ ~ ~-2 white_stained_glass unless block ~ ~ ~-2 air unless block ~ ~ ~-2 barrier run setblock ~ ~ ~-2 packed_ice

execute as @s[scores={airnade=11}] at @s unless block ~2 ~1 ~ white_stained_glass unless block ~2 ~1 ~ air unless block ~2 ~1 ~ barrier run setblock ~2 ~1 ~ packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~2 ~ ~1 white_stained_glass unless block ~2 ~ ~1 air unless block ~2 ~ ~1 barrier run setblock ~2 ~ ~1 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~2 ~-1 ~ white_stained_glass unless block ~2 ~-1 ~ air unless block ~2 ~-1 ~ barrier run setblock ~2 ~-1 ~ packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~2 ~ ~-1 white_stained_glass unless block ~2 ~ ~-1 air unless block ~2 ~ ~-1 barrier run setblock ~2 ~ ~-1 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~-2 ~1 ~ white_stained_glass unless block ~-2 ~1 ~ air unless block ~-2 ~1 ~ barrier run setblock ~-2 ~1 ~ packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~-2 ~ ~1 white_stained_glass unless block ~-2 ~ ~1 air unless block ~-2 ~ ~1 barrier run setblock ~-2 ~ ~1 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~-2 ~-1 ~ white_stained_glass unless block ~-2 ~-1 ~ air unless block ~-2 ~-1 ~ barrier run setblock ~-2 ~-1 ~ packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~-2 ~ ~-1 white_stained_glass unless block ~-2 ~ ~-1 air unless block ~-2 ~ ~-1 barrier run setblock ~-2 ~ ~-1 packed_ice

execute as @s[scores={airnade=11}] at @s unless block ~1 ~2 ~ white_stained_glass unless block ~1 ~2 ~ air unless block ~1 ~2 ~ barrier run setblock ~1 ~2 ~ packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~-1 ~2 ~ white_stained_glass unless block ~-1 ~2 ~ air unless block ~-1 ~2 ~ barrier run setblock ~-1 ~2 ~ packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~2 ~1 white_stained_glass unless block ~ ~2 ~1 air unless block ~ ~2 ~1 barrier run setblock ~ ~2 ~1 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~2 ~-1 white_stained_glass unless block ~ ~2 ~-1 air unless block ~ ~2 ~-1 barrier run setblock ~ ~2 ~-1 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~1 ~-2 ~ white_stained_glass unless block ~1 ~-2 ~ air unless block ~1 ~-2 ~ barrier run setblock ~1 ~-2 ~ packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~-1 ~-2 ~ white_stained_glass unless block ~-1 ~-2 ~ air unless block ~-1 ~-2 ~ barrier run setblock ~-1 ~-2 ~ packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~-2 ~1 white_stained_glass unless block ~ ~-2 ~1 air unless block ~ ~-2 ~1 barrier run setblock ~ ~-2 ~1 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~-2 ~-1 white_stained_glass unless block ~ ~-2 ~-1 air unless block ~ ~-2 ~-1 barrier run setblock ~ ~-2 ~-1 packed_ice

execute as @s[scores={airnade=11}] at @s unless block ~1 ~ ~2 white_stained_glass unless block ~1 ~ ~2 air unless block ~1 ~ ~2 barrier run setblock ~1 ~ ~2 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~-1 ~ ~2 white_stained_glass unless block ~-1 ~ ~2 air unless block ~-1 ~ ~2 barrier run setblock ~-1 ~ ~2 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~1 ~2 white_stained_glass unless block ~ ~1 ~2 air unless block ~ ~1 ~2 barrier run setblock ~ ~1 ~2 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~-1 ~2 white_stained_glass unless block ~ ~-1 ~2 air unless block ~ ~-1 ~2 barrier run setblock ~ ~-1 ~2 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~1 ~ ~-2 white_stained_glass unless block ~1 ~ ~-2 air unless block ~1 ~ ~-2 barrier run setblock ~1 ~ ~-2 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~-1 ~ ~-2 white_stained_glass unless block ~-1 ~ ~-2 air unless block ~-1 ~ ~-2 barrier run setblock ~-1 ~ ~-2 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~1 ~-2 white_stained_glass unless block ~ ~1 ~-2 air unless block ~ ~1 ~-2 barrier run setblock ~ ~1 ~-2 packed_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~-1 ~-2 white_stained_glass unless block ~ ~-1 ~-2 air unless block ~ ~-1 ~-2 barrier run setblock ~ ~-1 ~-2 packed_ice

execute as @s[scores={airnade=12}] at @s unless block ~2 ~1 ~1 white_stained_glass unless block ~2 ~1 ~1 air unless block ~2 ~1 ~1 barrier run setblock ~2 ~1 ~1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~2 ~1 ~-1 white_stained_glass unless block ~2 ~1 ~-1 air unless block ~2 ~1 ~-1 barrier run setblock ~2 ~1 ~-1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~2 ~-1 ~1 white_stained_glass unless block ~2 ~-1 ~1 air unless block ~2 ~-1 ~1 barrier run setblock ~2 ~-1 ~1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~2 ~-1 ~-1 white_stained_glass unless block ~2 ~-1 ~-1 air unless block ~2 ~-1 ~-1 barrier run setblock ~2 ~-1 ~-1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-2 ~1 ~1 white_stained_glass unless block ~-2 ~1 ~1 air unless block ~-2 ~1 ~1 barrier run setblock ~-2 ~1 ~1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-2 ~1 ~-1 white_stained_glass unless block ~-2 ~1 ~-1 air unless block ~-2 ~1 ~-1 barrier run setblock ~-2 ~1 ~-1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-2 ~-1 ~1 white_stained_glass unless block ~-2 ~-1 ~1 air unless block ~-2 ~-1 ~1 barrier run setblock ~-2 ~-1 ~1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-2 ~-1 ~-1 white_stained_glass unless block ~-2 ~-1 ~-1 air unless block ~-2 ~-1 ~-1 barrier run setblock ~-2 ~-1 ~-1 packed_ice

execute as @s[scores={airnade=12}] at @s unless block ~1 ~2 ~1 white_stained_glass unless block ~1 ~2 ~1 air unless block ~1 ~2 ~1 barrier run setblock ~1 ~2 ~1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~2 ~-1 white_stained_glass unless block ~1 ~2 ~-1 air unless block ~1 ~2 ~-1 barrier run setblock ~1 ~2 ~-1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~2 ~1 white_stained_glass unless block ~-1 ~2 ~1 air unless block ~-1 ~2 ~1 barrier run setblock ~-1 ~2 ~1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~2 ~-1 white_stained_glass unless block ~-1 ~2 ~-1 air unless block ~-1 ~2 ~-1 barrier run setblock ~-1 ~2 ~-1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~-2 ~1 white_stained_glass unless block ~1 ~-2 ~1 air unless block ~1 ~-2 ~1 barrier run setblock ~1 ~-2 ~1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~-2 ~-1 white_stained_glass unless block ~1 ~-2 ~-1 air unless block ~1 ~-2 ~-1 barrier run setblock ~1 ~-2 ~-1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~-2 ~1 white_stained_glass unless block ~-1 ~-2 ~1 air unless block ~-1 ~-2 ~1 barrier run setblock ~-1 ~-2 ~1 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~-2 ~-1 white_stained_glass unless block ~-1 ~-2 ~-1 air unless block ~-1 ~-2 ~-1 barrier run setblock ~-1 ~-2 ~-1 packed_ice

execute as @s[scores={airnade=12}] at @s unless block ~1 ~1 ~2 white_stained_glass unless block ~1 ~1 ~2 air unless block ~1 ~1 ~2 barrier run setblock ~1 ~1 ~2 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~-1 ~2 white_stained_glass unless block ~1 ~-1 ~2 air unless block ~1 ~-1 ~2 barrier run setblock ~1 ~-1 ~2 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~1 ~2 white_stained_glass unless block ~-1 ~1 ~2 air unless block ~-1 ~1 ~2 barrier run setblock ~-1 ~1 ~2 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~-1 ~2 white_stained_glass unless block ~-1 ~-1 ~2 air unless block ~-1 ~-1 ~2 barrier run setblock ~-1 ~-1 ~2 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~1 ~-2 white_stained_glass unless block ~1 ~1 ~-2 air unless block ~1 ~1 ~-2 barrier run setblock ~1 ~1 ~-2 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~-1 ~-2 white_stained_glass unless block ~1 ~-1 ~-2 air unless block ~1 ~-1 ~-2 barrier run setblock ~1 ~-1 ~-2 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~1 ~-2 white_stained_glass unless block ~-1 ~1 ~-2 air unless block ~-1 ~1 ~-2 barrier run setblock ~-1 ~1 ~-2 packed_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~-1 ~-2 white_stained_glass unless block ~-1 ~-1 ~-2 air unless block ~-1 ~-1 ~-2 barrier run setblock ~-1 ~-1 ~-2 packed_ice

execute as @s[scores={airnade=13}] at @s unless block ~3 ~ ~ air unless block ~3 ~ ~ barrier run setblock ~3 ~ ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~3 ~1 ~ air unless block ~3 ~1 ~ barrier run setblock ~3 ~1 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~3 ~-1 ~ air unless block ~3 ~-1 ~ barrier run setblock ~3 ~-1 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~3 ~ ~1 air unless block ~3 ~ ~1 barrier run setblock ~3 ~ ~1 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~3 ~ ~-1 air unless block ~3 ~ ~-1 barrier run setblock ~3 ~ ~-1 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~ ~ air unless block ~-3 ~ ~ barrier run setblock ~-3 ~ ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~1 ~ air unless block ~-3 ~1 ~ barrier run setblock ~-3 ~1 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~-1 ~ air unless block ~-3 ~-1 ~ barrier run setblock ~-3 ~-1 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~ ~1 air unless block ~-3 ~ ~1 barrier run setblock ~-3 ~ ~1 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~ ~-1 air unless block ~-3 ~ ~-1 barrier run setblock ~-3 ~ ~-1 packed_ice

execute as @s[scores={airnade=13}] at @s unless block ~ ~3 ~ air unless block ~ ~3 ~ barrier run setblock ~ ~3 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~1 ~3 ~ air unless block ~1 ~3 ~ barrier run setblock ~1 ~3 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-1 ~3 ~ air unless block ~-1 ~3 ~ barrier run setblock ~-1 ~3 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~3 ~1 air unless block ~ ~3 ~1 barrier run setblock ~ ~3 ~1 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~3 ~-1 air unless block ~ ~3 ~-1 barrier run setblock ~ ~3 ~-1 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-3 ~ air unless block ~ ~-3 ~ barrier run setblock ~ ~-3 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~1 ~-3 ~ air unless block ~1 ~-3 ~ barrier run setblock ~1 ~-3 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-1 ~-3 ~ air unless block ~-1 ~-3 ~ barrier run setblock ~-1 ~-3 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-3 ~1 air unless block ~ ~-3 ~1 barrier run setblock ~ ~-3 ~1 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-3 ~-1 air unless block ~ ~-3 ~-1 barrier run setblock ~ ~-3 ~-1 packed_ice

execute as @s[scores={airnade=13}] at @s unless block ~ ~ ~3 air unless block ~ ~ ~3 barrier run setblock ~ ~ ~3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~1 ~ ~3 air unless block ~1 ~ ~3 barrier run setblock ~1 ~ ~3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-1 ~ ~3 air unless block ~-1 ~ ~3 barrier run setblock ~-1 ~ ~3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~1 ~3 air unless block ~ ~1 ~3 barrier run setblock ~ ~1 ~3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-1 ~3 air unless block ~ ~-1 ~3 barrier run setblock ~ ~-1 ~3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~ ~-3 air unless block ~ ~ ~-3 barrier run setblock ~ ~ ~-3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~1 ~ ~-3 air unless block ~1 ~ ~-3 barrier run setblock ~1 ~ ~-3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-1 ~ ~-3 air unless block ~-1 ~ ~-3 barrier run setblock ~-1 ~ ~-3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~1 ~-3 air unless block ~ ~1 ~-3 barrier run setblock ~ ~1 ~-3 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-1 ~-3 air unless block ~ ~-1 ~-3 barrier run setblock ~ ~-1 ~-3 packed_ice

execute as @s[scores={airnade=13}] at @s unless block ~ ~2 ~2 air unless block ~ ~2 ~2 barrier run setblock ~ ~2 ~2 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-2 ~2 air unless block ~ ~-2 ~2 barrier run setblock ~ ~-2 ~2 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~2 ~-2 air unless block ~ ~2 ~-2 barrier run setblock ~ ~2 ~-2 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-2 ~-2 air unless block ~ ~-2 ~-2 barrier run setblock ~ ~-2 ~-2 packed_ice

execute as @s[scores={airnade=13}] at @s unless block ~2 ~2 ~ air unless block ~2 ~2 ~ barrier run setblock ~2 ~2 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~2 ~-2 ~ air unless block ~2 ~-2 ~ barrier run setblock ~2 ~-2 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-2 ~2 ~ air unless block ~-2 ~2 ~ barrier run setblock ~-2 ~2 ~ packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-2 ~-2 ~ air unless block ~-2 ~-2 ~ barrier run setblock ~-2 ~-2 ~ packed_ice

execute as @s[scores={airnade=13}] at @s unless block ~2 ~ ~2 air unless block ~2 ~ ~2 barrier run setblock ~2 ~ ~2 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~2 ~ ~-2 air unless block ~2 ~ ~-2 barrier run setblock ~2 ~ ~-2 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-2 ~ ~2 air unless block ~-2 ~ ~2 barrier run setblock ~-2 ~ ~2 packed_ice
execute as @s[scores={airnade=13}] at @s unless block ~-2 ~ ~-2 air unless block ~-2 ~ ~-2 barrier run setblock ~-2 ~ ~-2 packed_ice

execute as @s[scores={airnade=14}] at @s unless block ~3 ~1 ~1 air unless block ~3 ~1 ~1 barrier run setblock ~3 ~1 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~3 ~1 ~-1 air unless block ~3 ~1 ~-1 barrier run setblock ~3 ~1 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~3 ~-1 ~1 air unless block ~3 ~-1 ~1 barrier run setblock ~3 ~-1 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~3 ~-1 ~-1 air unless block ~3 ~-1 ~-1 barrier run setblock ~3 ~-1 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-3 ~1 ~1 air unless block ~-3 ~1 ~1 barrier run setblock ~-3 ~1 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-3 ~1 ~-1 air unless block ~-3 ~1 ~-1 barrier run setblock ~-3 ~1 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-3 ~-1 ~1 air unless block ~-3 ~-1 ~1 barrier run setblock ~-3 ~-1 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-3 ~-1 ~-1 air unless block ~-3 ~-1 ~-1 barrier run setblock ~-3 ~-1 ~-1 packed_ice

execute as @s[scores={airnade=14}] at @s unless block ~1 ~1 ~3 air unless block ~1 ~1 ~3 barrier run setblock ~1 ~1 ~3 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-1 ~3 air unless block ~1 ~-1 ~3 barrier run setblock ~1 ~-1 ~3 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~1 ~3 air unless block ~-1 ~1 ~3 barrier run setblock ~-1 ~1 ~3 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-1 ~3 air unless block ~-1 ~-1 ~3 barrier run setblock ~-1 ~-1 ~3 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~1 ~-3 air unless block ~1 ~1 ~-3 barrier run setblock ~1 ~1 ~-3 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-1 ~-3 air unless block ~1 ~-1 ~-3 barrier run setblock ~1 ~-1 ~-3 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~1 ~-3 air unless block ~-1 ~1 ~-3 barrier run setblock ~-1 ~1 ~-3 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-1 ~-3 air unless block ~-1 ~-1 ~-3 barrier run setblock ~-1 ~-1 ~-3 packed_ice

execute as @s[scores={airnade=14}] at @s unless block ~1 ~3 ~1 air unless block ~1 ~3 ~1 barrier run setblock ~1 ~3 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~3 ~-1 air unless block ~1 ~3 ~-1 barrier run setblock ~1 ~3 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~3 ~1 air unless block ~-1 ~3 ~1 barrier run setblock ~-1 ~3 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~3 ~-1 air unless block ~-1 ~3 ~-1 barrier run setblock ~-1 ~3 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-3 ~1 air unless block ~1 ~-3 ~1 barrier run setblock ~1 ~-3 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-3 ~-1 air unless block ~1 ~-3 ~-1 barrier run setblock ~1 ~-3 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-3 ~1 air unless block ~-1 ~-3 ~1 barrier run setblock ~-1 ~-3 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-3 ~-1 air unless block ~-1 ~-3 ~-1 barrier run setblock ~-1 ~-3 ~-1 packed_ice

execute as @s[scores={airnade=14}] at @s unless block ~1 ~2 ~2 air unless block ~1 ~2 ~2 barrier run setblock ~1 ~2 ~2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~2 ~-2 air unless block ~1 ~2 ~-2 barrier run setblock ~1 ~2 ~-2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-2 ~2 air unless block ~1 ~-2 ~2 barrier run setblock ~1 ~-2 ~2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-2 ~-2 air unless block ~1 ~-2 ~-2 barrier run setblock ~1 ~-2 ~-2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~2 ~2 air unless block ~-1 ~2 ~2 barrier run setblock ~-1 ~2 ~2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~2 ~-2 air unless block ~-1 ~2 ~-2 barrier run setblock ~-1 ~2 ~-2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-2 ~2 air unless block ~-1 ~-2 ~2 barrier run setblock ~-1 ~-2 ~2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-2 ~-2 air unless block ~-1 ~-2 ~-2 barrier run setblock ~-1 ~-2 ~-2 packed_ice

execute as @s[scores={airnade=14}] at @s unless block ~2 ~2 ~1 air unless block ~2 ~2 ~1 barrier run setblock ~2 ~2 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~2 ~-1 air unless block ~2 ~2 ~-1 barrier run setblock ~2 ~2 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~-2 ~1 air unless block ~2 ~-2 ~1 barrier run setblock ~2 ~-2 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~-2 ~-1 air unless block ~2 ~-2 ~-1 barrier run setblock ~2 ~-2 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~2 ~1 air unless block ~-2 ~2 ~1 barrier run setblock ~-2 ~2 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~2 ~-1 air unless block ~-2 ~2 ~-1 barrier run setblock ~-2 ~2 ~-1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~-2 ~1 air unless block ~-2 ~-2 ~1 barrier run setblock ~-2 ~-2 ~1 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~-2 ~-1 air unless block ~-2 ~-2 ~-1 barrier run setblock ~-2 ~-2 ~-1 packed_ice

execute as @s[scores={airnade=14}] at @s unless block ~2 ~1 ~2 air unless block ~2 ~1 ~2 barrier run setblock ~2 ~1 ~2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~1 ~-2 air unless block ~2 ~1 ~-2 barrier run setblock ~2 ~1 ~-2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~-1 ~2 air unless block ~2 ~-1 ~2 barrier run setblock ~2 ~-1 ~2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~-1 ~-2 air unless block ~2 ~-1 ~-2 barrier run setblock ~2 ~-1 ~-2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~1 ~2 air unless block ~-2 ~1 ~2 barrier run setblock ~-2 ~1 ~2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~1 ~-2 air unless block ~-2 ~1 ~-2 barrier run setblock ~-2 ~1 ~-2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~-1 ~2 air unless block ~-2 ~-1 ~2 barrier run setblock ~-2 ~-1 ~2 packed_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~-1 ~-2 air unless block ~-2 ~-1 ~-2 barrier run setblock ~-2 ~-1 ~-2 packed_ice

kill @s[scores={airnade=14..}]