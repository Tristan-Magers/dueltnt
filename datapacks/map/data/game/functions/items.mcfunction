tp @e[type=minecraft:silverfish] ~ ~-1000 ~

execute as @e[scores={vortex=..80}] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 2 30 force
execute as @e[name=vortex] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 .15 10 force
execute as @e[scores={vortex=40..}] at @s run function game:vortexdif
scoreboard players add @e[name=vortex] vortex 1
#execute as @e[scores={vortex=120..}] at @s run summon tnt ~ ~1 ~ {Fuse:16,NoGravity:1}
#execute as @e[scores={vortex=120..}] at @s run summon tnt ~ ~1 ~ {Fuse:16,NoGravity:1}
#execute as @e[scores={vortex=120..}] at @s run summon tnt ~ ~1 ~ {Fuse:16,NoGravity:1}
kill @e[scores={vortex=120..}]

#characters
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=0}] at @s run function game:char/soldier
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=1}] at @s run function game:char/assassin
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=2}] at @s run function game:char/ghost

# items
function game:realitems

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=..0}] at @s run clear @s diamond_shovel
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,garboost=..0}] at @s run clear @s golden_shovel

execute unless entity @e[scores={mode=1}] run execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=..0,garboost=..0},nbt=!{Inventory:[{id:"minecraft:stone_shovel",Slot:1b}]}] at @s run replaceitem entity @s hotbar.1 minecraft:stone_shovel{Unbreakable:1,Enchantments:[{id:knockback,lvl:2}],display:{Name:"{\"italic\":false,\"text\":\"§rShovel (hit people)\"}"}}
execute if entity @e[scores={mode=1}] run execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=..0,garboost=..0},nbt=!{Inventory:[{id:"minecraft:stone_shovel",Slot:1b}]}] at @s run replaceitem entity @s hotbar.1 minecraft:stone_shovel{Unbreakable:1,Enchantments:[{id:knockback,lvl:3}],display:{Name:"{\"italic\":false,\"text\":\"§rShovel (hit people)\"}"}}

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=..0,garboost=1..},nbt=!{Inventory:[{id:"minecraft:golden_shovel",Slot:1b}]}] at @s run replaceitem entity @s hotbar.1 minecraft:golden_shovel{Unbreakable:1,Enchantments:[{id:knockback,lvl:3}],display:{Name:"{\"italic\":false,\"text\":\"§rShovel (hit people)\"}"}}

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=1..},nbt=!{Inventory:[{id:"minecraft:diamond_shovel",Slot:1b}]},nbt={OnGround:0b}] at @s run replaceitem entity @s hotbar.1 minecraft:diamond_shovel{Unbreakable:1,Enchantments:[{id:knockback,lvl:8}],display:{Name:"{\"italic\":false,\"text\":\"EXTREME GARDENING SHOVEL  (HIT THEM!!!)\"}"}}

execute as @a[gamemode=adventure,scores={class=8,garboost=3}] at @s run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 2
execute as @a[gamemode=adventure,scores={class=8,garboost=3}] at @s run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 0
execute as @a[gamemode=adventure,scores={class=8,garboost=3}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2

scoreboard players add @a[scores={ggravuse=1..}] gravuse 1
scoreboard players remove @a[scores={ggravuse=1..}] ggravuse 1

#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=0,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 12
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=1,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 11
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=2,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 10
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=3,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 9
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=4,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 8
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=5,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 7
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=6,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 6
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=7,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 5
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=8,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 4
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=9,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 3
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=10,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 2
#replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={gravuse=11,class=8,garboost=1}] hotbar.3 minecraft:stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 1

scoreboard players set @a[gamemode=adventure,scores={class=8,bow=1..17,garboost=1..}] bow 19
#replaceitem entity @a[gamemode=adventure,scores={class=8,garboost=1}] hotbar.0 minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:2}]}
scoreboard players remove @a[gamemode=adventure,scores={class=8,garboost=1..}] garboost 1

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=1},nbt={OnGround:1b}] at @s run scoreboard players remove @s rjump 1
scoreboard players remove @a[gamemode=adventure,scores={class=8,rjump=2..}] rjump 1

team join Main @a[gamemode=adventure,team=!Main,x=600,y=60,z=600,distance=110..]
team join Main @a[gamemode=adventure,team=!Main,scores={class=..7}]

# arrow reloading
execute as @a[gamemode=adventure,scores={class=0,bow=12..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .3 2
execute as @a[gamemode=adventure,scores={class=1,bow=23..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .4 1.5
execute as @a[gamemode=adventure,scores={class=2,bow=58..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .5 1.1
scoreboard players add @a[gamemode=adventure,scores={bow=1..}] bow 1
replaceitem entity @a[gamemode=adventure,scores={class=0,bow=14..}] hotbar.5 arrow 2
scoreboard players set @a[gamemode=adventure,scores={class=0,bow=14..}] bow -1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=1,bow=24..}] hotbar.6 arrow 1
scoreboard players set @a[gamemode=adventure,scores={class=1,bow=24..}] bow 0
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=2,bow=60..}] hotbar.5 arrow 3
scoreboard players set @a[gamemode=adventure,scores={class=2,bow=60..}] bow -1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=3,bow=25}] hotbar.5 arrow 1
execute as @a[gamemode=adventure,scores={class=3,bow=25}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .4 2
#replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=3,bow=50..},nbt={Inventory:[{id:"minecraft:arrow"}]}] hotbar.5 arrow 1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=3,bow=50..}] hotbar.6 arrow 1
execute as @a[gamemode=adventure,scores={class=3,bow=50..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .4 2
scoreboard players set @a[gamemode=adventure,scores={class=3,bow=50..}] bow -1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=4,bow=28}] hotbar.7 tipped_arrow{display:{Name:"{\"italic\":false,\"text\":\"Magic arrow\"}"},Potion:"minecraft:swiftness",HideFlags:32} 2
execute as @a[gamemode=adventure,scores={class=4,bow=27..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .45 2
scoreboard players set @a[gamemode=adventure,scores={class=4,bow=28..}] bow -1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=5,bow=56..}] hotbar.6 arrow 3
execute as @a[gamemode=adventure,scores={class=5,bow=53..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .5 2
scoreboard players set @a[gamemode=adventure,scores={class=5,bow=56..}] bow -2
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=6,bow=26..}] hotbar.6 arrow 1
execute as @a[gamemode=adventure,scores={class=6,bow=26..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .4 2
scoreboard players set @a[gamemode=adventure,scores={class=6,bow=26..}] bow 0
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=7,bow=45..}] hotbar.6 arrow 1
execute as @a[gamemode=adventure,scores={class=7,bow=45..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .4 2
scoreboard players set @a[gamemode=adventure,scores={class=7,bow=45..}] bow 0
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=8,bow=22..}] hotbar.7 arrow{display:{Name:"{\"italic\":false,\"text\":\"Not your father's Blast Off\"}"}}
execute as @a[gamemode=adventure,scores={class=8,bow=22..}] at @s run playsound minecraft:entity.item.pickup master @p ~ ~ ~ .4 2
scoreboard players set @a[gamemode=adventure,scores={class=8,bow=22..}] bow 0

#ender land effects
execute as @a[gamemode=adventure,distance=..100,x=620,y=20,z=620] at @s run function items:endercount

# shifting specials
execute as @a unless entity @s[scores={class=9}] run xp add @s -1 levels
xp add @a[scores={class=9,overlordsc=5..}] -1 levels
scoreboard players add @a[gamemode=adventure,scores={timer=1..},distance=..100,x=620,y=20,z=620] timer 1
execute as @a[gamemode=adventure,scores={shift=1..,timer=..0},distance=..100,x=620,y=20,z=620] at @s unless entity @s[scores={class=9,overlordsc=5..}] run function game:shift
#execute as @a[gamemode=adventure,scores={shift=1..,timer=..0}] at @s run function game:shift

execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=19..,class=0}] timer 0
execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=88..,class=1}] timer 0
execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=80..,class=2}] timer 0
execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=80..,class=3}] timer 0

execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=12..,class=0}] timer 0
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=40..,class=1}] timer 0
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=75..,class=2}] timer 0
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=30..,class=3}] timer 0

execute as @a[gamemode=adventure,scores={timer=1..7,class=4},distance=..100,x=620,y=20,z=620] at @s run tp @p ~ ~2 ~

execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=150..,class=4}] timer 0
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=100..,class=4}] timer 0

execute as @a[gamemode=adventure,distance=..100,scores={timer=1..5,class=4},x=620,y=20,z=620] at @s run effect give @p levitation 1 0 true
execute as @a[gamemode=adventure,distance=..100,scores={timer=12,class=4},x=620,y=20,z=620] at @s run effect clear @p levitation
execute as @a[gamemode=adventure,distance=5..100,scores={timer=9,class=4},x=600,y=60,z=600] at @s run effect clear @p blindness
execute as @a[gamemode=adventure,distance=..100,scores={timer=17,class=2},x=620,y=20,z=620] at @s run effect clear @p levitation
title @a[gamemode=adventure,scores={shift=1..},x=600,y=60,z=600,distance=3..500] title {"text":""}
scoreboard players set @a[gamemode=adventure,scores={timer=20..,class=5}] timer 0
effect give @a[gamemode=adventure,scores={class=4,timer=1},distance=..100,x=620,y=20,z=620] slowness 2 2
effect give @a[gamemode=adventure,scores={class=6,timer=2},distance=..100,x=620,y=20,z=620] slowness 2 3

execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=190..,class=6}] timer 0
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=140..,class=6}] timer 0

#execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=160..,class=7}] timer 0
execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=160..,class=7}] timer 0
execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=30..,class=9}] timer 0
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=30..,class=9}] timer 0

scoreboard players set @a[gamemode=adventure,scores={timer=45..,class=8}] timer 0
scoreboard players reset @a[gamemode=adventure,scores={shift=1..}] shift

# arrow effects
scoreboard players add @e[type=arrow] BombBow 0
scoreboard players add @e[type=arrow] VaporBow 0
scoreboard players add @e[type=arrow] NecroBow 0
scoreboard players add @e[type=arrow] SciBow 0
scoreboard players add @e[type=arrow] isBall 0
scoreboard players add @e[type=arrow] SBow 0
scoreboard players add @e[type=arrow] arrowTime 1

execute as @a[gamemode=adventure,scores={bowDetect=1..,class=0}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] SolBow 1
execute as @a[gamemode=adventure,scores={bowDetect=1..,class=2}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] VaporBow 1
execute as @a[gamemode=adventure,scores={bowDetect=1..,class=5}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] SciBow 1
execute as @a[gamemode=adventure,scores={bowDetect=1..,class=6}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] NecroBow 1
execute as @a[gamemode=adventure,scores={bowDetect=1..,class=7}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] AprBow 1
execute as @a[gamemode=adventure,scores={bowDetect=1..,class=8}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] GardBow 1
#execute as @a[gamemode=adventure,scores={bowDetect=1..,class=8}] at @s run data merge entity @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] {PierceLevel:10b}
execute as @a[gamemode=adventure,scores={bowDetect=1..,chickenbow=1..}] at @s run tag @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] add chickenbow
scoreboard players set @a bowDetect 0

execute as @e[type=arrow,scores={BombBow=1..}] at @s run function game:traparrowalarm
execute as @e[tag=!inG,type=arrow,nbt={inGround:1b},scores={BombBow=1..}] run function game:traparrowhit
tag @e[type=arrow,nbt={inGround:1b}] add inG

execute as @a[scores={alarm=5}] at @s run playsound minecraft:block.note_block.iron_xylophone master @p ~ ~ ~ 1 1
scoreboard players remove @a[scores={alarm=1..}] alarm 1

execute as @e[type=arrow,tag=e,tag=inG] at @s run summon chicken ~ ~ ~ {Tags:["exchicken"],Invulnerable:1}
kill @e[type=arrow,tag=chickenbow,tag=inG]

tag @e[type=arrow,tag=!flame,nbt={Fire:1999s}] add flame
tag @e[tag=inG,tag=flame] add explode
execute as @e[tag=explode] at @s run summon tnt ~ ~.1 ~ {Fuse:11,Motion:[0.0,0.4,0.0]}
execute as @e[tag=explode] at @s run summon tnt ~ ~.1 ~ {Fuse:11,Motion:[0.0,0.35,0.0]}
kill @e[tag=explode,type=arrow]
scoreboard players set @e[type=arrow] Inbarrier 0
scoreboard players set @e[type=arrow,nbt={inBlockState:{Name:"minecraft:barrier"}}] Inbarrier 1
#scoreboard players set @e[type=arrow,nbt={inBlockState:{Name:"minecraft:white_stained_glass"}}] Inbarrier 2
execute as @e[tag=inG,type=arrow,scores={BombBow=..0}] at @s run function game:arrow
kill @e[tag=inG,type=arrow,scores={BombBow=..0}]
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run scoreboard players set @a[gamemode=adventure,distance=..10,scores={class=8}] rjump 10

