clear @a[nbt=!{Inventory:[{id:"minecraft:potion",Slot:8b}]},x=620,y=20,z=620,distance=3..100] potion
item replace entity @a[nbt=!{Inventory:[{id:"minecraft:potion",Slot:8b}]},x=620,y=20,z=620,distance=3..100] hotbar.8 with minecraft:potion{display:{Name:"{\"italic\":false,\"text\":\"§dLeave game §r: Right-click\"}"}}

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

clear @s[scores={nobow=3..}] bow

execute as @s[scores={class=0}] at @s run function game:char/soldier/correct
execute as @s[scores={class=1}] at @s run function game:char/assassin/correct
execute as @s[scores={class=2}] at @s run function game:char/ghost/correct
execute as @s[scores={class=3}] at @s run function game:char/trapper/correct
execute as @s[scores={class=4}] at @s run function game:char/wizard/correct
execute as @s[scores={class=5}] at @s run function game:char/mads/correct
execute as @s[scores={class=6}] at @s run function game:char/reaper/correct
execute as @s[scores={class=7}] at @s run function game:char/echo/correct

execute unless entity @e[scores={mode=1}] run item replace entity @s[scores={nobow=3..,class=8}] hotbar.0 with minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper §r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:2}]}
execute if entity @e[scores={mode=1}] run item replace entity @s[scores={nobow=3..,class=8}] hotbar.0 with minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper §r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:3}]}

tag @s remove hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:golden_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] add hasshov
clear @s[scores={class=9,masterc=..24},tag=!hasshov] wooden_pickaxe
clear @s[scores={class=9,masterc=..24},tag=!hasshov] stone_pickaxe
clear @s[scores={class=9,masterc=..24},tag=!hasshov] iron_pickaxe
clear @s[scores={class=9,masterc=..24},tag=!hasshov] golden_pickaxe
clear @s[scores={class=9,masterc=..24},tag=!hasshov] diamond_pickaxe
execute as @s[scores={class=9,masterc=..24},tag=!hasshov] at @s run function items:masterwanduse