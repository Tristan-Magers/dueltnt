scoreboard players add @s airnade 1

execute as @s[scores={airnade=1}] at @s run scoreboard players operation @a tntID -= @s tntID
execute as @s[scores={airnade=1}] at @s if entity @a[scores={tntID=1..},distance=..4] run tag @s add boom_me
execute as @s[scores={airnade=1}] at @s if entity @a[scores={tntID=..-1},distance=..4] run tag @s add boom_me
execute as @s[scores={airnade=1}] at @s if entity @e[type=zombie,distance=..4] run tag @s add boom_me
execute as @s[scores={airnade=1}] at @s run scoreboard players operation @a tntID += @s tntID

execute as @s[scores={airnade=1}] at @s run effect give @e[type=minecraft:chicken] minecraft:invisibility 10 1 true
execute as @s[scores={airnade=1}] at @s run tp @e[type=chicken,distance=..2] ~ ~-1000 ~

#execute as @s[scores={airnade=1}] if block ~ ~-1 ~ blue_ice run tp @s ~ ~-1 ~

execute as @s[scores={airnade=1}] at @s run particle minecraft:cloud ~ ~ ~ .1 .1 .1 .2 100 force
execute as @s[scores={airnade=1}] at @s run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0 100 force
execute as @s[scores={airnade=1}] at @s run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2
execute as @s[scores={airnade=1}] at @s run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 0
execute as @s[scores={airnade=1}] at @s run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 2
execute as @s[scores={airnade=1}] at @s run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 0

#execute as @s[scores={airnade=1}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",Fuse:20,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}

scoreboard players set @s[scores={airnade=2}] airnade 7

#turn air

execute as @s[scores={airnade=7}] at @s if block ~ ~ ~ blue_ice run setblock ~ ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~1 ~ ~ blue_ice run setblock ~1 ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~-1 ~ ~ blue_ice run setblock ~-1 ~ ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~ ~1 ~ blue_ice run setblock ~ ~1 ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~ ~-1 ~ blue_ice run setblock ~ ~-1 ~ air destroy
execute as @s[scores={airnade=7}] at @s if block ~ ~ ~1 blue_ice run setblock ~ ~ ~1 air destroy
execute as @s[scores={airnade=7}] at @s if block ~ ~ ~-1 blue_ice run setblock ~ ~ ~-1 air destroy

execute as @s[scores={airnade=8}] if block ~1 ~ ~1 blue_ice run setblock ~1 ~ ~1 air destroy
execute as @s[scores={airnade=8}] if block ~-1 ~ ~1 blue_ice run setblock ~-1 ~ ~1 air destroy
execute as @s[scores={airnade=8}] if block ~1 ~ ~-1 blue_ice run setblock ~1 ~ ~-1 air destroy
execute as @s[scores={airnade=8}] if block ~-1 ~ ~-1 blue_ice run setblock ~-1 ~ ~-1 air destroy
execute as @s[scores={airnade=8}] if block ~1 ~1 ~ blue_ice run setblock ~1 ~1 ~ air destroy
execute as @s[scores={airnade=8}] if block ~-1 ~1 ~ blue_ice run setblock ~-1 ~1 ~ air destroy
execute as @s[scores={airnade=8}] if block ~1 ~-1 ~ blue_ice run setblock ~1 ~-1 ~ air destroy
execute as @s[scores={airnade=8}] if block ~-1 ~-1 ~ blue_ice run setblock ~-1 ~-1 ~ air destroy
execute as @s[scores={airnade=8}] if block ~ ~1 ~1 blue_ice run setblock ~ ~1 ~1 air destroy
execute as @s[scores={airnade=8}] if block ~ ~-1 ~1 blue_ice run setblock ~ ~-1 ~1 air destroy
execute as @s[scores={airnade=8}] if block ~ ~1 ~-1 blue_ice run setblock ~ ~1 ~-1 air destroy
execute as @s[scores={airnade=8}] if block ~ ~-1 ~-1 blue_ice run setblock ~ ~-1 ~-1 air destroy

execute as @s[scores={airnade=9}] if block ~1 ~1 ~1 blue_ice run setblock ~1 ~1 ~1 air destroy
execute as @s[scores={airnade=9}] if block ~-1 ~1 ~1 blue_ice run setblock ~-1 ~1 ~1 air destroy
execute as @s[scores={airnade=9}] if block ~1 ~-1 ~1 blue_ice run setblock ~1 ~-1 ~1 air destroy
execute as @s[scores={airnade=9}] if block ~1 ~1 ~-1 blue_ice run setblock ~1 ~1 ~-1 air destroy
execute as @s[scores={airnade=9}] if block ~-1 ~-1 ~1 blue_ice run setblock ~-1 ~-1 ~1 air destroy
execute as @s[scores={airnade=9}] if block ~1 ~-1 ~-1 blue_ice run setblock ~1 ~-1 ~-1 air destroy
execute as @s[scores={airnade=9}] if block ~-1 ~1 ~-1 blue_ice run setblock ~-1 ~1 ~-1 air destroy
execute as @s[scores={airnade=9}] if block ~-1 ~-1 ~-1 blue_ice run setblock ~-1 ~-1 ~-1 air destroy

execute as @s[scores={airnade=10}] if block ~2 ~ ~ blue_ice run setblock ~2 ~ ~ air destroy
execute as @s[scores={airnade=10}] if block ~-2 ~ ~ blue_ice run setblock ~-2 ~ ~ air destroy
execute as @s[scores={airnade=10}] if block ~ ~2 ~ blue_ice run setblock ~ ~2 ~ air destroy
execute as @s[scores={airnade=10}] if block ~ ~-2 ~ blue_ice run setblock ~ ~-2 ~ air destroy
execute as @s[scores={airnade=10}] if block ~ ~ ~2 blue_ice run setblock ~ ~ ~2 air destroy
execute as @s[scores={airnade=10}] if block ~ ~ ~-2 blue_ice run setblock ~ ~ ~-2 air destroy

