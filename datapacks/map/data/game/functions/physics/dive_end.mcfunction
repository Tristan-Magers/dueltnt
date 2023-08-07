#
scoreboard players set $strength delta.api.launch 6000

execute at @s positioned ^ ^ ^100 run summon marker ~ ~1.6 ~ {Tags:["dive_look"]}
execute as @s at @s run tp @s ~ ~ ~ ~ -75
execute as @s at @s run function delta:api/launch_looking
execute unless entity @s[x_rotation=90] run execute as @s at @s run tp @s ~ ~ ~ facing entity @e[tag=dive_look,limit=1,tag=!kill_this]
tag @s remove divekick_end
tag @s remove divekick_end2
tag @e[tag=dive_look] add kill_this