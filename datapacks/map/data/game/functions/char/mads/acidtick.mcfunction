execute as @s at @s positioned ~ ~-.1 ~ unless block ~ ~ ~ air run playsound minecraft:block.stone.break master @a ~ ~ ~ .45 1

execute as @s at @s positioned ~ ~ ~ run setblock ~ ~ ~ air

tag @s remove g
execute as @s at @s unless block ~.3 ~-.1 ~.3 air run tag @s add g
execute as @s at @s unless block ~-.3 ~-.1 ~.3 air run tag @s add g
execute as @s at @s unless block ~.3 ~-.1 ~-.3 air run tag @s add g
execute as @s at @s unless block ~-.3 ~-.1 ~-.3 air run tag @s add g

execute as @s[tag=g] at @s run tp @s ~ ~-.1 ~

scoreboard players set @s acidTimer 0