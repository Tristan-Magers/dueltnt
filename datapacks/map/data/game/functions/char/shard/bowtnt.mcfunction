function game:char/shard/tntfill
#fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:end_stone_brick_slab[type=double] replace minecraft:blue_ice

#fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:air replace minecraft:end_stone_brick_slab[type=double]
#fill ~-2 ~-1 ~ ~2 ~1 ~ minecraft:air replace minecraft:end_stone_brick_slab[type=double]
#fill ~-1 ~-2 ~ ~1 ~2 ~ minecraft:air replace minecraft:end_stone_brick_slab[type=double]
#fill ~ ~-2 ~-1 ~ ~2 ~1 minecraft:air replace minecraft:end_stone_brick_slab[type=double]
#fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:air replace minecraft:end_stone_brick_slab[type=double]
#fill ~ ~-1 ~-2 ~ ~1 ~2 minecraft:air replace minecraft:end_stone_brick_slab[type=double]

#fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:end_stone_brick_slab[type=double]
#summon minecraft:marker ~ ~ ~ {Tags:["frostmarker_2"]}
summon tnt ~ ~ ~ {fuse:1}
kill @s