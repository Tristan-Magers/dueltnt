replaceitem entity @s[scores={nobow=3..}] hotbar.0 bow{Damage:20,Unbreakable:1,display:{Name:"{\"color\":\"red\",\"italic\":false,\"text\":\"§cBomb Bow§r : Throw to switch\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]}] ender_pearl
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=2}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 1
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=1}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 2
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 3

clear @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={snowReset=..0}] snowball
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={snowReset=..0}] snowReset 4

clear @s[nbt=!{Inventory:[{id:"minecraft:kelp",Slot:3b}]},scores={BBtimer=..0}] kelp
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:kelp",Slot:3b}]},scores={BBtimer=..0}] BBtimer 4