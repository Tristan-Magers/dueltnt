# summoning entities
execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^2 {UUIDLeast:0L,UUIDMost:0L,Duration:1}
execute anchored eyes positioned ^.45 ^ ^ if block ~ ~ ~ air run summon minecraft:arrow ^ ^ ^ {Tags:["arrow_new","farrowt"],Color:-1,damage:6.0d}

# writing uuid data 
data modify storage proj arrow.OwnerUUIDMost set from entity @s UUIDMost
data modify storage proj arrow.OwnerUUIDLeast set from entity @s UUIDLeast

# generating motion
data modify storage proj arrow.Motion set from entity 0-0-0-0-0 Pos

# data writing to arrow
data modify entity @e[tag=arrow_new,limit=1] {} merge from storage proj arrow

# termination
kill 0-0-0-0-0
tag @e[tag=arrow_new] remove arrow_new