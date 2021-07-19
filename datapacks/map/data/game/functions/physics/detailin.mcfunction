execute if block ~ ~ ~ dark_oak_trapdoor run tag @s add in
execute if block ~ ~ ~ pink_stained_glass_pane run tag @s add in
execute if block ~ ~ ~ light_gray_stained_glass_pane run tag @s add in

execute if block ~ ~ ~ jungle_fence run tag @s add in
execute if block ~ ~ ~ birch_fence run tag @s add in
execute if block ~ ~ ~ acacia_fence run tag @s add in

execute if block ~ ~ ~ cobblestone_wall run tag @s add in

execute if block ~ ~ ~ ladder run tag @s add in
execute if block ~ ~ ~ redstone_torch run tag @s add in
execute if block ~ ~ ~ iron_trapdoor run tag @s add in
execute if block ~ ~ ~ jungle_trapdoor run tag @s add in
execute if block ~ ~ ~ fire run tag @s add in
execute if block ~ ~ ~ oak_sign run tag @s add in
execute if block ~ ~ ~ oak_wall_sign run tag @s add in
execute if block ~ ~ ~ snow run tag @s add in
execute if block ~ ~ ~ grass run tag @s add in

execute if block ~ ~.5 ~ birch_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ birch_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ acacia_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ acacia_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ spruce_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ spruce_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ oak_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ oak_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ dark_prismarine_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ dark_prismarine_slab[type=bottom] run tag @s add in

execute if block ~ ~.5 ~ stone_brick_slab[type=top] run tag @s add in
execute if block ~ ~-.5 ~ stone_brick_slab[type=bottom] run tag @s add in

execute if block ~.25 ~ ~.25 jungle_fence if block ~-.25 ~ ~-.25 jungle_fence run tag @s remove in
execute if block ~.25 ~ ~.25 birch_fence if block ~-.25 ~ ~-.25 birch_fence run tag @s remove in
execute if block ~.25 ~ ~.25 acacia_fence if block ~-.25 ~ ~-.25 acacia_fence run tag @s remove in

execute if block ~.25 ~ ~.25 cobblestone_wall if block ~-.25 ~ ~-.25 cobblestone_wall run tag @s remove in