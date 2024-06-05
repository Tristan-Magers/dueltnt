clear @a[x=620,y=20,z=620,distance=..100]
effect give @a fire_resistance 1000000 255 true

execute as @a at @s run attribute @p minecraft:generic.movement_speed base set .1

execute as @a[scores={class=0},x=620,y=20,z=620,distance=..100] run function game:char/soldier/give/bow
execute as @a[scores={class=0},x=620,y=20,z=620,distance=..100] run function game:char/soldier/give/slimer

item replace entity @a[scores={class=0},x=620,y=20,z=620,distance=..100] hotbar.5 with arrow 2
scoreboard players set @a[scores={class=0},x=620,y=20,z=620,distance=..100] bow -1
execute as @a[scores={class=1},x=620,y=20,z=620,distance=..100] run function game:char/assassin/give/bow
execute as @a[scores={class=1},x=620,y=20,z=620,distance=..100] run function game:char/assassin/give/teleport

execute if entity @e[scores={mode=1}] run item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}',hide_additional_tooltip={}] 12
#item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.1 with minecraft:splash_potion[custom_name='{"italic":false,"text":"§5Primed for Death §r: Right-click"}',potion_contents={custom_color:0,custom_effects:[{Id:2,Amplifier:1,Duration:60},{Id:15,Amplifier:1,Duration:60},{Id:24,Amplifier:1,Duration:60}]}]
scoreboard players set @a[scores={class=1},x=620,y=20,z=620,distance=..100] bow 0
item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.5 with arrow 1
effect give @a[scores={class=1},x=620,y=20,z=620,distance=..100] speed 300 1 true
effect give @a[scores={class=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
execute as @a[scores={class=2},x=620,y=20,z=620,distance=..100] run function game:char/ghost/give/bow
execute as @a[scores={class=2},x=620,y=20,z=620,distance=..100] run function game:char/ghost/give/smoke_bomb {count:2}
item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.5 with minecraft:tipped_arrow[custom_name='{"italic":false,"text":"Magic arrow"}',potion_contents={custom_color:6221823},hide_additional_tooltip={}] 3
scoreboard players set @a[scores={class=2},x=620,y=20,z=620,distance=..100] bow -1
scoreboard players set @a[scores={class=2},x=620,y=20,z=620,distance=..100] snowTime 0
effect give @a[scores={class=2},x=620,y=20,z=620,distance=..100] speed 300 1 true
effect give @a[scores={class=2},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
scoreboard players set @a[x=1000,y=20,z=1000,distance=..300] timer 0
item replace entity @a[x=620,y=20,z=620,distance=..100] hotbar.8 with minecraft:potion[potion_contents={custom_color:16711918},custom_name='{"italic":false,"text":"§dLeave game §r: Right-click"}',hide_additional_tooltip={}]
scoreboard players set @a snow 0
#item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] hotbar.4 with minecraft:leather[custom_name='{"italic":false,"text":"§7Explosive Dart §r: Right-click"}'] 6

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=0}] run function game:char/soldier/give/shift
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=1}] run function game:char/assassin/give/shift

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=2}] run function game:char/ghost/give/paper
execute as @a[scores={class=3},x=620,y=20,z=620,distance=..100] run function game:char/trapper/give/tnttrap

