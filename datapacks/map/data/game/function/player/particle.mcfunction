execute as @s[scores={particle=1,parttimer=1}] at @s run particle flame ~ ~.2 ~ .3 .12 .3 .03 1 force
execute as @s[scores={particle=1,parttimer=2}] at @s run particle minecraft:block{block_state: 'minecraft:fire'} ~ ~.3 ~ .3 .12 .3 .03 1 force
execute as @s[scores={particle=2}] at @s positioned ~ ~.05 ~ run particle minecraft:dust{color:[0.8, 0.8, 0.8], scale:2.2} ~ ~.2 ~ .15 .1 .15 0.1 1 force
execute as @s[scores={particle=2,gpart=1}] at @s positioned ~ ~.05 ~ run particle minecraft:block{block_state: 'minecraft:snow'} ~ ~.2 ~ .4 .05 .4 0 2
execute as @s[scores={particle=2,gpart=11}] at @s positioned ~ ~.05 ~ run particle minecraft:block{block_state: 'minecraft:snow'} ~ ~.2 ~ .4 .05 .4 0 2
#execute as @s[scores={particle=2,parttimer=1}] at @s positioned ~ ~.05 ~ run particle minecraft:spit ~ ~.1 ~ .3 0 .3 0 1
execute as @s[scores={particle=2,parttimer=1}] at @s rotated ~ 0 positioned ^ ^ ^-0.8 run particle minecraft:poof ~ ~.1 ~ .3 0 .3 0 1
execute as @s[scores={particle=3,parttimer=1}] at @s run particle minecraft:dust{color:[1.0, 40.0, 1.0], scale:1.5} ~ ~.2 ~ .3 .1 .3 2 2 force
execute as @s[scores={particle=3,gpart=1}] at @s rotated ~ 0 positioned ^ ^ ^-0.8 run particle dragon_breath ~ ~.1 ~ .4 .1 .4 .04 3 force
execute as @s[scores={particle=4}] at @s run particle enchant ~ ~.1 ~ .5 .5 .5 .1 2 force
execute as @s[scores={particle=5}] at @s run particle minecraft:dust{color:[15277350.0, 20.0, 2.0], scale:2.0} ~ ~ ~ .2 .2 .2 0 3 force
execute as @s[scores={particle=6,parttimer=1}] at @s positioned ~ ~1.6 ~ positioned ^ ^0.7 ^-0.7 run particle angry_villager ~ ~.1 ~ .3 .2 .3 0 1 force
execute as @s[scores={particle=6,parttimer=1}] at @s positioned ~ ~1.6 ~ positioned ^ ^0.7 ^-0.7 run particle falling_water ~ ~ ~ .25 .3 .25 0 1 force
execute as @s[scores={particle=7,parttimer=1}] at @s run particle note ~ ~.2 ~ .3 .1 .3 0.5 1 force
execute as @s[scores={particle=8}] at @s rotated ~ 0 positioned ^ ^ ^-0.6 run particle witch ~ ~0.2 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=8}] at @s run particle minecraft:dragon_breath ~ ~ ~ 2.5 0 2.5 .02 1 force
execute as @s[scores={particle=9,parttimer=1}] at @s run particle end_rod ~ ~.2 ~ .2 .1 .2 .05 1 force
execute as @s[scores={particle=9,parttimer=1}] at @s positioned ~ ~1.6 ~ run particle crit ^ ^-0.8 ^-1 1.5 1 1.5 .05 1 force
execute as @s[scores={particle=9,parttimer=2}] at @s run particle end_rod ~ ~.2 ~ .2 .1 .2 .05 1 force
execute as @s[scores={particle=9,parttimer=2}] at @s positioned ~ ~1.6 ~ run particle crit ^ ^-0.8 ^-1 1 1 1 .05 1 force
execute as @s[scores={particle=10,parttimer=2}] at @s rotated ~ 0 positioned ^ ^ ^-1 run particle minecraft:totem_of_undying ~ ~1.7 ~ .4 0.4 .4 0 1 force
execute as @s[scores={particle=10,parttimer=3}] at @s rotated ~ 0 positioned ^ ^ ^-1 run particle minecraft:block{block_state: 'minecraft:kelp_plant'} ~ ~1.6 ~ .4 0.4 .4 0 1 force
execute as @s[scores={particle=10,parttimer=2}] at @s rotated ~ 0 positioned ^0.6 ^ ^-1 run particle dolphin ~ ~1.0 ~ .2 0.5 .2 0 1 force
execute as @s[scores={particle=10,parttimer=1}] at @s rotated ~ 0 positioned ^-0.6 ^ ^-1 run particle dolphin ~ ~1.0 ~ .2 0.5 .2 0 1 force
execute as @s[scores={particle=10}] at @s run particle minecraft:rain ~ ~.2 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=11,gpart=0}] at @s rotated ~ 0 positioned ^0.65 ^ ^-0.65 run particle minecraft:lava ~ ~.2 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=11,gpart=1}] at @s rotated ~ 0 positioned ^-0.65 ^ ^-0.65 run particle minecraft:lava ~ ~.2 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=11,gpart=2}] at @s rotated ~ 0 positioned ^0.65 ^ ^-0.65 run particle minecraft:lava ~ ~.2 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=11,gpart=3}] at @s rotated ~ 0 positioned ^-0.65 ^ ^-0.65 run particle minecraft:lava ~ ~.2 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=11,gpart=5}] at @s rotated ~ 0 positioned ^0.2 ^ ^-0.65 run particle minecraft:large_smoke ~ ~.2 ~ .32 .1 .32 .03 1 force
execute as @s[scores={particle=11,gpart=6}] at @s rotated ~ 0 positioned ^-0.2 ^ ^-0.65 run particle minecraft:large_smoke ~ ~.2 ~ .32 .1 .32 .03 1 force
execute as @s[scores={particle=11,gpart=7}] at @s rotated ~ 0 positioned ^0.2 ^ ^-0.65 run particle minecraft:large_smoke ~ ~.2 ~ .32 .1 .32 .03 1 force
execute as @s[scores={particle=11,gpart=7}] at @s rotated ~ 0 positioned ^-0.2 ^ ^-0.65 run particle minecraft:large_smoke ~ ~.2 ~ .32 .1 .32 .03 1 force

