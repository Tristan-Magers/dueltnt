#shovel
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=..0}] at @s run clear @s diamond_shovel
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,garboost=..0}] at @s run clear @s golden_shovel

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,garboost=1}] at @s run function game:char/gardener/give/bow

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=..0,garboost=..0},nbt=!{Inventory:[{id:"minecraft:stone_shovel",Slot:1b}]}] at @s run function game:char/gardener/give/shovel_normal

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=..0,garboost=1..},nbt=!{Inventory:[{id:"minecraft:golden_shovel",Slot:1b}]}] at @s run function game:char/gardener/give/shovel_plague

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=1..},nbt=!{Inventory:[{id:"minecraft:diamond_shovel",Slot:1b}]},nbt={OnGround:0b}] at @s run function game:char/gardener/give/shovel_extreme

#boost
execute as @a[gamemode=adventure,scores={class=8,garboost=3}] at @s run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 2
execute as @a[gamemode=adventure,scores={class=8,garboost=3}] at @s run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 0
execute as @a[gamemode=adventure,scores={class=8,garboost=3}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2

#life boost
scoreboard players add @s gardlife 1
execute if score @s Lives >= Lives_start game run scoreboard players set @s gardlife 0
execute as @s[scores={gardlife=800,Lives=..6}] at @s run function game:player/class_team
execute as @s[scores={gardlife=800,Lives=..6}] at @s run tellraw @a [{"selector":"@s"},{"text":" gained an ","color":"gray","bold":false},{"text":"Extra Life","color":"green","bold":true}]
scoreboard players add @s[scores={gardlife=800..,Lives=..6}] Lives 1
execute as @s[scores={gardlife=800,Lives=..7}] at @s run function game:ui/name_markers
scoreboard players set @s[scores={gardlife=800..}] gardlife 0
scoreboard players set @s[scores={Lives=7..}] gardlife 0

#> Particle Trail cosmetic
# Implemented by TheViralMelon
execute unless score d1f4d3f7-02c6-40e8-a2ff-1d7b5385f5eb Woa1ParticleTrail = #woa1TrailVal .num run function game:tournament_rewards/woa1/trail_dict
execute as @e[tag=WoaTrail,scores={arrowTime=2..}] at @s unless score #woa1TrailVal .num matches 0 run function game:tournament_rewards/woa1/trail with storage game:woa1 particleTrail