#give @a[scores={class=3},x=620,y=20,z=620,distance=..100] minecraft:bow[damage=80,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§cTNT Trap§r : Throw to switch"}']
execute as @a[scores={class=3},x=620,y=20,z=620,distance=..100] run function game:char/trapper/give/detonator
execute as @a[scores={class=3},x=620,y=20,z=620,distance=..100] run function game:char/trapper/give/mines {count:2}
scoreboard players set @a[scores={class=3},x=620,y=20,z=620,distance=..100] bow -1
#effect give @a[scores={class=3},x=620,y=20,z=620,distance=..100] jump_boost 300 0 true
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=3}] run function game:char/trapper/give/paper
item replace entity @a[scores={class=3},x=620,y=20,z=620,distance=..100] hotbar.5 with arrow 1
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=0}] armor.chest with minecraft:iron_chestplate[unbreakable={show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] armor.chest with minecraft:golden_chestplate[unbreakable={show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] armor.chest with minecraft:leather_chestplate[unbreakable={show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] armor.head with minecraft:leather_helmet[unbreakable={show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=2}] armor.chest with minecraft:diamond_chestplate[unbreakable={show_in_tooltip:false}]
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=4}] run function game:char/assassin/give/shift
item replace entity @a[scores={class=4},x=620,y=20,z=620,distance=..100] hotbar.6 with minecraft:tipped_arrow[custom_name='{"italic":false,"text":"Magic Arrow"}',potion_contents={custom_color:6221823},hide_additional_tooltip={}] 2
scoreboard players set @a[scores={class=4},x=620,y=20,z=620,distance=..100] bow -1

execute as @a[scores={class=4},x=620,y=20,z=620,distance=..100] run function game:char/wizard/give/fireball
execute as @a[scores={class=4},x=620,y=20,z=620,distance=..100] run function game:char/wizard/give/powderize
execute as @a[scores={class=4},x=620,y=20,z=620,distance=..100] run function game:char/wizard/give/teleport

effect give @a[scores={class=4},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true

execute as @a[scores={class=0},x=620,y=20,z=620,distance=..100] run function game:char/soldier/give/teleport {"amount":5}

execute if entity @e[scores={mode=1}] run item replace entity @a[scores={class=0},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}'] 8
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=4}] armor.chest with minecraft:chainmail_chestplate[unbreakable={show_in_tooltip:false}]
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=4}] run function game:char/wizard/give/pig
execute as @a[scores={class=4},x=620,y=20,z=620,distance=..100] at @s run attribute @p minecraft:generic.movement_speed base set .13
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=6}] run function game:char/reaper/give/feather {amount:6}
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.4 with minecraft:feather[custom_name='{"italic":false,"text":"Feather §r: Right-click"}'] 9
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=2}] run function game:char/ghost/give/masslev
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=3}] run function game:char/trapper/give/platform {damage:0}
effect give @a[scores={class=0},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
effect give @a[scores={class=0},x=620,y=20,z=620,distance=..100] speed 300 0 true
item replace entity @a[tag=blue,scores={teamed=1..}] armor.head with minecraft:light_blue_stained_glass[enchantments={binding_curse:1}]
item replace entity @a[tag=red,scores={teamed=1..}] armor.head with minecraft:red_stained_glass[enchantments={binding_curse:1}]
item replace entity @a[tag=green,scores={teamed=1..}] armor.head with minecraft:lime_stained_glass[enchantments={binding_curse:1}]
item replace entity @a[scores={teamed=..0}] armor.head with air
item replace entity @a[tag=!team,x=620,y=20,z=620,distance=..100,scores={class=3}] armor.head with minecraft:leather_helmet[unbreakable={show_in_tooltip:false},enchantments={binding_curse:1}]

execute as @a[scores={class=1},x=620,y=20,z=620,distance=..100] run function game:char/assassin/give/mass_freeze

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=4}] hotbar.4 with minecraft:golden_boots[custom_name='{"italic":false,"text":"§r§bExplode Ghost Creeper §r: Right-click (summoned by crouch)"}',entity_data={id:"pig"},hide_additional_tooltip={}]
#item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=0}] hotbar.3 with minecraft:kelp[custom_name='{"italic":false,"text":"§4Mega Bomb§r §r: Right-click"}',dyed_color=16777215]
execute as @a[scores={class=2},x=620,y=20,z=620,distance=..100] run function game:char/ghost/give/pearl {count:3}
execute if entity @e[scores={mode=1}] run item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}'] 6
execute as @a[scores={class=5},x=620,y=20,z=620,distance=..100] run function game:char/mads/give/acid
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] armor.head with minecraft:diamond_helmet[unbreakable={show_in_tooltip:false}]
effect give @a[scores={class=5},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
effect give @a[scores={class=5},x=620,y=20,z=620,distance=..100] speed 300 0 true
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] armor.head with minecraft:diamond_helmet[unbreakable={show_in_tooltip:false},dyed_color=0]
execute as @a[scores={class=5},x=620,y=20,z=620,distance=..100] run function game:char/mads/give/bow
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] hotbar.6 with arrow 3
scoreboard players set @a[scores={class=5}] bow -2
execute as @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] run function game:char/mads/give/powershield
execute as @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] run function game:char/mads/give/portal
execute as @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] run function game:char/mads/give/shift

execute as @a[scores={class=1},x=620,y=20,z=620,distance=..100] run function game:char/assassin/give/magic_star {"amount":2}

