execute as @e[name=Map,type=armor_stand,scores={game=1}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Core","color":"dark_blue","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=2}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Nether Fort","color":"dark_red","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=3}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Mesa","color":"gold","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=4}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Flower Watch","color":"light_purple","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=5}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"The End","color":"red","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=6}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Dead Feast","color":"yellow","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=7}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Arena","color":"dark_purple","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=8}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Fair Fight","color":"gray","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=9}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Frost Bite","color":"blue","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Underworld","color":"red","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=10}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Catastrophe","color":"blue","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=11}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Showtime","color":"light_blue","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=12}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Terminal","color":"gold","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=13}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Suto","color":"yellow","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=14}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Tremor","color":"aqua","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=15}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Hollow Keep","color":"red","bold":"true"}]
execute as @e[name=Map,type=armor_stand,scores={game=16}] at @s run tellraw @a [{"text":"Playing on map: ","color":"white"},{"text":"Beacon","color":"dark_aqua","bold":"true"}]

difficulty normal

scoreboard objectives remove l
scoreboard objectives add l dummy {"text":"Lives","color":"yellow","bold":true}

kill @e[type=tnt]
kill @e[name=blast]
kill @e[name=air]
kill @e[type=minecraft:falling_block]
kill @e[type=minecraft:zombie]
kill @e[type=minecraft:skeleton]
kill @e[type=minecraft:ghast]
kill @e[type=minecraft:chicken]
kill @e[type=minecraft:wither]
kill @e[type=minecraft:creeper]
kill @e[tag=powerupitem]

gamerule reducedDebugInfo true

execute if entity @e[scores={mode=1}] run tellraw @a [{"text":"[Selected mode: "},{"text":"Overpowered","color":"dark_aqua","bold":true},{"text":"] Reload times are a thing of the past. Every single item is much more powerful in this mode.","color":"reset","bold":false}]
execute if entity @e[scores={mode=2}] run tellraw @a [{"text":"[Selected mode: "},{"text":"Hotfeet","color":"dark_red","bold":true},{"text":"] Be careful in this mode. TNT spawns at your feet at an ever increasing pace. Don't stand still!","color":"reset","bold":false}]
execute if entity @e[scores={mode=3}] run tellraw @a [{"text":"[Selected mode: "},{"text":"Phantom","color":"dark_purple","bold":true},{"text":"] Sometimes you need more tools. Duel with powerful items spawning across the map.","color":"reset","bold":false}]
execute if entity @e[scores={mode=4}] run tellraw @a [{"text":"[Selected mode: "},{"text":"Survival","color":"dark_green","bold":true},{"text":"] Survive against hoards of enemies until time runs out. Go solo, outlive your peers, or work with a team to get through the storm. Good luck! Remember: ","color":"reset","bold":false},{"text":"Ghasts are vulnerable...and chickens aren't what they seem","bold":true},{"text":".","bold":false}]

execute if entity @e[tag=Map,scores={mode=0..1}] run tellraw @a[scores={ingame=1..,playercount=1}] [{"text":"You have joined solo. Welcome to training mode.","color":"gold"}]
execute if entity @e[tag=Map,scores={mode=0..1}] run tellraw @a[scores={ingame=1..,playercount=1}] [{"text":"["},{"text":"Spawn Dummy","color":"dark_green","hoverEvent":{"action":"show_text","value":"Click to spawn dummy"},"clickEvent":{"action":"run_command","value":"/trigger dummytrigger add 1"}},{"text":"] [","color":"reset"},{"text":"Spawn Punchable Dummy","color":"green","hoverEvent":{"action":"show_text","value":"Click to spawn dummy"},"clickEvent":{"action":"run_command","value":"/trigger dummytrigger2 add 1"}},{"text":"]","color":"reset"}]

execute if entity @e[tag=Map,scores={mode=0..1}] run gamerule reducedDebugInfo false

scoreboard players set @a pglow 0

fill 637 0 637 597 18 597 air
fill 637 19 637 597 36 597 air
fill 637 37 637 597 55 597 air
fill 637 56 637 597 74 597 air
fill 637 75 637 597 83 597 air

