scoreboard players operation @a tntID -= @s tntID
#tag @a[scores={tntID=0}] add timebnohit

execute as @s at @s run particle minecraft:dolphin ~ ~1 ~ 1.5 1.5 1.5 0.25 30 force
execute as @s at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0 20 force
execute as @s at @s run particle minecraft:sweep_attack ~ ~1 ~ 1.5 1.5 1.5 0 40 force

execute as @s at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @s at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 0
execute as @s at @s run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0

execute as @s at @s positioned ~ ~ ~ run scoreboard players set @a[distance=..3.5,tag=!timebnohit] time_pos 20

execute as @s at @s positioned ~ ~ ~ run execute as @a[distance=..3.5] at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 1 1.3
execute as @s at @s positioned ~ ~ ~ run execute as @a[distance=..3.5] at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 1 0.7

execute as @s at @s positioned ~ ~ ~ run effect give @a[distance=..3.5,tag=!timebnohit] minecraft:blindness 1 1 true
execute as @s at @s positioned ~ ~ ~ run effect give @a[distance=..3.5,tag=!timebnohit] minecraft:slowness 2 1 true

execute as @s at @s positioned ~ ~ ~ run effect give @a[distance=..3.5,tag=timebnohit] minecraft:blindness 2 1 true
execute as @s at @s positioned ~ ~ ~ run effect give @a[distance=..3.5,tag=timebnohit] minecraft:slowness 2 2 true

tag @a remove timebnohit
scoreboard players operation @a tntID += @s tntID