#
#bossbar set minecraft:time visible false

#
execute as @e[type=armor_stand,x=621,y=17,z=617,distance=..100] at @s run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace end_stone
execute as @e[type=armor_stand,x=621,y=17,z=617,distance=..100] at @s run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace blue_ice

execute as @s[scores={NArrow=1..}] at @s run fill ~1 ~-1 ~1 ~-1 ~2 ~-1 air replace #game:bolt_place

execute as @s[type=armor_stand,x=621,y=17,z=617,distance=..100] at @s run fill ~-2 ~-3 ~-2 ~2 ~3 ~2 air replace white_stained_glass
execute as @s[type=armor_stand,x=621,y=17,z=617,distance=..100] at @s run fill ~-2 ~-3 ~-2 ~2 ~3 ~2 air replace blue_ice

tag @e[tag=groundpath] add end_game
execute as @e[tag=groundpath] at @s run function game:char/overlord/groundpath

#kills
kill @e[tag=phantomairmissile]
kill @e[tag=tnttrack]
scoreboard objectives setdisplay sidebar p
kill @e[tag=powerupitem]
kill @e[type=creeper]
kill @e[type=ghast]
kill @e[type=wither]
kill @e[type=chicken,x=620,y=20,z=620,distance=..100]
kill @e[type=skeleton]
tag @e[type=magma_cube] add kill_this
kill @e[type=zombie]
kill @e[name=Portal,type=armor_stand]
#kill @e[name=PS,type=armor_stand]
kill @e[name=acid,type=armor_stand]
kill @e[type=tnt]
kill @e[type=ender_pearl]
kill @e[type=item]
kill @e[type=arrow]
kill @e[type=egg]
kill @e[type=trident]
kill @e[type=minecraft:snow_golem]
tp @e[type=slime] ~ ~-1000 ~
kill @e[type=fireball]
kill @e[type=experience_bottle]
kill @e[type=creeper]
kill @e[tag=telebow]
kill @e[tag=phantom_block]
kill @e[type=minecraft:block_display]

kill @e[type=minecraft:armor_stand,x=621,y=17,z=617,distance=..100]
kill @e[type=minecraft:marker,x=621,y=17,z=617,distance=..100]