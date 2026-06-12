#
execute if entity @s[tag=has_block] at @s if block ~ ~ ~ air run function game:game/rblocks/block_break

#
execute as @s[scores={t1=-2..1}] at @s run scoreboard players remove @s t1 1
execute as @s[scores={t1=2..20}] at @s positioned ~ ~-1 ~ unless entity @a[gamemode=adventure,distance=..2] run scoreboard players remove @s t1 1
execute as @s[scores={t1=21..}] at @s run scoreboard players remove @s t1 1
execute if entity @s[scores={t1=1..60}] at @s run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if entity @s[scores={t1=..0}] if block ~ ~ ~ air at @s run function game:game/rblocks/block_make
