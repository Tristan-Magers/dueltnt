clear @s barrier

execute unless entity @e[scores={mode=1}] run clear @s[scores={masterb=..25,masterup=..3}] cod
execute if entity @e[scores={mode=1}] run clear @s[scores={masterb=..19,masterup=..3}] cod

#Upgrade wand item (removed in season 9)
#execute unless entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=26..,masterup=..3}] hotbar.3 with minecraft:cod{display:{Name:"{\"italic\":false,\"text\":\"§9Upgrade Wand §r: Right-click (26 Material)\"}"}}
#execute if entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=20..,masterup=..3}] hotbar.3 with minecraft:cod{display:{Name:"{\"italic\":false,\"text\":\"§9Upgrade Wand §r: Right-click (20 Material)\"}"}}
#execute unless entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=..25,masterup=..3}] hotbar.3 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1
#execute if entity @e[scores={mode=1}] run item replace entity @s[scores={masterb=..19,masterup=..3}] hotbar.3 with minecraft:barrier{display:{Name:"{\"italic\":false,\"text\":\"§9Not enough material\"}"}} 1

# boom halo
item replace entity @s[scores={masterb=14..,halo_cooldown=..0}] hotbar.4 with minecraft:beef[custom_name='{"italic":false,"text":"§cBoom Halo §r: Right-click (14 Material)"}',lore=['{"italic":false,"text":"§4Beef"}','{"italic":false,"color":"white","text":"8 TNT"}','{"italic":false,"color":"white","text":"Reload: 7s"}','{"italic":false,"color":"white","text":"Fuse: 0.35s"}','{"italic":false,"color":"white","text":"Levitation 16 for 0.65s"}']]
clear @s[scores={masterb=..13}] beef
item replace entity @s[scores={masterb=..13,halo_cooldown=..0}] hotbar.4 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}',lore=['{"italic":false,"text":"§4Beef"}','{"italic":false,"color":"white","text":"8 TNT"}','{"italic":false,"color":"white","text":"Reload: 7s"}','{"italic":false,"color":"white","text":"Fuse: 0.35s"}','{"italic":false,"color":"white","text":"Levitation 16 for 0.65s"}']] 1
item replace entity @s[scores={halo_cooldown=1..}] hotbar.4 with minecraft:beetroot[custom_name='{"italic":false,"text":"§9On Cooldown"}',lore=['{"italic":false,"text":"§4Beef"}','{"italic":false,"color":"white","text":"8 TNT"}','{"italic":false,"color":"white","text":"Reload: 7s"}','{"italic":false,"color":"white","text":"Fuse: 0.35s"}','{"italic":false,"color":"white","text":"Levitation 16 for 0.65s"}']] 1

# matter bomb
item replace entity @s[scores={masterb=6..,master_bomb_cooldown=..0}] hotbar.1 with minecraft:salmon[custom_name='{"italic":false,"text":"§4Matter Bomb §r: Right-click (6 Material)"}',lore=['{"italic":false,"color":"white","text":"2 TNT"}','{"italic":false,"color":"white","text":"Reload: 1.2s"}','{"italic":false,"color":"white","text":"Fuse: 0.75s"}']]
clear @s[scores={masterb=..5}] salmon
item replace entity @s[scores={masterb=..5,master_bomb_cooldown=..0}] hotbar.1 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}',lore=['{"italic":false,"color":"white","text":"2 TNT"}','{"italic":false,"color":"white","text":"Reload: 1.5s"}','{"italic":false,"color":"white","text":"Fuse: 0.75s"}']] 1
item replace entity @s[scores={master_bomb_cooldown=1..}] hotbar.1 with minecraft:beetroot[custom_name='{"italic":false,"text":"§9On Cooldown"}',lore=['{"italic":false,"color":"white","text":"2 TNT"}','{"italic":false,"color":"white","text":"Reload: 1.5s"}','{"italic":false,"color":"white","text":"Fuse: 0.75s"}']] 1

