scoreboard players add @s airnade 1

#execute as @s[scores={airnade=1}] at @s run tp @e[type=chicken,distance=..2] ~ ~-1000 ~

#execute as @s[scores={airnade=1}] if block ~ ~-1 ~ air run tp @s ~ ~-1 ~

execute as @s[scores={airnade=1}] at @s run particle minecraft:cloud ~ ~ ~ .1 .1 .1 .2 100 force
execute as @s[scores={airnade=1}] at @s run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0 100 force
execute as @s[scores={airnade=1}] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2
execute as @s[scores={airnade=1}] at @s run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 0
execute as @s[scores={airnade=1}] at @s run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 2
execute as @s[scores={airnade=1}] at @s run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 0

execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~ barrier run setblock ~ ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s unless block ~1 ~ ~ barrier run setblock ~1 ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s unless block ~-1 ~ ~ barrier run setblock ~-1 ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ air destroy
execute as @s[scores={airnade=7}] at @s unless block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ air destroy
execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~1 barrier run setblock ~ ~ ~1 air destroy
execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~-1 barrier run setblock ~ ~ ~-1 air destroy

execute as @s[scores={airnade=8}] unless block ~1 ~ ~1 barrier run setblock ~1 ~ ~1 air destroy
execute as @s[scores={airnade=8}] unless block ~-1 ~ ~1 barrier run setblock ~-1 ~ ~1 air destroy
execute as @s[scores={airnade=8}] unless block ~1 ~ ~-1 barrier run setblock ~1 ~ ~-1 air destroy
execute as @s[scores={airnade=8}] unless block ~-1 ~ ~-1 barrier run setblock ~-1 ~ ~-1 air destroy
execute as @s[scores={airnade=8}] unless block ~1 ~1 ~ barrier run setblock ~1 ~1 ~ air destroy
execute as @s[scores={airnade=8}] unless block ~-1 ~1 ~ barrier run setblock ~-1 ~1 ~ air destroy
execute as @s[scores={airnade=8}] unless block ~1 ~-1 ~ barrier run setblock ~1 ~-1 ~ air destroy
execute as @s[scores={airnade=8}] unless block ~-1 ~-1 ~ barrier run setblock ~-1 ~-1 ~ air destroy
execute as @s[scores={airnade=8}] unless block ~ ~1 ~1 barrier run setblock ~ ~1 ~1 air destroy
execute as @s[scores={airnade=8}] unless block ~ ~-1 ~1 barrier run setblock ~ ~-1 ~1 air destroy
execute as @s[scores={airnade=8}] unless block ~ ~1 ~-1 barrier run setblock ~ ~1 ~-1 air destroy
execute as @s[scores={airnade=8}] unless block ~ ~-1 ~-1 barrier run setblock ~ ~-1 ~-1 air destroy

execute as @s[scores={airnade=9}] unless block ~1 ~1 ~1 barrier run setblock ~1 ~1 ~1 air destroy
execute as @s[scores={airnade=9}] unless block ~-1 ~1 ~1 barrier run setblock ~-1 ~1 ~1 air destroy
execute as @s[scores={airnade=9}] unless block ~1 ~-1 ~1 barrier run setblock ~1 ~-1 ~1 air destroy
execute as @s[scores={airnade=9}] unless block ~1 ~1 ~-1 barrier run setblock ~1 ~1 ~-1 air destroy
execute as @s[scores={airnade=9}] unless block ~-1 ~-1 ~1 barrier run setblock ~-1 ~-1 ~1 air destroy
execute as @s[scores={airnade=9}] unless block ~1 ~-1 ~-1 barrier run setblock ~1 ~-1 ~-1 air destroy
execute as @s[scores={airnade=9}] unless block ~-1 ~1 ~-1 barrier run setblock ~-1 ~1 ~-1 air destroy
execute as @s[scores={airnade=9}] unless block ~-1 ~-1 ~-1 barrier run setblock ~-1 ~-1 ~-1 air destroy

