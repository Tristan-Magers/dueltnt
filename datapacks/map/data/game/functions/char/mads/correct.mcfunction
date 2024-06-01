item replace entity @s[scores={nobow=3..}] hotbar.0 with bow[damage=160,unbreakable={},custom_name='{"italic":false,"text":"§aExplosive Gel§r : Throw to switch"}']

clear @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]}] mooshroom_spawn_egg
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=0}] hotbar.5 with minecraft:mooshroom_spawn_egg[custom_name='{"italic":false,"text":"§cSummon TNT §r: Right-click"}',can_place_on={predicates:[{blocks:["#game:bolt_place"]}],show_in_tooltip:0b},entity_data={id:"mooshroom",Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}"}] 3
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=1}] hotbar.5 with minecraft:mooshroom_spawn_egg[custom_name='{"italic":false,"text":"§cSummon TNT §r: Right-click"}',can_place_on={predicates:[{blocks:["#game:bolt_place"]}],show_in_tooltip:0b},entity_data={id:"mooshroom",Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}"}] 2
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=2}] hotbar.5 with minecraft:mooshroom_spawn_egg[custom_name='{"italic":false,"text":"§cSummon TNT §r: Right-click"}',can_place_on={predicates:[{blocks:["#game:bolt_place"]}],show_in_tooltip:0b},entity_data={id:"mooshroom",Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}"}] 1
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=3}] hotbar.5 with minecraft:mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 1
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=3}] hotbar.5 with minecraft:mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 1

clear @s[nbt=!{Inventory:[{id:"minecraft:stick",Slot:3b}]},scores={PStimer=..0}] stick
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:stick",Slot:3b}]},scores={PStimer=..0}] PStimer 2

clear @s[nbt=!{Inventory:[{id:"minecraft:sugar",Slot:2b}]},scores={acidTimer=..0}] sugar
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:sugar",Slot:2b}]},scores={acidTimer=..0}] acidTimer 2

execute as 3a39fd32-c01f-489e-9536-22ad5eb307f8 if entity @s[nbt=!{Inventory:[{id:"minecraft:ink_sac",Slot:1b}]},scores={SPorttimer=..0}] at @s run function game:tournament_rewards/toggle_cosmetic {"fakeplayer":"#woa1Portal"}
clear @s[nbt=!{Inventory:[{id:"minecraft:ink_sac",Slot:1b}]},scores={SPorttimer=..0}] ink_sac
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:ink_sac",Slot:1b}]},scores={SPorttimer=..0}] SPorttimer 2

clear @s[nbt=!{Inventory:[{id:"minecraft:rabbit_hide",Slot:4b}]},scores={laserDummy=..-231}] rabbit_hide
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:rabbit_hide",Slot:4b}]},scores={laserDummy=..-231}] laserDummy -229