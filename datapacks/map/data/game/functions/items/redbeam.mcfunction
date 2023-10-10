particle minecraft:block minecraft:redstone_block ~ ~1.3 ~ .1 .1 .1 2 2 force
scoreboard players remove @s laserDummy 1
tag @e[tag=beamhit1] remove beamhit1
execute positioned ~-0.25 ~1.3 ~-0.25 as @e[tag=!spectest,tag=!nohit,tag=!wbeam,dx=0] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add beamhit
execute positioned ~ ~1.4 ~ run function game:physics/inblock
execute as @s[tag=in,scores={laserDummy=1..}] positioned ^ ^ ^.1 run function game:items/redbeam
kill @s