execute as @s[scores={airnade=10}] unless block ~2 ~ ~ barrier run setblock ~2 ~ ~ air destroy
execute as @s[scores={airnade=10}] unless block ~-2 ~ ~ barrier run setblock ~-2 ~ ~ air destroy
execute as @s[scores={airnade=10}] unless block ~ ~2 ~ barrier run setblock ~ ~2 ~ air destroy
execute as @s[scores={airnade=10}] unless block ~ ~-2 ~ barrier run setblock ~ ~-2 ~ air destroy
execute as @s[scores={airnade=10}] unless block ~ ~ ~2 barrier run setblock ~ ~ ~2 air destroy
execute as @s[scores={airnade=10}] unless block ~ ~ ~-2 barrier run setblock ~ ~ ~-2 air destroy

execute as @s[scores={airnade=11}] unless block ~2 ~1 ~ barrier run setblock ~2 ~1 ~ air destroy
execute as @s[scores={airnade=11}] unless block ~2 ~ ~1 barrier run setblock ~2 ~ ~1 air destroy
execute as @s[scores={airnade=11}] unless block ~2 ~-1 ~ barrier run setblock ~2 ~-1 ~ air destroy
execute as @s[scores={airnade=11}] unless block ~2 ~ ~-1 barrier run setblock ~2 ~ ~-1 air destroy
execute as @s[scores={airnade=11}] unless block ~-2 ~1 ~ barrier run setblock ~-2 ~1 ~ air destroy
execute as @s[scores={airnade=11}] unless block ~-2 ~ ~1 barrier run setblock ~-2 ~ ~1 air destroy
execute as @s[scores={airnade=11}] unless block ~-2 ~-1 ~ barrier run setblock ~-2 ~-1 ~ air destroy
execute as @s[scores={airnade=11}] unless block ~-2 ~ ~-1 barrier run setblock ~-2 ~ ~-1 air destroy

execute as @s[scores={airnade=11}] unless block ~1 ~2 ~ barrier run setblock ~1 ~2 ~ air destroy
execute as @s[scores={airnade=11}] unless block ~-1 ~2 ~ barrier run setblock ~-1 ~2 ~ air destroy
execute as @s[scores={airnade=11}] unless block ~ ~2 ~1 barrier run setblock ~ ~2 ~1 air destroy
execute as @s[scores={airnade=11}] unless block ~ ~2 ~-1 barrier run setblock ~ ~2 ~-1 air destroy
execute as @s[scores={airnade=11}] unless block ~1 ~-2 ~ barrier run setblock ~1 ~-2 ~ air destroy
execute as @s[scores={airnade=11}] unless block ~-1 ~-2 ~ barrier run setblock ~-1 ~-2 ~ air destroy
execute as @s[scores={airnade=11}] unless block ~ ~-2 ~1 barrier run setblock ~ ~-2 ~1 air destroy
execute as @s[scores={airnade=11}] unless block ~ ~-2 ~-1 barrier run setblock ~ ~-2 ~-1 air destroy

execute as @s[scores={airnade=11}] unless block ~1 ~ ~2 barrier run setblock ~1 ~ ~2 air destroy
execute as @s[scores={airnade=11}] unless block ~-1 ~ ~2 barrier run setblock ~-1 ~ ~2 air destroy
execute as @s[scores={airnade=11}] unless block ~ ~1 ~2 barrier run setblock ~ ~1 ~2 air destroy
execute as @s[scores={airnade=11}] unless block ~ ~-1 ~2 barrier run setblock ~ ~-1 ~2 air destroy
execute as @s[scores={airnade=11}] unless block ~1 ~ ~-2 barrier run setblock ~1 ~ ~-2 air destroy
execute as @s[scores={airnade=11}] unless block ~-1 ~ ~-2 barrier run setblock ~-1 ~ ~-2 air destroy
execute as @s[scores={airnade=11}] unless block ~ ~1 ~-2 barrier run setblock ~ ~1 ~-2 air destroy
execute as @s[scores={airnade=11}] unless block ~ ~-1 ~-2 barrier run setblock ~ ~-1 ~-2 air destroy

