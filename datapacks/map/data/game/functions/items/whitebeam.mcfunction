particle minecraft:spit ~ ~1.3 ~ 0 0 0 0 1 force
scoreboard players remove @s laserDummy 1
#execute as @s at @s positioned ~-.5 ~-0.7 ~-.5 run tag @e[tag=!nohit,tag=!wbeam,distance=..3,dx=0,dz=0,dy=1] add beamhit
execute as @s at @s positioned ~ ~1.4 ~ run function game:physics/inblock
execute as @s[tag=in,scores={laserDummy=1..}] positioned ^ ^ ^.3 run function game:items/whitebeam
kill @s
