execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"snowscan\"}"}
execute as @s at @s run tp @e[limit=1,name=snowscan] @s
execute as @s at @s run tp @e[limit=1,name=snowscan] ~ ~1.6 ~
execute as @e[name=snowscan] at @s run function game:char/shard/snowman/hitscan
execute as @e[name=snowscan] at @s run tp @s ^ ^ ^-.11
execute as @e[name=snowscan] at @s run function game:char/shard/snowman/hit
kill @e[name=snowscan]