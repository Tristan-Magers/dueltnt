particle minecraft:block minecraft:redstone_block ~ ~1.3 ~ .1 .1 .1 2 4 force
scoreboard players remove @s laserDummy 1
tag @e[tag=beamhit1] remove beamhit1
execute positioned ~-.3 ~.9 ~-.3 as @e[tag=!spectest,tag=!nohit,tag=!wbeam,dx=0] positioned ~-.8 ~-.8 ~-.8 if entity @s[dx=0] run tag @s add beamhit
execute positioned ~.3 ~1.6 ~.3 as @e[tag=!spectest,tag=!nohit,tag=!wbeam,dx=0] positioned ~-.8 ~-.8 ~-.8 if entity @s[dx=0] run tag @s add beamhit
execute as @s at @s positioned ~ ~1.4 ~ run function game:physics/inblock
execute as @s[tag=in,scores={laserDummy=1..}] positioned ^ ^ ^.3 run function game:items/redbeam
kill @s
