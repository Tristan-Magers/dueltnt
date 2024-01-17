scoreboard players add @s masterb 1
execute as @s[scores={masterb=1}] at @s run tp @s ~ ~1 ~
kill @s[scores={masterb=80}]

particle minecraft:smoke ~ ~-0.1 ~ 0 0 0 0 1 force

execute as @s[tag=!boom,scores={masterb=1..}] at @s run tp ^ ^ ^.22
tag @s remove air
execute as @s[scores={masterb=1..}] at @s if block ~-0.1 ~0.9 ~-0.1 air if block ~-0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~-0.1 air if block ~0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~0.1 air if block ~0.1 ~0.7 ~0.1 air if block ~-0.1 ~0.9 ~0.1 air if block ~-0.1 ~0.7 ~0.1 air run tag @s add air
tag @s[tag=!air,scores={masterb=1..}] add boom

execute as @s[tag=!boom,scores={masterb=1..}] at @s run tp ^ ^ ^.22
tag @s remove air
execute as @s[scores={masterb=1..}] at @s if block ~-0.1 ~0.9 ~-0.1 air if block ~-0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~-0.1 air if block ~0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~0.1 air if block ~0.1 ~0.7 ~0.1 air if block ~-0.1 ~0.9 ~0.1 air if block ~-0.1 ~0.7 ~0.1 air run tag @s add air
tag @s[tag=!air,scores={masterb=1..}] add boom

execute as @s[tag=!boom,scores={masterb=1..}] at @s run tp ^ ^ ^.22
tag @s remove air
execute as @s[scores={masterb=1..}] at @s if block ~-0.1 ~0.9 ~-0.1 air if block ~-0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~-0.1 air if block ~0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~0.1 air if block ~0.1 ~0.7 ~0.1 air if block ~-0.1 ~0.9 ~0.1 air if block ~-0.1 ~0.7 ~0.1 air run tag @s add air
tag @s[tag=!air,scores={masterb=1..}] add boom

execute as @s[tag=!boom,scores={masterb=1..}] at @s run tp ^ ^ ^.22
tag @s remove air
execute as @s[scores={masterb=1..}] at @s if block ~-0.1 ~0.9 ~-0.1 air if block ~-0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~-0.1 air if block ~0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~0.1 air if block ~0.1 ~0.7 ~0.1 air if block ~-0.1 ~0.9 ~0.1 air if block ~-0.1 ~0.7 ~0.1 air run tag @s add air
tag @s[tag=!air,scores={masterb=1..}] add boom

execute as @s[tag=!boom,scores={masterb=1..}] at @s run tp ^ ^ ^.22
tag @s remove air
execute as @s[scores={masterb=1..}] at @s if block ~-0.1 ~0.9 ~-0.1 air if block ~-0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~-0.1 air if block ~0.1 ~0.7 ~-0.1 air if block ~0.1 ~0.9 ~0.1 air if block ~0.1 ~0.7 ~0.1 air if block ~-0.1 ~0.9 ~0.1 air if block ~-0.1 ~0.7 ~0.1 air run tag @s add air
tag @s[tag=!air,scores={masterb=1..}] add boom

execute as @s[tag=boom] at @s run tp ^ ^ ^-.22

execute as @s[tag=boom] at @s run summon block_display ~-0.5 ~0.8 ~-0.5 {NoGravity:1b,Silent:1b,Glowing:1b,block_state:{Name:"minecraft:lapis_ore"},Tags:["gather_storm"],brightness:{sky:15,block:15}}
execute as @s[tag=boom] at @s run team join blue_color @e[limit=1,tag=gather_storm,sort=nearest,tag=!claimed]
execute as @s[tag=boom] at @s run scoreboard players operation @e[limit=1,tag=gather_storm,sort=nearest,tag=!claimed] object_id = @s object_id
execute as @s[tag=boom] at @s run scoreboard players operation @e[limit=1,tag=gather_storm,sort=nearest,tag=!claimed] tntID = @s tntID
execute as @s[tag=boom] at @s run tag @e[limit=1,tag=gather_storm,sort=nearest,tag=!claimed] add claimed

#execute as @s[tag=boom] at @s run summon tnt ~ ~.8 ~ {fuse:19,NoGravity:1,Tags:["storm_tnt"],Glowing:1}
#execute as @s[tag=boom] at @s run team join blue_color @e[limit=1,tag=storm_tnt,sort=nearest,tag=!claimed]
#execute as @s[tag=boom] at @s run scoreboard players operation @e[limit=1,tag=storm_tnt,sort=nearest,tag=!claimed] object_id = @s object_id
#execute as @s[tag=boom] at @s run tag @e[limit=1,tag=storm_tnt,sort=nearest,tag=!claimed] add claimed

kill @s[tag=boom]