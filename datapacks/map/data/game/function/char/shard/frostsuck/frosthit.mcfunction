execute at @s at @s if block ~0.3 ~0.3 ~0.3 minecraft:blue_ice run summon marker ~0.3 ~0.3 ~0.3 {Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s unless entity @e[tag=new,tag=frostsuck,distance=..0.9] if block ~0.3 ~0.3 ~-0.3 minecraft:blue_ice run summon marker ~0.3 ~0.3 ~-0.3 {Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s unless entity @e[tag=new,tag=frostsuck,distance=..0.9] if block ~0.3 ~-0.3 ~0.3 minecraft:blue_ice run summon marker ~0.3 ~-0.3 ~0.3 {Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s unless entity @e[tag=new,tag=frostsuck,distance=..0.9] if block ~0.3 ~-0.3 ~-0.3 minecraft:blue_ice run summon marker ~0.3 ~-0.3 ~-0.3 {Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s unless entity @e[tag=new,tag=frostsuck,distance=..0.9] if block ~-0.3 ~0.3 ~0.3 minecraft:blue_ice run summon marker ~-0.3 ~0.3 ~0.3 {Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s unless entity @e[tag=new,tag=frostsuck,distance=..0.9] if block ~-0.3 ~0.3 ~-0.3 minecraft:blue_ice run summon marker ~-0.3 ~0.3 ~-0.3 {Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s unless entity @e[tag=new,tag=frostsuck,distance=..0.9] if block ~-0.3 ~-0.3 ~0.3 minecraft:blue_ice run summon marker ~-0.3 ~-0.3 ~0.3 {Tags:["testing","gameae","frostsuck","new","new2","org"]}
execute at @s at @s unless entity @e[tag=new,tag=frostsuck,distance=..0.9] if block ~-0.3 ~-0.3 ~-0.3 minecraft:blue_ice run summon marker ~-0.3 ~-0.3 ~-0.3 {Tags:["testing","gameae","frostsuck","new","new2","org"]}

scoreboard players operation @e[tag=frostsuck,tag=org,distance=..1.5] objID = @p[tag=frostuser] tntID