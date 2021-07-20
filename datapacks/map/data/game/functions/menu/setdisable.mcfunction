execute if block 475 17 497 minecraft:oak_wall_sign run clone 475 16 501 475 18 494 453 16 498
fill 475 16 501 475 18 494 air destroy
execute as @e[tag=tell] at @s run data merge entity @s {CustomNameVisible:1}