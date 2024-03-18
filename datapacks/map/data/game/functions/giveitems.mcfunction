clear @a[x=620,y=20,z=620,distance=..100]
effect give @a fire_resistance 1000000 255 true

execute as @a at @s run attribute @p minecraft:generic.movement_speed base set .1

give @a[scores={class=0},x=620,y=20,z=620,distance=..100] bow{Damage:20,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§cBomb Bow §r: Throw to switch\"}"}}
give @a[scores={class=0},x=620,y=20,z=620,distance=..100] snowball{display:{Name:"{\"italic\":false,\"text\":\"§2Slimer §f§r: Right-click (hit players)\"}"}}
item replace entity @a[scores={class=0},x=620,y=20,z=620,distance=..100] hotbar.5 with arrow 2
scoreboard players set @a[scores={class=0},x=620,y=20,z=620,distance=..100] bow -1
item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.0 with bow{Damage:40,Unbreakable:1,Enchantments:[{id:flame,lvl:1}],display:{Name:"{\"italic\":false,\"text\":\"§dBazooka Bow§f : Throw to switch\"}"}}
item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.2 with ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 1
execute if entity @e[scores={mode=1}] run item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.2 with ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 12
#item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.1 with splash_potion{CustomPotionColor:0,custom_potion_effects:[{Id:2,Amplifier:1,Duration:60},{Id:15,Amplifier:1,Duration:60},{Id:24,Amplifier:1,Duration:60}],display:{Name:"{\"italic\":false,\"text\":\"§5Primed for Death §r: Right-click\"}"}}
scoreboard players set @a[scores={class=1},x=620,y=20,z=620,distance=..100] bow 0
item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.6 with arrow 1
effect give @a[scores={class=1},x=620,y=20,z=620,distance=..100] speed 300 1 true
effect give @a[scores={class=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
give @a[scores={class=2},x=620,y=20,z=620,distance=..100] bow{Damage:60,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§bVaporizer§r : Throw to switch\"}"}}
give @a[scores={class=2},x=620,y=20,z=620,distance=..100] experience_bottle{display:{Name:"{\"italic\":false,\"text\":\"§7Smoke Bomb §r: Right-click\"}"}} 2
item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.5 with tipped_arrow{display:{Name:"{\"italic\":false,\"text\":\"Magic arrow\"}"},CustomPotionColor:6221823,HideFlags:32} 3
scoreboard players set @a[scores={class=2},x=620,y=20,z=620,distance=..100] bow -1
scoreboard players set @a[scores={class=2},x=620,y=20,z=620,distance=..100] snowTime 0
effect give @a[scores={class=2},x=620,y=20,z=620,distance=..100] speed 300 1 true
effect give @a[scores={class=2},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
scoreboard players set @a[x=1000,y=20,z=1000,distance=..300] timer 0
item replace entity @a[x=620,y=20,z=620,distance=..100] hotbar.8 with potion{display:{Name:"{\"italic\":false,\"text\":\"§dLeave game §r: Right-click\"}"}}
scoreboard players set @a snow 0
#item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] hotbar.4 with leather{display:{Name:"{\"italic\":false,\"text\":\"§7Explosive Dart §r: Right-click\"}"}} 6
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=0}] hotbar.6 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch to explode\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] hotbar.7 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch for Dive Kick\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=2}] hotbar.6 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch for Levitation\"}"}}
give @a[scores={class=3},x=620,y=20,z=620,distance=..100] flint{display:{Name:"{\"italic\":false,\"text\":\"§cTNT Trap§r : Throw for mode 2 / Offhand for mode 3\"}"}}
#give @a[scores={class=3},x=620,y=20,z=620,distance=..100] bow{Damage:80,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§cTNT Trap§r : Throw to switch\"}"}}
give @a[scores={class=3},x=620,y=20,z=620,distance=..100] bone{Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Detonate Arrows §f§r: Right-click\"}"}}
give @a[scores={class=3},x=620,y=20,z=620,distance=..100] tnt{display:{Name:"{\"italic\":false,\"text\":\"§4Mine §f: Throw/Right-click\"}"},HideFlags:16,CanPlaceOn:["#game:tnt_place"]} 2
scoreboard players set @a[scores={class=3},x=620,y=20,z=620,distance=..100] bow -1
#effect give @a[scores={class=3},x=620,y=20,z=620,distance=..100] jump_boost 300 0 true
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] hotbar.7 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch to summon TNT\"}"}}
item replace entity @a[scores={class=3},x=620,y=20,z=620,distance=..100] hotbar.5 with arrow 1
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=0}] armor.chest with iron_chestplate{Unbreakable:1}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] armor.chest with golden_chestplate{Unbreakable:1}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] armor.chest with leather_chestplate{Unbreakable:1}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] armor.head with leather_helmet{Unbreakable:1}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=2}] armor.chest with diamond_chestplate{Unbreakable:1}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=4}] hotbar.6 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch to teleport\"}"}}
item replace entity @a[scores={class=4},x=620,y=20,z=620,distance=..100] hotbar.7 with tipped_arrow{display:{Name:"{\"italic\":false,\"text\":\"Magic Arrow\"}"},CustomPotionColor:6221823,HideFlags:32} 2
scoreboard players set @a[scores={class=4},x=620,y=20,z=620,distance=..100] bow -1
give @a[scores={class=4},x=620,y=20,z=620,distance=..100] bow{Damage:100,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§4Fireball§r : Throw to switch\"}"}}
effect give @a[scores={class=4},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
give @a[scores={class=4},x=620,y=20,z=620,distance=..100] bow{Damage:120,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§ePowderize§r : Throw to switch\"}"}}
give @a[scores={class=4},x=620,y=20,z=620,distance=..100] bow{Damage:140,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§3Teleport§r : Throw to switch\"}"}}
item replace entity @a[scores={class=0},x=620,y=20,z=620,distance=..100] hotbar.2 with ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 5
execute if entity @e[scores={mode=1}] run item replace entity @a[scores={class=0},x=620,y=20,z=620,distance=..100] hotbar.2 with ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 8
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=4}] armor.chest with chainmail_chestplate{Unbreakable:1}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=4}] hotbar.3 with pig_spawn_egg{display:{Name:"{\"italic\":false,\"text\":\"§cPig Transform §r: Right-click\"}"},CanPlaceOn:["#game:bolt_place"],EntityTag:{id:pig},HideFlags:16}
execute as @a[scores={class=4},x=620,y=20,z=620,distance=..100] at @s run attribute @p minecraft:generic.movement_speed base set .13
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.4 with feather{display:{Name:"{\"italic\":false,\"text\":\"Feather §r: Right-click\"}"}} 6
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.4 with feather{display:{Name:"{\"italic\":false,\"text\":\"Feather §r: Right-click\"}"}} 9
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=2}] hotbar.3 with iron_ingot{display:{Name:"{\"italic\":false,\"text\":\"Mass Levitate §r: Right-click [everyone within 3 blocks]\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] hotbar.3 with diamond_sword{display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform §r: Right-click\"}"}}
effect give @a[scores={class=0},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
effect give @a[scores={class=0},x=620,y=20,z=620,distance=..100] speed 300 0 true
item replace entity @a[tag=blue,scores={teamed=1..}] armor.head with light_blue_stained_glass{Enchantments:[{id:binding_curse,lvl:1}]}
item replace entity @a[tag=red,scores={teamed=1..}] armor.head with red_stained_glass{Enchantments:[{id:binding_curse,lvl:1}]}
item replace entity @a[tag=green,scores={teamed=1..}] armor.head with lime_stained_glass{Enchantments:[{id:binding_curse,lvl:1}]}
item replace entity @a[scores={teamed=..0}] armor.head with air
item replace entity @a[tag=!team,x=620,y=20,z=620,distance=..100,scores={class=3}] armor.head with leather_helmet{Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.3 with diamond{display:{Name:"{\"italic\":false,\"text\":\"§3Mass Freeze§r §r: Right-click [everyone within 3 blocks]\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=4}] hotbar.4 with golden_boots{display:{Name:"{\"italic\":false,\"text\":\"§r§bExplode Ghost Creeper §r: Right-click (summoned by crouch)\"}"}}
#item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=0}] hotbar.3 with kelp{display:{Name:"{\"italic\":false,\"text\":\"§4Mega Bomb§r §r: Right-click\"}",color:16777215}}
item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.2 with ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 3
execute if entity @e[scores={mode=1}] run item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.2 with ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 6
item replace entity @a[scores={class=5},x=620,y=20,z=620,distance=..100] hotbar.2 with sugar{display:{Name:"{\"italic\":false,\"text\":\"§aAcid §r: Right-click\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] armor.head with diamond_helmet{Unbreakable:1}
effect give @a[scores={class=5},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
effect give @a[scores={class=5},x=620,y=20,z=620,distance=..100] speed 300 0 true
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] armor.head with diamond_helmet{Unbreakable:1,display:{color:0}}
give @a[scores={class=5},x=620,y=20,z=620,distance=..100] bow{Damage:160,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§aExplosive Gel§r : Throw to switch\"}"}}
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] hotbar.6 with arrow 3
scoreboard players set @a[scores={class=5}] bow -2
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] hotbar.3 with stick{display:{Name:"{\"italic\":false,\"text\":\"§9Power Shield §r: Right-click\"}"}}
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=5}] hotbar.1 with ink_sac{display:{Name:"{\"italic\":false,\"text\":\"§2Set Portal §r: Right-click (lasts 6 seconds) [16 block range]\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] hotbar.7 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch to go to portal (16 block range)\"}"}}
item replace entity @a[scores={class=1},x=620,y=20,z=620,distance=..100] hotbar.1 with nether_star{display:{Name:"{\"italic\":false,\"text\":\"Magic Star §f: Right-click\"}"}} 2
scoreboard players set @a[scores={class=1},x=620,y=20,z=620,distance=..100] star 0
#item replace entity @a[scores={class=6},x=620,y=20,z=620,distance=..100] hotbar.1 with iron_hoe{display:{Name:"{\"italic\":false,\"text\":\"§aScythe §f: Right-click to throw\"}"},Enchantments:[{id:knockback,lvl:6}],Unbreakable:1}

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.2 with slime_spawn_egg{display:{Name:"{\"italic\":false,\"text\":\"§aEnchanted Slime §f: Right-click (Can click on air)\"}"},CanPlaceOn:["#game:bolt_place"],EntityTag:{id:slime,Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["s1"]},HideFlags:16,Enchantments:[{id:knockback,lvl:1}]} 2
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.3 with creeper_spawn_egg{display:{Name:"{\"italic\":false,\"text\":\"§bGhost Creeper §f: Right-click (Can click on air)\"}"},CanPlaceOn:["#game:bolt_place"],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"{\"italic\":false,\"text\":\"Bomb\"}",Health:500,powered:1,ExplosionRadius:1,fuse:1000},HideFlags:16,Enchantments:[{id:knockback,lvl:2}]} 2

