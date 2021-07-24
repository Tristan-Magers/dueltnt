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
execute as @s[scores={class=9,masterc=..24},tag=!hasshov] at @s run function game:char/overlord/masterwanduse