# slime
scoreboard players add @a snowReset 0
tag @e[name=SM,type=armor_stand] add slime
execute as @e[type=snowball] at @s run kill @e[distance=..8,name=SM,type=armor_stand]
execute as @e[type=snowball] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"italic\":false,\"text\":\"SM\"}",Invulnerable:1,Marker:1,NoGravity:1,Invisible:1}
execute as @e[name=SM,type=armor_stand,tag=slime,scores={slimetime=..0}] at @s run summon slime ~ ~-1 ~ {Size:3,Invulnerable:1,NoGravity:1,CustomName:"{\"italic\":false,\"text\":\"slimer\"}",Tags:["slimer"]}
execute as @e[name=SM,type=armor_stand,tag=slime,scores={slimetime=1}] at @s run summon slime ~ ~-1 ~ {Size:4,Invulnerable:1,NoGravity:1,CustomName:"{\"italic\":false,\"text\":\"slimer\"}",Tags:["slimer"]}
execute as @e[name=SM,type=armor_stand,tag=slime,scores={slimetime=2}] at @s run summon slime ~ ~-1 ~ {Size:6,Invulnerable:1,NoGravity:1,CustomName:"{\"italic\":false,\"text\":\"slimer\"}",Tags:["slimer"]}
execute as @e[type=snowball] at @s run execute as @a[gamemode=adventure,distance=..3,scores={snow=..0,snowReset=..94}] at @s run kill @e[type=snowball,distance=..2]
scoreboard players add @e[type=slime] time 1
execute as @e[type=slime,scores={time=40..},tag=slimer] at @s run summon tnt ~ ~ ~ {Fuse:2}
#execute as @e[type=slime,scores={time=50..},tag=slimer] at @s run summon tnt ~ ~ ~ {Fuse:2}
tp @e[type=slime,scores={time=40..},tag=slimer] ~ ~-2000 ~
scoreboard players set @a[gamemode=adventure,scores={snow=1}] snowTime 5
scoreboard players remove @a[gamemode=adventure,scores={snowReset=1..}] snowTime 1
scoreboard players set @a[gamemode=adventure,scores={snow=1..}] snowReset 100
scoreboard players set @a[gamemode=adventure,scores={snowReset=2..}] snow 0
scoreboard players remove @a[gamemode=adventure,scores={snowReset=1..}] snowReset 1
#replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={snowReset=1}] hotbar.1 snowball{display:{Name:"{\"italic\":false,\"text\":\"§2Slimer §f§r: Right-click (hit players)\"}"}}
tag @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={snowReset=50}] add checkairnade
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={snowReset=50}] hotbar.1 minecraft:lingering_potion{Potion:"minecraft:swiftness",display:{Name:"{\"italic\":false,\"text\":\"§3Air Grenade §r: Right-click\"}"}}
#execute as @e[type=slime,scores={time=60..}] at @s run summon tnt
#execute as @e[type=slime,scores={time=60..}] at @s run summon tnt
tp @e[type=slime,scores={time=60..}] ~ ~-2000 ~
execute as @e[tag=slime,name=SM,type=armor_stand] at @s run playsound minecraft:entity.slime.attack master @a
kill @e[tag=slime,name=SM,type=armor_stand]
scoreboard players add @e[type=snowball] slimetime 1
execute as @e[type=snowball,scores={slimetime=6..}] at @s run scoreboard players set @e[distance=..8,name=SM,type=armor_stand] slimetime 1
execute as @e[type=snowball,scores={slimetime=16..}] at @s run scoreboard players set @e[distance=..8,name=SM,type=armor_stand] slimetime 2
scoreboard players add @e[name=SM,type=armor_stand] slimetime 0

# eggs throw
scoreboard players add @a snowReset 0
tag @e[name=AM,type=armor_stand] add slime
execute as @e[type=egg] at @s run kill @e[distance=..8,name=AM,type=armor_stand]
execute as @e[type=egg] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"italic\":false,\"text\":\"AM\"}",Invulnerable:1,Marker:1,NoGravity:1,Invisible:1}
execute as @e[name=AM,type=armor_stand,tag=slime] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1,Tags:["a","airnade"]}
scoreboard players set @a[gamemode=adventure,scores={egguse=1..}] eggtimer 50
scoreboard players set @a[gamemode=adventure,scores={eggtimer=2..}] egguse 0
scoreboard players remove @a[gamemode=adventure,scores={eggtimer=1..}] eggtimer 1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={eggtimer=1}] hotbar.1 snowball{display:{Name:"{\"italic\":false,\"text\":\"§2Slimer §f§r: Right-click (hit players)\"}"}}
kill @e[tag=slime,name=AM,type=armor_stand]

# potions
execute as @a[gamemode=adventure,scores={potion=-200..}] at @s run function items:potion

#master_wand
#execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,tag=!mwnext,tag=mwnext2] at @s anchored eyes run function items:masterwand
tag @a[gamemode=adventure,tag=!mwnext] remove mwnext2

#execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,tag=mwnext] at @s anchored eyes run function items:masterwand
tag @a remove mwnext

execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] at @s anchored eyes run function items:masterwand
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] at @s anchored eyes run function items:masterwand
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] at @s anchored eyes run function items:masterwand
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] at @s anchored eyes run function items:masterwand
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] at @s anchored eyes run function items:masterwand

execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] at @s anchored eyes run tag @s add mwnext
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] at @s anchored eyes run tag @s add mwnext
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] at @s anchored eyes run tag @s add mwnext
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] at @s anchored eyes run tag @s add mwnext
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] at @s anchored eyes run tag @s add mwnext

tag @a[gamemode=adventure,tag=mwnext,tag=!mwnext2] add mwnext2

#master boom
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] at @s run function items:masterboom
scoreboard players remove @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] masterb 13
clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] gold_ore 13
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] at @s run function items:masterwanditems

#wand upgrade
scoreboard players add @a[gamemode=adventure,scores={masterc=25..}] mastercT 1
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={mastercT=1}] mastercT 4
scoreboard players set @a[gamemode=adventure,scores={mastercT=40..}] masterc 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={mastercT=40..,class=9}] at @s run function items:masterwandreload
scoreboard players set @a[gamemode=adventure,scores={mastercT=40..}] mastercT 0

execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cod"}}] at @s anchored eyes run function items:masterwandup

#matter refill
scoreboard players add @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9}] matfill 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,matfill=24}] at @s run function items:masterwandget
scoreboard players set @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,matfill=24}] matfill 0

#master storm
scoreboard players set @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] masterstorm 9
#execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] masterstorm 9
scoreboard players remove @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] masterb 16
clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] gold_ore 16
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] at @s run function items:masterwanditems
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=12,class=9}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=12,class=9}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=12,class=9}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=12,class=9}] at @s run function items:masterstorm
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=9,class=9}] at @s run function items:masterstorm
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=6,class=9}] at @s run function items:masterstorm
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=3,class=9}] at @s run function items:masterstorm
execute if entity @e[scores={mode=1}] run execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=0,class=9}] at @s run function items:masterstorm
scoreboard players remove @a[gamemode=adventure,scores={masterstorm=0..}] masterstorm 1

execute as @e[tag=stormtnt] at @s run function items:masterstormmove

#mastershift
execute as @e[name=ground2] at @s run function items:masterground

#fireball mot
execute as @e[tag=trackshot2,tag=newbomb] at @s anchored eyes run function game:pro4mot
execute as @e[scores={fballtimer=3}] at @s run function game:pro4mot2
scoreboard players add @e[scores={fballtimer=1..}] fballtimer 1

#master tnt
scoreboard players add @e[tag=mastertnt] masterb 1
#execute as @e[tag=mastertnt,scores={masterb=2}] at @s run data merge entity @s {NoGravity:1}
execute as @e[tag=mastertnt,scores={masterb=14}] at @s run summon tnt ~ ~.4 ~ {Fuse:2}
execute as @e[tag=mastertnt,scores={masterb=14}] at @s run summon tnt ~ ~.4 ~ {Fuse:2}
kill @e[tag=mastertnt,scores={masterb=14}]

execute as @e[tag=mastertnt,tag=newbomb] at @s anchored eyes run function game:pro2mot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:salmon"}}] at @s run function game:pro2

execute as @e[tag=trackshot,tag=newbomb] at @s anchored eyes run function game:pro3mot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bamboo"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run summon minecraft:tnt ^ ^ ^3 {Fuse:2}
clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bamboo"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] arrow 1
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:flint"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run tag @s[scores={trapdraw=0}] add med
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bowl"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run tag @s[scores={trapdraw=0}] add fast

execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:flint"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run scoreboard players set @s[scores={trapdraw=0}] trapdraw 1
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bowl"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run scoreboard players set @s[scores={trapdraw=0}] trapdraw 1

execute as @a[gamemode=adventure,scores={trapdraw=2..}] at @s run function game:pro3

scoreboard players add @a[gamemode=adventure,scores={trapdraw=1..}] trapdraw 1
scoreboard players set @a[gamemode=adventure,scores={trapdraw=3..}] trapdraw 0

