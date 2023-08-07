scoreboard players operation @e[name=menu,type=armor_stand] Rounds = Round game

scoreboard players remove Round game 1
data merge block 475 17 495 {front_text:{messages:["[{\"text\":\"\"}]","[{\"score\":{\"name\":\"Round\",\"objective\":\"game\"},\"bold\":\"true\"}]","[{\"text\":\"Round(s)\"}]","[{\"text\":\"\"}]"]}}
execute as @s[scores={Rounds=2..}] at @s run playsound minecraft:block.stone_button.click_on master @a 475 17 495 .5 1.5

execute as @s[scores={Rounds=..1}] at @s run scoreboard players set Round game 1
execute as @s[scores={Rounds=..1}] at @s run data merge block 475 17 495 {front_text:{messages:["[{\"text\":\"\"}]","[{\"score\":{\"name\":\"Round\",\"objective\":\"game\"},\"bold\":\"true\"}]","[{\"text\":\"Round(s)\"}]","[{\"text\":\"\"}]"]}}
execute as @s[scores={Rounds=..1}] at @s run playsound minecraft:block.note_block.basedrum master @a 475 17 495 .4 .4

tag @s remove RoundCheckDown