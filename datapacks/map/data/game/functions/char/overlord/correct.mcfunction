execute as @s[scores={class=9,masterc=..24},tag=!haspup,tag=haspup2] at @s run function game:char/overlord/masterwanduse

tag @s remove hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:golden_pickaxe"}]}] add hasshov
tag @s[scores={class=9},nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] add hasshov
tag @s[scores={class=9},tag=haspup] add hasshov
tag @s[scores={class=9},tag=haspup2] add hasshov
tag @s[scores={class=9},tag=frozen] add hasshov
clear @s[scores={class=9,masterc=..24},tag=!hasshov] wooden_pickaxe
clear @s[scores={class=9,masterc=..24},tag=!hasshov] stone_pickaxe
clear @s[scores={class=9,masterc=..24},tag=!hasshov] iron_pickaxe
clear @s[scores={class=9,masterc=..24},tag=!hasshov] golden_pickaxe
clear @s[scores={class=9,masterc=..24},tag=!hasshov] diamond_pickaxe
execute as @s[scores={class=9,masterc=..24,gather_cooldown=..0},tag=!hasshov,tag=!gather] at @s run function game:char/overlord/gather
execute as @s[scores={class=9,masterc=..24,gather_cooldown=1..},tag=!hasshov,tag=!gather] at @s run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 1
execute as @s[scores={class=9,masterc=..24,gather_cooldown=1..},tag=!hasshov,tag=!gather] at @s run title @s actionbar [{"text":"Gather on cooldown (","color":"white","bold":true},{"score":{"name":"@s","objective":"gather_cooldown"},"color":"light_purple","bold":true},{"text":"s)","color":"white","bold":true}]
execute as @s[scores={class=9,masterc=..24},tag=!hasshov] at @s run function game:char/overlord/masterwanduse

tag @s[scores={class=9},tag=haspup] add haspup2
tag @s[scores={class=9},tag=!haspup] remove haspup2