execute as @s[scores={airnade=12}] unless block ~2 ~1 ~1 barrier run setblock ~2 ~1 ~1 air destroy
execute as @s[scores={airnade=12}] unless block ~2 ~1 ~-1 barrier run setblock ~2 ~1 ~-1 air destroy
execute as @s[scores={airnade=12}] unless block ~2 ~-1 ~1 barrier run setblock ~2 ~-1 ~1 air destroy
execute as @s[scores={airnade=12}] unless block ~2 ~-1 ~-1 barrier run setblock ~2 ~-1 ~-1 air destroy
execute as @s[scores={airnade=12}] unless block ~-2 ~1 ~1 barrier run setblock ~-2 ~1 ~1 air destroy
execute as @s[scores={airnade=12}] unless block ~-2 ~1 ~-1 barrier run setblock ~-2 ~1 ~-1 air destroy
execute as @s[scores={airnade=12}] unless block ~-2 ~-1 ~1 barrier run setblock ~-2 ~-1 ~1 air destroy
execute as @s[scores={airnade=12}] unless block ~-2 ~-1 ~-1 barrier run setblock ~-2 ~-1 ~-1 air destroy

execute as @s[scores={airnade=12}] unless block ~1 ~2 ~1 barrier run setblock ~1 ~2 ~1 air destroy
execute as @s[scores={airnade=12}] unless block ~1 ~2 ~-1 barrier run setblock ~1 ~2 ~-1 air destroy
execute as @s[scores={airnade=12}] unless block ~-1 ~2 ~1 barrier run setblock ~-1 ~2 ~1 air destroy
execute as @s[scores={airnade=12}] unless block ~-1 ~2 ~-1 barrier run setblock ~-1 ~2 ~-1 air destroy
execute as @s[scores={airnade=12}] unless block ~1 ~-2 ~1 barrier run setblock ~1 ~-2 ~1 air destroy
execute as @s[scores={airnade=12}] unless block ~1 ~-2 ~-1 barrier run setblock ~1 ~-2 ~-1 air destroy
execute as @s[scores={airnade=12}] unless block ~-1 ~-2 ~1 barrier run setblock ~-1 ~-2 ~1 air destroy
execute as @s[scores={airnade=12}] unless block ~-1 ~-2 ~-1 barrier run setblock ~-1 ~-2 ~-1 air destroy

execute as @s[scores={airnade=12}] unless block ~1 ~1 ~2 barrier run setblock ~1 ~1 ~2 air destroy
execute as @s[scores={airnade=12}] unless block ~1 ~-1 ~2 barrier run setblock ~1 ~-1 ~2 air destroy
execute as @s[scores={airnade=12}] unless block ~-1 ~1 ~2 barrier run setblock ~-1 ~1 ~2 air destroy
execute as @s[scores={airnade=12}] unless block ~-1 ~-1 ~2 barrier run setblock ~-1 ~-1 ~2 air destroy
execute as @s[scores={airnade=12}] unless block ~1 ~1 ~-2 barrier run setblock ~1 ~1 ~-2 air destroy
execute as @s[scores={airnade=12}] unless block ~1 ~-1 ~-2 barrier run setblock ~1 ~-1 ~-2 air destroy
execute as @s[scores={airnade=12}] unless block ~-1 ~1 ~-2 barrier run setblock ~-1 ~1 ~-2 air destroy
execute as @s[scores={airnade=12}] unless block ~-1 ~-1 ~-2 barrier run setblock ~-1 ~-1 ~-2 air destroy

execute as @s[scores={airnade=13}] unless block ~3 ~ ~ barrier run setblock ~3 ~ ~ air destroy
execute as @s[scores={airnade=13}] unless block ~3 ~1 ~ barrier run setblock ~3 ~1 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~3 ~-1 ~ barrier run setblock ~3 ~-1 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~3 ~ ~1 barrier run setblock ~3 ~ ~1 air destroy
execute as @s[scores={airnade=13}] unless block ~3 ~ ~-1 barrier run setblock ~3 ~ ~-1 air destroy
execute as @s[scores={airnade=13}] unless block ~-3 ~ ~ barrier run setblock ~-3 ~ ~ air destroy
execute as @s[scores={airnade=13}] unless block ~-3 ~1 ~ barrier run setblock ~-3 ~1 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~-3 ~-1 ~ barrier run setblock ~-3 ~-1 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~-3 ~ ~1 barrier run setblock ~-3 ~ ~1 air destroy
execute as @s[scores={airnade=13}] unless block ~-3 ~ ~-1 barrier run setblock ~-3 ~ ~-1 air destroy

