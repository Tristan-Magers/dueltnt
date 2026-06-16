execute as @s at @s positioned ~ ~ ~ run particle minecraft:item_snowball ~ ~ ~ .72 .72 .72 0 80 force

tag @a remove owner
execute on origin run tag @s add owner

execute as @s at @s positioned ~ ~-2.1 ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=8},tag=!boosted] at @s run function game:char/gardener/plaguegar
execute as @s at @s positioned ~ ~-1.1 ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=8},tag=!boosted] at @s run function game:char/gardener/plaguegar
execute as @s at @s positioned ~ ~ ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=8},tag=!boosted] at @s run function game:char/gardener/plaguegar

execute as @s at @s positioned ~ ~-2.1 ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=..7}] at @s run function game:char/gardener/plague
execute as @s at @s positioned ~ ~-2.1 ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=9..}] at @s run function game:char/gardener/plague

execute as @s at @s positioned ~ ~-2.1 ~ run effect give @e[distance=..1.75,tag=dummy] minecraft:glowing 4 10
#execute as @s at @s positioned ~ ~-2.1 ~ run effect give @e[distance=..1.75,tag=dummy] minecraft:poison 3 6
execute as @s at @s positioned ~ ~-2.1 ~ run tag @e[distance=..1.75,tag=dummy] add plaguehit

execute as @s at @s positioned ~ ~-1.1 ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=..7}] at @s run function game:char/gardener/plague
execute as @s at @s positioned ~ ~-1.1 ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=9..}] at @s run function game:char/gardener/plague

execute as @s at @s positioned ~ ~-1.1 ~ run effect give @e[distance=..1.75,tag=dummy] minecraft:glowing 4 10
#execute as @s at @s positioned ~ ~-1.1 ~ run effect give @e[distance=..1.75,tag=dummy] minecraft:poison 3 6
execute as @s at @s positioned ~ ~-1.1 ~ run tag @e[distance=..1.75,tag=dummy] add plaguehit

execute as @s at @s positioned ~ ~ ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=..7}] at @s run function game:char/gardener/plague
execute as @s at @s positioned ~ ~ ~ run execute as @a[distance=..1.75,gamemode=adventure,scores={class=9..}] at @s run function game:char/gardener/plague

execute as @s at @s positioned ~ ~ ~ run effect give @e[distance=..1.75,tag=dummy] minecraft:glowing 4 10
#execute as @s at @s positioned ~ ~ ~ run effect give @e[distance=..1.75,tag=dummy] minecraft:poison 3 6
execute as @s at @s positioned ~ ~ ~ run tag @e[distance=..1.75,tag=dummy] add plaguehit

execute as @e[tag=plaguehit] as @a[tag=owner] at @s run function game:char/gardener/harvest3
execute as @e[tag=plaguehit] as @a[tag=owner] at @s run scoreboard players set @s kbarmor 20

tag @a remove boosted

kill @s

tag @a remove owner
tag @e remove plaguehit