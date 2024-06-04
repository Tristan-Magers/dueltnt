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
give @a[scores={class=2},x=620,y=20,z=620,distance=..100] minecraft:bow[damage=60,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§bVaporizer§r : Throw to switch"}',hide_additional_tooltip={}]
give @a[scores={class=2},x=620,y=20,z=620,distance=..100] minecraft:experience_bottle[custom_name='{"italic":false,"text":"§7Smoke Bomb §r: Right-click"}'] 2
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

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=2}] hotbar.6 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch for Levitation"}']
give @a[scores={class=3},x=620,y=20,z=620,distance=..100] minecraft:flint[custom_name='{"italic":false,"text":"§cTNT Trap§r : Throw for mode 2 / Offhand for mode 3"}']
#give @a[scores={class=3},x=620,y=20,z=620,distance=..100] minecraft:bow[damage=80,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§cTNT Trap§r : Throw to switch"}']
give @a[scores={class=3},x=620,y=20,z=620,distance=..100] minecraft:bone[unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§6Detonate Arrows §f§r: Right-click"}']
give @a[scores={class=3},x=620,y=20,z=620,distance=..100] minecraft:tnt[custom_name='{"italic":false,"text":"§4Mine §f: Throw/Right-click"}',can_place_on={predicates:[{blocks:"#game:tnt_place"}],show_in_tooltip:0b}] 2
scoreboard players set @a[scores={class=3},x=620,y=20,z=620,distance=..100] bow -1
#effect give @a[scores={class=3},x=620,y=20,z=620,distance=..100] jump_boost 300 0 true
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] hotbar.7 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch to summon TNT"}']
item replace entity @a[scores={class=3},x=620,y=20,z=620,distance=..100] hotbar.5 with arrow 1
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=0}] armor.chest with minecraft:iron_chestplate[unbreakable={show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] armor.chest with minecraft:golden_chestplate[unbreakable={show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] armor.chest with minecraft:leather_chestplate[unbreakable={show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] armor.head with minecraft:leather_helmet[unbreakable={show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=2}] armor.chest with minecraft:diamond_chestplate[unbreakable={show_in_tooltip:false}]
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=4}] run function game:char/assassin/give/shift
item replace entity @a[scores={class=4},x=620,y=20,z=620,distance=..100] hotbar.7 with minecraft:tipped_arrow[custom_name='{"italic":false,"text":"Magic Arrow"}',potion_contents={custom_color:6221823},hide_additional_tooltip={}] 2
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
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.4 with minecraft:feather[custom_name='{"italic":false,"text":"Feather §r: Right-click"}'] 6
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.4 with minecraft:feather[custom_name='{"italic":false,"text":"Feather §r: Right-click"}'] 9
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=2}] hotbar.3 with minecraft:iron_ingot[custom_name='{"italic":false,"text":"Mass Levitate §r: Right-click [everyone within 3 blocks]"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] hotbar.3 with minecraft:diamond_sword[custom_name='{"italic":false,"text":"Temporary Platform §r: Right-click"}',hide_additional_tooltip={},attribute_modifiers={modifiers:[{type:"generic.attack_speed",name:"generic.attack_speed",amount:0.9,operation:"add_value",uuid:[I;2016337811,-1510259727,-1143610979,661859754],slot:"mainhand"},{type:"generic.attack_damage",name:"generic.attack_damage",amount:9,operation:"add_value",uuid:[I;-1708916597,1794000556,-1199725791,1224881908],slot:"mainhand"}],show_in_tooltip:false}]
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
item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}'] 3
execute if entity @e[scores={mode=1}] run item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}'] 6
item replace entity @a[scores={class=5},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:sugar[custom_name='{"italic":false,"text":"§aAcid §r: Right-click"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] armor.head with minecraft:diamond_helmet[unbreakable={show_in_tooltip:false}]
effect give @a[scores={class=5},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
effect give @a[scores={class=5},x=620,y=20,z=620,distance=..100] speed 300 0 true
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] armor.head with minecraft:diamond_helmet[unbreakable={show_in_tooltip:false},dyed_color=0]
give @a[scores={class=5},x=620,y=20,z=620,distance=..100] minecraft:bow[damage=160,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§aExplosive Gel§r : Throw to switch"}']
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] hotbar.6 with arrow 3
scoreboard players set @a[scores={class=5}] bow -2
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] hotbar.3 with minecraft:stick[custom_name='{"italic":false,"text":"§9Power Shield §r: Right-click"}']
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] hotbar.1 with minecraft:ink_sac[custom_name='{"italic":false,"text":"§2Set Portal §r: Right-click (lasts 6 seconds) [16 block range]"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] hotbar.7 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch to go to portal (16 block range)"}']

