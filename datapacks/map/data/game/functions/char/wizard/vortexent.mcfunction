scoreboard players operation @a tntID -= @s tntID

tag @e remove pull_vortex_old
tag @e[tag=pull_vortex] add pull_vortex_old
tag @a[gamemode=adventure,scores={tntID=1..},distance=..9] add pull_vortex
tag @a[gamemode=adventure,scores={tntID=..-1},distance=..9] add pull_vortex
tag @e[type=zombie,distance=..9] add pull_vortex

scoreboard players operation @e[tag=pull_vortex,tag=!pull_vortex_old] vortex_id = @s tntID

scoreboard players operation @a tntID += @s tntID

scoreboard players add @s vortex 1
execute as @s[scores={vortex=..80}] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 2 30 force
particle minecraft:crit ~ ~ ~ 0 0 0 .15 10 force
execute as @s[scores={vortex=40..}] at @s run tag @s add vortex
#execute as @s[scores={vortex=40..}] at @s run function game:vortexdif
execute as @s[scores={vortex=120..}] at @s run kill @e[tag=vortex_box,distance=..2] 
kill @s[scores={vortex=120..}]

effect give @e[tag=vortex_box,distance=..2] minecraft:glowing infinite 0 true

execute as @s[scores={vortex=40}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 0.5

execute as @s[scores={vortex=40}] at @s run team leave @e[tag=vortex_box,limit=1,sort=nearest] 