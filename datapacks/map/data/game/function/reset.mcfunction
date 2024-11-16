#class unlocks
clone 488 16 516 486 18 516 486 16 510

#overlord structure
clone 501 5 564 490 14 564 490 22 564
fill 494 27 565 496 25 565 air

#overlord cutscene timer
scoreboard players set @e[name=menu] mastercut 0

#advanacements
advancement revoke @a everything

#shard area
clone 482 0 473 488 4 479 482 9 473
fill 486 9 476 486 9 476 minecraft:redstone_block

#iris ladder
fill 479 14 467 480 12 467 air
tag @e[name=Map] remove ladder

#overlord default unlocks
setblock 495 31 564 minecraft:red_glazed_terracotta[facing=north]
setblock 492 30 564 minecraft:yellow_glazed_terracotta[facing=north]
setblock 490 27 564 minecraft:blue_glazed_terracotta[facing=north]

#
scoreboard objectives remove NewPlay
scoreboard objectives add NewPlay dummy

scoreboard objectives remove class
scoreboard objectives add class dummy

#
scoreboard players set .part_1 .part_unlock 1
scoreboard players set .part_2 .part_unlock 1
scoreboard players set .part_3 .part_unlock 1
scoreboard players set .part_4 .part_unlock 1
scoreboard players set .part_5 .part_unlock 1
scoreboard players set .part_6 .part_unlock 0
scoreboard players set .part_7 .part_unlock 0
scoreboard players set .part_8 .part_unlock 0
scoreboard players set .part_9 .part_unlock 0
scoreboard players set .part_10 .part_unlock 0
scoreboard players set .part_11 .part_unlock 0
scoreboard players set .part_12 .part_unlock 0
scoreboard players set .part_13 .part_unlock 0
scoreboard players set .part_14 .part_unlock 0
scoreboard players set .part_15 .part_unlock 0
scoreboard players set .part_16 .part_unlock 0
scoreboard players set .part_17 .part_unlock 0
scoreboard players set .part_18 .part_unlock 0
scoreboard players set .part_19 .part_unlock 0
scoreboard players set .part_20 .part_unlock 0
scoreboard players set .part_21 .part_unlock 0
scoreboard players set .part_22 .part_unlock 0
scoreboard players set .part_23 .part_unlock 0
scoreboard players set .part_24 .part_unlock 0
scoreboard players set .part_25 .part_unlock 0
scoreboard players set .part_26 .part_unlock 0

scoreboard players set .all .part_unlock 0
scoreboard players set .done .part_unlock 0

function game:menu/particle_book

#
kill @e[tag=name_temp,type=marker]
kill @e[tag=stock_temp,type=marker]
kill @e[tag=actionbar_temp,type=marker]
kill @e[tag=spacer_temp,type=marker]

summon marker 0 4 0 {Tags:["stock_temp"]}
summon marker 0 4 0 {Tags:["stock_temp"]}
summon marker 0 4 0 {Tags:["stock_temp"]}
summon marker 0 4 0 {Tags:["stock_temp"]}
summon marker 0 4 0 {Tags:["stock_temp"]}
summon marker 0 4 0 {Tags:["stock_temp"]}

scoreboard players set @e[tag=stock_temp,type=marker] stocks_slot 0
scoreboard players set @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] stocks_slot 1
scoreboard players set @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] stocks_slot 2
scoreboard players set @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] stocks_slot 3
scoreboard players set @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] stocks_slot 4
scoreboard players set @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] stocks_slot 5
scoreboard players set @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] stocks_slot 6

summon marker 0 4 0 {Tags:["actionbar_temp"]}