execute as @s[scores={airnade=11}] if block ~2 ~1 ~ blue_ice run setblock ~2 ~1 ~ air destroy
execute as @s[scores={airnade=11}] if block ~2 ~ ~1 blue_ice run setblock ~2 ~ ~1 air destroy
execute as @s[scores={airnade=11}] if block ~2 ~-1 ~ blue_ice run setblock ~2 ~-1 ~ air destroy
execute as @s[scores={airnade=11}] if block ~2 ~ ~-1 blue_ice run setblock ~2 ~ ~-1 air destroy
execute as @s[scores={airnade=11}] if block ~-2 ~1 ~ blue_ice run setblock ~-2 ~1 ~ air destroy
execute as @s[scores={airnade=11}] if block ~-2 ~ ~1 blue_ice run setblock ~-2 ~ ~1 air destroy
execute as @s[scores={airnade=11}] if block ~-2 ~-1 ~ blue_ice run setblock ~-2 ~-1 ~ air destroy
execute as @s[scores={airnade=11}] if block ~-2 ~ ~-1 blue_ice run setblock ~-2 ~ ~-1 air destroy

execute as @s[scores={airnade=11}] if block ~1 ~2 ~ blue_ice run setblock ~1 ~2 ~ air destroy
execute as @s[scores={airnade=11}] if block ~-1 ~2 ~ blue_ice run setblock ~-1 ~2 ~ air destroy
execute as @s[scores={airnade=11}] if block ~ ~2 ~1 blue_ice run setblock ~ ~2 ~1 air destroy
execute as @s[scores={airnade=11}] if block ~ ~2 ~-1 blue_ice run setblock ~ ~2 ~-1 air destroy
execute as @s[scores={airnade=11}] if block ~1 ~-2 ~ blue_ice run setblock ~1 ~-2 ~ air destroy
execute as @s[scores={airnade=11}] if block ~-1 ~-2 ~ blue_ice run setblock ~-1 ~-2 ~ air destroy
execute as @s[scores={airnade=11}] if block ~ ~-2 ~1 blue_ice run setblock ~ ~-2 ~1 air destroy
execute as @s[scores={airnade=11}] if block ~ ~-2 ~-1 blue_ice run setblock ~ ~-2 ~-1 air destroy

execute as @s[scores={airnade=11}] if block ~1 ~ ~2 blue_ice run setblock ~1 ~ ~2 air destroy
execute as @s[scores={airnade=11}] if block ~-1 ~ ~2 blue_ice run setblock ~-1 ~ ~2 air destroy
execute as @s[scores={airnade=11}] if block ~ ~1 ~2 blue_ice run setblock ~ ~1 ~2 air destroy
execute as @s[scores={airnade=11}] if block ~ ~-1 ~2 blue_ice run setblock ~ ~-1 ~2 air destroy
execute as @s[scores={airnade=11}] if block ~1 ~ ~-2 blue_ice run setblock ~1 ~ ~-2 air destroy
execute as @s[scores={airnade=11}] if block ~-1 ~ ~-2 blue_ice run setblock ~-1 ~ ~-2 air destroy
execute as @s[scores={airnade=11}] if block ~ ~1 ~-2 blue_ice run setblock ~ ~1 ~-2 air destroy
execute as @s[scores={airnade=11}] if block ~ ~-1 ~-2 blue_ice run setblock ~ ~-1 ~-2 air destroy

execute as @s[scores={airnade=12}] if block ~2 ~1 ~1 blue_ice run setblock ~2 ~1 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~2 ~1 ~-1 blue_ice run setblock ~2 ~1 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~2 ~-1 ~1 blue_ice run setblock ~2 ~-1 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~2 ~-1 ~-1 blue_ice run setblock ~2 ~-1 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~-2 ~1 ~1 blue_ice run setblock ~-2 ~1 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~-2 ~1 ~-1 blue_ice run setblock ~-2 ~1 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~-2 ~-1 ~1 blue_ice run setblock ~-2 ~-1 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~-2 ~-1 ~-1 blue_ice run setblock ~-2 ~-1 ~-1 air destroy

execute as @s[scores={airnade=12}] if block ~1 ~2 ~1 blue_ice run setblock ~1 ~2 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~2 ~-1 blue_ice run setblock ~1 ~2 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~2 ~1 blue_ice run setblock ~-1 ~2 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~2 ~-1 blue_ice run setblock ~-1 ~2 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~-2 ~1 blue_ice run setblock ~1 ~-2 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~-2 ~-1 blue_ice run setblock ~1 ~-2 ~-1 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~-2 ~1 blue_ice run setblock ~-1 ~-2 ~1 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~-2 ~-1 blue_ice run setblock ~-1 ~-2 ~-1 air destroy

execute as @s[scores={airnade=12}] if block ~1 ~1 ~2 blue_ice run setblock ~1 ~1 ~2 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~-1 ~2 blue_ice run setblock ~1 ~-1 ~2 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~1 ~2 blue_ice run setblock ~-1 ~1 ~2 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~-1 ~2 blue_ice run setblock ~-1 ~-1 ~2 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~1 ~-2 blue_ice run setblock ~1 ~1 ~-2 air destroy
execute as @s[scores={airnade=12}] if block ~1 ~-1 ~-2 blue_ice run setblock ~1 ~-1 ~-2 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~1 ~-2 blue_ice run setblock ~-1 ~1 ~-2 air destroy
execute as @s[scores={airnade=12}] if block ~-1 ~-1 ~-2 blue_ice run setblock ~-1 ~-1 ~-2 air destroy

execute as @s[scores={airnade=13}] if block ~3 ~ ~ blue_ice run setblock ~3 ~ ~ air destroy
execute as @s[scores={airnade=13}] if block ~3 ~1 ~ blue_ice run setblock ~3 ~1 ~ air destroy
execute as @s[scores={airnade=13}] if block ~3 ~-1 ~ blue_ice run setblock ~3 ~-1 ~ air destroy
execute as @s[scores={airnade=13}] if block ~3 ~ ~1 blue_ice run setblock ~3 ~ ~1 air destroy
execute as @s[scores={airnade=13}] if block ~3 ~ ~-1 blue_ice run setblock ~3 ~ ~-1 air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~ ~ blue_ice run setblock ~-3 ~ ~ air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~1 ~ blue_ice run setblock ~-3 ~1 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~-1 ~ blue_ice run setblock ~-3 ~-1 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~ ~1 blue_ice run setblock ~-3 ~ ~1 air destroy
execute as @s[scores={airnade=13}] if block ~-3 ~ ~-1 blue_ice run setblock ~-3 ~ ~-1 air destroy

