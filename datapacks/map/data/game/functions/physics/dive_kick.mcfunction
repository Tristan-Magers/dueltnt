#
scoreboard players set $strength delta.api.launch 11000

#effect clear @s minecraft:levitation

effect give @s[nbt={OnGround:1b}] minecraft:levitation 1 1 false
scoreboard players set @s[nbt={OnGround:1b}] nolev 8

execute at @s positioned ^ ^ ^100 run summon marker ~ ~1.6 ~ {Tags:["dive_look"]}
execute as @s positioned ~ ~ ~ run tp @s[x_rotation=-90..10] ~ ~ ~ ~ 10
execute at @s run tp @s ~ ~ ~ ~ ~12
execute at @s positioned ~ ~ ~ run function delta:api/launch_looking
execute unless entity @s[x_rotation=90] at @s run tp @s ~ ~ ~ facing entity @e[tag=dive_look,limit=1,tag=!kill_this]
tag @s remove divekick
tag @e[tag=dive_look] add kill_this

scoreboard players set @s dive_kick 16

#tag @s add ground_boom