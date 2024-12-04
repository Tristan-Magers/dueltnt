tag @e remove me
tag @s add me

scoreboard players set @s enderc 0

scoreboard players operation @e[type=minecraft:ender_pearl] tntID -= @s tntID

execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] store result score @s x_ender_pos run data get entity @e[type=minecraft:ender_pearl,scores={tntID=0},limit=1] Pos[0] 100
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] store result score @s y_ender_pos run data get entity @e[type=minecraft:ender_pearl,scores={tntID=0},limit=1] Pos[1] 100
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] store result score @s z_ender_pos run data get entity @e[type=minecraft:ender_pearl,scores={tntID=0},limit=1] Pos[2] 100

execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s x_ender_pos -= @s x_ender_pos_t
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s y_ender_pos -= @s y_ender_pos_t
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s z_ender_pos -= @s z_ender_pos_t

execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s x_ender_mot = @s x_ender_pos
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s y_ender_mot = @s y_ender_pos
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s z_ender_mot = @s z_ender_pos

execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s[scores={x_ender_pos_t=0}] x_ender_mot 0
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s[scores={x_ender_pos_t=0}] y_ender_mot 0
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s[scores={x_ender_pos_t=0}] z_ender_mot 0

execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s x_ender_pos += @s x_ender_pos_t
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s y_ender_pos += @s y_ender_pos_t
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s z_ender_pos += @s z_ender_pos_t

execute as @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players add @a[tag=me] enderc 1
execute as @e[type=minecraft:ender_pearl,scores={tntID=0}] at @s if entity @s[y=0,dy=-100] run scoreboard players remove @a[tag=me] enderct 1
execute as @e[type=minecraft:ender_pearl,scores={tntID=0}] at @s if entity @s[y=0,dy=-100] run scoreboard players remove @a[tag=me] enderc 1
execute as @e[type=minecraft:ender_pearl,scores={tntID=0}] at @s if entity @s[y=0,dy=-100] run kill @s

scoreboard players set @s[scores={enderc=2..}] x_ender_pos_t 0
scoreboard players set @s[scores={enderc=2..}] y_ender_pos_t 0
scoreboard players set @s[scores={enderc=2..}] z_ender_pos_t 0
scoreboard players set @s[scores={enderc=2..}] x_ender_pos 0
scoreboard players set @s[scores={enderc=2..}] y_ender_pos 0
scoreboard players set @s[scores={enderc=2..}] z_ender_pos 0
scoreboard players set @s[scores={enderc=2..}] x_ender_mot 0
scoreboard players set @s[scores={enderc=2..}] y_ender_mot 0
scoreboard players set @s[scores={enderc=2..}] z_ender_mot 0

scoreboard players operation @s enderct -= @s enderc

execute as @s[scores={enderct=1}] unless entity @s[scores={x_ender_pos_t=0}] run scoreboard players operation @s dx = @s x_ender_mot
execute as @s[scores={enderct=1}] unless entity @s[scores={x_ender_pos_t=0}] run scoreboard players operation @s dy = @s y_ender_mot
execute as @s[scores={enderct=1}] unless entity @s[scores={x_ender_pos_t=0}] run scoreboard players operation @s dz = @s z_ender_mot
execute as @s[scores={enderct=1,dx=-1000..1000,dz=-1000..1000,dy=-1000..1000}] unless entity @s[scores={x_ender_pos_t=0}] run function game:physics/detailwall
execute as @s[scores={enderct=1,dx=-1000..1000,dz=-1000..1000,dy=-1000..1000}] unless entity @s[scores={x_ender_pos_t=0}] run function game:physics/wall_correct

execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s x_ender_pos_t = @s x_ender_pos
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s y_ender_pos_t = @s y_ender_pos
execute if entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players operation @s z_ender_pos_t = @s z_ender_pos

execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s x_ender_pos_t 0
execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s y_ender_pos_t 0
execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s z_ender_pos_t 0
execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s x_ender_pos 0
execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s y_ender_pos 0
execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s z_ender_pos 0
execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s x_ender_mot 0
execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s y_ender_mot 0
execute unless entity @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players set @s z_ender_mot 0

scoreboard players operation @e[type=minecraft:ender_pearl] tntID += @s tntID

execute as @s[scores={enderct=1,class=0}] run tp @s @s
execute as @s[scores={enderct=1,class=0}] run effect give @s minecraft:levitation 1 8 true

scoreboard players set @s[scores={enderct=1,class=0}] soldier_shifts 5

#execute as @s[scores={enderct=1,class=1}] run tp @s @s
#execute as @s[scores={enderct=1,class=1}] run scoreboard players set @s nolev 12
#execute as @s[scores={enderct=1,class=1}] run effect give @s minecraft:levitation 1 0 true

#execute as @s[scores={enderct=1,class=1}] unless block ~ ~-1 ~ air run summon armor_stand ~ ~0.4 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",fuse:12,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
#execute as @s[scores={enderct=1,class=1}] unless block ~ ~-1 ~ air run summon armor_stand ~ ~0.4 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",fuse:12,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}

execute as @s[scores={enderct=1,class=1}] run tag @s add ender_tnt_land

execute as @s[scores={enderct=1,class=1}] run effect give @s speed 2 2
execute as @s[scores={enderct=1,class=1}] run effect give @s jump_boost 2 4

#execute as @s[scores={enderct=1,class=1}] unless block ~ ~-1 ~ air run summon tnt ~ ~ ~
#execute as @s[scores={enderct=1,class=1}] if block ~ ~-1 ~ air run summon tnt ~ ~-1 ~
#execute as @s[scores={enderct=1,class=1}] if block ~ ~-1 ~ air run effect give @s levitation 1 0 true
#execute as @s[scores={enderct=1,class=1}] if block ~ ~-1 ~ air run scoreboard players set @s nolev 2

#execute as @s[scores={enderct=1,class=1}] run gamerule mobGriefing false
#execute as @s[scores={enderct=1,class=1}] run summon creeper ~ ~ ~ {ingited:1,fuse:0}
#execute as @s[scores={enderct=1,class=1}] run scoreboard players set @s ass_pearl 1

execute as @s[scores={enderct=1,class=2}] run effect give @s minecraft:levitation 1 1 true
execute as @s[scores={enderct=1,class=2}] run scoreboard players set @s nolev 12

execute as @s[x=600,y=60,z=600,distance=6..100,scores={enderct=1}] run playsound entity.enderman.teleport master @a

execute as @s[scores={enderct=1}] at @s run tp @s @s

scoreboard players operation @s enderct = @s enderc