execute as @s[scores={nobow=3..}] run function game:char/mads/give/bow

clear @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]}] mooshroom_spawn_egg
execute as @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=0}] run function game:char/mads/give/tntegg {"amount":3}
execute as @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=1}] run function game:char/mads/give/tntegg {"amount":2}
execute as @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=2}] run function game:char/mads/give/tntegg {"amount":1}
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

clear @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:7b}]}] paper
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:7b}]}] run function game:char/mads/give/shift