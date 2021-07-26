data merge block 475 16 497 {Text2:"{\"text\":\"Options\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=menu,type=armor_stand] Opt 2\"}}",Text3:"{\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":true}"}
fill 475 16 496 475 16 494 air
playsound minecraft:entity.armor_stand.fall master @a 475 18 497 .6 .9
scoreboard players set @e[name=menu,type=armor_stand] Opt 0
