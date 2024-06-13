execute as @s[scores={nobow=3..}] run function game:char/shard/give/bow

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:white_dye",Slot:4b}]}] white_dye

execute as @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:white_dye",Slot:4b}]},scores={floatuse=0}] run function game:char/shard/give/float {"amount":3}
execute as @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:white_dye",Slot:4b}]},scores={floatuse=1}] run function game:char/shard/give/float {"amount":2}
execute as @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:white_dye",Slot:4b}]},scores={floatuse=2}] run function game:char/shard/give/float {"amount":1}

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:yellow_dye",Slot:1b}]},nbt=!{Inventory:[{id:"minecraft:egg",Slot:1b}]}] egg
clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:yellow_dye",Slot:1b}]},nbt=!{Inventory:[{id:"minecraft:egg",Slot:1b}]}] yellow_dye
scoreboard players set @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:yellow_dye",Slot:1b}]},nbt=!{Inventory:[{id:"minecraft:egg",Slot:1b}]},scores={snowmanT=..-10,eggtimer=..-1}] snowmanT 20

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:trident",Slot:2b}]}] trident
scoreboard players set @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:trident",Slot:2b}]},scores={tridentT=..0}] tridentT 2

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:lime_dye",Slot:3b}]}] lime_dye
scoreboard players set @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:lime_dye",Slot:3b}]},scores={frostsT=..-1}] frostsT 2

clear @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:6b}]}] paper
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:6b}]}] run function game:char/shard/give/shift