scoreboard players set @a[scores={class=1},x=620,y=20,z=620,distance=..100] star 0
#item replace entity @a[scores={class=6},x=620,y=20,z=620,distance=..100] hotbar.1 with minecraft:iron_hoe[custom_name='{"italic":false,"text":"§aScythe §f: Right-click to throw"}',enchantments={knockback:6},unbreakable={show_in_tooltip:false}]

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=6}] run function game:char/reaper/give/slime
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=6}] run function game:char/reaper/give/creeper {amount:2}

execute as @a[scores={class=6},x=620,y=20,z=620,distance=..100] run function game:char/reaper/give/bow
item replace entity @a[scores={class=6},x=620,y=20,z=620,distance=..100] hotbar.6 with arrow 1
scoreboard players set @a[scores={class=6}] bow 0
effect give @a[scores={class=6},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
execute as @a[scores={class=6},x=620,y=20,z=620,distance=..100] at @s run attribute @s minecraft:generic.movement_speed base set .112

execute as @a[scores={class=0},x=620,y=20,z=620,distance=..100] run function game:char/soldier/give/anvil {"amount":10}

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=6}] run function game:char/gardener/give/gravetrap {"amount":12}
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=8}] run function game:char/gardener/give/gravetrap {"amount":6}

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=1}] run function game:char/assassin/give/sneak_attack {"amount":2}

execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] hotbar.5 with minecraft:mooshroom_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"mooshroom",Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:'{"italic":false,"text":"tnt"}'},custom_name='{"italic":false,"text":"§cSummon TNT §r: Right-click"}'] 12

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=5}] run function game:char/mads/give/tntegg {"amount":3}

execute if entity @e[scores={mode=1}] run execute as @a[x=620,y=20,z=620,distance=..100,scores={class=5}] run function game:char/mads/give/tntegg {"amount":9}

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=3}] run function game:char/trapper/give/tracking_bomb
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=6}] run function game:char/reaper/give/paper

execute as @a[scores={class=2},x=620,y=20,z=620,distance=..100] run function game:char/ghost/give/potion

scoreboard players set @a[scores={class=4},x=620,y=20,z=620,distance=..100] pig -50

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] hotbar.6 with arrow

#item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=4}] hotbar.5 with minecraft:clay_ball[custom_name='{"italic":false,"text":"§bVortex §r: Right-click"}']

item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.0 with minecraft:wooden_pickaxe[unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§9Master Wand §r: Right-click Blocks (throw/offhand to gather)"}',attribute_modifiers={modifiers:[{type:"generic.attack_speed",name:"generic.attack_speed",amount:0.9,operation:"add_value",uuid:[I;2016337811,-1510259727,-1143610979,661859754],slot:"mainhand"},{type:"generic.attack_damage",name:"generic.attack_damage",amount:9,operation:"add_value",uuid:[I;-1708916597,1794000556,-1199725791,1224881908],slot:"mainhand"}],show_in_tooltip:false},lore=['{"italic":false,"color":"white","text":"Mines 3 blocks for material"}','{"italic":false,"color":"white","text":"Reach: 7.8 blocks"}']]
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.1 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}',lore=['{"italic":false,"color":"white","text":"2 TNT"}','{"italic":false,"color":"white","text":"Reload: 1.5s"}','{"italic":false,"color":"white","text":"Fuse: 0.75s"}']]
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.2 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}',lore=['{"italic":false,"color":"white","text":"3x1 TNT"}','{"italic":false,"color":"white","text":"Reload: 3.5s"}','{"italic":false,"color":"white","text":"Delay: 0s, 0.1s, 0.2s"}','{"italic":false,"color":"white","text":"Velocity: 4.4 bps"}']]
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.3 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}',lore=['{"italic":false,"color":"white","text":"Duration: 2.5s"}','{"italic":false,"color":"white","text":"Reload: 5.5s"}','{"italic":false,"color":"white","text":"Max Length: 10 blocks"}']]
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.4 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}',lore=['{"italic":false,"text":"§4Beef"}','{"italic":false,"color":"white","text":"8 TNT"}','{"italic":false,"color":"white","text":"Reload: 7s"}','{"italic":false,"color":"white","text":"Fuse: 0.35s"}','{"italic":false,"color":"white","text":"Levitation 16 for 0.65s"}']]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=9}] hotbar.6 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch to Restore World"}',lore=['{"italic":false,"color":"white","text":"Recreates broken blocks and teleports you up to them"}','{"italic":false,"color":"white","text":"Does not reload"}']]