item replace entity @a[scores={class=6},x=620,y=20,z=620,distance=..100] hotbar.0 with bow{Damage:180,display:{Name:"{\"italic\":false,\"text\":\"§7Dark Pillar§r : Throw to switch\"}"},Unbreakable:1}
item replace entity @a[scores={class=6},x=620,y=20,z=620,distance=..100] hotbar.6 with arrow 1
scoreboard players set @a[scores={class=6}] bow 0
effect give @a[scores={class=6},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
execute as @a[scores={class=6},x=620,y=20,z=620,distance=..100] at @s run attribute @s minecraft:generic.movement_speed base set .112
item replace entity @a[scores={class=0},x=620,y=20,z=620,distance=..100] hotbar.4 with anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 10
execute if entity @e[scores={mode=1}] run item replace entity @a[scores={class=0},x=620,y=20,z=620,distance=..100] hotbar.4 with anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 45
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.5 with stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:["#game:bolt_place"],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 12
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.3 with stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:["#game:bolt_place"],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 6
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.5 with stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:["#game:bolt_place"],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 64
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] hotbar.4 with minecraft:squid_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:squid,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§9Sneak Attack §r: Right-click\"}"}} 2
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=1}] hotbar.5 with mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 12
execute as @a[x=620,y=20,z=620,distance=..100,scores={class=3}] at @s run item replace entity @s hotbar.3 with redstone{CustomPotionColor:0,custom_potion_effects:[{Id:25,Amplifier:2,Duration:55},{Id:15,Amplifier:1,Duration:75},{Id:24,Amplifier:1,Duration:65}],display:{Name:"{\"italic\":false,\"text\":\"§cTracking Bomb §r: Right-click\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=6}] hotbar.7 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch to phantom jump\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] hotbar.5 with mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 3
#item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] hotbar.4 with rabbit_hide{display:{Name:"{\"italic\":false,\"text\":\"§4Laser §r: Right-click\"}"}}
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=5}] hotbar.4 with mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 9
item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.4 with splash_potion{display:{Name:'[{"text":"Primed for Dark ","color":"dark_purple","italic":false},{"text":": Right-Click","color":"white","italic":false}]'},custom_potion_effects:[{id:"minecraft:blindness",amplifier:1b,duration:80},{id:"minecraft:glowing",amplifier:1b,duration:60}],CustomPotionColor:0}
scoreboard players set @a[scores={class=4},x=620,y=20,z=620,distance=..100] pig -50

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=3}] hotbar.6 with arrow