execute as @s[scores={airnade=13}] unless block ~ ~3 ~ barrier run setblock ~ ~3 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~1 ~3 ~ barrier run setblock ~1 ~3 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~-1 ~3 ~ barrier run setblock ~-1 ~3 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~ ~3 ~1 barrier run setblock ~ ~3 ~1 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~3 ~-1 barrier run setblock ~ ~3 ~-1 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~-3 ~ barrier run setblock ~ ~-3 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~1 ~-3 ~ barrier run setblock ~1 ~-3 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~-1 ~-3 ~ barrier run setblock ~-1 ~-3 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~ ~-3 ~1 barrier run setblock ~ ~-3 ~1 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~-3 ~-1 barrier run setblock ~ ~-3 ~-1 air destroy

execute as @s[scores={airnade=13}] unless block ~ ~ ~3 barrier run setblock ~ ~ ~3 air destroy
execute as @s[scores={airnade=13}] unless block ~1 ~ ~3 barrier run setblock ~1 ~ ~3 air destroy
execute as @s[scores={airnade=13}] unless block ~-1 ~ ~3 barrier run setblock ~-1 ~ ~3 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~1 ~3 barrier run setblock ~ ~1 ~3 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~-1 ~3 barrier run setblock ~ ~-1 ~3 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~ ~-3 barrier run setblock ~ ~ ~-3 air destroy
execute as @s[scores={airnade=13}] unless block ~1 ~ ~-3 barrier run setblock ~1 ~ ~-3 air destroy
execute as @s[scores={airnade=13}] unless block ~-1 ~ ~-3 barrier run setblock ~-1 ~ ~-3 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~1 ~-3 barrier run setblock ~ ~1 ~-3 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~-1 ~-3 barrier run setblock ~ ~-1 ~-3 air destroy

execute as @s[scores={airnade=13}] unless block ~ ~2 ~2 barrier run setblock ~ ~2 ~2 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~-2 ~2 barrier run setblock ~ ~-2 ~2 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~2 ~-2 barrier run setblock ~ ~2 ~-2 air destroy
execute as @s[scores={airnade=13}] unless block ~ ~-2 ~-2 barrier run setblock ~ ~-2 ~-2 air destroy

execute as @s[scores={airnade=13}] unless block ~2 ~2 ~ barrier run setblock ~2 ~2 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~2 ~-2 ~ barrier run setblock ~2 ~-2 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~-2 ~2 ~ barrier run setblock ~-2 ~2 ~ air destroy
execute as @s[scores={airnade=13}] unless block ~-2 ~-2 ~ barrier run setblock ~-2 ~-2 ~ air destroy

execute as @s[scores={airnade=13}] unless block ~2 ~ ~2 barrier run setblock ~2 ~ ~2 air destroy
execute as @s[scores={airnade=13}] unless block ~2 ~ ~-2 barrier run setblock ~2 ~ ~-2 air destroy
execute as @s[scores={airnade=13}] unless block ~-2 ~ ~2 barrier run setblock ~-2 ~ ~2 air destroy
execute as @s[scores={airnade=13}] unless block ~-2 ~ ~-2 barrier run setblock ~-2 ~ ~-2 air destroy

execute as @s[scores={airnade=14}] unless block ~3 ~1 ~1 barrier run setblock ~3 ~1 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~3 ~1 ~-1 barrier run setblock ~3 ~1 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~3 ~-1 ~1 barrier run setblock ~3 ~-1 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~3 ~-1 ~-1 barrier run setblock ~3 ~-1 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~-3 ~1 ~1 barrier run setblock ~-3 ~1 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~-3 ~1 ~-1 barrier run setblock ~-3 ~1 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~-3 ~-1 ~1 barrier run setblock ~-3 ~-1 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~-3 ~-1 ~-1 barrier run setblock ~-3 ~-1 ~-1 air destroy

