clear @s barrier

execute unless entity @e[scores={mode=1}] run clear @s[scores={masterb=..25,masterup=..3}] cod
execute if entity @e[scores={mode=1}] run clear @s[scores={masterb=..19,masterup=..3}] cod

#Upgrade wand item (removed in season 9)
#execute unless entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=26..,masterup=..3}] hotbar.3 with minecraft:cod{display:{Name:"{\"italic\":false,\"text\":\"§9Upgrade Wand §r: Right-click (26 Material)\"}"}}
#execute if entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=20..,masterup=..3}] hotbar.3 with minecraft:cod{display:{Name:"{\"italic\":false,\"text\":\"§9Upgrade Wand §r: Right-click (20 Material)\"}"}}
#execute unless entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=..25,masterup=..3}] hotbar.3 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
#execute if entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=..19,masterup=..3}] hotbar.3 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

# boom halo
item replace entity @s[scores={masterb=12..}] hotbar.4 with minecraft:beef{display:{Name:"{\"italic\":false,\"text\":\"§cBoom Halo §r: Right-click (12 Material)\"}",Lore:["{\"italic\":false,\"text\":\"§4Beef\"}"]}}
clear @s[scores={masterb=..11}] beef
item replace entity @s[scores={masterb=..11}] hotbar.4 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

# matter bomb
item replace entity @s[scores={masterb=6..,master_bomb_cooldown=..0}] hotbar.1 with minecraft:salmon{display:{Name:"{\"italic\":false,\"text\":\"§4Matter Bomb §r: Right-click (6 Material)\"}"}}
clear @s[scores={masterb=..5}] salmon
item replace entity @s[scores={masterb=..5,master_bomb_cooldown=..0}] hotbar.1 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
item replace entity @s[scores={master_bomb_cooldown=1..}] hotbar.1 with minecraft:ghast_tear{display:{Name:"{\"italic\":false,\"text\":\"§9On Cooldown\"}"}} 1

# land slide
item replace entity @s[scores={masterb=12..,slide_cooldown=..0}] hotbar.3 with minecraft:cooked_cod{display:{Name:"{\"italic\":false,\"text\":\"§2Land Slide §r: Right-click (12 Material)\"}"}}
clear @s[scores={masterb=..11}] cooked_cod
item replace entity @s[scores={masterb=..11}] hotbar.3 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
clear @s[scores={slide_cooldown=1..}] cooked_cod
item replace entity @s[scores={slide_cooldown=1..}] hotbar.3 with minecraft:ghast_tear{display:{Name:"{\"italic\":false,\"text\":\"§9On Cooldown\"}"}} 1

# matter storm
item replace entity @s[scores={masterb=8..}] hotbar.2 with minecraft:cooked_salmon{display:{Name:"{\"italic\":false,\"color\":\"#3276DB\",\"text\":\"Matter Storm §f: Right-click (8 Material)\"}"}}
clear @s[scores={masterb=..7}] cooked_salmon
item replace entity @s[scores={masterb=..7}] hotbar.2 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
item replace entity @s[scores={storm_cooldown=1..}] hotbar.2 with minecraft:ghast_tear{display:{Name:"{\"italic\":false,\"text\":\"§9On Cooldown\"}"}} 1

item replace entity @s[scores={masterc=25..}] hotbar.0 with blaze_rod{display:{Name:"{\"italic\":false,\"text\":\"§9On Cooldown\"}"}}
clear @s[scores={masterc=..24}] blaze_rod