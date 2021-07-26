execute as @s at @s positioned ~ ~ ~ run tp @s[scores={tDirZ=1..}] ~ ~ ~.0012
execute as @s at @s positioned ~ ~ ~ run tp @s[scores={tDirZ=..-1}] ~ ~ ~-.0012

scoreboard players remove @s[scores={tDirZ=1..}] tDirZ 1
scoreboard players add @s[scores={tDirZ=..-1}] tDirZ 1

execute as @s[scores={tDirZ=1..}] at @s run function game:physics/zmove
execute as @s[scores={tDirZ=..-1}] at @s run function game:physics/zmove

execute as @s at @s positioned ~ ~ ~ unless block ~ ~ ~.1 air unless block ~ ~ ~.1 snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~ ~ ~-.1 air unless block ~ ~ ~-.1 snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~.1 ~ ~ air unless block ~.1 ~ ~ snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~-.1 ~ ~ air unless block ~-.1 ~ ~ snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~ ~.1 ~ air unless block ~ ~.1 ~ snow run tag @s add boom
execute as @s at @s positioned ~ ~ ~ unless block ~ ~-.1 ~ air unless block ~ ~-.1 ~ snow run tag @s add boom

execute as @s at @s positioned ~ ~-.8 ~ if entity @e[type=slime,distance=..1.8] run tag @s add boom
execute as @s at @s positioned ~ ~-.6 ~ if entity @e[type=magma_cube,distance=..1.6] run tag @s add boom

scoreboard players set @s[tag=boom] tDirZ 0