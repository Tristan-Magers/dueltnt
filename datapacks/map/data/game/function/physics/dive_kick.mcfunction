#
scoreboard players set $strength delta.api.launch 11000

#effect clear @s minecraft:levitation

scoreboard players set @s dive_kick 16
scoreboard players set @s[nbt={OnGround:1b}] dive_kick 11

scoreboard players add @s[nbt={OnGround:1b}] timer 6
scoreboard players remove @s[nbt={OnGround:1b}] shift_cool 6

effect give @s[nbt={OnGround:1b},scores={nolev=..8}] minecraft:levitation 1 1 false
scoreboard players set @s[nbt={OnGround:1b},scores={nolev=..8}] nolev 8

execute at @s positioned ^ ^ ^100 run summon marker ~ ~1.6 ~ {Tags:["dive_look"]}
execute as @s positioned ~ ~ ~ run tp @s[x_rotation=-90..10] ~ ~ ~ ~ 10
execute at @s run tp @s ~ ~ ~ ~ ~12
execute at @s positioned ~ ~ ~ run function delta:api/launch_looking
execute unless entity @s[x_rotation=90] at @s run tp @s ~ ~ ~ facing entity @e[tag=dive_look,limit=1,tag=!kill_this]
tag @s remove divekick
tag @e[tag=dive_look] add kill_this

execute as @s at @s run playsound minecraft:entity.firework_rocket.large_blast master @a[distance=..30] ~ ~ ~ 1 1.2 0.5
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch master @a[distance=..30] ~ ~ ~ 1 0.9 0.5

#tag @s add ground_boom