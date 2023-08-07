execute as @s at @s positioned ~ ~ ~ run tp @s[scores={tDirY=1..}] ~.048 ~ ~
execute as @s at @s positioned ~ ~ ~ run tp @s[scores={tDirY=..-1}] ~-.048 ~ ~

scoreboard players remove @s[scores={tDirY=1..}] tDirY 1
scoreboard players add @s[scores={tDirY=..-1}] tDirY 1

#execute as @s[scores={tDirY=1..}] at @s run function game:physics/ymove
#execute as @s[scores={tDirY=..-1}] at @s run function game:physics/ymove

execute as @s[scores={t4=..10}] at @s positioned ~.1 ~ ~ run function game:physics/inblock
execute as @s[tag=in,scores={t4=..10}] at @s positioned ~-.1 ~ ~ run function game:physics/inblock
execute as @s[tag=in,scores={t4=..10}] at @s positioned ~ ~ ~.1 run function game:physics/inblock
execute as @s[tag=in,scores={t4=..10}] at @s positioned ~ ~ ~-.1 run function game:physics/inblock
execute as @s[tag=in,scores={t4=..10}] at @s positioned ~ ~.1 ~ run function game:physics/inblock
execute as @s[tag=in,scores={t4=..10}] at @s positioned ~ ~-.1 ~ run function game:physics/inblock

execute as @s[scores={t4=11..}] at @s positioned ~.3 ~ ~ run function game:physics/inblock
execute as @s[tag=in,scores={t4=11..}] at @s positioned ~-.3 ~ ~ run function game:physics/inblock
execute as @s[tag=in,scores={t4=11..}] at @s positioned ~ ~ ~.3 run function game:physics/inblock
execute as @s[tag=in,scores={t4=11..}] at @s positioned ~ ~ ~-.3 run function game:physics/inblock
execute as @s[tag=in,scores={t4=11..}] at @s positioned ~ ~.1 ~ run function game:physics/inblock
execute as @s[tag=in,scores={t4=11..}] at @s positioned ~ ~-.1 ~ run function game:physics/inblock

tag @s[tag=!in] add boom

execute as @s at @s positioned ~ ~-.8 ~ if entity @e[type=slime,distance=..1.8] run tag @s add boom
execute as @s at @s positioned ~ ~-.6 ~ if entity @e[type=magma_cube,distance=..1.6] run tag @s add boom

scoreboard players set @s[tag=boom] tDirY 0