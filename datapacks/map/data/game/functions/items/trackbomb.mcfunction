scoreboard players remove @s TBtimer 1

clear @s[scores={TBtimer=109}] redstone

effect clear @s[scores={TBtimer=98}] minecraft:levitation

execute as @s[scores={TBtimer=109}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:1,Silent:1,Invulnerable:1,Tags:["tnttrack"],Invisible:1,ArmorItems:[{},{},{},{Count:1,id:tnt}]}
execute as @s[scores={TBtimer=109}] at @s run scoreboard players operation @e[distance=..0.1,limit=1,tag=tnttrack] tntID = @s tntID
execute as @s[scores={TBtimer=109}] at @s run tp @e[distance=..0.1,limit=1,tag=tnttrack] @p

execute as @s[x=620,y=20,z=620,distance=..100,scores={TBtimer=-1}] at @s run item replace entity @s hotbar.3 with minecraft:emerald[custom_name='{"italic":false,"text":"§bPhantom Blocks §r: Right-click"}',potion_contents={custom_color:0,custom_effects:[{id:"minecraft:levitation",amplifier:2,duration:55},{id:"minecraft:blindness",amplifier:1,duration:75},{id:"minecraft:glowing",amplifier:1,duration:65}]}]

execute as @s[x=620,y=20,z=620,distance=..100,scores={TBtimer=1000}] at @s run item replace entity @s hotbar.3 with minecraft:redstone[custom_name='{"italic":false,"text":"§cTracking Bomb §r: Right-click"}',potion_contents={custom_color:0,custom_effects:[{id:"minecraft:levitation",amplifier:2,duration:55},{id:"minecraft:blindness",amplifier:1,duration:75},{id:"minecraft:glowing",amplifier:1,duration:65}]}]
scoreboard players set @s[x=620,y=20,z=620,distance=..100,scores={TBtimer=1000}] TBtimer -1000

scoreboard players operation @s[scores={TBtimer=105}] TBtimer -= @s trapper_swap_extra