replaceitem entity @a[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] hotbar.0 bamboo{display:{Name:"{\"italic\":false,\"text\":\"§cShort Blast§r : Throw for mode 1 / Offhand for mode 3\"}"}}
replaceitem entity @a[gamemode=adventure,scores={class=3,bowlthrow=1..},x=620,y=20,z=620,distance=..100] hotbar.0 flint{display:{Name:"{\"italic\":false,\"text\":\"§cTNT Trap§r : Throw for mode 2 / Offhand for mode 3\"}"}}
replaceitem entity @a[gamemode=adventure,scores={class=3,bambthrow=1..},x=620,y=20,z=620,distance=..100] hotbar.0 flint{display:{Name:"{\"italic\":false,\"text\":\"§cTNT Trap§r : Throw for mode 2 / Offhand for mode 3\"}"}}

execute as @a[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 2
execute as @a[gamemode=adventure,scores={class=3,bowlthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.6
execute as @a[gamemode=adventure,scores={class=3,bambthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.6

execute as @a[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 1 1

replaceitem entity @a[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] hotbar.0 bowl{display:{Name:"{\"italic\":false,\"text\":\"§cFast Trap§r : Throw/Offhand for mode 1\"}"}}
replaceitem entity @a[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] hotbar.0 bowl{display:{Name:"{\"italic\":false,\"text\":\"§cFast Trap§r : Throw/Offhand for mode 1\"}"}}

execute as @a[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.4
execute as @a[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.4

execute as @a[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute as @a[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2


scoreboard players set @a bambthrow 0
scoreboard players set @a flintthrow 0
scoreboard players set @a bowlthrow 0

#ground path
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] at @s run function items:groundpathuse
execute as @e[tag=groundpath] at @s run function items:groundpath

#laser
execute as @a[x=600,y=60,z=600,distance=3..95,gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:rabbit_hide"}}] at @s run scoreboard players set @s laserDummy 30
execute as @a[x=600,y=60,z=600,distance=3..95,gamemode=adventure,scores={class=5,laserDummy=-300..}] at @s run function items:laser

# tracking bomb
effect give @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] minecraft:levitation 1
scoreboard players set @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] TBtimer 240
execute as @a[gamemode=adventure,scores={TBtimer=-10..}] at @s run function items:trackbomb

#vortex
scoreboard players remove @a[gamemode=adventure,scores={vortextime=0..}] vortextime 1
replaceitem entity @a[gamemode=adventure,scores={vortextime=1}] hotbar.5 minecraft:clay_ball{display:{Name:"{\"italic\":false,\"text\":\"§bVortex §r: Right-click\"}"}}
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s anchored eyes positioned ^ ^ ^3.7 run summon minecraft:armor_stand ~ ~1 ~ {NoGravity:1,Marker:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"vortex\"}"}
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s anchored eyes positioned ^ ^ ^3.7 run scoreboard players operation @e[name=vortex,limit=1,sort=nearest] tntID = @s tntID
scoreboard players set @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:clay_ball"}}] vortextime 300
execute as @a[gamemode=adventure,scores={vortextime=300}] at @s run playsound minecraft:ambient.underwater.enter master @a ~ ~ ~ .5 0
execute as @a[gamemode=adventure,scores={vortextime=300}] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ .5 2
execute as @a[gamemode=adventure,scores={vortextime=300}] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ .9 .6
execute as @a[gamemode=adventure,scores={vortextime=300}] at @s run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ .5 0
execute as @a[gamemode=adventure,scores={vortextime=300}] at @s run playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ .5 0
clear @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:clay_ball"}}] clay_ball

# platform
scoreboard players set @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] PlatTimer 120

execute as @a[gamemode=adventure,scores={click=1..,platUse=3},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
execute as @a[gamemode=adventure,scores={click=1..,platUse=2},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @a[gamemode=adventure,scores={click=1..,platUse=1},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @a[gamemode=adventure,scores={click=1..,platUse=0},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

scoreboard players remove @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1}] platUse 1

clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] diamond_sword
execute as @a[gamemode=adventure,scores={PlatTimer=120}] at @s positioned ~ ~-.1 ~ run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ .7 1
scoreboard players remove @a[gamemode=adventure,scores={PlatTimer=1..}] PlatTimer 1
execute as @a[gamemode=adventure,scores={platAm=1}] at @s positioned ~ ~-.1 ~ run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_stained_glass replace air
execute as @a[gamemode=adventure,scores={PlatTimer=119}] at @s positioned ~ ~-.1 ~ run scoreboard players set @s platAm 6
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=4}] hotbar.3 diamond_sword{Damage:100,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform §r: Right-click\"}"}}
scoreboard players add @e[name=SP] PlatTimer 1
execute as @e[name=SP,scores={PlatTimer=50..}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace white_stained_glass
kill @e[name=SP,scores={PlatTimer=50..}]
execute as @e[name=SP,scores={PlatTimer=..1}] at @s run teleport @p[distance=..1] ~ ~.2 ~
execute as @a at @s if block ~ ~ ~ white_stained_glass run teleport @s ~ ~1 ~
execute as @a[gamemode=adventure,scores={platAm=1}] at @s positioned ~ ~-.1 ~ run summon armor_stand ~ ~-1 ~ {NoGravity:1,Invlunerable:1,Marker:1,CustomName:"{\"italic\":false,\"text\":\"SP\"}",Invisible:1}
scoreboard players remove @a[gamemode=adventure,scores={platAm=1..}] platAm 1
execute as @a[gamemode=adventure,scores={platAm=6}] at @s run playsound minecraft:entity.illusion_illager.cast_spell master @a ~ ~ ~ 1 1.2
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=3}] hotbar.3 diamond_sword{Damage:390,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform §r: Right-click\"}"}}
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=2}] hotbar.3 diamond_sword{Damage:780,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform §r: Right-click\"}"}}
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=1}] hotbar.3 diamond_sword{Damage:1170,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform §r: Right-click\"}"}}



# tnt egg
execute as @e[name=tnt] at @s run summon tnt ~ ~.6 ~ {Fuse:4}
execute as @e[name=tnt] at @s run summon tnt ~ ~.6 ~ {Fuse:4}
tp @e[type=mooshroom,name=tnt] ~ ~-1000 ~

# acid
scoreboard players set @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:sugar"}}] acidTimer 60
execute as @a[gamemode=adventure,scores={acidTimer=1..}] at @s run function items:acid

execute as @e[name=acid,type=armor_stand] at @s run particle item_slime ~ ~ ~ .3 .3 .3 0 2 force
scoreboard players add @e[name=acid,type=armor_stand] acid 1
scoreboard players add @e[name=acid,type=armor_stand] acidTimer 1
execute as @e[name=acid,type=armor_stand] at @s if block ~ ~ ~ barrier run kill @e[name=acid,type=armor_stand,distance=..1]
execute as @e[name=acid,type=armor_stand] at @s if block ~ ~-.5 ~ barrier run kill @s
kill @e[name=acid,type=armor_stand,scores={acid=200..}]
execute as @e[name=acid,type=armor_stand,scores={acidTimer=2..}] at @s positioned ~ ~-.1 ~ unless block ~ ~ ~ air run playsound minecraft:block.stone.break master @a ~ ~ ~ .45 1

execute as @e[name=acid,type=armor_stand,scores={acidTimer=2..}] at @s positioned ~ ~ ~ run setblock ~ ~ ~ air