# land slide
item replace entity @s[scores={masterb=14..,slide_cooldown=..0}] hotbar.3 with minecraft:cooked_cod[custom_name='{"italic":false,"text":"§2Land Slide §r: Right-click (14 Material)"}',lore=['{"italic":false,"color":"white","text":"Duration: 2.5s"}','{"italic":false,"color":"white","text":"Reload: 5.5s"}','{"italic":false,"color":"white","text":"Max Length: 10 blocks"}']]
clear @s[scores={masterb=..13}] cooked_cod
item replace entity @s[scores={masterb=..13}] hotbar.3 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}',lore=['{"italic":false,"color":"white","text":"Duration: 2.5s"}','{"italic":false,"color":"white","text":"Reload: 5.5s"}','{"italic":false,"color":"white","text":"Max Length: 10 blocks"}']] 1
clear @s[scores={slide_cooldown=1..}] cooked_cod
item replace entity @s[scores={slide_cooldown=1..}] hotbar.3 with minecraft:beetroot[custom_name='{"italic":false,"text":"§9On Cooldown"}',lore=['{"italic":false,"color":"white","text":"Duration: 2.5s"}','{"italic":false,"color":"white","text":"Reload: 5.5s"}','{"italic":false,"color":"white","text":"Max Length: 10 blocks"}']] 1

# matter storm
item replace entity @s[scores={masterb=10..}] hotbar.2 with minecraft:cooked_salmon[custom_name='{"italic":false,"color":"#3276DB","text":"Matter Storm §f: Right-click (10 Material)"}',lore=['{"italic":false,"color":"white","text":"3x1 TNT"}','{"italic":false,"color":"white","text":"Reload: 3.5s"}','{"italic":false,"color":"white","text":"Delay: 0s, 0.1s, 0.2s"}','{"italic":false,"color":"white","text":"Velocity: 4.4 bps"}','{"italic":false,"color":"white","text":"Fuse: 1.5"}','{"italic":false,"color":"white","text":"Explode instantly if all land"}']]
clear @s[scores={masterb=..9}] cooked_salmon
item replace entity @s[scores={masterb=..9}] hotbar.2 with minecraft:barrier[custom_name='{"italic":false,"text":"§9Not enough material"}',lore=['{"italic":false,"color":"white","text":"3x1 TNT"}','{"italic":false,"color":"white","text":"Reload: 3.5s"}','{"italic":false,"color":"white","text":"Delay: 0s, 0.1s, 0.2s"}','{"italic":false,"color":"white","text":"Velocity: 4.4 bps"}','{"italic":false,"color":"white","text":"Fuse: 1.5"}','{"italic":false,"color":"white","text":"Explode instantly if all land"}']] 1
item replace entity @s[scores={storm_cooldown=1..}] hotbar.2 with minecraft:beetroot[custom_name='{"italic":false,"text":"§9On Cooldown"}',lore=['{"italic":false,"color":"white","text":"3x1 TNT"}','{"italic":false,"color":"white","text":"Reload: 3.5s"}','{"italic":false,"color":"white","text":"Delay: 0s, 0.1s, 0.2s"}','{"italic":false,"color":"white","text":"Velocity: 4.4 bps"}','{"italic":false,"color":"white","text":"Fuse: 1.5"}','{"italic":false,"color":"white","text":"Explode instantly if all land"}']] 1

item replace entity @s[scores={masterc=25..}] hotbar.0 with blaze_rod[custom_name='{"italic":false,"text":"§9On Cooldown"}',lore=['{"italic":false,"color":"white","text":"Mines 3 blocks for material"}','{"italic":false,"color":"white","text":"Reload: 2.5s"}','{"italic":false,"color":"white","text":"Offhand/Throw to Gather"}','{"italic":false,"color":"white","text":"Gather reload: 10s"}']]
clear @s[scores={masterc=..24}] blaze_rod