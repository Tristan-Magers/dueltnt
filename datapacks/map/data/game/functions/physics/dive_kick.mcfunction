scoreboard players set $strength delta.api.launch 15000

effect clear @s minecraft:levitation

execute as @s positioned ~ ~ ~ run summon marker ^ ^0.02 ^4 {Tags:["dive_look"]}
tp @s[x_rotation=-90..30] ~ ~ ~ ~ 50
tp @s ~ ~ ~ ~ ~6
execute as @s at @s run function delta:api/launch_looking
tp @s ~ ~ ~ facing entity @e[tag=dive_look,limit=1,tag=!kill]
tag @s remove divekick
tag @e[tag=dive_look] add kill

tag @s add ground_boom