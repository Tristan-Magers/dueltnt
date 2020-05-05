clear @s barrier

execute unless entity @e[scores={mode=1}] run clear @s[scores={masterb=..23,masterup=..3}] cod
execute if entity @e[scores={mode=1}] run clear @s[scores={masterb=..19,masterup=..3}] cod

execute unless entity @e[scores={mode=1}] run replaceitem entity @s[scores={masterb=24..,masterup=..3}] hotbar.3 minecraft:cod{display:{Name:"{\"italic\":false,\"text\":\"§9Upgrade Wand §r: Right-click (24 Material)\"}"}}
execute if entity @e[scores={mode=1}] run replaceitem entity @s[scores={masterb=20..,masterup=..3}] hotbar.3 minecraft:cod{display:{Name:"{\"italic\":false,\"text\":\"§9Upgrade Wand §r: Right-click (20 Material)\"}"}}
replaceitem entity @s[scores={masterb=13..}] hotbar.4 minecraft:beef{display:{Name:"{\"italic\":false,\"text\":\"§cBoom Halo §r: Right-click (13 Material)\"}",Lore:["{\"italic\":false,\"text\":\"§4Beef\"}"]}}

execute unless entity @e[scores={mode=1}] run replaceitem entity @s[scores={masterb=..23,masterup=..3}] hotbar.3 minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
execute if entity @e[scores={mode=1}] run replaceitem entity @s[scores={masterb=..19,masterup=..3}] hotbar.3 minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
clear @s[scores={masterb=..12}] beef
replaceitem entity @s[scores={masterb=..12}] hotbar.4 minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

replaceitem entity @s[scores={masterb=6..}] hotbar.1 minecraft:salmon{display:{Name:"{\"italic\":false,\"text\":\"§4Matter Bomb §r: Right-click (6 Material)\"}"}}
clear @s[scores={masterb=..5}] salmon
replaceitem entity @s[scores={masterb=..5}] hotbar.1 minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

replaceitem entity @s[scores={masterb=14..}] hotbar.2 minecraft:cooked_cod{display:{Name:"{\"italic\":false,\"text\":\"§2Land Slide §r: Right-click (14 Material)\"}"}}
clear @s[scores={masterb=..13}] cooked_cod
replaceitem entity @s[scores={masterb=..13}] hotbar.2 minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

replaceitem entity @s[scores={masterb=16..,masterup=4..}] hotbar.3 minecraft:cooked_salmon{display:{Name:"{\"italic\":false,\"text\":\"§1Matter Storm §r: Right-click (16 Material)\"}"}}
clear @s[scores={masterb=..15,masterup=4..}] cooked_salmon
replaceitem entity @s[scores={masterb=..15,masterup=4..}] hotbar.3 minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1