execute as @s[scores={airnade=13}] if block ~ ~3 ~ blue_ice run setblock ~ ~3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~1 ~3 ~ blue_ice run setblock ~1 ~3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-1 ~3 ~ blue_ice run setblock ~-1 ~3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~ ~3 ~1 blue_ice run setblock ~ ~3 ~1 air destroy
execute as @s[scores={airnade=13}] if block ~ ~3 ~-1 blue_ice run setblock ~ ~3 ~-1 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-3 ~ blue_ice run setblock ~ ~-3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~1 ~-3 ~ blue_ice run setblock ~1 ~-3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-1 ~-3 ~ blue_ice run setblock ~-1 ~-3 ~ air destroy
execute as @s[scores={airnade=13}] if block ~ ~-3 ~1 blue_ice run setblock ~ ~-3 ~1 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-3 ~-1 blue_ice run setblock ~ ~-3 ~-1 air destroy

execute as @s[scores={airnade=13}] if block ~ ~ ~3 blue_ice run setblock ~ ~ ~3 air destroy
execute as @s[scores={airnade=13}] if block ~1 ~ ~3 blue_ice run setblock ~1 ~ ~3 air destroy
execute as @s[scores={airnade=13}] if block ~-1 ~ ~3 blue_ice run setblock ~-1 ~ ~3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~1 ~3 blue_ice run setblock ~ ~1 ~3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-1 ~3 blue_ice run setblock ~ ~-1 ~3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~ ~-3 blue_ice run setblock ~ ~ ~-3 air destroy
execute as @s[scores={airnade=13}] if block ~1 ~ ~-3 blue_ice run setblock ~1 ~ ~-3 air destroy
execute as @s[scores={airnade=13}] if block ~-1 ~ ~-3 blue_ice run setblock ~-1 ~ ~-3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~1 ~-3 blue_ice run setblock ~ ~1 ~-3 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-1 ~-3 blue_ice run setblock ~ ~-1 ~-3 air destroy

execute as @s[scores={airnade=13}] if block ~ ~2 ~2 blue_ice run setblock ~ ~2 ~2 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-2 ~2 blue_ice run setblock ~ ~-2 ~2 air destroy
execute as @s[scores={airnade=13}] if block ~ ~2 ~-2 blue_ice run setblock ~ ~2 ~-2 air destroy
execute as @s[scores={airnade=13}] if block ~ ~-2 ~-2 blue_ice run setblock ~ ~-2 ~-2 air destroy

execute as @s[scores={airnade=13}] if block ~2 ~2 ~ blue_ice run setblock ~2 ~2 ~ air destroy
execute as @s[scores={airnade=13}] if block ~2 ~-2 ~ blue_ice run setblock ~2 ~-2 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-2 ~2 ~ blue_ice run setblock ~-2 ~2 ~ air destroy
execute as @s[scores={airnade=13}] if block ~-2 ~-2 ~ blue_ice run setblock ~-2 ~-2 ~ air destroy

execute as @s[scores={airnade=13}] if block ~2 ~ ~2 blue_ice run setblock ~2 ~ ~2 air destroy
execute as @s[scores={airnade=13}] if block ~2 ~ ~-2 blue_ice run setblock ~2 ~ ~-2 air destroy
execute as @s[scores={airnade=13}] if block ~-2 ~ ~2 blue_ice run setblock ~-2 ~ ~2 air destroy
execute as @s[scores={airnade=13}] if block ~-2 ~ ~-2 blue_ice run setblock ~-2 ~ ~-2 air destroy

execute as @s[scores={airnade=14}] if block ~3 ~1 ~1 blue_ice run setblock ~3 ~1 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~3 ~1 ~-1 blue_ice run setblock ~3 ~1 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~3 ~-1 ~1 blue_ice run setblock ~3 ~-1 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~3 ~-1 ~-1 blue_ice run setblock ~3 ~-1 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-3 ~1 ~1 blue_ice run setblock ~-3 ~1 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-3 ~1 ~-1 blue_ice run setblock ~-3 ~1 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-3 ~-1 ~1 blue_ice run setblock ~-3 ~-1 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-3 ~-1 ~-1 blue_ice run setblock ~-3 ~-1 ~-1 air destroy

execute as @s[scores={airnade=14}] if block ~1 ~1 ~3 blue_ice run setblock ~1 ~1 ~3 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-1 ~3 blue_ice run setblock ~1 ~-1 ~3 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~1 ~3 blue_ice run setblock ~-1 ~1 ~3 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-1 ~3 blue_ice run setblock ~-1 ~-1 ~3 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~1 ~-3 blue_ice run setblock ~1 ~1 ~-3 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-1 ~-3 blue_ice run setblock ~1 ~-1 ~-3 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~1 ~-3 blue_ice run setblock ~-1 ~1 ~-3 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-1 ~-3 blue_ice run setblock ~-1 ~-1 ~-3 air destroy

execute as @s[scores={airnade=14}] if block ~1 ~3 ~1 blue_ice run setblock ~1 ~3 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~3 ~-1 blue_ice run setblock ~1 ~3 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~3 ~1 blue_ice run setblock ~-1 ~3 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~3 ~-1 blue_ice run setblock ~-1 ~3 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-3 ~1 blue_ice run setblock ~1 ~-3 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-3 ~-1 blue_ice run setblock ~1 ~-3 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-3 ~1 blue_ice run setblock ~-1 ~-3 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-3 ~-1 blue_ice run setblock ~-1 ~-3 ~-1 air destroy

execute as @s[scores={airnade=14}] if block ~1 ~2 ~2 blue_ice run setblock ~1 ~2 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~2 ~-2 blue_ice run setblock ~1 ~2 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-2 ~2 blue_ice run setblock ~1 ~-2 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~1 ~-2 ~-2 blue_ice run setblock ~1 ~-2 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~2 ~2 blue_ice run setblock ~-1 ~2 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~2 ~-2 blue_ice run setblock ~-1 ~2 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-2 ~2 blue_ice run setblock ~-1 ~-2 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~-1 ~-2 ~-2 blue_ice run setblock ~-1 ~-2 ~-2 air destroy