execute as @a[scores={class=1},x=620,y=20,z=620,distance=..100] run function game:char/assassin/give/magic_star {"amount":2}

scoreboard players set @a[scores={class=1},x=620,y=20,z=620,distance=..100] star 0
#item replace entity @a[scores={class=6},x=620,y=20,z=620,distance=..100] hotbar.1 with minecraft:iron_hoe[custom_name='{"italic":false,"text":"§aScythe §f: Right-click to throw"}',enchantments={knockback:6},unbreakable={show_in_tooltip:false}]

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.2 with minecraft:slime_spawn_egg[custom_name='{"italic":false,"text":"§aEnchanted Slime §f: Right-click (Can click on air)"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"slime",Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["s1"]},enchantments={knockback:1}] 2
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.3 with minecraft:creeper_spawn_egg[custom_name='{"italic":false,"text":"§bGhost Creeper §f: Right-click (Can click on air)"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:'{"italic":false,"text":"Bomb"}',Health:500,powered:1,ExplosionRadius:1,fuse:1000},enchantments={knockback:2}] 2

item replace entity @a[scores={class=6},x=620,y=20,z=620,distance=..100] hotbar.0 with minecraft:bow[damage=180,custom_name='{"italic":false,"text":"§7Dark Pillar§r : Throw to switch"}',unbreakable={show_in_tooltip:false}]
item replace entity @a[scores={class=6},x=620,y=20,z=620,distance=..100] hotbar.6 with arrow 1
scoreboard players set @a[scores={class=6}] bow 0
effect give @a[scores={class=6},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
execute as @a[scores={class=6},x=620,y=20,z=620,distance=..100] at @s run attribute @s minecraft:generic.movement_speed base set .112

execute as @a[scores={class=0},x=620,y=20,z=620,distance=..100] run function game:char/soldier/give/anvil {"amount":10}

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.5 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 12
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 6
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.5 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 64

execute as @a[x=620,y=20,z=620,distance=..100,scores={class=1}] run function game:char/assassin/give/sneak_attack {"amount":2}

execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] hotbar.5 with minecraft:mooshroom_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"mooshroom",Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:'{"italic":false,"text":"tnt"}'},custom_name='{"italic":false,"text":"§cSummon TNT §r: Right-click"}'] 12
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=3}] at @s run item replace entity @s hotbar.3 with minecraft:redstone[custom_name='{"italic":false,"text":"§cTracking Bomb §r: Right-click"}',potion_contents={custom_color:0,custom_effects:[{id:"minecraft:levitation",amplifier:2,duration:55},{id:"minecraft:blindness",amplifier:1,duration:75},{id:"minecraft:glowing",amplifier:1,duration:65}]}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.7 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch to phantom jump"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] hotbar.5 with minecraft:mooshroom_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"mooshroom",Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:'{"italic":false,"text":"tnt"}'},custom_name='{"italic":false,"text":"§cSummon TNT §r: Right-click"}'] 3
#item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] hotbar.4 with minecraft:rabbit_hide[custom_name='{"italic":false,"text":"§4Laser §r: Right-click"}']
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] hotbar.4 with minecraft:mooshroom_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"mooshroom",Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:'{"italic":false,"text":"tnt"}'},custom_name='{"italic":false,"text":"§cSummon TNT §r: Right-click"}'] 9
item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.4 with minecraft:splash_potion[custom_name='[{"text":"Primed for Dark ","color":"dark_purple","italic":false},{"text":": Right-Click","color":"white","italic":false}]',potion_contents={custom_effects:[{id:"minecraft:blindness",amplifier:1b,duration:70},{id:"minecraft:glowing",amplifier:1b,duration:50}],custom_color:0}]
scoreboard players set @a[scores={class=4},x=620,y=20,z=620,distance=..100] pig -50

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] hotbar.6 with arrow

