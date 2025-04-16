execute as @s[scores={nobow=3..}] run function game:char/ghost/give/bow

clear @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]}] ender_pearl

execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] run function game:char/ghost/give/pearl {count:3}
execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=1}] run function game:char/ghost/give/pearl {count:2}
execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=2}] run function game:char/ghost/give/pearl {count:1}

clear @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={XPReset=90}] experience_bottle
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={XPReset=90}] XPReset 92

clear @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={misreload=..18,XPReset=..0},tag=!coal] experience_bottle
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={misreload=..18,XPReset=..0},tag=!coal] misreload 22

clear @s[nbt=!{Inventory:[{id:"minecraft:coal",Slot:1b}]},scores={XPReset=..48},tag=coal] coal
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:coal",Slot:1b}]},scores={XPReset=..48},tag=coal] XPReset 52

clear @s[nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:3b}]},scores={mTtimer=..0}] iron_ingot
execute as @s[nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:3b}]},scores={mTtimer=..0}] run function game:char/ghost/give/masslev

clear @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:4b}]},scores={potion=-1..0}] splash_potion
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:4b}]},scores={potion=-1..0}] potion -4

clear @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:6b}]}] paper
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:6b}]}] run function game:char/ghost/give/paper