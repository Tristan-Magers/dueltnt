scoreboard players operation @e[tag=stock_temp,type=marker] stocks_slot -= @s stocks_slot

tag @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] add active

execute as @s[scores={teamed=1..},tag=red] run tag @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] add red_t
execute as @s[scores={teamed=1..},tag=green] run tag @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] add green_t
execute as @s[scores={teamed=1..},tag=blue] run tag @e[tag=stock_temp,type=marker,scores={stocks_slot=0},limit=1] add blue_t

scoreboard players operation @e[tag=stock_temp,type=marker] stocks_slot += @s stocks_slot