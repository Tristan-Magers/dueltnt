scoreboard players add @s vortex 1
execute as @s[scores={vortex=..80}] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 2 30 force
particle minecraft:crit ~ ~ ~ 0 0 0 .15 10 force
execute as @s[scores={vortex=40..}] at @s run function game:vortexdif
kill @s[scores={vortex=120..}]