item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.0 with minecraft:wooden_pickaxe[unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§9Master Wand §r: Right-click Blocks (throw/offhand to gather)"}',attribute_modifiers={modifiers:[{type:"generic.attack_speed",name:"generic.attack_speed",amount:0.9,operation:"add_value",uuid:[I;2016337811,-1510259727,-1143610979,661859754],slot:"mainhand"},{type:"generic.attack_damage",name:"generic.attack_damage",amount:9,operation:"add_value",uuid:[I;-1708916597,1794000556,-1199725791,1224881908],slot:"mainhand"}],show_in_tooltip:false}]
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.1 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}']
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.2 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}']
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.3 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}']
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.4 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=9}] hotbar.6 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch to Restore World (recreates broken blocks and brings you to same level as stage)"}']

scoreboard players set @a boomwandtime 0
scoreboard players set @a blastwandtime 0

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.1 with minecraft:wooden_hoe[custom_name='{"italic":false,"text":"§6Boom Wand §r: Right-click"}',attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_speed",amount:10,name:"generic.attack_speed",uuid:[I;1,2,3,4]}],show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.2 with minecraft:stone_hoe[custom_name='{"italic":false,"text":"§aBlast Wand §r: Right-click"}',attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_speed",amount:10,name:"generic.attack_speed",uuid:[I;1,2,3,4]}],show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.3 with minecraft:diamond_hoe[custom_name='{"italic":false,"text":"§bSky Wand §r: Right-click"}',attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_speed",amount:10,name:"generic.attack_speed",uuid:[I;1,2,3,4]}],show_in_tooltip:false}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.0 with minecraft:bow[damage=200,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§3Space Warp§r : Throw to switch"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.5 with arrow
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.6 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch for Slow Falling and Speed"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.4 with minecraft:red_dye[custom_name='{"italic":false,"text":"§eGround Spell §r: Right-click"}'] 2
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.4 with minecraft:red_dye[custom_name='{"italic":false,"text":"§eGround Spell §r: Right-click"}'] 3

effect give @a[scores={class=7},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
scoreboard players set @a[scores={class=7},x=620,y=20,z=620,distance=..100] bow 0

scoreboard players set @a plaguetimer -1

execute unless entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.0 with minecraft:bow[damage=220,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§6Blast Jumper§r : Throw to switch"}',enchantments={punch:2}]
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.0 with minecraft:bow[damage=220,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§6Blast Jumper§r : Throw to switch"}',enchantments={punch:3}]

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.7 with minecraft:arrow[custom_name='{"italic":false,"text":"Not your father\'s Blast Off"}']
scoreboard players set @a[scores={class=8},x=620,y=20,z=620,distance=..100] bow 0
scoreboard players set @a[scores={class=8},x=620,y=20,z=620,distance=..100] plaguetimer 160
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.4 with minecraft:paper[custom_name='{"italic":false,"text":"§6You can now PvP with players :D"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.5 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch for retro trapper simulator"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.6 with minecraft:paper[custom_name='{"italic":false,"text":"§6Gain extra life every 45 seconds (if under max)"}']
team join gardener @a[x=620,y=20,z=620,distance=..100,scores={class=8}]
#team leave @a[x=620,y=20,z=620,distance=..100,scores={class=9..}]
#team leave @a[x=620,y=20,z=620,distance=..100,scores={class=..7}]

give @a[scores={class=10},x=620,y=20,z=620,distance=..100] minecraft:bow[damage=260,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§9Anti-Ice§r : Throw to switch"}']
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.6 with arrow 3
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.1 with minecraft:egg[custom_name='{"italic":false,"text":"§3Frosty Poppy §f§r: Right-click (explodes on enemies)"}']
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.3 with minecraft:lime_dye[custom_name='{"italic":false,"text":"§3Ice Suck §f§r: Right-click"}']
#item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:yellow_dye[custom_name='{"italic":false,"text":"§3Snowman §f§r: Right-click"}']
#item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.2 with minecraft:trident[custom_name='{"italic":false,"text":"§9Trident §f§r: Right-click"}']
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.4 with minecraft:white_dye[custom_name='{"italic":false,"text":"§6Float §f§r: Right-click"}'] 3

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=10}] hotbar.5 with minecraft:paper[custom_name='{"italic":false,"text":"§6Crouch to blast forward [reloads on ground]"}']

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