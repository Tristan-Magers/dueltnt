tag @s remove new
tag @s add done
scoreboard players add @s frostl 1

scoreboard players operation @e[tag=frostplat] objID -= @s objID
execute at @s if block ~ ~ ~ minecraft:blue_ice run tag @e[tag=frostplat,scores={objID=0}] add grow
execute at @s if block ~ ~ ~ minecraft:blue_ice run scoreboard players add @e[tag=frostplat,scores={objID=0}] frostsize 1
scoreboard players operation @e[tag=frostplat] objID += @s objID

execute as @s[scores={frostl=..300}] at @s positioned ~1 ~ ~ unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~ ~ unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~ ~1 ~ unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~ ~-1 ~ unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~ ~ ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~ ~ ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}

execute as @s[scores={frostl=..300}] at @s positioned ~1 ~1 ~ unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~1 ~-1 ~ unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~1 ~ unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~-1 ~ unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~ ~1 ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~ ~1 ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~ ~-1 ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~ ~-1 ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~1 ~ ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~1 ~ ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~ ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~ ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}

execute as @s[scores={frostl=..300}] at @s positioned ~1 ~1 ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~1 ~1 ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~1 ~-1 ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~1 ~-1 ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~1 ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~1 ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~-1 ~1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}
execute as @s[scores={frostl=..300}] at @s positioned ~-1 ~-1 ~-1 unless entity @e[tag=frostsuck,distance=..0.9] if block ~ ~ ~ minecraft:blue_ice run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["testing","gameae","frostsuck","new","new2"]}

execute at @s run scoreboard players operation @e[tag=frostsuck,tag=new,distance=..3] objID = @s objID

scoreboard players set @e[tag=frostsuck,tag=new,distance=..3] frostl 2

tag @s remove org
tag @e[tag=frostsuck,tag=new2] remove new2