execute as @e[name=ground,type=armor_stand] at @s run fill ~3 ~1 ~3 ~-3 ~-1 ~-3 air replace end_stone
kill @e[name=ground,type=armor_stand]

execute as @e[name=ground2,type=armor_stand] at @s run fill ~1 ~1 ~1 ~-1 ~-3 ~-1 air replace purple_wool
kill @e[name=ground2,type=armor_stand]

execute as @e[name=Map,type=armor_stand,scores={game=1}] at @s run clone 2 5 -16 2 5 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=2}] at @s run clone 2 6 -16 2 6 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=3}] at @s run clone 2 7 -16 2 7 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=4}] at @s run clone 2 8 -16 2 8 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=5}] at @s run clone 2 9 -16 2 9 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=6}] at @s run clone 2 10 -16 2 10 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=7}] at @s run clone -94 7 -50 -54 19 -10 597 18 597
execute as @e[name=Map,type=armor_stand,scores={game=7}] at @s run clone 2 1 -16 2 1 -16 4 5 -16
execute as @e[name=Map,type=armor_stand,scores={game=7}] at @s run fill 637 10 637 597 17 597 air

execute as @e[name=Map,type=armor_stand,scores={game=8}] at @s run clone 2 11 -16 2 11 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=9}] at @s run clone 2 12 -16 2 12 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=10}] at @s run clone 2 14 -16 2 14 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=11}] at @s run clone 2 13 -16 2 13 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=12}] at @s run clone -124 22 3 -91 29 -30 602 12 602
execute as @e[name=Map,type=armor_stand,scores={game=12}] at @s run clone 2 1 -16 2 1 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=13}] at @s run clone 2 15 -16 2 15 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=14}] at @s run clone 81 17 -46 56 66 -22 600 22 600
execute as @e[name=Map,type=armor_stand,scores={game=14}] at @s run clone 2 1 -16 2 1 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=15}] at @s run clone 2 16 -16 2 16 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=16}] at @s run clone -102 71 -80 -135 94 -119 600 12 598
execute as @e[name=Map,type=armor_stand,scores={game=16}] at @s run clone 2 1 -16 2 1 -16 4 5 -16

execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run clone -6 11 -46 32 32 -82 597 12 597
execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run clone 2 1 -16 2 1 -16 4 5 -16
execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run fill 637 34 637 597 40 597 air

execute as @e[name=Map,type=armor_stand,scores={game=1}] at @s run fill 644 2 644 644 69 590 minecraft:clay
execute as @e[name=Map,type=armor_stand,scores={game=1}] at @s run fill 644 2 644 590 69 644 minecraft:clay
execute as @e[name=Map,type=armor_stand,scores={game=1}] at @s run fill 590 2 590 590 69 644 minecraft:clay
execute as @e[name=Map,type=armor_stand,scores={game=1}] at @s run fill 590 2 590 644 69 590 minecraft:clay

execute as @e[name=Map,type=armor_stand,scores={game=2}] at @s run fill 644 2 644 644 69 590 minecraft:gravel
execute as @e[name=Map,type=armor_stand,scores={game=2}] at @s run fill 644 2 644 590 69 644 minecraft:gravel
execute as @e[name=Map,type=armor_stand,scores={game=2}] at @s run fill 590 2 590 590 69 644 minecraft:gravel
execute as @e[name=Map,type=armor_stand,scores={game=2}] at @s run fill 590 2 590 644 69 590 minecraft:gravel

execute as @e[name=Map,type=armor_stand,scores={game=3}] at @s run fill 644 2 644 644 69 590 minecraft:light_blue_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=3}] at @s run fill 644 2 644 590 69 644 minecraft:light_blue_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=3}] at @s run fill 590 2 590 590 69 644 minecraft:light_blue_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=3}] at @s run fill 590 2 590 644 69 590 minecraft:light_blue_terracotta