execute as @s[scores={airnade=14}] if block ~2 ~2 ~1 blue_ice run setblock ~2 ~2 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~2 ~-1 blue_ice run setblock ~2 ~2 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~-2 ~1 blue_ice run setblock ~2 ~-2 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~-2 ~-1 blue_ice run setblock ~2 ~-2 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~2 ~1 blue_ice run setblock ~-2 ~2 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~2 ~-1 blue_ice run setblock ~-2 ~2 ~-1 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~-2 ~1 blue_ice run setblock ~-2 ~-2 ~1 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~-2 ~-1 blue_ice run setblock ~-2 ~-2 ~-1 air destroy

execute as @s[scores={airnade=14}] if block ~2 ~1 ~2 blue_ice run setblock ~2 ~1 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~1 ~-2 blue_ice run setblock ~2 ~1 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~-1 ~2 blue_ice run setblock ~2 ~-1 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~2 ~-1 ~-2 blue_ice run setblock ~2 ~-1 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~1 ~2 blue_ice run setblock ~-2 ~1 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~1 ~-2 blue_ice run setblock ~-2 ~1 ~-2 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~-1 ~2 blue_ice run setblock ~-2 ~-1 ~2 air destroy
execute as @s[scores={airnade=14}] if block ~-2 ~-1 ~-2 blue_ice run setblock ~-2 ~-1 ~-2 air destroy

#turn ice

execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~ white_stained_glass unless block ~ ~ ~ air unless block ~ ~ ~ #game:ice_block run setblock ~ ~ ~ blue_ice
execute as @s[scores={airnade=7}] at @s unless block ~1 ~ ~ white_stained_glass unless block ~1 ~ ~ air unless block ~1 ~ ~ #game:ice_block run setblock ~1 ~ ~ blue_ice
execute as @s[scores={airnade=7}] at @s unless block ~-1 ~ ~ white_stained_glass unless block ~-1 ~ ~ air unless block ~-1 ~ ~ #game:ice_block run setblock ~-1 ~ ~ blue_ice
execute as @s[scores={airnade=7}] at @s unless block ~ ~1 ~ white_stained_glass unless block ~ ~1 ~ air unless block ~ ~1 ~ #game:ice_block run setblock ~ ~1 ~ blue_ice
execute as @s[scores={airnade=7}] at @s unless block ~ ~-1 ~ white_stained_glass unless block ~ ~-1 ~ air unless block ~ ~-1 ~ #game:ice_block run setblock ~ ~-1 ~ blue_ice
execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~1 white_stained_glass unless block ~ ~ ~1 air unless block ~ ~ ~1 #game:ice_block run setblock ~ ~ ~1 blue_ice
execute as @s[scores={airnade=7}] at @s unless block ~ ~ ~-1 white_stained_glass unless block ~ ~ ~-1 air unless block ~ ~ ~-1 #game:ice_block run setblock ~ ~ ~-1 blue_ice

execute as @s[scores={airnade=8}] at @s unless block ~1 ~ ~1 white_stained_glass unless block ~1 ~ ~1 air unless block ~1 ~ ~1 #game:ice_block run setblock ~1 ~ ~1 blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~-1 ~ ~1 white_stained_glass unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 #game:ice_block run setblock ~-1 ~ ~1 blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~1 ~ ~-1 white_stained_glass unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 #game:ice_block run setblock ~1 ~ ~-1 blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~-1 ~ ~-1 white_stained_glass unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 #game:ice_block run setblock ~-1 ~ ~-1 blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~1 ~1 ~ white_stained_glass unless block ~1 ~1 ~ air unless block ~1 ~1 ~ #game:ice_block run setblock ~1 ~1 ~ blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~-1 ~1 ~ white_stained_glass unless block ~-1 ~1 ~ air unless block ~-1 ~1 ~ #game:ice_block run setblock ~-1 ~1 ~ blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~1 ~-1 ~ white_stained_glass unless block ~1 ~-1 ~ air unless block ~1 ~-1 ~ #game:ice_block run setblock ~1 ~-1 ~ blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~-1 ~-1 ~ white_stained_glass unless block ~-1 ~-1 ~ air unless block ~-1 ~-1 ~ #game:ice_block run setblock ~-1 ~-1 ~ blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~ ~1 ~1 white_stained_glass unless block ~ ~1 ~1 air unless block ~ ~1 ~1 #game:ice_block run setblock ~ ~1 ~1 blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~ ~-1 ~1 white_stained_glass unless block ~ ~-1 ~1 air unless block ~ ~-1 ~1 #game:ice_block run setblock ~ ~-1 ~1 blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~ ~1 ~-1 white_stained_glass unless block ~ ~1 ~-1 air unless block ~ ~1 ~-1 #game:ice_block run setblock ~ ~1 ~-1 blue_ice
execute as @s[scores={airnade=8}] at @s unless block ~ ~-1 ~-1 white_stained_glass unless block ~ ~-1 ~-1 air unless block ~ ~-1 ~-1 #game:ice_block run setblock ~ ~-1 ~-1 blue_ice

