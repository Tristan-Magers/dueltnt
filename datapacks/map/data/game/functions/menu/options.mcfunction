#
data merge block 475 16 497 {Text2:"{\"text\":\"Options\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=menu,type=armor_stand] Opt 3\"}}",Text3:"{\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":true}"}
fill 475 16 496 475 16 494 oak_wall_sign[facing=east]
playsound minecraft:entity.armor_stand.fall master @a 475 18 497 .6 1.2
scoreboard players set @e[name=menu,type=armor_stand] Opt 0

#
#execute if entity @e[name=menu,type=armor_stand,scores={DthM=0}] run data merge block 475 16 496 {Text2:"{\"text\":\"Death Messages\",\"bold\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=menu,type=armor_stand] DthM 2\"}}",Text3:"{\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":true}"}
#execute if entity @e[name=menu,type=armor_stand,scores={DthM=1}] run data merge block 475 16 496 {Text2:"{\"text\":\"Death Messages\",\"bold\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=menu,type=armor_stand] DthM 3\"}}",Text3:"{\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":true}"}

execute if entity @e[name=menu,type=armor_stand,scores={Team=0}] run data merge block 475 16 495 {Text2:"{\"text\":\"Teams\",\"bold\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=menu,type=armor_stand] Team 2\"}}",Text3:"{\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":true}"}
execute if entity @e[name=menu,type=armor_stand,scores={Team=1}] run data merge block 475 16 495 {Text2:"{\"text\":\"Teams\",\"bold\":false,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=menu,type=armor_stand] Team 3\"}}",Text3:"{\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":true}"}

data merge block 475 16 494 {Text1:"[{\"text\":\"\"}]",Text3:"[{\"score\":{\"name\":\"Lives\",\"objective\":\"game\"},\"bold\":\"true\"}]",Text2:"[{\"text\":\"Live(s)\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[name=menu] add LifeC\"}}]",Text4:"[{\"text\":\"\"}]"}
function game:mode
