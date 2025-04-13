#pig inv
scoreboard players set @s wizCheck 0
scoreboard players add @s[tag=haspup] wizCheck 3
scoreboard players add @s[nbt={Inventory:[{Slot:0b,id:"minecraft:fishing_rod"}]}] wizCheck 3
scoreboard players add @s[nbt={Inventory:[{Slot:0b,id:"minecraft:bow"}]}] wizCheck 1
scoreboard players add @s[nbt={Inventory:[{Slot:1b,id:"minecraft:bow"}]}] wizCheck 1
scoreboard players add @s[nbt={Inventory:[{Slot:2b,id:"minecraft:bow"}]}] wizCheck 1
clear @s[scores={wizCheck=..2}] bow
clear @s[scores={wizCheck=..2},tag=!pig,tag=!haspup] gray_stained_glass_pane

execute as @s[scores={wizCheck=..2},tag=!pig,tag=!haspup] run function game:char/wizard/give/fireball
execute as @s[scores={wizCheck=..2},tag=!pig,tag=!haspup] run function game:char/wizard/give/powderize
execute as @s[scores={wizCheck=..2},tag=!pig,tag=!haspup] run function game:char/wizard/give/teleport

item replace entity @s[scores={wizCheck=..2},tag=!pig,tag=haspup] hotbar.1 with gray_stained_glass_pane[custom_name={"italic":false,"text":"§7Unavailable"}]
item replace entity @s[scores={wizCheck=..2},tag=!pig,tag=haspup] hotbar.2 with gray_stained_glass_pane[custom_name={"italic":false,"text":"§7Unavailable"}]
clear @s[scores={wizCheck=..2}] fishing_rod
item replace entity @s[scores={pig=2..}] hotbar.0 with minecraft:pink_stained_glass_pane[custom_name={"italic":false,"text":"§7Unavailable"}]
item replace entity @s[scores={pig=2..}] hotbar.1 with minecraft:pink_stained_glass_pane[custom_name={"italic":false,"text":"§7Unavailable"}]
item replace entity @s[scores={pig=2..}] hotbar.2 with minecraft:pink_stained_glass_pane[custom_name={"italic":false,"text":"§7Unavailable"}]
tag @s[scores={pig=1..}] add pig
tag @s[scores={pig=..0}] remove pig