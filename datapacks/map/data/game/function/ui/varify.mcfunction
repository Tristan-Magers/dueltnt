tag @e[tag=name_temp,type=marker] remove active
tag @e[tag=stock_temp,type=marker] remove active

tag @e[tag=name_temp,type=marker] remove red_t
tag @e[tag=name_temp,type=marker] remove blue_t
tag @e[tag=name_temp,type=marker] remove green_t
tag @e[tag=stock_temp,type=marker] remove red_t
tag @e[tag=stock_temp,type=marker] remove blue_t
tag @e[tag=stock_temp,type=marker] remove green_t

function game:ui/slots

execute as @a[x=620,y=20,z=620,distance=..100,scores={ingame=1..},gamemode=adventure] run function game:ui/name_markers

execute unless entity @e[name=Map,type=armor_stand,scores={countdown=-20..}] as @a[x=620,y=20,z=620,distance=..100,scores={ingame=1..},gamemode=adventure] run function game:ui/toggle_stocks
execute unless entity @e[name=Map,type=armor_stand,scores={countdown=-20..}] as @a[x=620,y=20,z=620,distance=..100,scores={ingame=1..},gamemode=adventure] run function game:ui/toggle_name

scoreboard players set .ui_varify .data 0