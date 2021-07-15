#item replace entity @s[scores={nobow=3..}] hotbar.0 with bow{Damage:80,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§cTNT Trap§r : Throw to switch\"}"}}

tag @s remove first
tag @s[tag=haspup] add first
tag @s[nbt={Inventory:[{id:"minecraft:bamboo",Slot:0b}]}] add first
tag @s[nbt={Inventory:[{id:"minecraft:flint",Slot:0b}]}] add first
tag @s[nbt={Inventory:[{id:"minecraft:bowl",Slot:0b}]}] add first

clear @s[tag=!first,scores={bowlthrow=0,flintthrow=0,bambthrow=0}] bamboo
clear @s[tag=!first,scores={bowlthrow=0,flintthrow=0,bambthrow=0}] flint
clear @s[tag=!first,scores={bowlthrow=0,flintthrow=0,bambthrow=0}] bowl

scoreboard players set @s[tag=!first,scores={bowlthrow=0,flintthrow=0,bambthrow=0}] bowlthrow 1

#clear @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:4b}]},scores={potion=-1..0}] splash_potion
#scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:splash_potion",Slot:4b}]},scores={potion=-1..0}] potion -2

clear @s[nbt=!{Inventory:[{id:"minecraft:bone",Slot:1b}]}] bone
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bone",Slot:1b}]}] hotbar.1 with minecraft:bone{Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Detonate Arrows §f§r: Right-click\"}"}}

clear @s[nbt=!{Inventory:[{id:"minecraft:tnt",Slot:2b}]},scores={PlaceMineTime=..80}] tnt
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:tnt",Slot:2b}]},scores={PlaceMineTime=..80}] PlaceMineTime 200

clear @s[nbt=!{Inventory:[{id:"minecraft:redstone",Slot:4b}]},scores={TBtimer=..-2}] redstone
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:redstone",Slot:4b}]},scores={TBtimer=..-2}] TBtimer 1

clear @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:3b}]},scores={PlatTimer=..0}] diamond_sword
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:3b}]},scores={PlatTimer=..0,platUse=2}] hotbar.3 with diamond_sword{Damage:390,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform : Right-click\"}"}}
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:3b}]},scores={PlatTimer=..0,platUse=1}] hotbar.3 with diamond_sword{Damage:780,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform : Right-click\"}"}}
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:3b}]},scores={PlatTimer=..0,platUse=0}] hotbar.3 with diamond_sword{Damage:1170,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform : Right-click\"}"}}
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:3b}]},scores={PlatTimer=..0,platUse=3}] hotbar.3 with diamond_sword{Damage:0,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform : Right-click\"}"}}
