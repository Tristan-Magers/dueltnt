scoreboard players set RoundSetting game 1
data merge block 475 18 497 {Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Custom Random\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @e[name=menu,type=armor_stand] RoundType 2\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"}
execute as @e[name=menu,scores={CRpage=1}] at @s run clone 468 19 503 463 15 507 470 15 498
execute as @e[name=menu,scores={CRpage=2}] at @s run clone 461 19 503 456 15 507 470 15 498
playsound minecraft:entity.armor_stand.break master @a 475 18 497 .6 1.7
scoreboard players set @s RoundType 0