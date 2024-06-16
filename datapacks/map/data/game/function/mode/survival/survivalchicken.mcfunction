execute as @s[scores={survival=2}] run tellraw @p [{"text":"[","bold":true},{"text":"WARNING","color":"red","bold":true},{"text":"] A ","bold":true},{"text":"CHICKEN","color":"gold","bold":true},{"text":" has spawned. Kill it QUICKLY!","bold":true}]

execute as @s[scores={survival=402},tag=!angryText] run tellraw @p [{"text":"[","bold":true},{"text":"WARNING!!!","color":"dark_red","bold":true},{"text":"] A ","bold":true},{"text":"CHICKEN","color":"gold","bold":true},{"text":" is getting angry. Kill it IMMEDIATELY!!","bold":true}]
execute as @s[scores={survival=402}] run tag @s add angryText

scoreboard players set @s[scores={survival=400..},nbt={OnGround:0b}] survival 400

execute as @s[scores={survival=400}] run team leave @s
execute as @s[scores={survival=402}] run team join madChick @s

execute as @s[scores={survival=500}] run summon wither ~ ~10 ~
execute as @s[scores={survival=500}] run kill @s 