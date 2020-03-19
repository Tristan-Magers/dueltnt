execute as @s[name=map1,scores={CustomRandom=2}] at @s run setblock 474 18 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Core\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map1] CustomRandom 3\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map1,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map1,scores={CustomRandom=3}] at @s run setblock 474 18 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Core\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map1] CustomRandom 2\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map1,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map2,scores={CustomRandom=2}] at @s run setblock 474 18 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"N. Strong\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map2] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map2,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map2,scores={CustomRandom=3}] at @s run setblock 474 18 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"N. Strong\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map2] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map2,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map3,scores={CustomRandom=2}] at @s run setblock 474 18 499 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Mesa\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map3] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map3,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map3,scores={CustomRandom=3}] at @s run setblock 474 18 499 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Mesa\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map3] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map3,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map4,scores={CustomRandom=2}] at @s run setblock 474 17 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"F. Watch\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map4] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map4,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map4,scores={CustomRandom=3}] at @s run setblock 474 17 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"F. Watch\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map4] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map4,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map5,scores={CustomRandom=2}] at @s run setblock 474 17 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"The End\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map5] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map5,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map5,scores={CustomRandom=3}] at @s run setblock 474 17 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"The End\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map5] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map5,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map6,scores={CustomRandom=2}] at @s run setblock 474 17 499 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Dead Feast\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map6] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map6,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map6,scores={CustomRandom=3}] at @s run setblock 474 17 499 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Dead Feast\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map6] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map6,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map7,scores={CustomRandom=2}] at @s run setblock 474 16 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Arena\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map7] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map7,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map7,scores={CustomRandom=3}] at @s run setblock 474 16 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Arena\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map7] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map7,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map8,scores={CustomRandom=2}] at @s run setblock 474 16 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Fair Fight\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map8] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map8,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map8,scores={CustomRandom=3}] at @s run setblock 474 16 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Fair Fight\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map8] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map8,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map9,scores={CustomRandom=2}] at @s run setblock 474 18 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Frost Bite\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map9] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map9,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map9,scores={CustomRandom=3}] at @s run setblock 474 18 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Frost Bite\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map9] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map9,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map10,scores={CustomRandom=2}] at @s run setblock 474 18 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Catastrophe\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map10] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map10,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map10,scores={CustomRandom=3}] at @s run setblock 474 18 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Catastrophe\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map10] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map10,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map11,scores={CustomRandom=2}] at @s run setblock 474 18 499 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Showtime\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map11] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map11,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map11,scores={CustomRandom=3}] at @s run setblock 474 18 499 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Showtime\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map11] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map11,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map12,scores={CustomRandom=2}] at @s run setblock 474 17 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Terminal\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map12] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map12,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map12,scores={CustomRandom=3}] at @s run setblock 474 17 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Terminal\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map12] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map12,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map13,scores={CustomRandom=2}] at @s run setblock 474 17 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Suto\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map13] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map13,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map13,scores={CustomRandom=3}] at @s run setblock 474 17 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Suto\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map13] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map13,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map14,scores={CustomRandom=2}] at @s run setblock 474 17 499 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Tremor\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map14] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map14,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map14,scores={CustomRandom=3}] at @s run setblock 474 17 499 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Tremor\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map14] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map14,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map15,scores={CustomRandom=2}] at @s run setblock 474 16 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Hallow Keep\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map15] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map15,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map15,scores={CustomRandom=3}] at @s run setblock 474 16 501 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Hallow Keep\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map15] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map15,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0

execute as @s[name=map16,scores={CustomRandom=2}] at @s run setblock 474 16 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Beacon\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map16] CustomRandom 3\"},\"text\":\"[enabled]\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map16,scores={CustomRandom=2}] at @s run scoreboard players set @s CustomRandom 1

execute as @s[name=map16,scores={CustomRandom=3}] at @s run setblock 474 16 500 oak_wall_sign[facing=east]{Text1:"[{\"text\":\"\"}]",Text2:"[{\"text\":\"Beacon\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @e[name=map16] CustomRandom 2\"},\"text\":\"[disabled]\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"} destroy
execute as @s[name=map16,scores={CustomRandom=3}] at @s run scoreboard players set @s CustomRandom 0