tag @e[name=acid,type=armor_stand,scores={acidTimer=2..}] remove g
execute as @e[name=acid,type=armor_stand,scores={acidTimer=2..}] at @s unless block ~.3 ~-.1 ~.3 air run tag @s add g
execute as @e[name=acid,type=armor_stand,scores={acidTimer=2..}] at @s unless block ~-.3 ~-.1 ~.3 air run tag @s add g
execute as @e[name=acid,type=armor_stand,scores={acidTimer=2..}] at @s unless block ~.3 ~-.1 ~-.3 air run tag @s add g
execute as @e[name=acid,type=armor_stand,scores={acidTimer=2..}] at @s unless block ~-.3 ~-.1 ~-.3 air run tag @s add g

execute as @e[name=acid,type=armor_stand,scores={acidTimer=2..},tag=g] at @s run tp @s ~ ~-.1 ~

scoreboard players set @e[name=acid,type=armor_stand,scores={acidTimer=2..}] acidTimer 0

#grab switch
function game:givegrab

#grab
scoreboard players add @e[name="Fishing Bobber"] fishingT 1
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect give @p slowness 3 255
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect clear @p jump_boost
#execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect give @p jump_boost 3 128
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run scoreboard players set @p stun 52
kill @e[type=armor_stand,name=Mark]
title @a[gamemode=adventure,scores={stun=32..}] title {"text":"SHIFT to escape","color":"red","bold":"true"}
title @a[gamemode=adventure,scores={stun=2}] title {"text":"","color":"red","bold":"true"}
scoreboard players remove @a[gamemode=adventure,scores={stun=0..}] stun 1
effect clear @a[gamemode=adventure,scores={stun=1}] slowness
#effect clear @a[gamemode=adventure,scores={stun=1}] jump_boost
effect give @a[gamemode=adventure,scores={stun=1,class=0},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
#effect give @a[gamemode=adventure,scores={stun=1,class=1},x=620,y=20,z=620,distance=..100] jump_boost 300 0 true
#effect give @a[gamemode=adventure,scores={stun=1,class=3},x=620,y=20,z=620,distance=..100] jump_boost 300 0 true
effect give @a[gamemode=adventure,scores={stun=1,class=4},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run execute as @e[distance=..1,name="Fishing Bobber",scores={fishingT=3..}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1.12
execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run scoreboard players set @a[gamemode=adventure,distance=..1,scores={stun=9..}] stun 9
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1] at @s run scoreboard players add @p TimeStun 1
scoreboard players set @a[gamemode=adventure,scores={stun=1}] TimeStun 0
execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run kill @e[distance=..1,name="Fishing Bobber",scores={fishingT=5..}]
scoreboard players set @a[gamemode=adventure,scores={shStun=1..,stun=35..}] stun 35
effect give @a[gamemode=adventure,scores={class=5,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
effect give @a[gamemode=adventure,scores={class=6,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
effect give @a[gamemode=adventure,scores={class=7,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
effect give @a[gamemode=adventure,scores={class=2,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
scoreboard players set @a[gamemode=adventure,scores={shStun=1}] shStun -3
scoreboard players set @a[gamemode=adventure,scores={shStunD=1..,shStun=..-1}] shStun -3
scoreboard players add @a[gamemode=adventure,scores={shStun=..-1}] shStun 1
scoreboard players set @a[gamemode=adventure,scores={shStunD=1..,shStun=0}] shStun 1
scoreboard players set @a shStunD 0
scoreboard players add @a shStun 0

#boom wand
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={class=7}] at @s anchored eyes run function items:boomwman

#echo wall limit
tag @a[nbt={OnGround:1b},scores={grtest=0}] remove nowalllev

#blast wand
scoreboard players set @a[nbt={OnGround:1b},scores={grtest=0}] bwandlimit 0
scoreboard players remove @a[gamemode=adventure,scores={blastwandtime=0..}] blastwandtime 1
execute as @a[gamemode=adventure,scores={click=1..,blastwandtime=..0,bwandlimit=..3},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run function items:blastwand
execute as @e[name=blast] at @s run function game:blasttick
replaceitem entity @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={blastwandtime=0}] hotbar.2 minecraft:stone_hoe{display:{Name:"{\"italic\":false,\"text\":\"§aBlast Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}

scoreboard players remove @a[scores={grtest=1..}] grtest 1

#sky wand
scoreboard players remove @a[gamemode=adventure,scores={airwandtime=0..}] airwandtime 1
execute as @a[gamemode=adventure,scores={click=1..,airwandtime=..0},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] at @s run function items:airwand
replaceitem entity @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={airwandtime=0}] hotbar.3 minecraft:diamond_hoe{display:{Name:"{\"italic\":false,\"text\":\"§bSky Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}

#ground spell
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={click=1..},nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run function items:groundspell
scoreboard players remove @a[gamemode=adventure,scores={groundtime=1..}] groundtime 1

scoreboard players add @e[name=ground] gtimer 1
execute as @e[name=ground,scores={gtimer=500..}] at @s run function items:groundspelldecay

#scythe
tag @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add pro1
clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] iron_hoe
scoreboard players set @a throwP1 0
effect give @a[gamemode=adventure,tag=pro1] minecraft:slow_falling 1 10
execute as @a[gamemode=adventure,tag=pro1] at @s positioned ~ ~ ~ run function game:pro1
tag @a remove pro1
execute as @e[name=pro1] at @s positioned ~ ~ ~ run function game:movevol
scoreboard players add @e[name=pro1] prolife 1
kill @e[scores={prolife=60..}]
scoreboard players remove @e[tag=!boom,name=pro1,scores={DirX=-70..}] DirX 1

scoreboard players remove @a[gamemode=adventure,scores={Sreload=0..}] Sreload 1

#feather
effect give @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] speed 1 4
effect give @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] levitation 1 0
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ .6 .8
scoreboard players add @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] featheruse 1

execute as @a[gamemode=adventure,scores={click=1..,featheruse=1},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
execute as @a[gamemode=adventure,scores={click=1..,featheruse=2},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @a[gamemode=adventure,scores={click=1..,featheruse=3},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @a[gamemode=adventure,scores={click=1..,featheruse=4},nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Feather","color":"gray","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:feather"}}] feather 1

# sneak attack
execute as @e[type=squid] at @s run summon tnt ~ ~1 ~ {Fuse:3}
execute as @e[type=squid] at @s run summon tnt ~ ~1 ~ {Fuse:3}
execute as @e[type=squid] at @s run summon tnt ~ ~1 ~ {Fuse:3}
execute as @e[type=squid] at @s run tp @s ~ ~-1000 ~

# freeze
#execute as @e[scores={frozen=15..}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"FZ\"}"}
#execute as @e[scores={frozen=15..}] at @s run tp @e[distance=..1,name=FZ,limit=1] @s
#execute as @e[scores={frozen=15..}] at @s run tp @s @e[distance=..1,name=FZ,limit=1]
execute as @e[scores={frozen=15..}] at @s run tp @s @s
#kill @e[type=armor_stand,name=FZ]
scoreboard players remove @e[scores={frozen=1..}] frozen 1
title @a[gamemode=adventure,scores={frozen=39..}] title {"text":"FROZEN","color":"dark_aqua"}
title @a[gamemode=adventure,scores={frozen=1}] title {"text":"","color":"dark_aqua"}
effect give @e[scores={frozen=30..}] levitation 2 0 true
effect give @e[scores={frozen=20..}] glowing 1 0 true

#pig
scoreboard players add @e[type=pig] egg 1
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s run execute as @e[scores={egg=..1},limit=1,type=pig] at @s run teleport @p[scores={class=4,egg=1..}] ~ ~ ~
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s run tp @s @s
scoreboard players set @a[gamemode=adventure,scores={class=4,egg=1..}] pig 41
scoreboard players set @a[gamemode=adventure,scores={class=4}] egg 0
execute as @e[type=pig] at @s run data merge entity @s {Invulnerable:1}
scoreboard players set @e[type=pig,scores={egg=..1}] pig 41
kill @e[type=pig,scores={pig=..0}]
execute as @a[gamemode=adventure,scores={pig=-100..}] at @s run function game:pig
scoreboard players remove @e[scores={pig=-100..}] pig 1

#power shield
execute as @a[gamemode=adventure,scores={powerAn=1},x=600,y=60,z=600,distance=3..100] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"italic\":false,\"text\":\"PS\"}",Marker:1,NoGravity:1,Invulnerable:1,Invisible:1}
scoreboard players set @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:stick"}}] PStimer 160
clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:stick"}}] stick
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:stick"}}] at @s run playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~
scoreboard players remove @a[gamemode=adventure,scores={PStimer=1..}] PStimer 1
scoreboard players set @a[gamemode=adventure,scores={PStimer=159}] powerAn 7
execute as @a[gamemode=adventure,scores={PStimer=148}] at @s run tp @s @s
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PStimer=1}] hotbar.3 stick{display:{Name:"{\"italic\":false,\"text\":\"§9Power Shield §r: Right-click\"}"}}
scoreboard players add @e[name=PS,type=armor_stand] PS 1
execute as @e[name=PS,type=armor_stand,scores={PS=..4},x=600,y=60,z=600,distance=3..100] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 white_stained_glass replace air
execute as @e[name=PS,type=armor_stand,scores={PS=55..},x=600,y=60,z=600,distance=3..100] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace white_stained_glass
kill @e[name=PS,type=armor_stand,scores={PS=55..}]
execute as @e[name=PS,type=armor_stand,scores={PS=..4},x=600,y=60,z=600,distance=3..100] at @s run fill ~-1 ~0 ~-1 ~1 ~2 ~1 air replace white_stained_glass
execute as @e[name=PS,type=armor_stand,scores={PS=..2}] at @s positioned ~ ~.2 ~ run teleport @s @s
execute as @e[name=PS,type=armor_stand,scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~ ~ ~3.9 {Fuse:3}
execute as @e[name=PS,type=armor_stand,scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~ ~ ~-3.9 {Fuse:3}
execute as @e[name=PS,type=armor_stand,scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~3.9 ~ ~ {Fuse:3}
execute as @e[name=PS,type=armor_stand,scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~-3.9 ~ ~ {Fuse:3}
execute as @e[type=tnt] at @s if block ~ ~ ~ barrier run kill @e[type=tnt,distance=..1]
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..100,scores={powerAn=1}] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"italic\":false,\"text\":\"PS\"}",Marker:1,NoGravity:1,Invulnerable:1,Invisible:1}
scoreboard players remove @a[gamemode=adventure,scores={powerAn=-10..}] powerAn 1
execute as @a[gamemode=adventure,scores={powerAn=6}] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.3 .5
execute as @a[gamemode=adventure,scores={powerAn=6}] at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ .4 2

# detonation
scoreboard players add @e[type=arrow] BowTime 1
scoreboard players set @e[type=arrow,scores={BowTime=..1},tag=!trackshot] BombBow 0
execute as @a[gamemode=adventure,scores={class=3,BowUse=1..}] at @s run scoreboard players set @e[type=arrow,scores={BowTime=..2},distance=..5] BombBow 1
execute as @a[gamemode=adventure,scores={class=3,BowUse=1..}] at @s run scoreboard players operation @e[type=arrow,scores={BowTime=..2},distance=..5] tntID = @p tntID
scoreboard players set @a BowUse 0
kill @e[type=arrow,scores={BombBow=1..,BowTime=300..}]
execute as @e[type=arrow,scores={BombBow=1..}] at @s run data merge entity @s {pickup:0}
execute as @a[gamemode=adventure,scores={class=3,BowUse=1..}] at @s run scoreboard players operation @e[type=arrow,scores={BowTime=..2},distance=..5] tntID = @p tntID
scoreboard players set @a[gamemode=adventure,sort=random,limit=1,scores={BombExplode=1..},nbt={SelectedItem:{id:"minecraft:bone"}}] RanExplode 1
scoreboard players operation @e[scores={BombBow=1..}] tntID -= @p[scores={RanExplode=1..}] tntID
execute as @e[type=arrow,tag=!trapchick,scores={BombBow=1..,tntID=0}] at @s run summon tnt ~ ~.55 ~ {Fuse:2,NoGravity:0}
execute as @e[type=arrow,tag=trapchick,scores={BombBow=1..,tntID=0}] at @s run summon chicken ~ ~ ~ {Tags:["exchicken"],Invulnerable:1}
kill @e[type=arrow,scores={BombBow=1..,tntID=0}]
scoreboard players operation @e[scores={BombBow=1..}] tntID += @p[scores={RanExplode=1..}] tntID
scoreboard players set @a[gamemode=adventure,nbt=!{SelectedItem:{id:"minecraft:bone"}}] BombExplode 0
scoreboard players set @a[gamemode=adventure,scores={RanExplode=1..}] BombExplode 0
execute as @a[gamemode=adventure,scores={RanExplode=1..}] at @s run playsound minecraft:block.piston.extend master @p ~ ~ ~ 1 2
scoreboard players set @a[gamemode=adventure,scores={RanExplode=1..}] RanExplode 0
execute as @e[scores={BombBow=1..}] at @s run data merge entity @s {NoGravity:1}

# platform
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100] at @s run function game:gravetrap
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100] at @s run function game:boosttrap

effect clear @a wither

# creepers and slimes
effect give @e[name=Bomb,type=creeper] slowness 999 100 true
effect give @e[type=slime] slowness 999 100 true
effect give @e[type=slime] resistance 999 100 true
effect give @e[type=creeper] resistance 999 100 true

scoreboard players add @e[type=slime,tag=s1] slimeT 1
execute as @e[type=slime,scores={slimeT=8}] at @s run data merge entity @s {Size:2}
execute as @e[type=slime,scores={slimeT=18}] at @s run data merge entity @s {Size:3}
execute as @e[type=slime,scores={slimeT=35}] at @s run data merge entity @s {Size:4}
scoreboard players add @e[name=Bomb,type=creeper] Ctimer 1
execute as @e[scores={Ctimer=17..}] at @s run summon minecraft:creeper ~ ~ ~ {ignited:1,Fuse:4,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"{\"italic\":false,\"text\":\"Bomb\"}",Health:500,powered:1,ExplosionRadius:2,Invulnerable:1,NoAI:1}
execute as @e[type=slime,scores={slimeT=47}] at @s run data merge entity @s {Size:5}
execute as @e[type=slime,scores={slimeT=60}] at @s run data merge entity @s {Size:6}

# sythe reloading
replaceitem entity @a[gamemode=adventure,scores={class=6,Sreload=0},x=600,y=60,z=600,distance=3..100] hotbar.1 iron_hoe{display:{Name:"{\"italic\":false,\"text\":\"§aScythe §r: Right-click to throw\"}"},Enchantments:[{id:knockback,lvl:6}],Unbreakable:1}

# smoke bomb
execute as @e[type=experience_bottle] at @s run kill @e[type=area_effect_cloud,name=place,distance=..4]
execute as @a[gamemode=adventure,scores={Escape=1..}] at @s run particle spit ~ ~ ~ .5 1 .5 .1 20 force
scoreboard players add @e[type=area_effect_cloud,name=place] XPTimer 1
execute as @e[type=experience_bottle] at @s run summon area_effect_cloud ~ ~ ~ {Potion:"minecraft:strong_healing",Duration:3,Tags:["a"],CustomName:"{\"italic\":false,\"text\":\"place\"}"}
execute as @e[type=area_effect_cloud,name=place,scores={XPTimer=2..}] at @s run summon tnt ~ ~.1 ~ {Fuse:14,Tags:["sit"],NoAI:1,NoGravity:1}
execute as @e[type=area_effect_cloud,name=place,scores={XPTimer=2..}] at @s run summon tnt ~ ~.11 ~ {Fuse:16,Tags:["sit"],NoAI:1,NoGravity:1}
execute if entity @e[scores={mode=1}] run execute as @e[type=area_effect_cloud,name=place,scores={XPTimer=2..}] at @s run summon tnt ~ ~.11 ~ {Fuse:16,Tags:["sit"],NoAI:1,NoGravity:1}
clear @a[gamemode=adventure,scores={Escape=1..}] experience_bottle
kill @e[type=experience_orb]
scoreboard players set @a[gamemode=adventure,scores={Escape=1..,XPReset=..0}] XPReset 100
scoreboard players set @a[gamemode=adventure,scores={Escape=1..,XPReset=90}] XPReset 89
effect give @a[gamemode=adventure,scores={Escape=1..}] invisibility 2 1
scoreboard players remove @a[gamemode=adventure,scores={XPReset=0..89}] XPReset 1
scoreboard players remove @a[gamemode=adventure,scores={XPReset=91..}] XPReset 1
#replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=1}] hotbar.1 experience_bottle{display:{Name:"{\"italic\":false,\"text\":\"§7Smoke Bomb §r: Right-click\"}"}} 2
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=50}] hotbar.1 minecraft:coal{display:{Name:"{\"italic\":false,\"text\":\"§9Air Missile§r : Right-click\"}"}}
tag @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=50}] add coal
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=91}] hotbar.1 experience_bottle{display:{Name:"{\"italic\":false,\"text\":\"§7Smoke Bomb §r: Right-click\"}"}}
scoreboard players set @a[gamemode=adventure,scores={Escape=1..}] Invis 24
execute as @e[type=experience_bottle] at @s run particle spit ~ ~ ~ .5 .5 .5 .1 4 force
scoreboard players reset @a Escape
#scoreboard players remove @a[gamemode=adventure,score_Invis_min=1] Invis 1
execute as @e[tag=sit] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]}

#air grenade
execute as @e[tag=airnade] at @s run function items:airnade

# mass lev
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run function items:masslev
#effect give @a[gamemode=adventure,scores={mTtimer=119}] levitation 1 1
scoreboard players remove @a[gamemode=adventure,scores={mTtimer=1..}] mTtimer 1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={mTtimer=1}] hotbar.3 iron_ingot{display:{Name:"{\"italic\":false,\"text\":\"Mass Levitate §r: Right-click [everyone within 3 blocks]\"}"}}

