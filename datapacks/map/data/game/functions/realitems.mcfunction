scoreboard players set @e[type=item] Mine 0
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] Mine 2
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:tnt"}},tag=!new] Mine 1
tag @e[type=item,nbt={Item:{id:"minecraft:tnt"}},tag=!new] add new
execute if entity @e[scores={mode=1}] run execute as @e[type=item,scores={Mine=1..}] at @s run data merge entity @s {PickupDelay:9}
execute unless entity @e[scores={mode=1}] run execute as @e[type=item,scores={Mine=1..}] at @s run data merge entity @s {PickupDelay:13}
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:tnt"}}] Mine 1
#scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:anvil"}}] Mine 3
kill @e[type=item,scores={Mine=..0}]
#execute as @e[type=item,scores={Mine=3}] at @s run data merge entity @s {PickupDelay:0,Invulnerable:1}
execute as @e[type=item,scores={Mine=1..}] at @s run data merge entity @s {Invulnerable:1,Item:{tag:{display:{Name:Mine}}}}
scoreboard players set @a HoldMine 0
scoreboard players set @a[nbt={Inventory:[{tag:{display:{Name:"Mine"}}}]}] HoldMine 1
clear @a[scores={HoldMine=1..}] tnt{display:{Name:Mine}} 1
execute as @a[scores={HoldMine=1..},x=600,z=600,y=60,distance=..100] at @s run summon tnt ~ ~ ~
execute as @a[scores={HoldMine=1..},x=600,z=600,y=60,distance=..100] at @s run summon tnt ~ ~ ~
scoreboard players add @a[scores={placetnt=1..}] PlaceMine 1
scoreboard players remove @a[scores={placetnt=1..}] placetnt 1
scoreboard players set @a[scores={PlaceMine=2..}] PlaceMineTime 200
scoreboard players set @a[scores={PlaceMine=2..}] PlaceMine 0
scoreboard players remove @a[scores={PlaceMineTime=1..}] PlaceMineTime 1
scoreboard players set @a[scores={PlaceMine=1,PlaceMineTime=1..}] PlaceMineTime 200
scoreboard players set @a[scores={PlaceMine=1,PlaceMineTime=1..}] PlaceMine 0

tag @a[scores={PlaceMine=1,PlaceMineTime=0}] add plm1
scoreboard players set @a[tag=plm1] PlaceMineTime 144
scoreboard players set @a[tag=plm1] PlaceMine 0
tag @a remove plm1

