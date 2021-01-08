scoreboard players remove @s TBtimer 1

clear @s[scores={TBtimer=239}] redstone

effect clear @s[scores={TBtimer=228}] minecraft:levitation

scoreboard players remove @s[scores={TBtimer=200}] TBtimer 40

execute as @s[scores={TBtimer=239}] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:1,Invulnerable:1,Tags:["tnttrack"],Invisible:1,ArmorItems:[{},{},{},{Count:1,id:tnt}]}
execute as @s[scores={TBtimer=239}] at @s run scoreboard players operation @e[distance=..0.1,limit=1,tag=tnttrack] tntID = @s tntID
execute as @s[scores={TBtimer=239}] at @s run tp @e[distance=..0.1,limit=1,tag=tnttrack] @p

execute as @s[x=620,y=20,z=620,distance=..100,scores={TBtimer=-1}] at @s run replaceitem entity @s hotbar.4 minecraft:redstone{CustomPotionColor:0,CustomPotionEffects:[{Id:25,Amplifier:2,Duration:55},{Id:15,Amplifier:1,Duration:75},{Id:24,Amplifier:1,Duration:65}],display:{Name:"{\"italic\":false,\"text\":\"§cTracking Bomb §r: Right-click\"}"}}
