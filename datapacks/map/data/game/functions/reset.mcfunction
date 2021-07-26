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