# pearls
scoreboard players add @e[type=minecraft:ender_pearl] enderT 1
execute as @a[gamemode=adventure,scores={ender=1..}] at @s run scoreboard players operation @e[sort=nearest,type=ender_pearl,scores={enderT=1}] tntID = @s tntID

scoreboard players add @a[gamemode=adventure,scores={ender=1..}] enderct 1

execute as @a[scores={ender=1..,endercount=1,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (5 Remaining) ","color":"white"}]
execute as @a[scores={ender=1..,endercount=2,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (4 Remaining) ","color":"white"}]
execute as @a[scores={ender=1..,endercount=3,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
execute as @a[scores={ender=1..,endercount=4,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @a[scores={ender=1..,endercount=5,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @a[scores={ender=1..,endercount=6,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

execute as @a[scores={ender=1..,endercount=1,class=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
execute as @a[scores={ender=1..,endercount=2,class=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @a[scores={ender=1..,endercount=3,class=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @a[scores={ender=1..,endercount=4,class=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

#effect give @a[gamemode=adventure,scores={ender=1..,class=0}] invisibility 3 0 true
effect give @a[gamemode=adventure,scores={ender=1..,class=1..2}] invisibility 2 0 true
scoreboard players set @a[gamemode=adventure,scores={ender=1..,class=1..2}] Invis 40
#scoreboard players set @a[gamemode=adventure,scores={ender=1..,class=0}] Invis 30
scoreboard players set @a[gamemode=adventure,scores={ender=1..,class=2}] enderreload 340
scoreboard players set @a[gamemode=adventure,scores={ender=1..,class=1}] sneakdisable 40
clear @a[gamemode=adventure,scores={ender=1..,class=1}] squid_spawn_egg
scoreboard players set @a ender 0

scoreboard players remove @a[gamemode=adventure,scores={enderreload=1..,class=2}] enderreload 1

# set portal
scoreboard players set @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:ink_sac"}}] SPorttimer 210
execute as @a[gamemode=adventure,scores={SPorttimer=210}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ .7 .8
execute as @a[gamemode=adventure,scores={SPorttimer=205}] at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 .9
execute as @a[gamemode=adventure,scores={SPorttimer=210}] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ .2 1.2
execute as @a[gamemode=adventure,scores={SPorttimer=210}] at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ .12 1.2
clear @a[gamemode=adventure,scores={SPorttimer=210}] ink_sac
scoreboard players remove @a[gamemode=adventure,scores={SPorttimer=1..}] SPorttimer 1
scoreboard players set @a[gamemode=adventure,scores={SPorttimer=209}] SetPortal 1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={SPorttimer=1}] hotbar.1 ink_sac{display:{Name:"{\"italic\":false,\"text\":\"§2Set Portal §r: Right-click (lasts 6 seconds) [16 block range]\"}"}}

# plague
tag @a[gamemode=adventure,scores={plagueuse=1..}] remove checkairnade
scoreboard players set @a[gamemode=adventure,scores={plagueuse=1..}] plaguetimer 200
scoreboard players set @a[gamemode=adventure,scores={plagueuse=1..}] plagueuse 0
scoreboard players remove @a[gamemode=adventure,scores={plaguetimer=0..}] plaguetimer 1
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={plaguetimer=0,class=8}] hotbar.2 minecraft:lingering_potion{Potion:"minecraft:poison",display:{Name:"{\"italic\":false,\"text\":\"§2Plague §r: Right-click\"}"}}
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={plaguetimer=150,class=0}] hotbar.1 snowball{display:{Name:"{\"italic\":false,\"text\":\"§2Slimer §f§r: Right-click (hit players)\"}"}}
scoreboard players set @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,plaguetimer=-1},nbt=!{Inventory:[{id:"minecraft:lingering_potion"}]}] plaguetimer 1

#phantom lev
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] at @s run function items:phantomlev

#acid rain
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:apple"}}] at @s run function items:acidrain

#phantom boost
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cookie"}}] at @s run function items:phantomboost

#extra life
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bread"}}] at @s run function items:extralife

#chicken bow
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:potato"}}] at @s run function items:chickenbow

#phantom missile
execute as @e[tag=phantommissile] at @s run function game:missile
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:porkchop"}}] at @s run function items:phantommissile

#phantom air missile
execute as @e[tag=phantomairmissile] at @s run function game:airmissile
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_porkchop"}}] at @s run function items:phantomairmissile

#chicken bow
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={chickenbow=1..4}] at @s run playsound minecraft:entity.chicken.death master @a ~ ~ ~ 1 1.5
scoreboard players remove @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100] chickenbow 1

#ghost missile
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:coal"}}] at @s run function items:ghostmissile
#replaceitem entity @a[gamemode=adventure,scores={misreload=1,class=2},x=620,y=20,z=620,distance=..100] hotbar.5 minecraft:coal{display:{Name:"{\"italic\":false,\"text\":\"§9Air Missile§r : Right-click\"}"}}
replaceitem entity @a[gamemode=adventure,scores={misreload=20,class=2},x=620,y=20,z=620,distance=..100] hotbar.1 experience_bottle{display:{Name:"{\"italic\":false,\"text\":\"§7Smoke Bomb §r: Right-click\"}"}} 2
scoreboard players remove @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100] misreload 1

#DPeffect
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={DPeffect=1..}] run function items:dpeffect
scoreboard players remove @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100] chickenbow 1

#scythe begone
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8}] at @s run clear @a[gamemode=adventure,distance=..3.5,scores={class=6}] iron_hoe
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8}] at @s run execute as @a[gamemode=adventure,distance=..3.5,scores={Sreload=..10,class=6}] at @s run particle minecraft:item iron_block ~ ~.4 ~ .3 .4 .3 .05 2 force
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8}] at @s run scoreboard players set @a[gamemode=adventure,distance=..3.5,scores={Sreload=..10,class=6}] Sreload 10

scoreboard players set @a click 0

execute as @e[tag=tnttrack] at @s run function game:tnttrack

clear @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] minecraft:carrot_on_a_stick
replaceitem entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand minecraft:carrot_on_a_stick

#reaper egg sound
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={slimeplace=1..}] at @s run playsound minecraft:entity.slime.death master @a ~ ~ ~ 1 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={slimeplace=1..}] at @s run playsound minecraft:entity.slime.hurt master @a ~ ~ ~ 1 2
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={creepplace=1..}] at @s run playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={creepplace=1..}] at @s run playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 1
scoreboard players set @a slimeplace 0
scoreboard players set @a creepplace 0