execute as @s[scores={particle=12,gpart=1}] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^-0.7 rotated ~ 0 positioned ^ ^-1 ^-0.5 run particle minecraft:heart ~ ~.8 ~ 0.2 0.1 0.2 0 1 force
execute as @s[scores={particle=12,gpart=7}] at @s positioned ~ ~1.6 ~ positioned ^0.5 ^ ^-0.5 rotated ~ 0 positioned ^ ^-1 ^-0.5 run particle minecraft:heart ~ ~.8 ~ 0.2 0.1 0.2 0 1 force
execute as @s[scores={particle=12,gpart=13}] at @s positioned ~ ~1.6 ~ positioned ^-0.5 ^ ^-0.5 rotated ~ 0 positioned ^ ^-1 ^-0.5 run particle minecraft:heart ~ ~.8 ~ 0.2 0.1 0.2 0 1 force
execute as @s[scores={particle=12,gpart=18}] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^-0.7 rotated ~ 0 positioned ^ ^-1 ^-0.5 run particle minecraft:damage_indicator ~ ~.8 ~ 0.2 0.1 0.2 0 1 force
execute as @s[scores={particle=12,gpart=3}] at @s positioned ~ ~1.6 ~ positioned ^0.5 ^ ^-0.5 rotated ~ 0 positioned ^ ^-1 ^-0.5 run particle minecraft:damage_indicator ~ ~.8 ~ 0.2 0.1 0.2 0 1 force
execute as @s[scores={particle=12,gpart=10}] at @s positioned ~ ~1.6 ~ positioned ^-0.5 ^ ^-0.5 rotated ~ 0 positioned ^ ^-1 ^-0.5 run particle minecraft:damage_indicator ~ ~.8 ~ 0.2 0.1 0.2 0 1 force

execute as @s[scores={particle=13,parttimer=1}] at @s rotated ~ 0 positioned ^0.65 ^ ^-0.65 run particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0 1 force
execute as @s[scores={particle=13,parttimer=3}] at @s rotated ~ 0 positioned ^-0.65 ^ ^-0.65 run particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=0},nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~1 ~.6 ~ .1 0 .2 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=1},nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~-1 ~.6 ~ .1 0 .2 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=2},nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~ ~.6 ~1 .2 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=3},nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~ ~.6 ~-1 .2 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=4},nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~.7 ~.6 ~.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=5},nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~-.7 ~.6 ~.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=6},nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~.7 ~.6 ~-.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=7},nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~-.7 ~.6 ~-.7 .1 0 .1 0 1 force

