item replace entity @s[scores={nobow=3..}] hotbar.0 with bow{Damage:60,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§bVaporizer§r : Throw to switch\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]}] ender_pearl
#execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={enderreload=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Reloaded ","color":"white"},{"text":"Teleport","color":"green","bold":"true"}]
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={enderreload=..0}] hotbar.2 with minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}}

item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] hotbar.2 with minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 3
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=1}] hotbar.2 with minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 2
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=2}] hotbar.2 with minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 1
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=3}] hotbar.2 with minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 1

clear @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={XPReset=90}] experience_bottle
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={XPReset=90}] XPReset 92

clear @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={misreload=..18,XPReset=..0},tag=!coal] experience_bottle
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:experience_bottle",Slot:1b}]},scores={misreload=..18,XPReset=..0},tag=!coal] misreload 22

clear @s[nbt=!{Inventory:[{id:"minecraft:coal",Slot:1b}]},scores={XPReset=..48},tag=coal] coal
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:coal",Slot:1b}]},scores={XPReset=..48},tag=coal] XPReset 52

clear @s[nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:3b}]},scores={mTtimer=..0}] iron_ingot
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:iron_ingot",Slot:3b}]},scores={mTtimer=..0}] hotbar.3 with minecraft:iron_ingot{display:{Name:"{\"italic\":false,\"text\":\"Mass Levitate : Right-click [everyone within 3 blocks]\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:4b}]},scores={potion=-1..0}] splash_potion
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:4b}]},scores={potion=-1..0}] potion -4