clear @s

effect give @s minecraft:blindness 2 0
effect give @s minecraft:poison 3 6
effect give @s minecraft:glowing 5 10

scoreboard players set @s Sreload 0
scoreboard players set @s endercount 0
scoreboard players set @s potion 0
scoreboard players set @s snowReset 0
scoreboard players set @s XPReset 0
scoreboard players set @s FZtimer 0
scoreboard players set @s BBtimer 0
scoreboard players set @s TBtimer -100
scoreboard players set @s mTtimer 0
scoreboard players set @s PlatTimer 0
scoreboard players set @s PlaceMineTime 0
scoreboard players set @s tntegguse 0
scoreboard players set @s boomwandtime 0
scoreboard players set @s blastwandtime 0
scoreboard players set @s airwandtime 0
scoreboard players set @s vortextime 0
scoreboard players set @s pig -101
scoreboard players set @s groundtime 0
scoreboard players set @s grounduse 0
scoreboard players set @s rjump 0
scoreboard players set @s PStimer 0
scoreboard players set @s acidTimer 0
scoreboard players set @s ghostshift 0
scoreboard players set @s plaguetimer 60

scoreboard players operation @s realclass = @s class
scoreboard players set @p class 8
execute unless entity @e[scores={mode=1}] run replaceitem entity @s hotbar.0 minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:2}]}
execute if entity @e[scores={mode=1}] run replaceitem entity @s hotbar.0 minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:3}]}
#replaceitem entity @s hotbar.5 arrow{display:{Name:"{\"italic\":false,\"text\":\"Not your father's Blast Off\"}"}}
scoreboard players set @s bow 0
replaceitem entity @s hotbar.4 minecraft:paper{display:{Name:"{\"italic\":false,\"text\":\"§6You can now PvP with players :D\"}"}}
replaceitem entity @s hotbar.5 minecraft:paper{display:{Name:"{\"italic\":false,\"text\":\"§6Shift for retro trapper simulator\"}"}}
replaceitem entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.6 paper{display:{Name:"{\"italic\":false,\"text\":\"§6Scythe begone\"}"}}
team join gardener @s
replaceitem entity @s hotbar.8 minecraft:potion{display:{Name:"{\"italic\":false,\"text\":\"§dLeave Game\"}"}}
replaceitem entity @s hotbar.3 stone_pressure_plate{display:{Name:"{\"italic\":false,\"text\":\"§7Grave Trap §r: Right-click\"}"},CanPlaceOn:[infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,cyan_terracotta,lever,tnt,prismarine_stairs,andesite,smooth_sandstone_slab,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,smooth_sandstone,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,white_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,packed_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,emerald_block,prismarine],EntityTag:{id:creeper,ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:Bomb,Health:500,ExplosionRadius:4},HideFlags:16} 12


tag @s add plague