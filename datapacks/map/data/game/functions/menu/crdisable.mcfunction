scoreboard players set RoundSetting game 0
execute as @e[name=menu,scores={CRpage=1}] at @s run execute if block 474 17 500 oak_wall_sign run clone 474 19 502 470 15 498 463 15 503
execute as @e[name=menu,scores={CRpage=2}] at @s run execute if block 474 17 500 oak_wall_sign run clone 474 19 502 470 15 498 456 15 503
execute as @e[name=menu,type=armor_stand] at @s run function game:mapshow
data merge block 475 18 497 {front_text:{messages:["[{\"text\":\"\"}]","[{\"text\":\"Custom Random\",\"bold\":true}]","[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @e[name=menu,type=armor_stand] RoundType 1\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":true}]","[{\"text\":\"\"}]"]}}
playsound minecraft:entity.armor_stand.break master @a 475 18 497 .6 .9
scoreboard players set @s RoundType 0