execute as @s[scores={particle=13,parttimer=1,spacepart=0},nbt={OnGround:0b}] at @s run particle minecraft:end_rod ~1 ~-.1 ~ .1 0 .2 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=1},nbt={OnGround:0b}] at @s run particle minecraft:end_rod ~-1 ~-.1 ~ .1 0 .2 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=2},nbt={OnGround:0b}] at @s run particle minecraft:end_rod ~ ~-.1 ~1 .2 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=3},nbt={OnGround:0b}] at @s run particle minecraft:end_rod ~ ~-.1 ~-1 .2 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=4},nbt={OnGround:0b}] at @s run particle minecraft:end_rod ~.7 ~-.1 ~.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=5},nbt={OnGround:0b}] at @s run particle minecraft:end_rod ~-.7 ~-.1 ~.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=6},nbt={OnGround:0b}] at @s run particle minecraft:end_rod ~.7 ~-.1 ~-.7 .1 0 .1 0 1 force
execute as @s[scores={particle=13,parttimer=1,spacepart=7},nbt={OnGround:0b}] at @s run particle minecraft:end_rod ~-.7 ~-.1 ~-.7 .1 0 .1 0 1 force

execute as @s[scores={particle=14}] at @s run function game:waterpart

execute as @s[scores={particle=15,gpart=8..9}] at @s rotated ~ 0 positioned ^ ^ ^-1 run particle totem_of_undying ~ ~1.4 ~ 0.8 0.6 0.8 0 1 force
execute as @s[scores={particle=15,gpart=15..16}] at @s rotated ~ 0 positioned ^ ^ ^-1 run particle totem_of_undying ~ ~1.4 ~ 0.8 0.6 0.8 0 1 force
execute as @s[scores={particle=15,gpart=1..2}] at @s rotated ~ 0 positioned ^0.6 ^ ^-0.6 run particle enchant ~ ~1 ~ .4 .8 .4 0 2 force
execute as @s[scores={particle=15,gpart=3..4}] at @s rotated ~ 0 positioned ^-0.6 ^ ^-0.6 run particle enchant ~ ~1 ~ .4 .8 .4 0 2 force
execute as @s[scores={particle=15,gpart=5}] at @s rotated ~ 0 positioned ^0.6 ^ ^-0.6 run particle enchant ~ ~1 ~ .4 .8 .4 0 2 force
execute as @s[scores={particle=15,gpart=1..2}] at @s run particle minecraft:sneeze ~ ~.3 ~ .3 .1 .3 0 1 force
execute as @s[scores={particle=15,gpart=10..12}] at @s run particle minecraft:sneeze ~ ~.3 ~ .3 .1 .3 0 1 force

execute as @s[scores={particle=16,parttimer=1}] at @s run particle minecraft:crimson_spore ~ ~-.5 ~ .2 .2 .2 0 2 force @s
execute as @s[scores={particle=16,parttimer=1}] at @s rotated ~ 0 positioned ^ ^ ^-0.6 run particle minecraft:smoke ~ ~.22 ~ .4 0 .4 0 3 force @s

execute as @s[scores={particle=17,gpart=4..7}] at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .4 .1 .4 0 1 force @s
execute as @s[scores={particle=17,gpart=14..17}] at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .4 .1 .4 0 1 force @s
execute as @s[scores={particle=17,parttimer=1}] at @s positioned ~ ~1.6 ~ run particle minecraft:white_ash ^ ^ ^-1 .3 .5 .3 0 2 force @s
execute as @s[scores={particle=17,gpart=1}] at @s run particle minecraft:soul ~ ~.4 ~ .4 .2 .4 0 1 force @s
execute as @s[scores={particle=17,gpart=10}] at @s run particle minecraft:soul ~ ~.4 ~ .4 .2 .4 0 1 force @s

execute as @s[scores={particle=18,OPp=19..30}] at @s positioned ~ ~1.1 ~ run particle minecraft:warped_spore ^ ^ ^-1 .5 .3 .5 .08 3 force
execute as @s[scores={particle=18,OPp=19}] at @s run particle minecraft:ash ~ ~0.5 ~ .6 .3 .6 .08 1 force
#execute as @s[scores={particle=18,OPp=9..18}] at @s run particle minecraft:block{block_state: 'minecraft:nether_portal'} ~ ~.5 ~ 0.2 0.1 0.4 0.1 1 force
execute as @s[scores={particle=18,OPp=18}] at @s run particle minecraft:block{block_state: 'minecraft:nether_portal'} ~ ~.4 ~ 0.4 0.1 0.4 0.2 8 force
execute as @s[scores={particle=18,OPp=43}] at @s run particle minecraft:block{block_state: 'minecraft:nether_portal'} ~ ~.25 ~ 0.4 0.1 0.4 0.1 8 force
execute as @s[scores={particle=18,OPp=25..40,parttimer=1}] at @s run particle minecraft:crit ~ ~.5 ~ 0.4 0.1 0.4 0.1 2 force

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

