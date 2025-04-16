execute if entity @e[name=Map,scores={mode=0}] run data merge block 475 16 496 {front_text:{messages:[[{"text":""}],{"text":"Mode","bold":false,"click_event":{"action":"run_command","command":"tag @e[name=menu,type=armor_stand] add ModeC"}},{"text":"Normal","color":"black","bold":true},{"text":"","color":"black","bold":false}]}}
execute if entity @e[name=Map,scores={mode=1}] run data merge block 475 16 496 {front_text:{messages:[[{"text":""}],{"text":"Mode","bold":false,"click_event":{"action":"run_command","command":"tag @e[name=menu,type=armor_stand] add ModeC"}},{"text":"Overpowered","color":"dark_aqua","bold":true},{"text":"","color":"black","bold":false}]}}
execute if entity @e[name=Map,scores={mode=2}] run data merge block 475 16 496 {front_text:{messages:[[{"text":""}],{"text":"Mode","bold":false,"click_event":{"action":"run_command","command":"tag @e[name=menu,type=armor_stand] add ModeC"}},{"text":"Hotfeet","color":"dark_red","bold":true},{"text":"","color":"black","bold":false}]}}
execute if entity @e[name=Map,scores={mode=3}] run data merge block 475 16 496 {front_text:{messages:[[{"text":""}],{"text":"Mode","bold":false,"click_event":{"action":"run_command","command":"tag @e[name=menu,type=armor_stand] add ModeC"}},{"text":"Phantom","color":"dark_purple","bold":true},{"text":"","color":"black","bold":false}]}}
execute if entity @e[name=Map,scores={mode=4}] run data merge block 475 16 496 {front_text:{messages:[[{"text":""}],{"text":"Mode","bold":false,"click_event":{"action":"run_command","command":"tag @e[name=menu,type=armor_stand] add ModeC"}},{"text":"Survival","color":"dark_green","bold":true},{"text":"(PvE)","color":"black","bold":false}]}}

playsound minecraft:entity.armor_stand.fall master @a 475 18 497 .5 1.2

execute if entity @e[name=Map,scores={mode=0},tag=!options] run playsound minecraft:ui.stonecutter.select_recipe master @a 475 18 497 0.6 0.7
execute if entity @e[name=Map,scores={mode=0},tag=!options] run playsound minecraft:ui.stonecutter.select_recipe master @a 475 18 497 0.5 2

execute if entity @e[name=Map,scores={mode=2},tag=!options] run playsound minecraft:entity.generic.explode master @a 475 18 497 0.3 2
execute if entity @e[name=Map,scores={mode=2},tag=!options] run playsound minecraft:entity.generic.explode master @a 475 18 497 0.4 0.8

execute if entity @e[name=Map,scores={mode=3},tag=!options] run playsound minecraft:item.trident.return master @a 475 18 497 0.4 2
execute if entity @e[name=Map,scores={mode=3},tag=!options] run playsound minecraft:item.trident.return master @a 475 18 497 0.5 1.2

execute if entity @e[name=Map,scores={mode=4},tag=!options] run playsound minecraft:entity.zombie.hurt master @a 475 18 497 0.5 0.8
execute if entity @e[name=Map,scores={mode=4},tag=!options] run playsound minecraft:entity.zombie.hurt master @a 475 18 497 0.4 1.2