execute as @s[scores={airnade=9}] at @s unless block ~1 ~1 ~1 white_stained_glass unless block ~1 ~1 ~1 air unless block ~1 ~1 ~1 #game:ice_block run setblock ~1 ~1 ~1 blue_ice
execute as @s[scores={airnade=9}] at @s unless block ~-1 ~1 ~1 white_stained_glass unless block ~-1 ~1 ~1 air unless block ~-1 ~1 ~1 #game:ice_block run setblock ~-1 ~1 ~1 blue_ice
execute as @s[scores={airnade=9}] at @s unless block ~1 ~-1 ~1 white_stained_glass unless block ~1 ~-1 ~1 air unless block ~1 ~-1 ~1 #game:ice_block run setblock ~1 ~-1 ~1 blue_ice
execute as @s[scores={airnade=9}] at @s unless block ~1 ~1 ~-1 white_stained_glass unless block ~1 ~1 ~-1 air unless block ~1 ~1 ~-1 #game:ice_block run setblock ~1 ~1 ~-1 blue_ice
execute as @s[scores={airnade=9}] at @s unless block ~-1 ~-1 ~1 white_stained_glass unless block ~-1 ~-1 ~1 air unless block ~-1 ~-1 ~1 #game:ice_block run setblock ~-1 ~-1 ~1 blue_ice
execute as @s[scores={airnade=9}] at @s unless block ~1 ~-1 ~-1 white_stained_glass unless block ~1 ~-1 ~-1 air unless block ~1 ~-1 ~-1 #game:ice_block run setblock ~1 ~-1 ~-1 blue_ice
execute as @s[scores={airnade=9}] at @s unless block ~-1 ~1 ~-1 white_stained_glass unless block ~-1 ~1 ~-1 air unless block ~-1 ~1 ~-1 #game:ice_block run setblock ~-1 ~1 ~-1 blue_ice
execute as @s[scores={airnade=9}] at @s unless block ~-1 ~-1 ~-1 white_stained_glass unless block ~-1 ~-1 ~-1 air unless block ~-1 ~-1 ~-1 #game:ice_block run setblock ~-1 ~-1 ~-1 blue_ice

execute as @s[scores={airnade=10}] at @s unless block ~2 ~ ~ white_stained_glass unless block ~2 ~ ~ air unless block ~2 ~ ~ #game:ice_block run setblock ~2 ~ ~ blue_ice
execute as @s[scores={airnade=10}] at @s unless block ~-2 ~ ~ white_stained_glass unless block ~-2 ~ ~ air unless block ~-2 ~ ~ #game:ice_block run setblock ~-2 ~ ~ blue_ice
execute as @s[scores={airnade=10}] at @s unless block ~ ~2 ~ white_stained_glass unless block ~ ~2 ~ air unless block ~ ~2 ~ #game:ice_block run setblock ~ ~2 ~ blue_ice
execute as @s[scores={airnade=10}] at @s unless block ~ ~-2 ~ white_stained_glass unless block ~ ~-2 ~ air unless block ~ ~-2 ~ #game:ice_block run setblock ~ ~-2 ~ blue_ice
execute as @s[scores={airnade=10}] at @s unless block ~ ~ ~2 white_stained_glass unless block ~ ~ ~2 air unless block ~ ~ ~2 #game:ice_block run setblock ~ ~ ~2 blue_ice
execute as @s[scores={airnade=10}] at @s unless block ~ ~ ~-2 white_stained_glass unless block ~ ~ ~-2 air unless block ~ ~ ~-2 #game:ice_block run setblock ~ ~ ~-2 blue_ice

execute as @s[scores={airnade=11}] at @s unless block ~2 ~1 ~ white_stained_glass unless block ~2 ~1 ~ air unless block ~2 ~1 ~ #game:ice_block run setblock ~2 ~1 ~ blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~2 ~ ~1 white_stained_glass unless block ~2 ~ ~1 air unless block ~2 ~ ~1 #game:ice_block run setblock ~2 ~ ~1 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~2 ~-1 ~ white_stained_glass unless block ~2 ~-1 ~ air unless block ~2 ~-1 ~ #game:ice_block run setblock ~2 ~-1 ~ blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~2 ~ ~-1 white_stained_glass unless block ~2 ~ ~-1 air unless block ~2 ~ ~-1 #game:ice_block run setblock ~2 ~ ~-1 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~-2 ~1 ~ white_stained_glass unless block ~-2 ~1 ~ air unless block ~-2 ~1 ~ #game:ice_block run setblock ~-2 ~1 ~ blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~-2 ~ ~1 white_stained_glass unless block ~-2 ~ ~1 air unless block ~-2 ~ ~1 #game:ice_block run setblock ~-2 ~ ~1 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~-2 ~-1 ~ white_stained_glass unless block ~-2 ~-1 ~ air unless block ~-2 ~-1 ~ #game:ice_block run setblock ~-2 ~-1 ~ blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~-2 ~ ~-1 white_stained_glass unless block ~-2 ~ ~-1 air unless block ~-2 ~ ~-1 #game:ice_block run setblock ~-2 ~ ~-1 blue_ice

execute as @s[scores={airnade=11}] at @s unless block ~1 ~2 ~ white_stained_glass unless block ~1 ~2 ~ air unless block ~1 ~2 ~ #game:ice_block run setblock ~1 ~2 ~ blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~-1 ~2 ~ white_stained_glass unless block ~-1 ~2 ~ air unless block ~-1 ~2 ~ #game:ice_block run setblock ~-1 ~2 ~ blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~2 ~1 white_stained_glass unless block ~ ~2 ~1 air unless block ~ ~2 ~1 #game:ice_block run setblock ~ ~2 ~1 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~2 ~-1 white_stained_glass unless block ~ ~2 ~-1 air unless block ~ ~2 ~-1 #game:ice_block run setblock ~ ~2 ~-1 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~1 ~-2 ~ white_stained_glass unless block ~1 ~-2 ~ air unless block ~1 ~-2 ~ #game:ice_block run setblock ~1 ~-2 ~ blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~-1 ~-2 ~ white_stained_glass unless block ~-1 ~-2 ~ air unless block ~-1 ~-2 ~ #game:ice_block run setblock ~-1 ~-2 ~ blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~-2 ~1 white_stained_glass unless block ~ ~-2 ~1 air unless block ~ ~-2 ~1 #game:ice_block run setblock ~ ~-2 ~1 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~-2 ~-1 white_stained_glass unless block ~ ~-2 ~-1 air unless block ~ ~-2 ~-1 #game:ice_block run setblock ~ ~-2 ~-1 blue_ice