scoreboard players set @a boomwandtime 0
scoreboard players set @a blastwandtime 0

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=7}] run function game:char/echo/give/boomwand {damage:0}
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=7}] run function game:char/echo/give/blastwand {damage:0}
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=7}] run function game:char/echo/give/skywand
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=7}] run function game:char/echo/give/bow
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.5 with arrow
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=7}] run function game:char/echo/give/paper
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=7}] run function game:char/echo/give/groundspell {amount:2}
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.4 with minecraft:red_dye[custom_name='{"italic":false,"text":"§eGround Spell §r: Right-click"}'] 3

effect give @a[scores={class=7},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
scoreboard players set @a[scores={class=7},x=620,y=20,z=620,distance=..100] bow 0

scoreboard players set @a plaguetimer -1

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=8}] run function game:char/gardener/give/bow

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.7 with minecraft:arrow[custom_name='{"italic":false,"text":"Not your father\'s Blast Off"}']
scoreboard players set @a[scores={class=8},x=620,y=20,z=620,distance=..100] bow 0
scoreboard players set @a[scores={class=8},x=620,y=20,z=620,distance=..100] plaguetimer 160
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=8}] run function game:char/gardener/give/pvp_paper
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=8}] run function game:char/gardener/give/shift
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=8}] run function game:char/gardener/give/lives_paper
team join gardener @a[x=620,y=20,z=620,distance=..100,scores={class=8}]
#team leave @a[x=620,y=20,z=620,distance=..100,scores={class=9..}]
#team leave @a[x=620,y=20,z=620,distance=..100,scores={class=..7}]

execute as @a[scores={class=10},x=620,y=20,z=620,distance=..100] run function game:char/shard/give/bow
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.5 with arrow 3

execute as @a[scores={class=10},x=620,y=20,z=620,distance=..100] run function game:char/shard/give/frosty_poppy

execute as @a[scores={class=10},x=620,y=20,z=620,distance=..100] run function game:char/shard/give/ice_suck
#item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:yellow_dye[custom_name='{"italic":false,"text":"§3Snowman §f§r: Right-click"}']
#item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:trident[custom_name='{"italic":false,"text":"§9Trident §f§r: Right-click"}']

execute as @a[scores={class=10},x=620,y=20,z=620,distance=..100] run function game:char/shard/give/float {"amount":3}

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=10}] run function game:char/shard/give/shift

scoreboard players set @a[scores={class=10},x=620,y=20,z=620,distance=..100] bow -2

effect give @a[scores={class=10},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
execute as @a[scores={class=10},x=620,y=20,z=620,distance=..100] at @s run attribute @p minecraft:generic.movement_speed base set .132
#effect give @a[scores={class=10},x=620,y=20,z=620,distance=..100] speed 300 0 true

#item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.5 with minecraft:coal[custom_name='{"italic":false,"text":"§9Air Missile§r : Right-click"}']

#
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100] at @s run function game:ui/name_markers

#
item modify entity @a weapon.offhand game:model_0

#
scoreboard players set @a click 0

scoreboard players set @a shift 0
scoreboard players set @a timer -1

