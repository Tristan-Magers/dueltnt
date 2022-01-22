execute as @s[scores={particle=1,parttimer=1}] at @s run particle flame ~ ~.2 ~ .3 .12 .3 .03 1 force
execute as @s[scores={particle=2,parttimer=1..2}] at @s positioned ~ ~.05 ~ run particle dust 0.8 0.8 0.8 2.2 ~ ~.2 ~ .15 .1 .15 0 1 force
execute as @s[scores={particle=2,gpart=1}] at @s positioned ~ ~.05 ~ run particle minecraft:block snow ~ ~.1 ~ .3 .05 .3 0 2
execute as @s[scores={particle=2,gpart=11}] at @s positioned ~ ~.05 ~ run particle minecraft:block snow ~ ~.1 ~ .3 .05 .3 0 2
execute as @s[scores={particle=3,parttimer=1}] at @s run particle dust 1 40 1 1.5 ~ ~.2 ~ .3 .1 .3 2 2 force
execute as @s[scores={particle=3,gpart=1}] at @s run particle dragon_breath ~ ~.1 ~ .5 .1 .5 .04 3 force
execute as @s[scores={particle=4}] at @s run particle enchant ~ ~.1 ~ .5 .5 .5 .1 2 force
execute as @s[scores={particle=5}] at @s run particle minecraft:dust 15277350 20 2 2 ~ ~ ~ .2 .2 .2 0 3 force
execute as @s[scores={particle=6,parttimer=1}] at @s run particle angry_villager ~ ~2.5 ~ .3 .2 .3 0 1 force
execute as @s[scores={particle=6,parttimer=1}] at @s run particle falling_water ~ ~3.1 ~ .25 .3 .25 0 1 force
execute as @s[scores={particle=7}] at @s run particle note ~ ~-.5 ~ .3 .6 .3 0 1 force
execute as @s[scores={particle=8}] at @s run particle witch ~ ~ ~ .3 .2 .3 0 1 force
execute as @s[scores={particle=8}] at @s run particle minecraft:dragon_breath ~ ~ ~ 2.5 0 2.5 .02 1 force
execute as @s[scores={particle=9}] at @s run particle end_rod ~ ~ ~ .2 .2 .2 .05 1 force
execute as @s[scores={particle=9}] at @s run particle crit ~ ~ ~ 1.5 1.5 1.5 .05 1 force
execute as @s[scores={particle=10}] at @s run particle minecraft:totem_of_undying ~ ~.5 ~ .5 1 .5 0 1 force
execute as @s[scores={particle=10}] at @s run particle minecraft:rain ~ ~.2 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=11,gpart=0..2}] at @s run particle minecraft:lava ~ ~.2 ~ .5 .1 .5 0 1 force
execute as @s[scores={particle=11,gpart=5..7}] at @s run particle minecraft:large_smoke ~ ~.2 ~ .32 .1 .32 .03 1 force
execute as @s[scores={particle=12,parttimer=1}] at @s run particle minecraft:heart ~ ~.2 ~ 0.7 0.1 0.7 0 1 force
execute as @s[scores={particle=13,parttimer=1}] at @s run particle minecraft:portal ~ ~1 ~ 1 1 1 0 2 force
execute as @s[scores={particle=13,parttimer=1,spacepart=0}] at @s run particle minecraft:end_rod ~1 ~.9 ~ .1 0 .2 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=1}] at @s run particle minecraft:end_rod ~-1 ~.9 ~ .1 0 .2 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=2}] at @s run particle minecraft:end_rod ~ ~.9 ~1 .2 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=3}] at @s run particle minecraft:end_rod ~ ~.9 ~-1 .2 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=4}] at @s run particle minecraft:end_rod ~.7 ~.9 ~.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=5}] at @s run particle minecraft:end_rod ~-.7 ~.9 ~.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=6}] at @s run particle minecraft:end_rod ~.7 ~.9 ~-.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=7}] at @s run particle minecraft:end_rod ~-.7 ~.9 ~-.7 .1 0 .1 0 1 force

execute as @s[scores={particle=14}] at @s run function game:waterpart

