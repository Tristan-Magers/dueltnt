scoreboard players add @s t1 1

execute if entity @p[distance=..1.5,gamemode=adventure] run tag @s add kill2
execute if entity @p[distance=..1.5,gamemode=adventure] run setblock ~ ~ ~ air
execute as @s[scores={t1=320..}] run setblock ~ ~ ~ air

execute if block ~ ~ ~ air run tag @s add kill

execute as @s[tag=kill,tag=!kill2] run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 1 force @a
execute as @s[tag=kill,tag=kill2] run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 4 force @a
execute as @s[tag=kill] run playsound minecraft:block.sculk_shrieker.step master @a ~ ~ ~ 1 2
execute as @s[tag=kill,tag=kill2] run playsound minecraft:block.sculk_catalyst.break master @a ~ ~ ~ 0.8 0.5

kill @s[tag=kill]