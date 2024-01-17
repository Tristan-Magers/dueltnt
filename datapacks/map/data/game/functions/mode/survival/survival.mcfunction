effect give @e[type=zombie] minecraft:resistance 10 10 true
effect give @e[type=skeleton] minecraft:resistance 10 10 true
effect give @e[type=chicken] minecraft:resistance 10 10 true
effect give @e[type=creeper] minecraft:resistance 10 10 true

effect give @e[type=chicken,x=600,y=60,z=600,distance=3..100] minecraft:glowing 10 10 true
effect give @e[type=creeper] minecraft:glowing 10 10 true

execute as @s[scores={survival=2}] run scoreboard players set Time game 4000
execute as @s[scores={survival=2}] run scoreboard players set @a Lives 3
execute as @s[scores={survival=2}] run scoreboard players set .ui_varify .data 1

execute as @s[scores={survival=30}] run summon zombie 615 50 615
execute as @s[scores={survival=30}] run summon zombie 615 50 615 
execute as @s[scores={survival=30}] run summon zombie 615 50 615 

execute as @s[scores={survival=30}] run spreadplayers 615 615 14 13 under 40 false @e[type=zombie,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=100}] run summon ghast 615 35 615

execute as @s[scores={survival=150}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}]}
execute as @s[scores={survival=150}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}]}
execute as @s[scores={survival=150}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}]}
execute as @s[scores={survival=150}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}]}

execute as @s[scores={survival=150}] run spreadplayers 615 615 14 13 under 40 false @e[type=skeleton,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=200}] run summon ghast 615 35 615

execute as @s[scores={survival=310}] run summon ghast 615 35 615

execute as @s[scores={survival=550}] run summon chicken 615 50 615
execute as @s[scores={survival=550}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=600}] run summon ghast 615 35 615

execute as @s[scores={survival=610}] run summon zombie 615 50 615
execute as @s[scores={survival=610}] run summon zombie 615 50 615 
execute as @s[scores={survival=610}] run summon zombie 615 50 615 

execute as @s[scores={survival=610}] run spreadplayers 615 615 14 13 under 40 false @e[type=zombie,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=680}] run summon zombie 615 50 615
execute as @s[scores={survival=680}] run summon zombie 615 50 615 
execute as @s[scores={survival=680}] run summon zombie 615 50 615 

execute as @s[scores={survival=680}] run spreadplayers 615 615 14 13 under 40 false @e[type=zombie,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=700}] run summon chicken 615 50 615
execute as @s[scores={survival=700}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=720}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}]}
execute as @s[scores={survival=720}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}]}
execute as @s[scores={survival=720}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}]}

execute as @s[scores={survival=720}] run spreadplayers 615 615 14 13 under 40 false @e[type=skeleton,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=750}] run summon ghast 615 35 615

execute as @s[scores={survival=780}] run summon creeper 615 50 615 {powered:1,Fuse:8}
execute as @s[scores={survival=780}] run summon creeper 615 50 615 {powered:1,Fuse:8}
execute as @s[scores={survival=780}] run summon creeper 615 50 615 {powered:1,Fuse:8}

execute as @s[scores={survival=780}] run spreadplayers 615 615 14 13 under 40 false @e[type=creeper,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=800}] run summon ghast 615 35 615

execute as @s[scores={survival=840}] run summon creeper 615 50 615 {powered:1,Fuse:8}
execute as @s[scores={survival=840}] run summon creeper 615 50 615 {powered:1,Fuse:8}
execute as @s[scores={survival=840}] run summon creeper 615 50 615 {powered:1,Fuse:8}

execute as @s[scores={survival=840}] run spreadplayers 615 615 14 13 under 40 false @e[type=creeper,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=860}] run summon chicken 615 50 615
execute as @s[scores={survival=860}] run summon chicken 615 50 615

execute as @s[scores={survival=860}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=930}] run summon ghast 615 35 615

execute as @s[scores={survival=1020}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1050}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1080}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1110}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1140}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1170}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1200}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}

execute as @s[scores={survival=1240..1270}] run title @a title {"text":""}

execute as @s[scores={survival=1220}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=1220}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=1220}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=1220}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}

execute as @s[scores={survival=1220}] run spreadplayers 615 615 14 13 under 40 false @e[type=skeleton,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=1360}] run summon chicken 615 50 615
execute as @s[scores={survival=1360}] run summon chicken 615 50 615

execute as @s[scores={survival=1360}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=1420}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1450}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1480}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1410}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1540}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=1570}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}

