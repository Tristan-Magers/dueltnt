#
scoreboard players set .player_count_temp .data 0
execute as @a[x=620,y=20,z=620,distance=..100,scores={ingame=1..},gamemode=adventure] run scoreboard players add .player_count_temp .data 1
execute unless score .player_count .data = .player_count_temp .data run scoreboard players set .ui_varify .data 1
scoreboard players operation .player_count .data = .player_count_temp .data

#
function game:ui/slots

execute if score .ui_varify .data matches 1 run function game:ui/varify

execute unless entity @e[scores={countdown=-20..}] as @a[x=620,y=20,z=620,distance=..100] run function game:ui/display_stocks
 