scoreboard players remove @s TBtimer 1

clear @s[scores={TBtimer=139}] redstone

effect clear @s[scores={TBtimer=128}] minecraft:levitation

execute as @s[scores={TBtimer=139}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:1,Silent:1,Invulnerable:1,Tags:["tnttrack"],Invisible:1,equipment:{head:{id:"minecraft:tnt",count:1}}}
execute as @s[scores={TBtimer=139}] at @s run scoreboard players operation @e[distance=..0.1,limit=1,tag=tnttrack] tntID = @s tntID
execute as @s[scores={TBtimer=139}] at @s run tp @e[distance=..0.1,limit=1,tag=tnttrack] @p

execute as @s[x=620,y=20,z=620,distance=..100,scores={TBtimer=-1}] run function game:char/trapper/give/phantom_blocks

execute as @s[x=620,y=20,z=620,distance=..100,scores={TBtimer=1000}] run function game:char/trapper/give/tracking_bomb
scoreboard players set @s[x=620,y=20,z=620,distance=..100,scores={TBtimer=1000}] TBtimer -1000

scoreboard players operation @s[scores={TBtimer=127}] TBtimer -= @s trapper_swap_extra