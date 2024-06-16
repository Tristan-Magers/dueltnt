#execute as @s[scores={frozen=15..}] at @s run tp @s @s

#execute as @s[tag=!frozen] run item replace entity @s enderchest.0 with ice
#execute as @s[tag=!frozen] run item replace entity @s enderchest.1 with ice
#execute as @s[tag=!frozen] run item replace entity @s enderchest.2 with ice
#execute as @s[tag=!frozen] run item replace entity @s enderchest.3 with ice
#execute as @s[tag=!frozen] run item replace entity @s enderchest.4 with ice
#execute as @s[tag=!frozen] run item replace entity @s enderchest.5 with ice
#execute as @s[tag=!frozen] run item replace entity @s enderchest.6 with ice
#execute as @s[tag=!frozen] run item replace entity @s enderchest.7 with ice
#execute as @s[tag=!frozen] run item replace entity @s enderchest.8 with ice

item replace entity @s[nbt=!{Inventory:[{Slot:0b}]}] hotbar.0 with ice
item replace entity @s[nbt=!{Inventory:[{Slot:1b}]}] hotbar.1 with ice
item replace entity @s[nbt=!{Inventory:[{Slot:2b}]}] hotbar.2 with ice
item replace entity @s[nbt=!{Inventory:[{Slot:3b}]}] hotbar.3 with ice
item replace entity @s[nbt=!{Inventory:[{Slot:4b}]}] hotbar.4 with ice
item replace entity @s[nbt=!{Inventory:[{Slot:5b}]}] hotbar.5 with ice
item replace entity @s[nbt=!{Inventory:[{Slot:6b}]}] hotbar.6 with ice
item replace entity @s[nbt=!{Inventory:[{Slot:7b}]}] hotbar.7 with ice
item replace entity @s[nbt=!{Inventory:[{Slot:8b}]}] hotbar.8 with ice

#execute as @s[tag=!frozen] run item replace entity @s enderchest.0 from entity @s hotbar.0
#execute as @s[tag=!frozen] run item replace entity @s enderchest.1 from entity @s hotbar.1
#execute as @s[tag=!frozen] run item replace entity @s enderchest.2 from entity @s hotbar.2
#execute as @s[tag=!frozen] run item replace entity @s enderchest.3 from entity @s hotbar.3
#execute as @s[tag=!frozen] run item replace entity @s enderchest.4 from entity @s hotbar.4
#execute as @s[tag=!frozen] run item replace entity @s enderchest.5 from entity @s hotbar.5
#execute as @s[tag=!frozen] run item replace entity @s enderchest.6 from entity @s hotbar.6
#execute as @s[tag=!frozen] run item replace entity @s enderchest.7 from entity @s hotbar.7
#execute as @s[tag=!frozen] run item replace entity @s enderchest.8 from entity @s hotbar.8
#execute as @s[tag=!frozen] run clear @s

scoreboard players remove @s frozen 1
title @s[scores={frozen=39..},tag=!frozen] times 10 20 6
title @s[scores={frozen=39..},tag=!frozen] title {"text":"FROZEN","color":"dark_aqua","font":"fancy"}
title @s[scores={frozen=1}] title {"text":"","color":"dark_aqua"}
#effect give @s[scores={frozen=30..}] levitation 2 0 true
effect give @s[scores={frozen=20..}] glowing 1 0 true

scoreboard players set @s click 0
scoreboard players set @s shift 0

execute as @s[scores={frozen=1}] run clear @s
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.0 from entity @s enderchest.0
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.1 from entity @s enderchest.1
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.2 from entity @s enderchest.2
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.3 from entity @s enderchest.3
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.4 from entity @s enderchest.4
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.5 from entity @s enderchest.5
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.6 from entity @s enderchest.6
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.7 from entity @s enderchest.7
execute as @s[scores={frozen=1}] run item replace entity @s hotbar.8 from entity @s enderchest.8
execute as @s[scores={frozen=1}] run clear @s ice
execute as @s[scores={frozen=1,class=9}] run scoreboard players remove @s masterb 1
execute as @s[scores={frozen=1,class=9}] run function game:char/overlord/masterwandget
execute as @s[scores={frozen=1,class=9}] run function game:char/overlord/masterwanditems