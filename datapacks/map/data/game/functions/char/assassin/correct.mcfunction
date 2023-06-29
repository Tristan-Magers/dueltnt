item replace entity @s[scores={nobow=3..}] hotbar.0 with bow{Damage:40,Unbreakable:1,Enchantments:[{id:flame,lvl:1}],display:{Name:"{\"italic\":false,\"text\":\"§dBazooka Bow§f : Throw to switch\"}"}}

clear @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]}] ender_pearl
#item replace entity @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=1,enderreload=..0}] hotbar.2 with minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 1
item replace entity @s[x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0,enderreload=..0}] hotbar.2 with minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 1

#clear @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:1b}]},scores={potion=-1..0}] splash_potion
#scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:1b}]},scores={potion=-1..0}] potion -4

#clear @s[nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:1b}]},nbt=!{Inventory:[{id:"minecraft:leather",Slot:4b}]},scores={starT=..0,dartcool=..0}] leather
#scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:1b}]},nbt=!{Inventory:[{id:"minecraft:leather",Slot:4b}]},scores={starT=..0,dartcool=..0}] starT 20

clear @s[nbt=!{Inventory:[{id:"minecraft:diamond",Slot:3b}]},scores={FZtimer=..0}] diamond
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:diamond",Slot:3b}]},scores={FZtimer=..0}] FZtimer 4

#clear @s[nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:1b}]},scores={dartcool=..0}] nether_star
#scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:nether_star",Slot:1b}]},scores={dartcool=..0}] dartcool 2

clear @s[nbt=!{Inventory:[{id:"minecraft:squid_spawn_egg",Slot:4b}]}] squid_spawn_egg
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:squid_spawn_egg",Slot:4b}]},scores={squidegguse=0,sneakdisable=0}] hotbar.4 with minecraft:squid_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:squid,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§9Sneak Attack §r: Right-click\"}"}} 2
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:squid_spawn_egg",Slot:4b}]},scores={squidegguse=1,sneakdisable=0}] hotbar.4 with minecraft:squid_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:squid,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§9Sneak Attack §r: Right-click\"}"}} 1
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:squid_spawn_egg",Slot:4b}]},scores={squidegguse=2,sneakdisable=0}] hotbar.4 with minecraft:squid_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:squid,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§9Sneak Attack §r: Right-click\"}"}} 1
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:squid_spawn_egg",Slot:5b}]},scores={squidegguse=3,sneakdisable=0}] hotbar.5 with minecraft:squid_spawn_egg{CanPlaceOn:["#game:bolt_place"],EntityTag:{id:squid,Size:2,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Silent:1},HideFlags:16,display:{Name:"{\"italic\":false,\"text\":\"§9Sneak Attack §r: Right-click\"}"}} 1
