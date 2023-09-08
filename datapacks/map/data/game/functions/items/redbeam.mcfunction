particle minecraft:block minecraft:redstone_block ~ ~1.3 ~ .1 .1 .1 2 4 force
scoreboard players remove @s laserDummy 1
tag @e[tag=beamhit1] remove beamhit1
execute positioned ~-.25 ~1.45 ~-.25 as @e[tag=!spectest,tag=!nohit,tag=!wbeam,dx=0] positioned ~-.75 ~-.75 ~-.75 if entity @s[dx=0] run tag @s add beamhit
execute positioned ~ ~1.45 ~ as @e[tag=!spectest,tag=!nohit,tag=!wbeam,dx=0] positioned ~-.75 ~-.75 ~-.75 if entity @s[dx=0] run tag @s add beamhit
execute positioned ~ ~1.4 ~ run function game:physics/inblock
execute as @s[tag=in,scores={laserDummy=1..}] positioned ^ ^ ^.3 run function game:items/redbeam
kill @s