#item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=4}] hotbar.5 with clay_ball{display:{Name:"{\"italic\":false,\"text\":\"§bVortex §r: Right-click\"}"}}

item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.0 with wooden_pickaxe{Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§9Master Wand §r: Right-click Blocks (throw/offhand to gather)\"}"}}
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.1 with barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}}
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.2 with barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}}
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.3 with barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}}
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={class=9}] hotbar.4 with barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=9}] hotbar.6 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch to Restore World (recreates broken blocks and brings you to same level as stage)\"}"}}

scoreboard players set @a boomwandtime 0
scoreboard players set @a blastwandtime 0

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.1 with wooden_hoe{display:{Name:"{\"italic\":false,\"text\":\"§6Boom Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.2 with stone_hoe{display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.3 with diamond_hoe{display:{Name:"{\"italic\":false,\"text\":\"§bSky Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.0 with bow{Damage:200,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§3Space Warp§r : Throw to switch\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.6 with arrow
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.5 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch for Slow Falling and Speed\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.4 with red_dye{display:{Name:"{\"italic\":false,\"text\":\"§eGround Spell §r: Right-click\"}"}} 2
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=7}] hotbar.4 with red_dye{display:{Name:"{\"italic\":false,\"text\":\"§eGround Spell §r: Right-click\"}"}} 3

effect give @a[scores={class=7},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
scoreboard players set @a[scores={class=7},x=620,y=20,z=620,distance=..100] bow 0

scoreboard players set @a plaguetimer -1

execute unless entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.0 with bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:2}]}
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.0 with bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:3}]}

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.7 with arrow{display:{Name:"{\"italic\":false,\"text\":\"Not your father's Blast Off\"}"}}
scoreboard players set @a[scores={class=8},x=620,y=20,z=620,distance=..100] bow 0
scoreboard players set @a[scores={class=8},x=620,y=20,z=620,distance=..100] plaguetimer 160
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.4 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6You can now PvP with players :D\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.5 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch for retro trapper simulator\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.6 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Gain extra life every 50 seconds\"}"}}
team join gardener @a[x=620,y=20,z=620,distance=..100,scores={class=8}]
#team leave @a[x=620,y=20,z=620,distance=..100,scores={class=9..}]
#team leave @a[x=620,y=20,z=620,distance=..100,scores={class=..7}]

