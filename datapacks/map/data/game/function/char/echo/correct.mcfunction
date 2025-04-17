execute as @s[scores={nobow=3..}] run function game:char/echo/give/bow

clear @s[nbt=!{Inventory:[{id:"minecraft:wooden_hoe",Slot:1b}]},scores={boomwandtime=..0}] wooden_hoe
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:wooden_hoe",Slot:1b}]},scores={boomwandtime=..0}] boomwandtime 2

clear @s[nbt=!{Inventory:[{id:"minecraft:stone_hoe",Slot:2b}]},scores={blastwandtime=..0}] stone_hoe
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:stone_hoe",Slot:2b}]},scores={blastwandtime=..0}] blastwandtime 2

clear @s[nbt=!{Inventory:[{id:"minecraft:diamond_hoe",Slot:3b}]},scores={airwandtime=..0}] diamond_hoe
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:diamond_hoe",Slot:3b}]},scores={airwandtime=..0}] airwandtime 2

clear @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0}] red_dye
execute unless entity @e[scores={mode=1}] as @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=1}] run function game:char/echo/give/groundspell {amount:1}
execute unless entity @e[scores={mode=1}] as @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=0}] run function game:char/echo/give/groundspell {amount:2}

execute if entity @e[scores={mode=1}] run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=2}] hotbar.4 with minecraft:red_dye[custom_name={"italic":false,"text":"§eGround Spell : Right-click"}]
execute if entity @e[scores={mode=1}] run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=1}] hotbar.4 with minecraft:red_dye[custom_name={"italic":false,"text":"§eGround Spell : Right-click"}] 2
execute if entity @e[scores={mode=1}] run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:4b}]},scores={groundtime=..0,grounduse=0}] hotbar.4 with minecraft:red_dye[custom_name={"italic":false,"text":"§eGround Spell : Right-click"}] 3

clear @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:2b,components:{"minecraft:custom_data":{BlastOrb:1b}}}]},scores={blastwandtime=89..90}] pink_dye[custom_data={BlastOrb:1b}]
execute as @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:2b,components:{"minecraft:custom_data":{BlastOrb:1b}}}]},scores={blastwandtime=89..90}] run function game:char/echo/give/orb {wand:"§aBlast Wand§r",orb_id:{BlastOrb:1b},slot:2}
execute as @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:2b}]},scores={blastwandtime=89..90}] run scoreboard players set @s blastwandtime 50

clear @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:1b,components:{"minecraft:custom_data":{BoomOrb:1b}}}]},tag=boomshard,scores={boomwandtime=12..54}] pink_dye
execute as @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:1b,components:{"minecraft:custom_data":{BoomOrb:1b}}}]},tag=boomshard,scores={boomwandtime=12..54}] run function game:char/echo/give/orb {wand:"§6Boom Wand§r",orb_id:{BoomOrb:1b},slot:1}
execute as @s[nbt=!{Inventory:[{id:"minecraft:pink_dye",Slot:1b}]},tag=boomshard,scores={boomwandtime=12..40}] run tag @s remove boomshard

clear @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:6b}]}] paper
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:6b}]}] run function game:char/echo/give/paper