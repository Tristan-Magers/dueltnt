scoreboard players remove @s pig_count 1

function game:player/class_team
execute as @s[scores={class=9,pig_count=..0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Pig Transform","color":"gray","bold":true},{"text":" (0 Remaining) ","color":"white"}]
execute as @s[scores={class=9,pig_count=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Pig Transform","color":"gray","bold":true},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={class=9,pig_count=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Pig Transform","color":"gray","bold":true},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={class=9,pig_count=3}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Pig Transform","color":"gray","bold":true},{"text":" (3 Remaining) ","color":"white"}]
execute as @s[scores={class=9,pig_count=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Pig Transform","color":"gray","bold":true},{"text":" (4 Remaining) ","color":"white"}]
execute as @s[scores={class=9,pig_count=5}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Pig Transform","color":"gray","bold":true},{"text":" (5 Remaining) ","color":"white"}]
execute as @s[scores={class=9,pig_count=6}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Pig Transform","color":"gray","bold":true},{"text":" (6 Remaining) ","color":"white"}]
execute as @s[scores={class=9,pig_count=7}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Pig Transform","color":"gray","bold":true},{"text":" (7 Remaining) ","color":"white"}]