execute as @s[scores={particle=19}] at @s run particle minecraft:dust{color:[0.8, 0.8, 0.8], scale:0.8} ~ ~.2 ~ .6 .1 .6 0 1 force

execute as @s[scores={particle=20,gpart=1}] at @s run particle minecraft:spore_blossom_air ~ ~0.4 ~ 0.8 0.2 0.8 0 1 force
execute as @s[scores={particle=20,gpart=4}] at @s run particle minecraft:cherry_leaves ~ ~0.5 ~ 0.8 0.25 0.8 0 1 force
execute as @s[scores={particle=20,gpart=9}] at @s run particle minecraft:spore_blossom_air ~ ~0.4 ~ 0.8 0.2 0.8 0 1 force
execute as @s[scores={particle=20,gpart=11}] at @s run particle minecraft:cherry_leaves ~ ~0.5 ~ 0.8 0.25 0.8 0 1 force
execute as @s[scores={particle=20,gpart=17}] at @s run particle minecraft:cherry_leaves ~ ~0.5 ~ 0.8 0.25 0.8 0 1 force

execute as @s[scores={particle=20,fall_cm=1..,jump=..0}] at @s run particle minecraft:block{block_state: 'minecraft:oak_leaves'} ~ ~0.3 ~ 0.35 0.1 0.35 0 10 force
execute as @s[scores={particle=20,jump=1..}] at @s run particle minecraft:block{block_state: 'minecraft:oak_leaves'} ~ ~0.3 ~ 0.35 0.1 0.35 0 10 force

execute as @s[scores={particle=21,OPp=1,parttimer=1}] at @s run particle minecraft:sculk_charge{roll:1} ~ ~0.8 ~ 0.7 0.3 0.7 0 2 force
execute as @s[scores={particle=21,OPp=4,parttimer=1}] at @s run particle minecraft:sculk_charge{roll:0} ~ ~0.8 ~ 0.7 0.3 0.7 0 2 force
execute as @s[scores={particle=21,OPp=10,parttimer=1}] at @s run particle minecraft:sculk_charge{roll:3} ~ ~0.8 ~ 0.7 0.3 0.7 0 2 force
execute as @s[scores={particle=21,OPp=14,parttimer=1}] at @s run particle minecraft:sculk_charge{roll:6} ~ ~0.8 ~ 0.7 0.3 0.7 0 2 force
execute as @s[scores={particle=21,OPp=17..19,parttimer=1}] at @s run particle minecraft:sculk_charge_pop ~ ~0.8 ~ 0.7 0.3 0.7 0 2 force
execute as @s[scores={particle=21,OPp=21..24,parttimer=2}] at @s run particle minecraft:sculk_soul ~0.3 ~0.5 ~0.3 0.5 0.25 0.5 0 1 force
execute as @s[scores={particle=21,OPp=22..25,parttimer=3}] at @s run particle minecraft:sculk_soul ~-0.3 ~0.5 ~-0.3 0.5 0.25 0.5 0 1 force
execute as @s[scores={particle=21,OPp=24..27,parttimer=4}] at @s run particle minecraft:sculk_soul ~0.3 ~0.5 ~-0.3 0.5 0.25 0.5 0 1 force
execute as @s[scores={particle=21,OPp=25..28,parttimer=1}] at @s run particle minecraft:sculk_soul ~-0.3 ~0.5 ~0.3 0.5 0.25 0.5 0 1 force
execute as @s[scores={particle=21,OPp=24..42,parttimer=3}] at @s run particle minecraft:sculk_soul ~ ~0.5 ~ 0.7 0.25 0.7 0 1 force
execute as @s[scores={particle=21,OPp=24..42,parttimer=2}] at @s run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.7 0.25 0.7 0 1 force