#inventory correction
tag @a remove corinv
tag @a[gamemode=adventure,x=594.1,z=594.1,y=0,dx=48.8,dz=48.8,dy=108,distance=..1000] add corinv
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,tag=corinv] at @s run function game:invcorrect

# wizard bow
scoreboard players add @e[type=arrow] ballArrowT 1
scoreboard players set @a[gamemode=adventure,scores={class=4}] wizItem 0
scoreboard players set @a[gamemode=adventure,scores={class=4},nbt={SelectedItemSlot:0}] wizItem 1
scoreboard players set @a[gamemode=adventure,scores={class=4},nbt={SelectedItemSlot:1}] wizItem 2
scoreboard players set @a[gamemode=adventure,scores={class=4},nbt={SelectedItemSlot:2}] wizItem 3
scoreboard players set @e[scores={ballArrowT=..1}] isBall 0
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=1}] at @s run function game:pro4
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=1}] at @s run kill @e[distance=..5,type=arrow,scores={ballArrowT=..1}]
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=2}] at @s run scoreboard players set @e[distance=..5,type=arrow,scores={ballArrowT=..1}] isBall 2
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=3}] at @s run scoreboard players set @e[distance=..5,type=arrow,scores={ballArrowT=..1}] isBall 3
#clear @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=3}] tipped_arrow
scoreboard players set @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=3}] bow 1
scoreboard players set @a shootBall 0

