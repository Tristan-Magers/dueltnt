execute store result score @s x_pos run data get entity @s Pos[0] 100
execute store result score @s y_pos run data get entity @s Pos[1] 100
execute store result score @s z_pos run data get entity @s Pos[2] 100

scoreboard players operation @s x_pos -= @s x_pos_t
scoreboard players operation @s y_pos -= @s y_pos_t
scoreboard players operation @s z_pos -= @s z_pos_t

scoreboard players operation @s x_mot = @s x_pos
scoreboard players operation @s y_mot = @s y_pos
scoreboard players operation @s z_mot = @s z_pos

scoreboard players operation @s x_pos += @s x_pos_t
scoreboard players operation @s y_pos += @s y_pos_t
scoreboard players operation @s z_pos += @s z_pos_t

scoreboard players operation @s x_pos_t = @s x_pos
scoreboard players operation @s y_pos_t = @s y_pos
scoreboard players operation @s z_pos_t = @s z_pos

scoreboard players operation @s temp = @s x_mot
scoreboard players operation @s temp2 = @s z_mot
scoreboard players operation @s temp3 = @s y_mot

scoreboard players operation @s temp *= @s x_mot
scoreboard players operation @s temp2 *= @s z_mot
scoreboard players operation @s temp3 *= @s y_mot

scoreboard players operation @s temp += @s temp2
execute as @s[scores={temp3=6001..}] run scoreboard players operation @s temp += @s temp3

execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~1.1 ~0.3 ~ 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~-1.1 ~0.3 ~ 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~ ~0.3 ~1.1 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~ ~0.3 ~-1.1 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~.95 ~0.3 ~.55 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~-.95 ~0.3 ~.55 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~.95 ~0.3 ~-.55 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~-.95 ~0.3 ~-.55 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~.55 ~0.3 ~.95 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~-.55 ~0.3 ~.95 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~.55 ~0.3 ~-.95 0 0 0 0 1 force
execute as @s[nbt={OnGround:1b},tag=up_speed] at @s run particle minecraft:spit ~-.55 ~0.3 ~-.95 0 0 0 0 1 force

tag @s[nbt={OnGround:1b}] remove up_speed
tag @s[scores={temp3=6001..}] add up_speed

execute as @s[tag=!up_speed,scores={particle=22,temp=10..200}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:gray_wool"}} ~ ~0.1 ~ 0.1 0.05 0.1 0 1 force
execute as @s[tag=!up_speed,scores={particle=22,temp=201..400}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:light_gray_wool"}} ~ ~0.3 ~ 0.1 0.15 0.1 0 1 force
execute as @s[tag=!up_speed,scores={particle=22,temp=401..600}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:brown_wool"}} ~ ~0.5 ~ 0.1 0.25 0.1 0 1 force
execute as @s[tag=!up_speed,scores={particle=22,temp=601..900}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:orange_wool"}} ~ ~0.7 ~ 0.1 0.35 0.1 0 1 force
execute as @s[tag=!up_speed,scores={particle=22,temp=901..1200}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:yellow_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
execute as @s[tag=!up_speed,scores={particle=22,temp=1201..22001}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:white_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
execute as @s[tag=!up_speed,scores={particle=22,temp=22001..30000}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:light_blue_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
execute as @s[tag=!up_speed,scores={particle=22,temp=30001..70000}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:blue_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
execute as @s[tag=!up_speed,scores={particle=22,temp=70001..}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:purple_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force

execute as @s[tag=up_speed,scores={particle=22,temp=..1500}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:gray_wool"}} ~ ~0.1 ~ 0.1 0.05 0.1 0 1 force
execute as @s[tag=up_speed,scores={particle=22,temp=1501..3500}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:light_gray_wool"}} ~ ~0.3 ~ 0.1 0.15 0.1 0 1 force
execute as @s[tag=up_speed,scores={particle=22,temp=3501..7000}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:brown_wool"}} ~ ~0.5 ~ 0.1 0.25 0.1 0 1 force
execute as @s[tag=up_speed,scores={particle=22,temp=7001..10000}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:orange_wool"}} ~ ~0.7 ~ 0.1 0.35 0.1 0 1 force
execute as @s[tag=up_speed,scores={particle=22,temp=10001..15000}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:yellow_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
execute as @s[tag=up_speed,scores={particle=22,temp=15001..20000}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:white_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
execute as @s[tag=up_speed,scores={particle=22,temp=20001..30000}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:light_blue_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
execute as @s[tag=up_speed,scores={particle=22,temp=30001..70000}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:blue_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
execute as @s[tag=up_speed,scores={particle=22,temp=70001..}] at @s positioned ^ ^ ^-1.5 run particle item{item:{id:"minecraft:purple_wool"}} ~ ~0.8 ~ 0.1 0.4 0.1 0 1 force
