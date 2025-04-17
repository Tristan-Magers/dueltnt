execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:["new"],NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:{"italic":false,"text":"snowscan"}}
execute as @s at @s run tp @e[limit=1,name=snowscan,tag=new] @s
execute as @s at @s run tp @e[limit=1,name=snowscan,tag=new] ~ ~2.0 ~
tag @e[name=snowscan] remove new