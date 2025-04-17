tag @e[name=Map,type=armor_stand] add options

#
data merge block 475 16 497 {front_text:{messages:[[{"text":""}],{"text":"Options","bold":true,"click_event":{"action":"run_command","command":"scoreboard players set @e[name=menu,type=armor_stand] Opt 3"}},{"text":"[enabled]","color":"dark_green","bold":true},[{"text":""}]]}}
fill 475 16 496 475 16 494 oak_wall_sign[facing=east]
playsound minecraft:entity.armor_stand.fall master @a 475 18 497 .6 1.2
scoreboard players set @e[name=menu,type=armor_stand] Opt 0

#
#execute if entity @e[name=menu,type=armor_stand,scores={DthM=0}] run data merge block 475 16 496 {"{"text":"Death Messages,bold":false,"click_event":{"action":"run_command,value":"scoreboard players set @e[name=menu,type=armor_stand] DthM 2"}},{"text":"[disabled],color":"dark_red,bold":true}"}
#execute if entity @e[name=menu,type=armor_stand,scores={DthM=1}] run data merge block 475 16 496 {"{"text":"Death Messages,bold":false,"click_event":{"action":"run_command,value":"scoreboard players set @e[name=menu,type=armor_stand] DthM 3"}},{"text":"[enabled],color":"dark_green,bold":true}"}

execute if entity @e[name=menu,type=armor_stand,scores={Team=0}] run data merge block 475 16 495 {front_text:{messages:[[{"text":""}],{"text":"Teams","bold":false,"click_event":{"action":"run_command","command":"scoreboard players set @e[name=menu,type=armor_stand] Team 2"}},{"text":"[disabled]","color":"dark_red","bold":true},[{"text":""}]]}}
execute if entity @e[name=menu,type=armor_stand,scores={Team=1}] run data merge block 475 16 495 {front_text:{messages:[[{"text":""}],{"text":"Teams","bold":false,"click_event":{"action":"run_command","command":"scoreboard players set @e[name=menu,type=armor_stand] Team 3"}},{"text":"[enabled]","color":"dark_green","bold":true},[{"text":""}]]}}

data merge block 475 16 494 {front_text:{messages:[[{"text":""}],[{"score":{"name":"Lives","objective":"game"},"bold":true}],[{"text":"Live(s)","click_event":{"action":"run_command","command":"tag @e[name=menu] add LifeC"}}],[{"text":""}]]}}
function game:mode

#
tag @e[name=Map,type=armor_stand] remove options
