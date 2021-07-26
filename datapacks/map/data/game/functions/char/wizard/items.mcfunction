#pig inv
scoreboard players set @s wizCheck 0
scoreboard players add @s[tag=haspup] wizCheck 3
scoreboard players add @s[nbt={Inventory:[{Slot:0b,id:"minecraft:fishing_rod"}]}] wizCheck 3
scoreboard players add @s[nbt={Inventory:[{Slot:0b,id:"minecraft:bow"}]}] wizCheck 1
scoreboard players add @s[nbt={Inventory:[{Slot:1b,id:"minecraft:bow"}]}] wizCheck 1
scoreboard players add @s[nbt={Inventory:[{Slot:2b,id:"minecraft:bow"}]}] wizCheck 1
clear @s[scores={wizCheck=..2}] bow
clear @s[scores={wizCheck=..2},tag=!pig,tag=!haspup] gray_stained_glass_pane
item replace entity @s[scores={wizCheck=..2},tag=!pig,tag=!haspup] hotbar.0 with bow{Damage:100,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§4Fireball§r : Throw to switch\"}"}}
item replace entity @s[scores={wizCheck=..2},tag=!pig,tag=!haspup] hotbar.1 with bow{Damage:120,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§ePowderize§r : Throw to switch\"}"}}
item replace entity @s[scores={wizCheck=..2},tag=!pig,tag=!haspup] hotbar.2 with bow{Damage:140,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§3Teleport§r : Throw to switch\"}"}}
item replace entity @s[scores={wizCheck=..2},tag=!pig,tag=haspup] hotbar.1 with gray_stained_glass_pane{display:{Name:"{\"italic\":false,\"text\":\"§7Unavailable\"}"}}
item replace entity @s[scores={wizCheck=..2},tag=!pig,tag=haspup] hotbar.2 with gray_stained_glass_pane{display:{Name:"{\"italic\":false,\"text\":\"§7Unavailable\"}"}}
clear @s[scores={wizCheck=..2}] fishing_rod
item replace entity @s[scores={pig=2..}] hotbar.0 with minecraft:pink_stained_glass_pane
item replace entity @s[scores={pig=2..}] hotbar.1 with minecraft:pink_stained_glass_pane
item replace entity @s[scores={pig=2..}] hotbar.2 with minecraft:pink_stained_glass_pane
tag @s[scores={pig=1..}] add pig
tag @s[scores={pig=..0}] remove pig