data merge block 475 16 497 {front_text:{messages:[[{"text":""}],{"text":"Options","bold":true,"click_event":{"action":"run_command","command":"scoreboard players set @e[name=menu,type=armor_stand] Opt 2"}},{"text":"[disabled]","color":"dark_red","bold":true},[{"text":""}]]}}
fill 475 16 496 475 16 494 air
playsound minecraft:entity.armor_stand.fall master @a 475 18 497 .6 .9
scoreboard players set @e[name=menu,type=armor_stand] Opt 0