execute as @s[scores={particle=15,gpart=8..9}] at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0 1 force
execute as @s[scores={particle=15,gpart=15..16}] at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0 1 force
execute as @s[scores={particle=15,gpart=1..5}] at @s run particle enchant ~ ~1 ~ .8 .8 .8 0 2 force
execute as @s[scores={particle=15,gpart=1..2}] at @s run particle minecraft:sneeze ~ ~.3 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=15,gpart=10..12}] at @s run particle minecraft:sneeze ~ ~.3 ~ .3 .1 .3 0 1 force

execute as @s[scores={particle=16,parttimer=1}] at @s run particle minecraft:crimson_spore ~ ~-.5 ~ .2 .2 .2 0 2 force @s
execute as @s[scores={particle=16,parttimer=1}] at @s run particle minecraft:smoke ~ ~.22 ~ .4 0 .4 0 3 force @s

execute as @s[scores={particle=17,gpart=4..7}] at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .4 .1 .4 0 1 force @s
execute as @s[scores={particle=17,gpart=14..17}] at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .4 .1 .4 0 1 force @s
execute as @s[scores={particle=17,parttimer=1}] at @s run particle minecraft:white_ash ~ ~1 ~ .4 .5 .4 0 2 force @s
execute as @s[scores={particle=17,gpart=1}] at @s run particle minecraft:soul ~ ~.4 ~ .4 .2 .4 0 1 force @s
execute as @s[scores={particle=17,gpart=10}] at @s run particle minecraft:soul ~ ~.4 ~ .4 .2 .4 0 1 force @s

execute as @s[scores={particle=18,OPp=20..30}] at @s run particle minecraft:warped_spore ~ ~0.5 ~ .5 .3 .5 .08 3 force
execute as @s[scores={particle=18,OPp=0..19}] at @s run particle minecraft:ash ~ ~0.5 ~ .6 .3 .6 .08 1 force
execute as @s[scores={particle=18,OPp=0..19}] at @s run particle minecraft:block nether_portal ~ ~.2 ~ 0.4 0.1 0.4 0.1 1 force

execute as @s[scores={particle=19,OPp=0}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^1.0 ^ ^-.2 0.1 0.1 0.1 10 1 force
execute as @s[scores={particle=19,OPp=10}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^-1.0 ^ ^-.2 0.1 0.1 0.1 10 1 force
execute as @s[scores={particle=19,OPp=20}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^ ^1.0 ^-.2 0.1 0.1 0.1 10 1 force
execute as @s[scores={particle=19,OPp=40}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^0.7 ^0.7 ^-.2 0.1 0.1 0.1 10 1 force
execute as @s[scores={particle=19,OPp=50}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^-0.7 ^0.7 ^-.2 0.1 0.1 0.1 10 1 force

execute as @s[scores={particle=19,OPp=25}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^1.0 ^ ^-.2 0.1 0.1 0.1 10 1 force
execute as @s[scores={particle=19,OPp=35}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^-1.0 ^ ^-.2 0.1 0.1 0.1 10 1 force
execute as @s[scores={particle=19,OPp=45}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^ ^1.0 ^-.2 0.1 0.1 0.1 10 1 force
execute as @s[scores={particle=19,OPp=5}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^0.7 ^0.7 ^-.2 0.1 0.1 0.1 10 1 force
execute as @s[scores={particle=19,OPp=15}] at @s positioned ~ ~1.6 ~ run particle minecraft:note ^-0.7 ^0.7 ^-.2 0.1 0.1 0.1 10 1 force

execute as @s[scores={particle=19}] at @s run particle dust 0.8 0.8 0.8 0.8 ~ ~.2 ~ .6 .1 .6 0 1 force

scoreboard players add @s OPp 1
scoreboard players set @s[scores={OPp=51..}] OPp 0

scoreboard players add @s gpart 1
scoreboard players set @s[scores={gpart=20..}] gpart 0

scoreboard players add @s[scores={particle=13,parttimer=1}] spacepart 1
scoreboard players set @s[scores={spacepart=8..}] spacepart 0

scoreboard players add @s parttimer 1
scoreboard players set @s[scores={parttimer=4..}] parttimer 1