clear @s barrier

execute unless entity @e[scores={mode=1}] run clear @s[scores={masterb=..25,masterup=..3}] cod
execute if entity @e[scores={mode=1}] run clear @s[scores={masterb=..19,masterup=..3}] cod

execute unless entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=26..,masterup=..3}] hotbar.3 with minecraft:cod{display:{Name:"{\"italic\":false,\"text\":\"§9Upgrade Wand §r: Right-click (26 Material)\"}"}}
execute if entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=20..,masterup=..3}] hotbar.3 with minecraft:cod{display:{Name:"{\"italic\":false,\"text\":\"§9Upgrade Wand §r: Right-click (20 Material)\"}"}}
item replace entity @s[scores={masterb=13..}] hotbar.4 with minecraft:beef{display:{Name:"{\"italic\":false,\"text\":\"§cBoom Halo §r: Right-click (13 Material)\"}",Lore:["{\"italic\":false,\"text\":\"§4Beef\"}"]}}

execute unless entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=..25,masterup=..3}] hotbar.3 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
execute if entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=..19,masterup=..3}] hotbar.3 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
clear @s[scores={masterb=..12}] beef
item replace entity @s[scores={masterb=..12}] hotbar.4 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

item replace entity @s[scores={masterb=7..}] hotbar.1 with minecraft:salmon{display:{Name:"{\"italic\":false,\"text\":\"§4Matter Bomb §r: Right-click (7 Material)\"}"}}
clear @s[scores={masterb=..6}] salmon
item replace entity @s[scores={masterb=..6}] hotbar.1 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

item replace entity @s[scores={masterb=17..}] hotbar.2 with minecraft:cooked_cod{display:{Name:"{\"italic\":false,\"text\":\"§2Land Slide §r: Right-click (17 Material)\"}"}}
clear @s[scores={masterb=..16}] cooked_cod
item replace entity @s[scores={masterb=..16}] hotbar.2 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

item replace entity @s[scores={masterb=16..,masterup=4..}] hotbar.3 with minecraft:cooked_salmon{display:{Name:"{\"italic\":false,\"text\":\"§1Matter Storm §r: Right-click (16 Material)\"}"}}
clear @s[scores={masterb=..15,masterup=4..}] cooked_salmon
item replace entity @s[scores={masterb=..15,masterup=4..}] hotbar.3 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

item replace entity @s[scores={masterc=25..}] hotbar.0 with barrier