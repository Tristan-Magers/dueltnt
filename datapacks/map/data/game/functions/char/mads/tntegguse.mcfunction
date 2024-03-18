function game:player/class_team
execute as @s[scores={tntegguse=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"TNT Egg","color":"red","bold":true},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={tntegguse=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"TNT Egg","color":"red","bold":true},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={tntegguse=3}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"TNT Egg","color":"red","bold":true},{"text":" (0 Remaining) ","color":"white"}]
execute as @s[scores={tntegguse=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"TNT Egg","color":"red","bold":true},{"text":" (0 Remaining) ","color":"white"}]
scoreboard players set @a tntegguset 0