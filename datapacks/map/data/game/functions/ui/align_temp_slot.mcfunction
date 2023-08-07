scoreboard players operation @e[tag=name_temp,type=marker] stocks_slot_t -= @s stocks_slot_t

scoreboard players operation @e[tag=name_temp,type=marker,scores={stocks_slot_t=0},limit=1] stocks_slot = @s stocks_slot

scoreboard players operation @e[tag=name_temp,type=marker] stocks_slot_t += @s stocks_slot_t