#execute as @s[scores={particle=22}] at @s run particle minecraft:dust_color_transition{from_color: [2.0, 2.0, 0.0], scale: 1.0, to_color: [0.0, 0.0, 100.0]} ~ ~1 ~ 1 1 1 0 1 force

execute as @s[scores={particle=22}] at @s run function game:player/particle/speedo

execute as @s[scores={particle=23,parttimer=1}] at @s rotated ~ 0 positioned ~ ~0.9 ~ positioned ^ ^ ^-0.2 run function game:player/particle/wake
execute as @s[scores={particle=23,parttimer=3}] at @s rotated ~ 0 positioned ~ ~0.9 ~ positioned ^ ^ ^-0.2 run function game:player/particle/wake

execute as @s[scores={particle=24,parttimer=1}] at @s rotated ~90 0 positioned ~ ~1.2 ~ positioned ^-0.5 ^ ^ run function game:player/particle/wheel

#scoreboard players add #goobRot particle 1
scoreboard players operation #goobTick particle = #goobRot particle
# tellraw @a {"score":{"objective":"particle","name":"#goobTick"}}
execute as @s[scores={particle=25}] at @s rotated 0 0 positioned ~ ~0.1 ~ run function game:player/particle/goomb
#execute if score #goobRot particle matches 90.. run scoreboard players set #goobRot particle 0

scoreboard players operation #rubixRot particle = #haloTicks particle
execute as @s[scores={particle=26}] at @s rotated 0 0 positioned ~ ~.1 ~ run function game:player/particle/halo
scoreboard players operation #rubixRot particle = #haloTicks particle
execute as @s[scores={particle=26}] at @s rotated 0 0 positioned ~ ~.2 ~ run function game:player/particle/halo2
execute as @s[scores={particle=26}] at @s rotated ~ 0 positioned ~ ~1.6 ~ run function game:player/particle/halo_top

execute as @s[scores={particle=27,parttimer=1}] at @s rotated ~ 0 positioned ^0.3 ^ ^-0.7 run particle minecraft:ominous_spawning ~ ~1 ~ .2 .8 .2 0 2 force
execute as @s[scores={particle=27,parttimer=3}] at @s rotated ~ 0 positioned ^-0.3 ^ ^-0.7 run particle minecraft:ominous_spawning ~ ~1 ~ .2 .8 .2 0 2 force
execute as @s[scores={particle=27,parttimer=2}] at @s rotated ~ 0 positioned ^ ^ ^-0.7 run particle minecraft:trial_omen ~ ~1.4 ~ 0.2 0.2 0.2 0 1 force

execute as @s[scores={particle=28,gpart=1}] at @s rotated ~ 0 positioned ^0.4 ^ ^-0.8 run particle tinted_leaves{color:[0.847,0.831,1.000,1.00]} ~ ~1.8 ~ 0.2 0.2 0.2 0.1 1 normal
execute as @s[scores={particle=28,gpart=4}] at @s rotated ~ 0 positioned ^-0.4 ^ ^-0.8 run particle tinted_leaves{color:[1.000,0.949,0.741,1.00]} ~ ~1.8 ~ 0.2 0.2 0.2 0.1 1 normal

execute as @s[scores={particle=28,gpart=10}] at @s rotated ~ 0 positioned ^-0.4 ^ ^-0.8 run particle tinted_leaves{color:[0.847,0.831,1.000,1.00]} ~ ~1.8 ~ 0.2 0.2 0.2 0.1 1 normal
execute as @s[scores={particle=28,gpart=14}] at @s rotated ~ 0 positioned ^0.4 ^ ^-0.8 run particle tinted_leaves{color:[1.000,0.949,0.741,1.00]} ~ ~1.8 ~ 0.2 0.2 0.2 0.1 1 normal

#>GGC3 Particle
execute if entity @s[scores={particle=500}] run function game:player/particle/ggc3

#> Tournament Particles
execute if entity @a[scores={particle=900..}] run function game:tournament_rewards/particle

scoreboard players add @s OPp 1
scoreboard players set @s[scores={OPp=51..}] OPp 0

scoreboard players add @s gpart 1
scoreboard players set @s[scores={gpart=20..}] gpart 0

scoreboard players add @s[scores={particle=13,parttimer=1}] spacepart 1
scoreboard players set @s[scores={spacepart=8..}] spacepart 0

scoreboard players add @s parttimer 1
scoreboard players set @s[scores={parttimer=4..}] parttimer 1

scoreboard players set @s fall_cm 0
scoreboard players set @s jump 0