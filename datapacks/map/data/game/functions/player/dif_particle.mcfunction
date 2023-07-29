playsound minecraft:block.wooden_pressure_plate.click_off master @s ~ ~ ~ .5 1.3

execute if score @s particle matches 1 run scoreboard players set @s particle_code 1
execute if score @s particle matches 3 if score @s particle_code matches 1 run scoreboard players set @s particle_code 2
execute if score @s particle matches 4 if score @s particle_code matches 2 run scoreboard players set @s particle_code 3
execute if score @s particle matches 0 if score @s particle_code matches 3 run scoreboard players set @s particle_code 4
execute if score @s particle matches 6 if score @s particle_code matches 4 run scoreboard players set @s particle_code 5
execute if score @s particle matches 2 if score @s particle_code matches 5 if score .all .part_unlock matches 0 run function game:player/unlock_all_part

tag @s remove part_reload

execute if score @s particle matches 5 if score .part_6 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 7 if score .part_7 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 8 if score .part_8 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 9 if score .part_9 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 10 if score .part_10 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 11 if score .part_11 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 12 if score .part_12 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 13 if score .part_13 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 14 if score .part_14 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 15 if score .part_15 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 16 if score .part_16 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 17 if score .part_17 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 18 if score .part_18 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 19 if score .part_19 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 20 if score .part_20 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 21 if score .part_21 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 22 if score .part_22 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 23 if score .part_23 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 24 if score .part_24 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 25 if score .part_25 .part_unlock matches 0 run tag @s add part_reload
execute if score @s particle matches 26 if score .part_26 .part_unlock matches 0 run tag @s add part_reload

execute if score @s particle matches 5 if score .part_6 .part_unlock matches 0 run scoreboard players set .part_6 .part_unlock 1
execute if score @s particle matches 7 if score .part_7 .part_unlock matches 0 run scoreboard players set .part_7 .part_unlock 1
execute if score @s particle matches 8 if score .part_8 .part_unlock matches 0 run scoreboard players set .part_8 .part_unlock 1
execute if score @s particle matches 9 if score .part_9 .part_unlock matches 0 run scoreboard players set .part_9 .part_unlock 1
execute if score @s particle matches 10 if score .part_10 .part_unlock matches 0 run scoreboard players set .part_10 .part_unlock 1
execute if score @s particle matches 11 if score .part_11 .part_unlock matches 0 run scoreboard players set .part_11 .part_unlock 1
execute if score @s particle matches 12 if score .part_12 .part_unlock matches 0 run scoreboard players set .part_12 .part_unlock 1
execute if score @s particle matches 13 if score .part_13 .part_unlock matches 0 run scoreboard players set .part_13 .part_unlock 1
execute if score @s particle matches 14 if score .part_14 .part_unlock matches 0 run scoreboard players set .part_14 .part_unlock 1
execute if score @s particle matches 15 if score .part_15 .part_unlock matches 0 run scoreboard players set .part_15 .part_unlock 1
execute if score @s particle matches 16 if score .part_16 .part_unlock matches 0 run scoreboard players set .part_16 .part_unlock 1
execute if score @s particle matches 17 if score .part_17 .part_unlock matches 0 run scoreboard players set .part_17 .part_unlock 1
execute if score @s particle matches 18 if score .part_18 .part_unlock matches 0 run scoreboard players set .part_18 .part_unlock 1
execute if score @s particle matches 19 if score .part_19 .part_unlock matches 0 run scoreboard players set .part_19 .part_unlock 1
execute if score @s particle matches 20 if score .part_20 .part_unlock matches 0 run scoreboard players set .part_20 .part_unlock 1
execute if score @s particle matches 21 if score .part_21 .part_unlock matches 0 run scoreboard players set .part_21 .part_unlock 1
execute if score @s particle matches 22 if score .part_22 .part_unlock matches 0 run scoreboard players set .part_22 .part_unlock 1
execute if score @s particle matches 23 if score .part_23 .part_unlock matches 0 run scoreboard players set .part_23 .part_unlock 1
execute if score @s particle matches 24 if score .part_24 .part_unlock matches 0 run scoreboard players set .part_24 .part_unlock 1
execute if score @s particle matches 25 if score .part_25 .part_unlock matches 0 run scoreboard players set .part_25 .part_unlock 1
execute if score @s particle matches 26 if score .part_26 .part_unlock matches 0 run scoreboard players set .part_26 .part_unlock 1

execute as @s[tag=part_reload] run function game:menu/particle_book

execute if score .part_6 .part_unlock matches 1 if score .part_7 .part_unlock matches 1 if score .part_8 .part_unlock matches 1 if score .part_9 .part_unlock matches 1 if score .part_10 .part_unlock matches 1 if score .part_11 .part_unlock matches 1 if score .part_12 .part_unlock matches 1 if score .part_13 .part_unlock matches 1 if score .part_14 .part_unlock matches 1 if score .part_15 .part_unlock matches 1 if score .part_16 .part_unlock matches 1 if score .part_17 .part_unlock matches 1 if score .part_18 .part_unlock matches 1 if score .part_19 .part_unlock matches 1 if score .part_20 .part_unlock matches 1 if score .part_21 .part_unlock matches 1 if score .part_22 .part_unlock matches 1 if score .part_23 .part_unlock matches 1 if score .part_24 .part_unlock matches 1 if score .part_25 .part_unlock matches 1 if score .part_26 .part_unlock matches 1 run advancement grant @a only particle:all