execute as @s[scores={airnade=11}] at @s unless block ~1 ~ ~2 white_stained_glass unless block ~1 ~ ~2 air unless block ~1 ~ ~2 #game:ice_block run setblock ~1 ~ ~2 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~-1 ~ ~2 white_stained_glass unless block ~-1 ~ ~2 air unless block ~-1 ~ ~2 #game:ice_block run setblock ~-1 ~ ~2 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~1 ~2 white_stained_glass unless block ~ ~1 ~2 air unless block ~ ~1 ~2 #game:ice_block run setblock ~ ~1 ~2 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~-1 ~2 white_stained_glass unless block ~ ~-1 ~2 air unless block ~ ~-1 ~2 #game:ice_block run setblock ~ ~-1 ~2 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~1 ~ ~-2 white_stained_glass unless block ~1 ~ ~-2 air unless block ~1 ~ ~-2 #game:ice_block run setblock ~1 ~ ~-2 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~-1 ~ ~-2 white_stained_glass unless block ~-1 ~ ~-2 air unless block ~-1 ~ ~-2 #game:ice_block run setblock ~-1 ~ ~-2 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~1 ~-2 white_stained_glass unless block ~ ~1 ~-2 air unless block ~ ~1 ~-2 #game:ice_block run setblock ~ ~1 ~-2 blue_ice
execute as @s[scores={airnade=11}] at @s unless block ~ ~-1 ~-2 white_stained_glass unless block ~ ~-1 ~-2 air unless block ~ ~-1 ~-2 #game:ice_block run setblock ~ ~-1 ~-2 blue_ice

execute as @s[scores={airnade=12}] at @s unless block ~2 ~1 ~1 white_stained_glass unless block ~2 ~1 ~1 air unless block ~2 ~1 ~1 #game:ice_block run setblock ~2 ~1 ~1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~2 ~1 ~-1 white_stained_glass unless block ~2 ~1 ~-1 air unless block ~2 ~1 ~-1 #game:ice_block run setblock ~2 ~1 ~-1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~2 ~-1 ~1 white_stained_glass unless block ~2 ~-1 ~1 air unless block ~2 ~-1 ~1 #game:ice_block run setblock ~2 ~-1 ~1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~2 ~-1 ~-1 white_stained_glass unless block ~2 ~-1 ~-1 air unless block ~2 ~-1 ~-1 #game:ice_block run setblock ~2 ~-1 ~-1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-2 ~1 ~1 white_stained_glass unless block ~-2 ~1 ~1 air unless block ~-2 ~1 ~1 #game:ice_block run setblock ~-2 ~1 ~1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-2 ~1 ~-1 white_stained_glass unless block ~-2 ~1 ~-1 air unless block ~-2 ~1 ~-1 #game:ice_block run setblock ~-2 ~1 ~-1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-2 ~-1 ~1 white_stained_glass unless block ~-2 ~-1 ~1 air unless block ~-2 ~-1 ~1 #game:ice_block run setblock ~-2 ~-1 ~1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-2 ~-1 ~-1 white_stained_glass unless block ~-2 ~-1 ~-1 air unless block ~-2 ~-1 ~-1 #game:ice_block run setblock ~-2 ~-1 ~-1 blue_ice

execute as @s[scores={airnade=12}] at @s unless block ~1 ~2 ~1 white_stained_glass unless block ~1 ~2 ~1 air unless block ~1 ~2 ~1 #game:ice_block run setblock ~1 ~2 ~1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~2 ~-1 white_stained_glass unless block ~1 ~2 ~-1 air unless block ~1 ~2 ~-1 #game:ice_block run setblock ~1 ~2 ~-1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~2 ~1 white_stained_glass unless block ~-1 ~2 ~1 air unless block ~-1 ~2 ~1 #game:ice_block run setblock ~-1 ~2 ~1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~2 ~-1 white_stained_glass unless block ~-1 ~2 ~-1 air unless block ~-1 ~2 ~-1 #game:ice_block run setblock ~-1 ~2 ~-1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~-2 ~1 white_stained_glass unless block ~1 ~-2 ~1 air unless block ~1 ~-2 ~1 #game:ice_block run setblock ~1 ~-2 ~1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~-2 ~-1 white_stained_glass unless block ~1 ~-2 ~-1 air unless block ~1 ~-2 ~-1 #game:ice_block run setblock ~1 ~-2 ~-1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~-2 ~1 white_stained_glass unless block ~-1 ~-2 ~1 air unless block ~-1 ~-2 ~1 #game:ice_block run setblock ~-1 ~-2 ~1 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~-2 ~-1 white_stained_glass unless block ~-1 ~-2 ~-1 air unless block ~-1 ~-2 ~-1 #game:ice_block run setblock ~-1 ~-2 ~-1 blue_ice

execute as @s[scores={airnade=12}] at @s unless block ~1 ~1 ~2 white_stained_glass unless block ~1 ~1 ~2 air unless block ~1 ~1 ~2 #game:ice_block run setblock ~1 ~1 ~2 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~-1 ~2 white_stained_glass unless block ~1 ~-1 ~2 air unless block ~1 ~-1 ~2 #game:ice_block run setblock ~1 ~-1 ~2 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~1 ~2 white_stained_glass unless block ~-1 ~1 ~2 air unless block ~-1 ~1 ~2 #game:ice_block run setblock ~-1 ~1 ~2 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~-1 ~2 white_stained_glass unless block ~-1 ~-1 ~2 air unless block ~-1 ~-1 ~2 #game:ice_block run setblock ~-1 ~-1 ~2 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~1 ~-2 white_stained_glass unless block ~1 ~1 ~-2 air unless block ~1 ~1 ~-2 #game:ice_block run setblock ~1 ~1 ~-2 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~1 ~-1 ~-2 white_stained_glass unless block ~1 ~-1 ~-2 air unless block ~1 ~-1 ~-2 #game:ice_block run setblock ~1 ~-1 ~-2 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~1 ~-2 white_stained_glass unless block ~-1 ~1 ~-2 air unless block ~-1 ~1 ~-2 #game:ice_block run setblock ~-1 ~1 ~-2 blue_ice
execute as @s[scores={airnade=12}] at @s unless block ~-1 ~-1 ~-2 white_stained_glass unless block ~-1 ~-1 ~-2 air unless block ~-1 ~-1 ~-2 #game:ice_block run setblock ~-1 ~-1 ~-2 blue_ice

