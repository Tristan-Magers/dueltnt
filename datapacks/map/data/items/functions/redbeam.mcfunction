tp @s ^ ^ ^.3
particle minecraft:block minecraft:redstone_block ~ ~1.3 ~ .1 .1 .1 2 4 force
scoreboard players remove @s laserDummy 1
tag @e[tag=beamhit1] remove beamhit1
execute as @s at @s positioned ~-.2 ~0.9 ~-.2 run tag @e[tag=!nohit,tag=!wbeam,distance=..3,dx=0,dz=0,dy=1] add beamhit1
execute as @s at @s positioned ~-.8 ~-0.4 ~-.8 run tag @e[tag=beamhit1,tag=!nohit,tag=!wbeam,distance=..3,dx=0,dz=0,dy=1] add beamhit
execute as @s at @s positioned ~ ~1.4 ~ run function game:inblock
execute as @s[tag=in,scores={laserDummy=1..}] at @s run function items:redbeam
kill @s