execute as @s[scores={nobow=3..}] run function game:char/soldier/give/bow

clear @s[nbt=!{Inventory:[{id:"minecraft:lingering_potion",Slot:1b}]},scores={snowReset=..50},tag=checkairnade] lingering_potion
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:lingering_potion",Slot:1b}]},scores={snowReset=..50},tag=checkairnade] snowReset 51

clear @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={plaguetimer=..149},tag=!checkairnade] snowball
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={plaguetimer=..149,snowReset=..50},tag=!checkairnade] plaguetimer 151

clear @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]}] ender_pearl
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=4}] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}',lore=['{"italic":false,"color":"white","text":"1s Levitation 9 when teleported"}','{"italic":false,"color":"white","text":"Reloads all shift charges when teleported"}','{"italic":false,"color":"white","text":"Does not reload"}']] 1
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=3}] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}',lore=['{"italic":false,"color":"white","text":"1s Levitation 9 when teleported"}','{"italic":false,"color":"white","text":"Reloads all shift charges when teleported"}','{"italic":false,"color":"white","text":"Does not reload"}']] 2
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=2}] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}',lore=['{"italic":false,"color":"white","text":"1s Levitation 9 when teleported"}','{"italic":false,"color":"white","text":"Reloads all shift charges when teleported"}','{"italic":false,"color":"white","text":"Does not reload"}']] 3
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=1}] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}',lore=['{"italic":false,"color":"white","text":"1s Levitation 9 when teleported"}','{"italic":false,"color":"white","text":"Reloads all shift charges when teleported"}','{"italic":false,"color":"white","text":"Does not reload"}']] 4
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] hotbar.2 with minecraft:ender_pearl[custom_name='{"italic":false,"text":"§aTeleport §r: Right-click"}',lore=['{"italic":false,"color":"white","text":"1s Levitation 9 when teleported"}','{"italic":false,"color":"white","text":"Reloads all shift charges when teleported"}','{"italic":false,"color":"white","text":"Does not reload"}']] 5

execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=4}] run function game:char/soldier/give/teleport {"amount":1}
execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=3}] run function game:char/soldier/give/teleport {"amount":2}
execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=2}] run function game:char/soldier/give/teleport {"amount":3}
execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=1}] run function game:char/soldier/give/teleport {"amount":4}
execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl",Slot:2b}]},scores={endercount=0}] run function game:char/soldier/give/teleport {"amount":5}

clear @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]}] anvil

execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=0}] run function game:char/soldier/give/anvil {"amount":10}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=1}] run function game:char/soldier/give/anvil {"amount":9}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=2}] run function game:char/soldier/give/anvil {"amount":8}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=3}] run function game:char/soldier/give/anvil {"amount":7}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=4}] run function game:char/soldier/give/anvil {"amount":6}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=5}] run function game:char/soldier/give/anvil {"amount":5}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=6}] run function game:char/soldier/give/anvil {"amount":4}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=7}] run function game:char/soldier/give/anvil {"amount":3}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=8}] run function game:char/soldier/give/anvil {"amount":2}
execute as @s[nbt=!{Inventory:[{id:"minecraft:anvil",Slot:4b}]},scores={anviluse=9}] run function game:char/soldier/give/anvil {"amount":1}

#clear @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={snowReset=..0}] snowball
#scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:snowball",Slot:1b}]},scores={snowReset=..0}] snowReset 4

clear @s[nbt=!{Inventory:[{id:"minecraft:kelp",Slot:3b}]},scores={BBtimer=..0}] kelp
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:kelp",Slot:3b}]},scores={BBtimer=..0}] BBtimer 4