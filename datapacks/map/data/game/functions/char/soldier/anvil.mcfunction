#
execute as @s at @s run summon tnt ~ ~ ~ {fuse:0}
execute as @s at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ .4 1
scoreboard players set @s fall 10
scoreboard players add @s anviluse 1
clear @s anvil 1

function game:player/class_team
execute as @s[scores={anviluse=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (9 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (8 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=3}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (7 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (6 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=5}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (5 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=6}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (4 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=7}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (3 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=8}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=9}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={anviluse=10}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Anvil","color":"gray","bold":true},{"text":" (0 Remaining) ","color":"white"}]

