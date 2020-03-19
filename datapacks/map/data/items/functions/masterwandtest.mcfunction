particle minecraft:crit ^ ^-.15 ^ 0 0 0 0 1 force

execute if entity @s[tag=!mw] unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ gold_ore run function items:masterwandget

execute as @s[tag=mw1,tag=mw2,tag=!mw] unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ gold_ore run tag @s add mw
execute as @s[tag=mw1,tag=!mw2] unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ gold_ore run tag @s add mw2
execute as @s[tag=!mw1] unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ gold_ore run tag @s add mw1

execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ gold_ore run setblock ~ ~ ~ air destroy

execute if block ~ ~ ~ barrier run tag @s add end
tag @s[tag=mw] add end
