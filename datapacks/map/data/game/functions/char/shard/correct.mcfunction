item replace entity @s[scores={nobow=3..}] hotbar.0 with bow[damage=260,unbreakable={},custom_name='{"italic":false,"text":"§9Anti-Ice§r : Throw to switch"}']

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:white_dye",Slot:4b}]}] white_dye
item replace entity @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:white_dye",Slot:4b}]},scores={floatuse=0}] hotbar.4 with minecraft:white_dye[custom_name='{"italic":false,"text":"§6Float §f§r: Right-click"}'] 3
item replace entity @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:white_dye",Slot:4b}]},scores={floatuse=1}] hotbar.4 with minecraft:white_dye[custom_name='{"italic":false,"text":"§6Float §f§r: Right-click"}'] 2
item replace entity @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:white_dye",Slot:4b}]},scores={floatuse=2}] hotbar.4 with minecraft:white_dye[custom_name='{"italic":false,"text":"§6Float §f§r: Right-click"}'] 1

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:yellow_dye",Slot:1b}]},nbt=!{Inventory:[{id:"minecraft:egg",Slot:1b}]}] egg
clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:yellow_dye",Slot:1b}]},nbt=!{Inventory:[{id:"minecraft:egg",Slot:1b}]}] yellow_dye
scoreboard players set @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:yellow_dye",Slot:1b}]},nbt=!{Inventory:[{id:"minecraft:egg",Slot:1b}]},scores={snowmanT=..-10,eggtimer=..-1}] snowmanT 20

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:trident",Slot:2b}]}] trident
scoreboard players set @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:trident",Slot:2b}]},scores={tridentT=..0}] tridentT 2

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:lime_dye",Slot:3b}]}] lime_dye
scoreboard players set @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:lime_dye",Slot:3b}]},scores={frostsT=..-1}] frostsT 2