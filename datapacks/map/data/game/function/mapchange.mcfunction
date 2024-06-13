scoreboard players operation @s Map = Map game

execute as @s[scores={MChange=1}] at @s run scoreboard players add Map game 1

execute as @s[scores={MChange=2}] at @s run scoreboard players remove Map game 1

scoreboard players operation @s Map = Map game

execute as @s[scores={Map=17..900}] at @s run scoreboard players set Map game 0

scoreboard players operation @s Map = Map game

execute as @s[scores={Map=-100..-1}] at @s run scoreboard players set Map game 16

execute as @s[scores={MChange=3}] at @s run playsound minecraft:block.note.harp master @a 475 17 500 1 1.5

execute as @s[scores={MChange=1..2}] at @s run playsound minecraft:block.note.bass master @a 475 17 500 .8 1.5

scoreboard players set @s MChange 0


setblock 475 17 500 oak_wall_sign[facing=east] destroy
function game:mapshow