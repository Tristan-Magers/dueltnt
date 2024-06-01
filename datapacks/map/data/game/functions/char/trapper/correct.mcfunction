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
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:bone",Slot:1b}]}] hotbar.1 with minecraft:bone[custom_name='{"italic":false,"text":"§6Detonate Arrows §f§r: Right-click"}']

clear @s[nbt=!{Inventory:[{id:"minecraft:tnt"}]},scores={PlaceMineTime=..40}] tnt
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:tnt"}]},scores={PlaceMineTime=..80}] PlaceMineTime 200

clear @s[nbt=!{Inventory:[{id:"minecraft:emerald",Slot:3b}]},scores={TBtimer=-199..-2}] redstone
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:emerald",Slot:3b}]},scores={TBtimer=-199..-2}] TBtimer 1

clear @s[nbt=!{Inventory:[{id:"minecraft:redstone",Slot:3b}]},scores={TBtimer=..-200}] redstone
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:redstone",Slot:3b}]},scores={TBtimer=..-200}] TBtimer 1001

clear @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:4b}]},scores={PlatTimer=..0}] diamond_sword
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:4b}]},scores={PlatTimer=..0,platUse=2}] hotbar.4 with diamond_sword[damage=0,custom_name='{"italic":false,"text":"Temporary Platform : Right-click"}',hide_additional_tooltip={},attribute_modifiers={modifiers:[{type:"generic.attack_speed",name:"generic.attack_speed",amount:0.9,operation:"add_value",uuid:[I;2016337811,-1510259727,-1143610979,661859754],slot:"mainhand"},{type:"generic.attack_damage",name:"generic.attack_damage",amount:9,operation:"add_value",uuid:[I;-1708916597,1794000556,-1199725791,1224881908],slot:"mainhand"}],show_in_tooltip:false}]
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:4b}]},scores={PlatTimer=..0,platUse=1}] hotbar.4 with diamond_sword[damage=520,custom_name='{"italic":false,"text":"Temporary Platform : Right-click"}',hide_additional_tooltip={},attribute_modifiers={modifiers:[{type:"generic.attack_speed",name:"generic.attack_speed",amount:0.9,operation:"add_value",uuid:[I;2016337811,-1510259727,-1143610979,661859754],slot:"mainhand"},{type:"generic.attack_damage",name:"generic.attack_damage",amount:9,operation:"add_value",uuid:[I;-1708916597,1794000556,-1199725791,1224881908],slot:"mainhand"}],show_in_tooltip:false}]
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:4b}]},scores={PlatTimer=..0,platUse=0}] hotbar.4 with diamond_sword[damage=1040,custom_name='{"italic":false,"text":"Temporary Platform : Right-click"}',hide_additional_tooltip={},attribute_modifiers={modifiers:[{type:"generic.attack_speed",name:"generic.attack_speed",amount:0.9,operation:"add_value",uuid:[I;2016337811,-1510259727,-1143610979,661859754],slot:"mainhand"},{type:"generic.attack_damage",name:"generic.attack_damage",amount:9,operation:"add_value",uuid:[I;-1708916597,1794000556,-1199725791,1224881908],slot:"mainhand"}],show_in_tooltip:false}]
item replace entity @s[nbt=!{Inventory:[{id:"minecraft:diamond_sword",Slot:4b}]},scores={PlatTimer=..0,platUse=3}] hotbar.4 with diamond_sword[damage=0,custom_name='{"italic":false,"text":"Temporary Platform : Right-click"}',hide_additional_tooltip={},attribute_modifiers={modifiers:[{type:"generic.attack_speed",name:"generic.attack_speed",amount:0.9,operation:"add_value",uuid:[I;2016337811,-1510259727,-1143610979,661859754],slot:"mainhand"},{type:"generic.attack_damage",name:"generic.attack_damage",amount:9,operation:"add_value",uuid:[I;-1708916597,1794000556,-1199725791,1224881908],slot:"mainhand"}],show_in_tooltip:false}]

#
scoreboard players add @s[scores={TBtimer=..-1}] trapper_swap_extra 1
scoreboard players add @s[scores={TBtimer=-1000}] trapper_swap_extra 1

scoreboard players set @s[scores={TBtimer=0..3}] trapper_swap_extra 0
scoreboard players set @s[scores={TBtimer=1001..}] trapper_swap_extra 0

scoreboard players set @s[scores={trapper_swap_extra=135..}] trapper_swap_extra 125