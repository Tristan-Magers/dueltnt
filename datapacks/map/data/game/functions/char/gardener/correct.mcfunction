clear @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:4b}]}] paper
clear @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:5b}]}] paper
clear @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:6b}]}] paper

execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:4b}]}] run function game:char/gardener/give/pvp_paper
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:5b}]}] run function game:char/gardener/give/shift
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:6b}]}] run function game:char/gardener/give/lives_paper