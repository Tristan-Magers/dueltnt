replaceitem entity @a[nbt=!{Inventory:[{id:"minecraft:potion"}]},x=620,y=20,z=620,distance=3..100] hotbar.8 minecraft:potion{display:{Name:"{\"italic\":false,\"text\":\"§dLeave game §r: Right-click\"}"}}

tag @s remove hasbow
tag @s remove haspup

tag @s[nbt={Inventory:[{id:"minecraft:blaze_powder"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:apple"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:cookie"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:bread"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:potato"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:porkchop"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:cooked_porkchop"}]}] add haspup

tag @s[tag=haspup] add hasbow

tag @s[nbt={Inventory:[{id:"minecraft:bow"}]}] add hasbow
tag @s[nbt={Inventory:[{id:"minecraft:fishing_rod"}]}] add hasbow
scoreboard players add @a[x=600,y=60,z=600,distance=3..95,tag=!hasbow] nobow 1
scoreboard players set @a[x=600,y=60,z=600,distance=3..95,tag=hasbow] nobow 0

tag @s add arrow
tag @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] remove arrow
tag @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] remove arrow
clear @s[tag=arrow] arrow
clear @s[tag=arrow] tipped_arrow
scoreboard players set @s[tag=arrow,scores={bow=..0}] bow 1

execute as @s[scores={class=0}] at @s run function game:solcorrect
execute as @s[scores={class=1}] at @s run function game:asscorrect
execute as @s[scores={class=2}] at @s run function game:ghostcorrect
execute as @s[scores={class=3}] at @s run function game:trapcorrect
execute as @s[scores={class=4}] at @s run function game:wizcorrect
execute as @s[scores={class=5}] at @s run function game:madcorrect
execute as @s[scores={class=6}] at @s run function game:reapercorrect
execute as @s[scores={class=7}] at @s run function game:echocorrect

execute unless entity @e[scores={mode=1}] run replaceitem entity @s[scores={nobow=3..,class=8}] hotbar.0 minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper §r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:2}]}
execute if entity @e[scores={mode=1}] run replaceitem entity @s[scores={nobow=3..,class=8}] hotbar.0 minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper §r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:3}]}

tag @s remove hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:golden_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] add hasshov
execute as @s[scores={class=9,masterc=..24},tag=!hasshov] at @s run function items:masterwanduse