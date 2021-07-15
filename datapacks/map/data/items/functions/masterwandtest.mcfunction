tag @s remove glass
execute if entity @e[name=NArrow,distance=..5] if block ~ ~ ~ black_stained_glass unless entity @s[tag=glass] run tag @s add glass
execute if entity @e[name=PS,distance=..9] if block ~ ~ ~ white_stained_glass unless entity @s[tag=glass] run tag @s add glass

particle minecraft:crit ^ ^-.15 ^ 0 0 0 0 1 force

execute if entity @s[tag=!mw] unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ purple_wool unless entity @s[tag=glass] unless block ~ ~ ~ gold_ore run function items:masterwandget

execute as @s[tag=mw1,tag=mw2,tag=!mw] unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ purple_wool unless entity @s[tag=glass] unless block ~ ~ ~ gold_ore run tag @s add mw
execute as @s[tag=mw1,tag=!mw2] unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ purple_wool unless entity @s[tag=glass] unless block ~ ~ ~ gold_ore run tag @s add mw2
execute as @s[tag=!mw1] unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ purple_wool unless entity @s[tag=glass] unless block ~ ~ ~ gold_ore run tag @s add mw1

execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ purple_wool unless block ~ ~ ~ gold_ore run setblock ~ ~ ~ air destroy

execute if block ~ ~ ~ minecraft:purple_wool run tag @s add end
execute if block ~ ~ ~ minecraft:white_stained_glass run tag @s add end
execute if entity @s[tag=glass] run tag @s add end
execute if block ~ ~ ~ gold_ore run tag @s add end
execute if block ~ ~ ~ barrier run tag @s add end
tag @s[tag=mw] add end