give @a[scores={class=10},x=620,y=20,z=620,distance=..100] bow{Damage:260,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§9Anti-Ice§r : Throw to switch\"}"}}
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.6 with arrow 3
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.1 with egg{display:{Name:"{\"italic\":false,\"text\":\"§3Frosty Poppy §f§r: Right-click (explodes on enemies)\"}"}}
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.3 with lime_dye{display:{Name:"{\"italic\":false,\"text\":\"§3Ice Suck §f§r: Right-click\"}"}}
#item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.2 with yellow_dye{display:{Name:"{\"italic\":false,\"text\":\"§3Snowman §f§r: Right-click\"}"}}
#item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.2 with trident{display:{Name:"{\"italic\":false,\"text\":\"§9Trident §f§r: Right-click\"}"}}
item replace entity @a[scores={class=10},x=620,y=20,z=620,distance=..100] hotbar.4 with white_dye{display:{Name:"{\"italic\":false,\"text\":\"§6Float §f§r: Right-click\"}"}} 3

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=10}] hotbar.5 with paper{display:{Name:"{\"italic\":false,\"text\":\"§6Crouch to blast forward\"}"}}

scoreboard players set @a[scores={class=10},x=620,y=20,z=620,distance=..100] bow -2

effect give @a[scores={class=10},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
execute as @a[scores={class=10},x=620,y=20,z=620,distance=..100] at @s run attribute @p minecraft:generic.movement_speed base set .132
#effect give @a[scores={class=10},x=620,y=20,z=620,distance=..100] speed 300 0 true

#item replace entity @a[scores={class=2},x=620,y=20,z=620,distance=..100] hotbar.5 with minecraft:coal{display:{Name:"{\"italic\":false,\"text\":\"§9Air Missile§r : Right-click\"}"}}

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

scoreboard players set @a soldier_shifts 10
scoreboard players set @a soldier_shift_reload 0

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