execute as @s[scores={airnade=14}] unless block ~1 ~1 ~3 barrier run setblock ~1 ~1 ~3 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~-1 ~3 barrier run setblock ~1 ~-1 ~3 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~1 ~3 barrier run setblock ~-1 ~1 ~3 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~-1 ~3 barrier run setblock ~-1 ~-1 ~3 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~1 ~-3 barrier run setblock ~1 ~1 ~-3 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~-1 ~-3 barrier run setblock ~1 ~-1 ~-3 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~1 ~-3 barrier run setblock ~-1 ~1 ~-3 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~-1 ~-3 barrier run setblock ~-1 ~-1 ~-3 air destroy

execute as @s[scores={airnade=14}] unless block ~1 ~3 ~1 barrier run setblock ~1 ~3 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~3 ~-1 barrier run setblock ~1 ~3 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~3 ~1 barrier run setblock ~-1 ~3 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~3 ~-1 barrier run setblock ~-1 ~3 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~-3 ~1 barrier run setblock ~1 ~-3 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~-3 ~-1 barrier run setblock ~1 ~-3 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~-3 ~1 barrier run setblock ~-1 ~-3 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~-3 ~-1 barrier run setblock ~-1 ~-3 ~-1 air destroy

execute as @s[scores={airnade=14}] unless block ~1 ~2 ~2 barrier run setblock ~1 ~2 ~2 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~2 ~-2 barrier run setblock ~1 ~2 ~-2 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~-2 ~2 barrier run setblock ~1 ~-2 ~2 air destroy
execute as @s[scores={airnade=14}] unless block ~1 ~-2 ~-2 barrier run setblock ~1 ~-2 ~-2 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~2 ~2 barrier run setblock ~-1 ~2 ~2 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~2 ~-2 barrier run setblock ~-1 ~2 ~-2 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~-2 ~2 barrier run setblock ~-1 ~-2 ~2 air destroy
execute as @s[scores={airnade=14}] unless block ~-1 ~-2 ~-2 barrier run setblock ~-1 ~-2 ~-2 air destroy

execute as @s[scores={airnade=14}] unless block ~2 ~2 ~1 barrier run setblock ~2 ~2 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~2 ~2 ~-1 barrier run setblock ~2 ~2 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~2 ~-2 ~1 barrier run setblock ~2 ~-2 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~2 ~-2 ~-1 barrier run setblock ~2 ~-2 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~-2 ~2 ~1 barrier run setblock ~-2 ~2 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~-2 ~2 ~-1 barrier run setblock ~-2 ~2 ~-1 air destroy
execute as @s[scores={airnade=14}] unless block ~-2 ~-2 ~1 barrier run setblock ~-2 ~-2 ~1 air destroy
execute as @s[scores={airnade=14}] unless block ~-2 ~-2 ~-1 barrier run setblock ~-2 ~-2 ~-1 air destroy

execute as @s[scores={airnade=14}] unless block ~2 ~1 ~2 barrier run setblock ~2 ~1 ~2 air destroy
execute as @s[scores={airnade=14}] unless block ~2 ~1 ~-2 barrier run setblock ~2 ~1 ~-2 air destroy
execute as @s[scores={airnade=14}] unless block ~2 ~-1 ~2 barrier run setblock ~2 ~-1 ~2 air destroy
execute as @s[scores={airnade=14}] unless block ~2 ~-1 ~-2 barrier run setblock ~2 ~-1 ~-2 air destroy
execute as @s[scores={airnade=14}] unless block ~-2 ~1 ~2 barrier run setblock ~-2 ~1 ~2 air destroy
execute as @s[scores={airnade=14}] unless block ~-2 ~1 ~-2 barrier run setblock ~-2 ~1 ~-2 air destroy
execute as @s[scores={airnade=14}] unless block ~-2 ~-1 ~2 barrier run setblock ~-2 ~-1 ~2 air destroy
execute as @s[scores={airnade=14}] unless block ~-2 ~-1 ~-2 barrier run setblock ~-2 ~-1 ~-2 air destroy

kill @s[scores={airnade=14..}]