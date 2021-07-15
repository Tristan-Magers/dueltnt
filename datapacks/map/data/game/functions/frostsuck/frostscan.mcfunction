#execute as @s at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.8
#execute as @s at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ .2 2
#execute as @s at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2

execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"frostscan\"}"}
execute as @s at @s run tp @e[limit=1,name=frostscan] @p
execute as @s at @s run tp @e[limit=1,name=frostscan] ~ ~1.6 ~
execute as @e[name=frostscan] at @s run function game:frostsuck/hitscan
execute as @e[name=frostscan] at @s run function game:frostsuck/frosthit
kill @e[name=frostscan]