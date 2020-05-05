replaceitem entity @s[scores={nobow=3..}] hotbar.0 bow{Damage:60,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§bVaporizer§r : Throw to switch\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]}] ender_pearl
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={enderreload=..0}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}}
#replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 2

#clear @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={XPReset=..0}] experience_bottle
#scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={XPReset=..0}] XPReset 5

clear @s[nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:3b}]},scores={mTtimer=..0}] iron_ingot
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:3b}]},scores={mTtimer=..0}] hotbar.3 minecraft:iron_ingot{display:{Name:"{\"italic\":false,\"text\":\"Mass Levitate : Right-click [everyone within 3 blocks]\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:4b}]},scores={potion=-1..0}] splash_potion
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:4b}]},scores={potion=-1..0}] potion -4