scoreboard players set @a Sreload 0
scoreboard players set @a[scores={class=6},x=620,y=20,z=620,distance=..100] Sreload 20
scoreboard players set @a endercount 0
scoreboard players set @a potion 0
scoreboard players set @a snowReset 0
scoreboard players set @a XPReset 0
scoreboard players set @a FZtimer 0
scoreboard players set @a BBtimer 0
scoreboard players set @a[scores={class=0}] BBtimer 60
scoreboard players set @a TBtimer -1000
scoreboard players set @a mTtimer 0
scoreboard players set @a PlatTimer 0
scoreboard players set @a PlaceMineTime 0
scoreboard players set @a tntegguse 0
scoreboard players set @a boomwandtime 0
scoreboard players set @a boomcharge 8
scoreboard players set @a blastwandtime 0
scoreboard players set @a airwandtime 0
scoreboard players set @a vortextime 0
scoreboard players set @a[scores={class=4}] vortextime 30
scoreboard players set @a pig -101
scoreboard players set @a groundtime 0
scoreboard players set @a grounduse 0
scoreboard players set @a rjump 0
scoreboard players set @a PStimer 0
scoreboard players set @a acidTimer 0
scoreboard players set @a ghostCrouch 0
scoreboard players set @a timer 0
scoreboard players set @a masterb 0
scoreboard players set @a masterup 0
scoreboard players set @a masterc 0
scoreboard players set @a mastercT 0
scoreboard players set @a trapdraw 0
scoreboard players set @a laserDummy -130
scoreboard players set @a eggtimer -1
scoreboard players set @a misreload 0
#scoreboard players set @a[scores={class=2}] misreload 80
scoreboard players set @a squidegguse 0
scoreboard players set @a alarm 0
scoreboard players set @a matfill 0
scoreboard players set @a gravuse 6
scoreboard players set @a ggravuse 0
scoreboard players set @a garboost 0
scoreboard players set @a enderreload 0
scoreboard players set @a sneakdisable 0
scoreboard players set @a anviluse 0
scoreboard players set @a creepegguse 2
scoreboard players set @a slimeegguse 0
scoreboard players set @a featheruse 0
scoreboard players set @a SPorttimer 0
scoreboard players set @a blastdur 0
scoreboard players set @a blastdurt 0
scoreboard players set @a powerAn -1
scoreboard players set @a tridentT 0
scoreboard players set @a[scores={class=10}] tridentT 40

scoreboard players set @a feather_cooldown 0
scoreboard players set @a float_cooldown 0

scoreboard players set @a ender 0
scoreboard players set @a enderc 0
scoreboard players set @a enderct 0

scoreboard players set @a dartcool -1
scoreboard players set @a dartuse 2
scoreboard players set @a starT 0
scoreboard players set @a starUse 0

scoreboard players set @a storm_cooldown 0
scoreboard players set @a halo_cooldown 0

scoreboard players set @a overlordsc 0
scoreboard players set @a master_bomb_cooldown -1

scoreboard players set @a dive_kick -1

xp add @a -1000 levels
#xp add @a[scores={class=9}] 2 levels

scoreboard players set @a shift_cool -100
scoreboard players set @a[scores={class=9}] shift_cool 2

scoreboard players set @a chickenbow -100
scoreboard players set @a trapper_swap_extra 0

scoreboard players set @a phantom 170
scoreboard players set @a hotfeet 0
scoreboard players set @a hotfeetlevel 0
scoreboard players set @a survival 0

scoreboard players set @a ghastcount 0

scoreboard players set @a grtest 0

scoreboard players set @a frostsT -1
scoreboard players set @a snowmanT -1

scoreboard players set @a gardlife 20

scoreboard players set @a creepeggr 115
scoreboard players set @a slimeeggr 0

scoreboard players set @a floatuse 0

scoreboard players set @a platUse 2

scoreboard players set @a grave 0

scoreboard players set @a mass_lev_air_use 0

scoreboard players set @a masterstorm -1

scoreboard players set @a slide_cooldown -1

scoreboard players set @a gather_cooldown 5
scoreboard players set @a gather_cooldown_T 0

scoreboard players set @a time_pos -40

scoreboard players set @a wand_cooldown 0
scoreboard players set @a masterwand_upgrade_timer 0

scoreboard players set @a x_ender_pos_t 0
scoreboard players set @a y_ender_pos_t 0
scoreboard players set @a z_ender_pos_t 0
scoreboard players set @a x_ender_pos 0
scoreboard players set @a y_ender_pos 0
scoreboard players set @a z_ender_pos 0
scoreboard players set @a x_ender_mot 0
scoreboard players set @a y_ender_mot 0
scoreboard players set @a z_ender_mot 0

scoreboard players remove @a ui_action_text 0
scoreboard players remove @a ui_action_time 0

scoreboard objectives add soldier_shift_sound dummy

scoreboard players set @a soldier_shifts 5
scoreboard players set @a soldier_shift_reload 0
scoreboard players set @a soldier_shift_sound 0

scoreboard players set @a coyote_frames -1

tag @a remove wand_fail_streak

tag @a remove boomshard

tag @a remove gather

tag @a remove coal
tag @a remove checkairnade
tag @a remove plague

tag @a remove grave

tag @a remove near_portal

#
scoreboard players set .ui_varify .data 1