replaceitem entity @s[scores={nobow=3..}] hotbar.0 bow{Damage:20,Unbreakable:1,display:{Name:"{\"color\":\"red\",\"italic\":false,\"text\":\"§cBomb Bow§r : Throw to switch\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:lingering_potion",Slot:1b}]},scores={snowReset=..50},tag=checkairnade] lingering_potion
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:lingering_potion",Slot:1b}]},scores={snowReset=..50},tag=checkairnade] snowReset 51

clear @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={plaguetimer=..149},tag=!checkairnade] snowball
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={plaguetimer=..149,snowReset=..50},tag=!checkairnade] plaguetimer 151

clear @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]}] ender_pearl
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=5}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 1
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=4}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 2
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=3}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 3
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=2}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 4
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=1}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 5
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 6
#replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 7
#replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=4}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 8
#replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=3}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 9
#replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=2}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 10
#replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=1}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 11
#replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] hotbar.2 minecraft:ender_pearl{display:{Name:"{\"italic\":false,\"text\":\"§aTeleport §r: Right-click\"}"}} 12

clear @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]}] anvil
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=0}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 10
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=1}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 9
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=2}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 8
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=3}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 7
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=4}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 6
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=5}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 5
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=6}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 4
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=7}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 3
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=8}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 2
replaceitem entity @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=9}] hotbar.4 anvil{display:{Name:"{\"italic\":false,\"text\":\"Anvil §r: Right-click\"}"}} 1

#clear @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={snowReset=..0}] snowball
#scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={snowReset=..0}] snowReset 4

clear @s[nbt=!{Inventory:[{id:"minecraft:kelp",Slot:3b}]},scores={BBtimer=..0}] kelp
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:kelp",Slot:3b}]},scores={BBtimer=..0}] BBtimer 4