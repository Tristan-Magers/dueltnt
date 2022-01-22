execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"air\"}",Tags:["orb"]}
execute as @s at @s run tp @e[limit=1,name=air] @p
execute as @s at @s run tp @e[limit=1,name=air] ~ ~1.6 ~
execute as @e[name=air] at @s run function game:hitscan
execute as @e[name=air] at @s run function game:items/orbhit
kill @e[name=air]