execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~ 45 ~1 {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}
execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~1 45 ~1 {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}
execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~1 45 ~-1 {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}
execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~1 45 ~ {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}
execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~-1 45 ~1 {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}
execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~-1 45 ~-1 {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}
execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~-1 45 ~ {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}
execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~ 45 ~-1 {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}
execute as @a[distance=.1..100,gamemode=adventure] at @s run summon armor_stand ~ 45 ~ {CustomName:"{\"text\":\"acid\"}",Small:1,Invulnerable:1,Invisible:1,Marker:0}

execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:weather.rain.above master @s ~ ~ ~ 1 0
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:weather.rain master @s ~ ~ ~ 1 0
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ .3 0
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 0

function game:player/class_team
tellraw @a [{"selector":"@s"},{"text":" used ","color":"gray","bold":false},{"text":"Acid Rain","color":"dark_green","bold":true}]

clear @s apple