item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={PlaceMineTime=145}] hotbar.2 with tnt{display:{Name:"{\"italic\":false,\"text\":\"§4Mine §f: Throw/Right-click\"}"},HideFlags:16,CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,smooth_sandstone,cyan_terracotta,lever,tnt,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,andesite,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,granite,polished_granite,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,blue_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,end_stone_brick_stairs,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,prismarine]} 1
item replace entity @a[x=600,y=60,z=600,distance=3..95,scores={PlaceMineTime=90}] hotbar.2 with tnt{display:{Name:"{\"italic\":false,\"text\":\"§4Mine §f: Throw/Right-click\"}"},HideFlags:16,CanPlaceOn:[smooth_sandstone_slab,infested_chiseled_stone_bricks,redstone_block,infested_stone_bricks,smooth_sandstone,cyan_terracotta,lever,tnt,dark_prismarine,prismarine_bricks,end_stone_bricks,acacia_wood,spruce_wood,smooth_stone_slab,smooth_stone,gravel,acacia_planks,gray_concrete_powder,light_gray_concrete_powder,white_concrete_powder,light_gray_glazed_terracotta,smooth_quartz,stripped_birch_wood,green_concrete_powder,stripped_dark_oak_wood,melon,lime_terracotta,green_terracotta,brown_terracotta,smooth_red_sandstone,yellow_concrete_powder,snow_block,blue_ice,yellow_concrete,yellow_stained_glass,black_wool,dead_brain_coral_block,dead_fire_coral_block,dead_horn_coral_block,sandstone,andesite,diorite,white_wool,purple_wool,gold_ore,pink_wool,white_stained_glass_pane,iron_door,stone_slab,oxeye_daisy,poppy,dandelion,azure_bluet,magenta_wool,oak_wood,mossy_stone_bricks,cracked_stone_bricks,bricks,quartz_slab,quartz_block,red_carpet,magma_block,black_terracotta,red_nether_bricks,nether_bricks,nether_brick_stairs,terracotta,oak_stairs,spruce_planks,dark_oak_planks,cut_sandstone,lapis_block,green_wool,red_wool,sandstone_slab,prismarine,dark_oak_log,carved_pumpkin,acacia_leaves,blue_orchid,cobblestone_slab,cobblestone_stairs,wall_sign,coarse_dirt,pumpkin,white_concrete_powder,nether_wart_block,light_gray_stained_glass,coal_block,rail,soul_sand,nether_brick_slab,brown_wool,nether_brick_fence,iron_bars,polished_andesite,netherrack,black_stained_glass,stone_bricks,grass_block,andesite,oak_planks,birch_planks,oak_log,blue_terracotta,pink_terracotta,purple_terracotta,light_blue_terracotta,oak_fence,oak_slab,red_sand,orange_terracotta,red_terracotta,yellow_terracotta,black_concrete,white_concrete,cobblestone_wall,sea_lantern,chiseled_stone_bricks,stone_brick_stairs,stone_brick_slab,magenta_terracotta,spruce_log,spruce_slab,granite,polished_granite,birch_log,white_pink_snow_block,concrete,grass,stone,end_stone,snow,bedrock,obsidian,ice,blue_ice,soul_sand,quartz_stairs,pumpkin,purpur_block,purpur_pillar,purpur_stairs,quartz_stairs,quartz_block,web,prismarine_brick_stairs,dark_prismarine_slab,birch_stairs,granite,polished_granite,cyan_stained_glass,blue_stained_glass,glass,green_stained_glass,lime_stained_glass,smooth_sandstone,prismarine_brick_slab,brick_slab,end_stone_brick_slab,end_stone_brick_stairs,ladder,cobblestone,cobblestone_wall,stone_brick_stairs,coal_block,iron_block,red_sandstone,sand,gold_block,emerald_block,glowstone,prismarine]} 2
execute as @a[scores={HoldMine=1..}] at @s run effect give @s blindness 1
execute as @e[type=item,scores={Mine=..0}] at @s run tp @e[distance=..0,limit=1,scores={Mine=..0}] @p
scoreboard players add @e[type=item] egg 1
execute as @e[type=item,scores={egg=30..},nbt={Item:{id:"minecraft:nether_star"}}] at @s run summon tnt ~ ~ ~ {Fuse:2}
execute as @e[type=item,scores={egg=30..},nbt={Item:{id:"minecraft:nether_star"}}] at @s run summon tnt ~ ~ ~ {Fuse:2}
kill @e[type=item,scores={egg=30..},nbt={Item:{id:"minecraft:nether_star"}}]
kill @e[type=item,scores={egg=100..},nbt={Item:{id:"minecraft:tnt"}}]
execute as @e[type=item,scores={Mine=2..}] at @s run data merge entity @s {NoGravity:1,Invulnerable:1,Item:{Count:64b}}

execute as @a at @s run execute as @e[limit=1,type=item,scores={Mine=2..,egg=6},distance=..20] at @s run summon magma_cube ~ ~ ~ {NoGravity:1,NoAI:0,Invulnerable:1,Size:2,CustomName:"{\"text\":\"star\"}",Silent:1,Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0}]}
execute as @e[type=magma_cube] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @e[type=magma_cube] at @s run tp @s ~ ~ ~ 0 0
effect give @e[type=magma_cube] invisibility 1 0 true

tag @e[type=magma_cube] remove star
execute as @e[type=item,scores={Mine=2..,egg=6..}] at @s positioned ~ ~-.4 ~ run function game:getcube
tp @e[type=magma_cube,tag=!star] ~ ~-1000 ~
effect give @e[type=magma_cube] glowing

tp @e[type=magma_cube,limit=1,scores={egg=288..}] ~ ~-2000 ~
effect give @e[type=magma_cube] invisibility 5 1 true
scoreboard players add @e[type=magma_cube] egg 1
tag @e[type=item,nbt={Item:{id:"bow"}}] add killI
tag @e[type=item,nbt={Item:{id:"fishing_rod"}}] add killI
kill @e[type=item,tag=killI]