execute as @s[scores={survival=1600}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}

execute as @s[scores={survival=1620}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=1620}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=1620}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=1620}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}

execute as @s[scores={survival=1620}] run spreadplayers 615 615 14 13 under 40 false @e[type=skeleton,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=1660}] run summon chicken 615 50 615
execute as @s[scores={survival=1660}] run summon chicken 615 50 615

execute as @s[scores={survival=1660}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=1820}] run summon zombie 615 50 615 {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3s}]}},{}]}
execute as @s[scores={survival=1820}] run summon zombie 615 50 615 {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3s}]}},{}]}
execute as @s[scores={survival=1820}] run summon zombie 615 50 615 {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3s}]}},{}]}
execute as @s[scores={survival=1820}] run summon zombie 615 50 615 {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3s}]}},{}]}
execute as @s[scores={survival=1820}] run summon zombie 615 50 615 {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3s}]}},{}]}
execute as @s[scores={survival=1820}] run summon zombie 615 50 615 {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3s}]}},{}]}

execute as @s[scores={survival=1819..1823}] run spreadplayers 615 615 14 13 under 40 false @e[type=zombie,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=1850}] run summon ghast 615 35 615

execute as @s[scores={survival=1960}] run summon chicken 615 50 615
execute as @s[scores={survival=1960}] run summon chicken 615 50 615
execute as @s[scores={survival=1960}] run summon chicken 615 50 615
execute as @s[scores={survival=1960}] run summon chicken 615 50 615

execute as @s[scores={survival=1960}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=2220}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2250}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2280}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2310}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2340}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2370}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2400}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2420}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2450}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2480}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2510}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2520}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2540}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2560}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2580}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2600}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2615}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2630}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2645}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2660}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}
execute as @s[scores={survival=2670}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] at @s run summon tnt ~ ~25 ~ {fuse:50}

execute as @s[scores={survival=2700..2730}] run title @a title {"text":""}

execute as @s[scores={survival=2850}] run summon ghast 615 35 615
execute as @s[scores={survival=2850}] run summon ghast 615 35 615

execute as @s[scores={survival=2900}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}]}
execute as @s[scores={survival=2900}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}]}
execute as @s[scores={survival=2900}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}]}

execute as @s[scores={survival=2900}] run spreadplayers 615 615 14 13 under 40 false @e[type=skeleton,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=3000}] run summon chicken 615 50 615
execute as @s[scores={survival=3000}] run summon chicken 615 50 615
execute as @s[scores={survival=3000}] run summon chicken 615 50 615

execute as @s[scores={survival=3000}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=3100}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=3100}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=3100}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}
execute as @s[scores={survival=3100}] run summon skeleton 615 50 615 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:dragon_head",Count:1b}]}

execute as @s[scores={survival=3100}] run spreadplayers 615 615 14 13 under 40 false @e[type=skeleton,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=3120}] run summon ghast 615 35 615

execute as @s[scores={survival=3220}] run summon chicken 615 50 615
execute as @s[scores={survival=3220}] run summon chicken 615 50 615
execute as @s[scores={survival=3220}] run summon chicken 615 50 615

execute as @s[scores={survival=3220}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=3400}] run summon chicken 615 50 615
execute as @s[scores={survival=3400}] run summon chicken 615 50 615
execute as @s[scores={survival=3400}] run summon chicken 615 50 615

execute as @s[scores={survival=3400}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=3420}] run summon creeper 615 50 615 {powered:1,Fuse:8}
execute as @s[scores={survival=3420}] run summon creeper 615 50 615 {powered:1,Fuse:8}
execute as @s[scores={survival=3420}] run summon creeper 615 50 615 {powered:1,Fuse:8}

execute as @s[scores={survival=3420}] run spreadplayers 615 615 14 13 under 40 false @e[type=creeper,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=3430}] run summon chicken 615 50 615
execute as @s[scores={survival=3430}] run summon chicken 615 50 615
execute as @s[scores={survival=3430}] run summon chicken 615 50 615

execute as @s[scores={survival=3450}] run spreadplayers 615 615 14 13 under 40 false @e[type=chicken,x=615,y=50,z=615,distance=..1]

execute as @s[scores={survival=3550}] run summon ghast 615 35 615

execute as @s[scores={survival=3630}] run summon ghast 615 35 615

execute as @s[scores={survival=3710}] run summon ghast 615 35 615

execute as @s[scores={survival=3800}] run summon ghast 615 35 615

execute as @s[scores={survival=3900}] run summon ghast 615 35 615