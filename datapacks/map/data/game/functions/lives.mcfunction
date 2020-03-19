execute as @s at @s run scoreboard players add Lives game 1
execute as @s at @s run data merge block 475 16 494 {Text1:"[{\"text\":\"\"}]",Text3:"[{\"score\":{\"name\":\"Lives\",\"objective\":\"game\"},\"bold\":\"true\"}]",Text2:"[{\"text\":\"Live(s)\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[name=menu] add LifeC\"}}]",Text4:"[{\"text\":\"\"}]"}
scoreboard players operation @s Lives = Lives game
execute as @s[scores={Lives=6..}] at @s run scoreboard players set Lives game 1
execute as @s[scores={Lives=6..}] at @s run data merge block 475 16 494 {Text1:"[{\"text\":\"\"}]",Text3:"[{\"score\":{\"name\":\"Lives\",\"objective\":\"game\"},\"bold\":\"true\"}]",Text2:"[{\"text\":\"Live(s)\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tag @e[name=menu] add LifeC\"}}]",Text4:"[{\"text\":\"\"}]"}
execute as @s at @s run playsound minecraft:entity.splash_potion.throw master @a 475 18 497 .3 2
tag @s remove LifeC