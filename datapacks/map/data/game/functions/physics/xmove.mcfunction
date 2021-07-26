execute as @s at @s positioned ~ ~ ~ run tp @s[scores={tDirX=1..}] ~ ~.04 ~
execute as @s at @s positioned ~ ~ ~ run tp @s[scores={tDirX=..-1}] ~ ~-.04 ~

scoreboard players remove @s[scores={tDirX=1..}] tDirX 1
scoreboard players add @s[scores={tDirX=..-1}] tDirX 1

execute as @s[scores={tDirX=1..}] at @s run function game:physics/xmove
execute as @s[scores={tDirX=..-1}] at @s run function game:physics/xmove

execute as @s at @s positioned ~ ~ ~ unless block ~ ~ ~.1 air unless block ~ ~ ~.1 snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~ ~ ~-.1 air unless block ~ ~ ~-.1 snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~.1 ~ ~ air unless block ~.1 ~ ~ snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~-.1 ~ ~ air unless block ~-.1 ~ ~ snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~ ~.1 ~ air unless block ~ ~.1 ~ snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~ ~-.1 ~ air unless block ~ ~-.1 ~ snow run tag @s add boom

execute as @s at @s positioned ~ ~-.8 ~ if entity @e[type=slime,distance=..1.8] run tag @s add boom
execute as @s at @s positioned ~ ~-.6 ~ if entity @e[type=magma_cube,distance=..1.6] run tag @s add boom

scoreboard players set @s[tag=boom] tDirX 0