scoreboard players set @a[gamemode=adventure,scores={class=4}] wizCheck 0
scoreboard players add @a[gamemode=adventure,scores={class=4},tag=haspup] wizCheck 3
scoreboard players add @a[gamemode=adventure,scores={class=4},nbt={Inventory:[{Slot:0b,id:"minecraft:fishing_rod"}]}] wizCheck 3
scoreboard players add @a[gamemode=adventure,scores={class=4},nbt={Inventory:[{Slot:0b,id:"minecraft:bow"}]}] wizCheck 1
scoreboard players add @a[gamemode=adventure,scores={class=4},nbt={Inventory:[{Slot:1b,id:"minecraft:bow"}]}] wizCheck 1
scoreboard players add @a[gamemode=adventure,scores={class=4},nbt={Inventory:[{Slot:2b,id:"minecraft:bow"}]}] wizCheck 1
clear @a[gamemode=adventure,scores={class=4,wizCheck=..2}] bow
clear @a[gamemode=adventure,scores={class=4,wizCheck=..2},x=600,y=60,z=600,distance=4..100,tag=!pig,tag=!haspup] gray_stained_glass_pane
replaceitem entity @a[gamemode=adventure,scores={class=4,wizCheck=..2},x=600,y=60,z=600,distance=4..100,tag=!pig,tag=!haspup] hotbar.0 bow{Damage:100,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§4Fireball§r : Throw to switch\"}"}}
replaceitem entity @a[gamemode=adventure,scores={class=4,wizCheck=..2},x=600,y=60,z=600,distance=4..100,tag=!pig,tag=!haspup] hotbar.1 bow{Damage:120,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§ePowderize§r : Throw to switch\"}"}}
replaceitem entity @a[gamemode=adventure,scores={class=4,wizCheck=..2},x=600,y=60,z=600,distance=4..100,tag=!pig,tag=!haspup] hotbar.2 bow{Damage:140,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§3Teleport§r : Throw to switch\"}"}}
replaceitem entity @a[gamemode=adventure,scores={class=4,wizCheck=..2},x=600,y=60,z=600,distance=4..100,tag=!pig,tag=haspup] hotbar.1 gray_stained_glass_pane{display:{Name:"{\"italic\":false,\"text\":\"§7Unavailable\"}"}}
replaceitem entity @a[gamemode=adventure,scores={class=4,wizCheck=..2},x=600,y=60,z=600,distance=4..100,tag=!pig,tag=haspup] hotbar.2 gray_stained_glass_pane{display:{Name:"{\"italic\":false,\"text\":\"§7Unavailable\"}"}}
clear @a[gamemode=adventure,scores={class=4,wizCheck=..2},x=600,y=60,z=600,distance=4..100] fishing_rod
replaceitem entity @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={class=4,pig=2..}] hotbar.0 minecraft:pink_stained_glass_pane
replaceitem entity @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={class=4,pig=2..}] hotbar.1 minecraft:pink_stained_glass_pane
replaceitem entity @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={class=4,pig=2..}] hotbar.2 minecraft:pink_stained_glass_pane
tag @a[gamemode=adventure,scores={pig=1..}] add pig
tag @a[gamemode=adventure,scores={pig=..0}] remove pig

#remove fire
scoreboard players add @e[tag=firecheck] firer 1
execute as @e[tag=firecheck,scores={firer=2..}] at @s unless entity @e[type=fireball,distance=..6] run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace fire
kill @e[tag=firecheck,scores={firer=2..}]
execute as @e[type=fireball] at @s run summon armor_stand ~ ~ ~ {Tags:["firecheck"],Marker:1,Invulnerable:1}