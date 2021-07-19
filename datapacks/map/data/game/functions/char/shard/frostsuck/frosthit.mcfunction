execute at @s at @s if block ~0.3 ~0.3 ~0.3 minecraft:packed_ice run summon area_effect_cloud ~0.3 ~0.3 ~0.3 {Duration:999,Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s if block ~0.3 ~0.3 ~-0.3 minecraft:packed_ice run summon area_effect_cloud ~0.3 ~0.3 ~-0.3 {Duration:999,Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s if block ~0.3 ~-0.3 ~0.3 minecraft:packed_ice run summon area_effect_cloud ~0.3 ~-0.3 ~0.3 {Duration:999,Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s if block ~0.3 ~-0.3 ~-0.3 minecraft:packed_ice run summon area_effect_cloud ~0.3 ~-0.3 ~-0.3 {Duration:999,Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s if block ~-0.3 ~0.3 ~0.3 minecraft:packed_ice run summon area_effect_cloud ~-0.3 ~0.3 ~0.3 {Duration:999,Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s if block ~-0.3 ~0.3 ~-0.3 minecraft:packed_ice run summon area_effect_cloud ~-0.3 ~0.3 ~-0.3 {Duration:999,Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s if block ~-0.3 ~-0.3 ~0.3 minecraft:packed_ice run summon area_effect_cloud ~-0.3 ~-0.3 ~0.3 {Duration:999,Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s if block ~-0.3 ~-0.3 ~-0.3 minecraft:packed_ice run summon area_effect_cloud ~-0.3 ~-0.3 ~-0.3 {Duration:999,Tags:["testing","gameae","frostsuck","new","new2","org"]}

scoreboard players operation @e[tag=frostsuck,tag=org,distance=..1.5] objID = @p[tag=frostuser] tntID