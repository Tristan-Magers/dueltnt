scoreboard players operation @e[tag=name_temp,type=marker] tntID -= @s tntID

execute as @s[scores={teamed=..0}] run team join gray @e[tag=name_temp,type=marker,scores={tntID=0}]
execute as @s[scores={teamed=1..},tag=red] run team join red @e[tag=name_temp,type=marker,scores={tntID=0}]
execute as @s[scores={teamed=1..},tag=green] run team join green @e[tag=name_temp,type=marker,scores={tntID=0}]
execute as @s[scores={teamed=1..},tag=blue] run team join blue @e[tag=name_temp,type=marker,scores={tntID=0}]

execute as @s[scores={teamed=1..},tag=red] run tag @e[tag=name_temp,type=marker,scores={tntID=0}] add red_t
execute as @s[scores={teamed=1..},tag=green] run tag @e[tag=name_temp,type=marker,scores={tntID=0}] add green_t
execute as @s[scores={teamed=1..},tag=blue] run tag @e[tag=name_temp,type=marker,scores={tntID=0}] add blue_t

tag @e[tag=name_temp,type=marker,scores={tntID=0}] add active
scoreboard players operation @e[tag=name_temp,type=marker,scores={tntID=0}] stocks_slot = @s stocks_slot

scoreboard players operation @e[tag=name_temp,type=marker] tntID += @s tntID