execute as @s[scores={airnade=13}] at @s unless block ~3 ~ ~ air unless block ~3 ~ ~ #game:ice_block run setblock ~3 ~ ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~3 ~1 ~ air unless block ~3 ~1 ~ #game:ice_block run setblock ~3 ~1 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~3 ~-1 ~ air unless block ~3 ~-1 ~ #game:ice_block run setblock ~3 ~-1 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~3 ~ ~1 air unless block ~3 ~ ~1 #game:ice_block run setblock ~3 ~ ~1 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~3 ~ ~-1 air unless block ~3 ~ ~-1 #game:ice_block run setblock ~3 ~ ~-1 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~ ~ air unless block ~-3 ~ ~ #game:ice_block run setblock ~-3 ~ ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~1 ~ air unless block ~-3 ~1 ~ #game:ice_block run setblock ~-3 ~1 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~-1 ~ air unless block ~-3 ~-1 ~ #game:ice_block run setblock ~-3 ~-1 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~ ~1 air unless block ~-3 ~ ~1 #game:ice_block run setblock ~-3 ~ ~1 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-3 ~ ~-1 air unless block ~-3 ~ ~-1 #game:ice_block run setblock ~-3 ~ ~-1 blue_ice

execute as @s[scores={airnade=13}] at @s unless block ~ ~3 ~ air unless block ~ ~3 ~ #game:ice_block run setblock ~ ~3 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~1 ~3 ~ air unless block ~1 ~3 ~ #game:ice_block run setblock ~1 ~3 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-1 ~3 ~ air unless block ~-1 ~3 ~ #game:ice_block run setblock ~-1 ~3 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~3 ~1 air unless block ~ ~3 ~1 #game:ice_block run setblock ~ ~3 ~1 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~3 ~-1 air unless block ~ ~3 ~-1 #game:ice_block run setblock ~ ~3 ~-1 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-3 ~ air unless block ~ ~-3 ~ #game:ice_block run setblock ~ ~-3 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~1 ~-3 ~ air unless block ~1 ~-3 ~ #game:ice_block run setblock ~1 ~-3 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-1 ~-3 ~ air unless block ~-1 ~-3 ~ #game:ice_block run setblock ~-1 ~-3 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-3 ~1 air unless block ~ ~-3 ~1 #game:ice_block run setblock ~ ~-3 ~1 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-3 ~-1 air unless block ~ ~-3 ~-1 #game:ice_block run setblock ~ ~-3 ~-1 blue_ice

execute as @s[scores={airnade=13}] at @s unless block ~ ~ ~3 air unless block ~ ~ ~3 #game:ice_block run setblock ~ ~ ~3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~1 ~ ~3 air unless block ~1 ~ ~3 #game:ice_block run setblock ~1 ~ ~3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-1 ~ ~3 air unless block ~-1 ~ ~3 #game:ice_block run setblock ~-1 ~ ~3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~1 ~3 air unless block ~ ~1 ~3 #game:ice_block run setblock ~ ~1 ~3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-1 ~3 air unless block ~ ~-1 ~3 #game:ice_block run setblock ~ ~-1 ~3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~ ~-3 air unless block ~ ~ ~-3 #game:ice_block run setblock ~ ~ ~-3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~1 ~ ~-3 air unless block ~1 ~ ~-3 #game:ice_block run setblock ~1 ~ ~-3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-1 ~ ~-3 air unless block ~-1 ~ ~-3 #game:ice_block run setblock ~-1 ~ ~-3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~1 ~-3 air unless block ~ ~1 ~-3 #game:ice_block run setblock ~ ~1 ~-3 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-1 ~-3 air unless block ~ ~-1 ~-3 #game:ice_block run setblock ~ ~-1 ~-3 blue_ice

execute as @s[scores={airnade=13}] at @s unless block ~ ~2 ~2 air unless block ~ ~2 ~2 #game:ice_block run setblock ~ ~2 ~2 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-2 ~2 air unless block ~ ~-2 ~2 #game:ice_block run setblock ~ ~-2 ~2 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~2 ~-2 air unless block ~ ~2 ~-2 #game:ice_block run setblock ~ ~2 ~-2 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~ ~-2 ~-2 air unless block ~ ~-2 ~-2 #game:ice_block run setblock ~ ~-2 ~-2 blue_ice

execute as @s[scores={airnade=13}] at @s unless block ~2 ~2 ~ air unless block ~2 ~2 ~ #game:ice_block run setblock ~2 ~2 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~2 ~-2 ~ air unless block ~2 ~-2 ~ #game:ice_block run setblock ~2 ~-2 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-2 ~2 ~ air unless block ~-2 ~2 ~ #game:ice_block run setblock ~-2 ~2 ~ blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-2 ~-2 ~ air unless block ~-2 ~-2 ~ #game:ice_block run setblock ~-2 ~-2 ~ blue_ice

execute as @s[scores={airnade=13}] at @s unless block ~2 ~ ~2 air unless block ~2 ~ ~2 #game:ice_block run setblock ~2 ~ ~2 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~2 ~ ~-2 air unless block ~2 ~ ~-2 #game:ice_block run setblock ~2 ~ ~-2 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-2 ~ ~2 air unless block ~-2 ~ ~2 #game:ice_block run setblock ~-2 ~ ~2 blue_ice
execute as @s[scores={airnade=13}] at @s unless block ~-2 ~ ~-2 air unless block ~-2 ~ ~-2 #game:ice_block run setblock ~-2 ~ ~-2 blue_ice

execute as @s[scores={airnade=14}] at @s unless block ~3 ~1 ~1 air unless block ~3 ~1 ~1 #game:ice_block run setblock ~3 ~1 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~3 ~1 ~-1 air unless block ~3 ~1 ~-1 #game:ice_block run setblock ~3 ~1 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~3 ~-1 ~1 air unless block ~3 ~-1 ~1 #game:ice_block run setblock ~3 ~-1 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~3 ~-1 ~-1 air unless block ~3 ~-1 ~-1 #game:ice_block run setblock ~3 ~-1 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-3 ~1 ~1 air unless block ~-3 ~1 ~1 #game:ice_block run setblock ~-3 ~1 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-3 ~1 ~-1 air unless block ~-3 ~1 ~-1 #game:ice_block run setblock ~-3 ~1 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-3 ~-1 ~1 air unless block ~-3 ~-1 ~1 #game:ice_block run setblock ~-3 ~-1 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-3 ~-1 ~-1 air unless block ~-3 ~-1 ~-1 #game:ice_block run setblock ~-3 ~-1 ~-1 blue_ice