execute as @e[name=Map,type=armor_stand,scores={game=4}] at @s run fill 644 2 644 644 69 590 minecraft:birch_planks
execute as @e[name=Map,type=armor_stand,scores={game=4}] at @s run fill 644 2 644 590 69 644 minecraft:birch_planks
execute as @e[name=Map,type=armor_stand,scores={game=4}] at @s run fill 590 2 590 590 69 644 minecraft:birch_planks
execute as @e[name=Map,type=armor_stand,scores={game=4}] at @s run fill 590 2 590 644 69 590 minecraft:birch_planks

execute as @e[name=Map,type=armor_stand,scores={game=5}] at @s run fill 644 2 644 644 69 590 minecraft:blue_ice
execute as @e[name=Map,type=armor_stand,scores={game=5}] at @s run fill 644 2 644 590 69 644 minecraft:blue_ice
execute as @e[name=Map,type=armor_stand,scores={game=5}] at @s run fill 590 2 590 644 69 590 minecraft:blue_ice
execute as @e[name=Map,type=armor_stand,scores={game=5}] at @s run fill 590 2 590 590 69 644 minecraft:blue_ice

execute as @e[name=Map,type=armor_stand,scores={game=6}] at @s run fill 644 2 644 644 69 590 minecraft:black_wool
execute as @e[name=Map,type=armor_stand,scores={game=6}] at @s run fill 644 2 644 590 69 644 minecraft:black_wool
execute as @e[name=Map,type=armor_stand,scores={game=6}] at @s run fill 590 2 590 644 69 590 minecraft:black_wool
execute as @e[name=Map,type=armor_stand,scores={game=6}] at @s run fill 590 2 590 590 69 644 minecraft:black_wool

execute as @e[name=Map,type=armor_stand,scores={game=7}] at @s run fill 644 2 644 644 69 590 minecraft:coal_block
execute as @e[name=Map,type=armor_stand,scores={game=7}] at @s run fill 644 2 644 590 69 644 minecraft:coal_block
execute as @e[name=Map,type=armor_stand,scores={game=7}] at @s run fill 590 2 590 644 69 590 minecraft:coal_block
execute as @e[name=Map,type=armor_stand,scores={game=7}] at @s run fill 590 2 590 590 69 644 minecraft:coal_block

execute as @e[name=Map,type=armor_stand,scores={game=8}] at @s run fill 644 2 644 644 69 590 minecraft:magenta_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=8}] at @s run fill 644 2 644 590 69 644 minecraft:magenta_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=8}] at @s run fill 590 2 590 644 69 590 minecraft:magenta_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=8}] at @s run fill 590 2 590 590 69 644 minecraft:magenta_terracotta

execute as @e[name=Map,type=armor_stand,scores={game=9}] at @s run fill 644 2 644 644 69 590 minecraft:dark_oak_log
execute as @e[name=Map,type=armor_stand,scores={game=9}] at @s run fill 644 2 644 590 69 644 minecraft:dark_oak_log
execute as @e[name=Map,type=armor_stand,scores={game=9}] at @s run fill 590 2 590 644 69 590 minecraft:dark_oak_log
execute as @e[name=Map,type=armor_stand,scores={game=9}] at @s run fill 590 2 590 590 69 644 minecraft:dark_oak_log

execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run fill 644 2 644 644 69 590 minecraft:prismarine
execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run fill 644 2 644 590 69 644 minecraft:prismarine
execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run fill 590 2 590 644 69 590 minecraft:prismarine
execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run fill 590 2 590 590 69 644 minecraft:prismarine

execute as @e[name=Map,type=armor_stand,scores={game=10}] at @s run fill 644 2 644 644 69 590 minecraft:black_concrete
execute as @e[name=Map,type=armor_stand,scores={game=10}] at @s run fill 644 2 644 590 69 644 minecraft:black_concrete
execute as @e[name=Map,type=armor_stand,scores={game=10}] at @s run fill 590 2 590 644 69 590 minecraft:black_concrete
execute as @e[name=Map,type=armor_stand,scores={game=10}] at @s run fill 590 2 590 590 69 644 minecraft:black_concrete

