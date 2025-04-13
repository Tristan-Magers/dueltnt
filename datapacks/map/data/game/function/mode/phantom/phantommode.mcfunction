#scoreboard players set @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] Invis 4
scoreboard players add @r[x=600,y=60,z=600,distance=3..100,gamemode=adventure] phantom 1
execute unless entity @e[tag=powerupitem] run scoreboard players add @r[x=600,y=60,z=600,distance=3..100,gamemode=adventure] phantom 1
execute as @a[scores={phantom=240..}] at @s run summon armor_stand ~ ~100 ~ {Marker:0,Tags:["powerupitem","new"],Small:1,Invulnerable:1,equipment:{head:{id:"minecraft:carrot",count:1}}}
execute as @a[scores={phantom=240..}] at @s run execute as @e[tag=new] at @s run function game:mode/phantom/phantomsummonitem
scoreboard players set @a[scores={phantom=240..}] phantom 0
scoreboard players add @r[x=600,y=60,z=600,distance=3..100,gamemode=adventure] phantomrand 1
scoreboard players set @a[scores={phantomrand=17..}] phantomrand 0

scoreboard players add @e[type=chicken,x=600,y=60,z=600,distance=3..100] chickenbow 1

execute as @a[scores={chickenbow=60}] at @s run tellraw @s [{"text":"Chicken Bow","color":"white","bold":true},{"text":" running out!","color":"red","bold":false}]
execute as @a[scores={chickenbow=1}] at @s run tellraw @s [{"text":"Chicken Bow","color":"white","bold":true},{"text":" expired.","color":"dark_red","bold":false}]

execute as @e[type=chicken,x=600,y=60,z=600,distance=3..100,scores={chickenbow=23..}] at @s run summon tnt
execute as @e[type=chicken,x=600,y=60,z=600,distance=3..100,scores={chickenbow=23..}] at @s run summon tnt
execute as @e[type=chicken,x=600,y=60,z=600,distance=3..100,scores={chickenbow=23..}] at @s run summon tnt
execute as @e[type=chicken,x=600,y=60,z=600,distance=3..100,scores={chickenbow=23..}] at @s run summon tnt
kill @e[type=chicken,x=600,y=60,z=600,distance=3..100,scores={chickenbow=23..}]

scoreboard players remove @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] phantomboost 1
execute as @a[scores={phantomboost=0}] at @s run function game:mode/phantom/phantomboostreset

effect give @e[tag=powerupitem] glowing 10 0
execute as @e[tag=powerupitem] at @s run function game:mode/phantom/powerupitem

#scoreboard players add @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] pglow 1
effect give @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={pglow=160}] glowing 2
scoreboard players set @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={pglow=200..}] pglow 0