execute as @s[scores={airnade=14}] at @s unless block ~1 ~1 ~3 air unless block ~1 ~1 ~3 #game:ice_block run setblock ~1 ~1 ~3 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-1 ~3 air unless block ~1 ~-1 ~3 #game:ice_block run setblock ~1 ~-1 ~3 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~1 ~3 air unless block ~-1 ~1 ~3 #game:ice_block run setblock ~-1 ~1 ~3 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-1 ~3 air unless block ~-1 ~-1 ~3 #game:ice_block run setblock ~-1 ~-1 ~3 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~1 ~-3 air unless block ~1 ~1 ~-3 #game:ice_block run setblock ~1 ~1 ~-3 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-1 ~-3 air unless block ~1 ~-1 ~-3 #game:ice_block run setblock ~1 ~-1 ~-3 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~1 ~-3 air unless block ~-1 ~1 ~-3 #game:ice_block run setblock ~-1 ~1 ~-3 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-1 ~-3 air unless block ~-1 ~-1 ~-3 #game:ice_block run setblock ~-1 ~-1 ~-3 blue_ice

execute as @s[scores={airnade=14}] at @s unless block ~1 ~3 ~1 air unless block ~1 ~3 ~1 #game:ice_block run setblock ~1 ~3 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~3 ~-1 air unless block ~1 ~3 ~-1 #game:ice_block run setblock ~1 ~3 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~3 ~1 air unless block ~-1 ~3 ~1 #game:ice_block run setblock ~-1 ~3 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~3 ~-1 air unless block ~-1 ~3 ~-1 #game:ice_block run setblock ~-1 ~3 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-3 ~1 air unless block ~1 ~-3 ~1 #game:ice_block run setblock ~1 ~-3 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-3 ~-1 air unless block ~1 ~-3 ~-1 #game:ice_block run setblock ~1 ~-3 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-3 ~1 air unless block ~-1 ~-3 ~1 #game:ice_block run setblock ~-1 ~-3 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-3 ~-1 air unless block ~-1 ~-3 ~-1 #game:ice_block run setblock ~-1 ~-3 ~-1 blue_ice

execute as @s[scores={airnade=14}] at @s unless block ~1 ~2 ~2 air unless block ~1 ~2 ~2 #game:ice_block run setblock ~1 ~2 ~2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~2 ~-2 air unless block ~1 ~2 ~-2 #game:ice_block run setblock ~1 ~2 ~-2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-2 ~2 air unless block ~1 ~-2 ~2 #game:ice_block run setblock ~1 ~-2 ~2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~1 ~-2 ~-2 air unless block ~1 ~-2 ~-2 #game:ice_block run setblock ~1 ~-2 ~-2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~2 ~2 air unless block ~-1 ~2 ~2 #game:ice_block run setblock ~-1 ~2 ~2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~2 ~-2 air unless block ~-1 ~2 ~-2 #game:ice_block run setblock ~-1 ~2 ~-2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-2 ~2 air unless block ~-1 ~-2 ~2 #game:ice_block run setblock ~-1 ~-2 ~2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-1 ~-2 ~-2 air unless block ~-1 ~-2 ~-2 #game:ice_block run setblock ~-1 ~-2 ~-2 blue_ice

execute as @s[scores={airnade=14}] at @s unless block ~2 ~2 ~1 air unless block ~2 ~2 ~1 #game:ice_block run setblock ~2 ~2 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~2 ~-1 air unless block ~2 ~2 ~-1 #game:ice_block run setblock ~2 ~2 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~-2 ~1 air unless block ~2 ~-2 ~1 #game:ice_block run setblock ~2 ~-2 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~-2 ~-1 air unless block ~2 ~-2 ~-1 #game:ice_block run setblock ~2 ~-2 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~2 ~1 air unless block ~-2 ~2 ~1 #game:ice_block run setblock ~-2 ~2 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~2 ~-1 air unless block ~-2 ~2 ~-1 #game:ice_block run setblock ~-2 ~2 ~-1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~-2 ~1 air unless block ~-2 ~-2 ~1 #game:ice_block run setblock ~-2 ~-2 ~1 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~-2 ~-1 air unless block ~-2 ~-2 ~-1 #game:ice_block run setblock ~-2 ~-2 ~-1 blue_ice

execute as @s[scores={airnade=14}] at @s unless block ~2 ~1 ~2 air unless block ~2 ~1 ~2 #game:ice_block run setblock ~2 ~1 ~2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~1 ~-2 air unless block ~2 ~1 ~-2 #game:ice_block run setblock ~2 ~1 ~-2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~-1 ~2 air unless block ~2 ~-1 ~2 #game:ice_block run setblock ~2 ~-1 ~2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~2 ~-1 ~-2 air unless block ~2 ~-1 ~-2 #game:ice_block run setblock ~2 ~-1 ~-2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~1 ~2 air unless block ~-2 ~1 ~2 #game:ice_block run setblock ~-2 ~1 ~2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~1 ~-2 air unless block ~-2 ~1 ~-2 #game:ice_block run setblock ~-2 ~1 ~-2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~-1 ~2 air unless block ~-2 ~-1 ~2 #game:ice_block run setblock ~-2 ~-1 ~2 blue_ice
execute as @s[scores={airnade=14}] at @s unless block ~-2 ~-1 ~-2 air unless block ~-2 ~-1 ~-2 #game:ice_block run setblock ~-2 ~-1 ~-2 blue_ice

execute as @s[scores={airnade=2..},tag=boom_me] at @s run particle minecraft:explosion ~ ~ ~ .1 .1 .1 0 1 force
execute as @s[scores={airnade=2..},tag=boom_me] at @s run particle minecraft:cloud ~ ~ ~ .1 .1 .1 .2 1 force
execute as @s[scores={airnade=24},tag=boom_me] at @s run summon tnt ~ ~ ~

kill @s[scores={airnade=24..}]