execute as @e[name=Map,type=armor_stand,scores={game=11}] at @s run fill 644 2 644 644 69 590 minecraft:yellow_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=11}] at @s run fill 644 2 644 590 69 644 minecraft:yellow_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=11}] at @s run fill 590 2 590 644 69 590 minecraft:yellow_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=11}] at @s run fill 590 2 590 590 69 644 minecraft:yellow_terracotta

execute as @e[name=Map,type=armor_stand,scores={game=12}] at @s run fill 644 2 644 644 69 590 minecraft:dark_prismarine
execute as @e[name=Map,type=armor_stand,scores={game=12}] at @s run fill 644 2 644 590 69 644 minecraft:dark_prismarine
execute as @e[name=Map,type=armor_stand,scores={game=12}] at @s run fill 590 2 590 644 69 590 minecraft:dark_prismarine
execute as @e[name=Map,type=armor_stand,scores={game=12}] at @s run fill 590 2 590 590 69 644 minecraft:dark_prismarine

execute as @e[name=Map,type=armor_stand,scores={game=13}] at @s run fill 644 2 644 644 69 590 minecraft:quartz_pillar
execute as @e[name=Map,type=armor_stand,scores={game=13}] at @s run fill 644 2 644 590 69 644 minecraft:quartz_pillar
execute as @e[name=Map,type=armor_stand,scores={game=13}] at @s run fill 590 2 590 644 69 590 minecraft:quartz_pillar
execute as @e[name=Map,type=armor_stand,scores={game=13}] at @s run fill 590 2 590 590 69 644 minecraft:quartz_pillar

execute as @e[name=Map,type=armor_stand,scores={game=14}] at @s run fill 644 2 644 644 69 590 minecraft:obsidian
execute as @e[name=Map,type=armor_stand,scores={game=14}] at @s run fill 644 2 644 590 69 644 minecraft:obsidian
execute as @e[name=Map,type=armor_stand,scores={game=14}] at @s run fill 590 2 590 644 69 590 minecraft:obsidian
execute as @e[name=Map,type=armor_stand,scores={game=14}] at @s run fill 590 2 590 590 69 644 minecraft:obsidian

execute as @e[name=Map,type=armor_stand,scores={game=15}] at @s run fill 644 2 644 644 69 590 minecraft:clay
execute as @e[name=Map,type=armor_stand,scores={game=15}] at @s run fill 644 2 644 590 69 644 minecraft:clay
execute as @e[name=Map,type=armor_stand,scores={game=15}] at @s run fill 590 2 590 644 69 590 minecraft:clay
execute as @e[name=Map,type=armor_stand,scores={game=15}] at @s run fill 590 2 590 590 69 644 minecraft:clay

execute as @e[name=Map,type=armor_stand,scores={game=16}] at @s run fill 644 2 644 644 69 590 minecraft:cyan_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=16}] at @s run fill 644 2 644 590 69 644 minecraft:cyan_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=16}] at @s run fill 590 2 590 644 69 590 minecraft:cyan_terracotta
execute as @e[name=Map,type=armor_stand,scores={game=16}] at @s run fill 590 2 590 590 69 644 minecraft:cyan_terracotta

clone 4 5 -16 4 5 -16 600 10 600
setblock 600 9 600 redstone_block

clone 4 5 -16 4 5 -16 600 10 600

fill 599 59 599 601 63 601 barrier hollow

#details
fill 594 1 641 594 1 594 minecraft:stone_bricks
fill 641 1 641 641 1 594 minecraft:stone_bricks
fill 594 1 594 641 1 594 minecraft:stone_bricks
fill 594 1 641 641 1 641 minecraft:stone_bricks

fill 593 1 643 590 1 591 minecraft:stone
fill 644 1 643 642 1 591 minecraft:stone
fill 591 1 593 643 1 591 minecraft:stone
fill 591 1 644 643 1 642 minecraft:stone

# reset area for overlord blocks
fill 697 22 646 737 11 600 air
fill 697 35 646 737 23 600 air
fill 697 36 646 737 45 600 air