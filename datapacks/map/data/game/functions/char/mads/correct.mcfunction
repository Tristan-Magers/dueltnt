item replace entity @s[scores={nobow=3..}] hotbar.0 with bow{Damage:160,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§aExplosive Gel§r : Throw to switch\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]}] mooshroom_spawn_egg
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=0}] hotbar.5 with minecraft:mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 3
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=1}] hotbar.5 with minecraft:mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 2
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=2}] hotbar.5 with minecraft:mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 1
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=3}] hotbar.5 with minecraft:mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 1
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg",Slot:5b}]},scores={tntegguse=3}] hotbar.5 with minecraft:mooshroom_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:mooshroom,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,CustomName:"{\"italic\":false,\"text\":\"tnt\"}",Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§cSummon TNT §r: Right-click\"}"}} 1

clear @s[nbt=!{Inventory:[{id:"minecraft:stick",Slot:3b}]},scores={PStimer=..0}] stick
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:stick",Slot:3b}]},scores={PStimer=..0}] PStimer 2

clear @s[nbt=!{Inventory:[{id:"minecraft:sugar",Slot:2b}]},scores={acidTimer=..0}] sugar
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:sugar",Slot:2b}]},scores={acidTimer=..0}] acidTimer 2

clear @s[nbt=!{Inventory:[{id:"minecraft:ink_sac",Slot:1b}]},scores={SPorttimer=..0}] ink_sac
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:ink_sac",Slot:1b}]},scores={SPorttimer=..0}] SPorttimer 2

clear @s[nbt=!{Inventory:[{id:"minecraft:rabbit_hide",Slot:4b}]},scores={laserDummy=..-231}] rabbit_hide
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:rabbit_hide",Slot:4b}]},scores={laserDummy=..-231}] laserDummy -229