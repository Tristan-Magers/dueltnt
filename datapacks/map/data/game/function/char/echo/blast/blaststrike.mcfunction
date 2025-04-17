execute as @s at @s positioned ~ ~.22 ~ run tp ^ ^ ^-.29
execute as @s at @s run summon tnt ~ ~ ~ {fuse:3,NoGravity:1}
#summon armor_stand ~ ~1.5 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",fuse:3,NoGravity:1,Tags:["blue_tnt"]}]}

tag @s add hit
kill @s