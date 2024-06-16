scoreboard players add @s x_mot 0
scoreboard players add @s y_mot 0
scoreboard players add @s z_mot 0

execute at @s positioned ~ ~-0.8 ~ if entity @a[distance=..0.9,gamemode=!spectator] run scoreboard players set @s x_mot 0
execute at @s positioned ~ ~-0.8 ~ if entity @a[distance=..0.9,gamemode=!spectator] run scoreboard players set @s y_mot 0
execute at @s positioned ~ ~-0.8 ~ if entity @a[distance=..0.9,gamemode=!spectator] run scoreboard players set @s z_mot 0

tag @s remove check_move
execute as @s[scores={x_mot=1..}] at @s if block ~0.2 ~0.2 ~0.2 air if block ~0.2 ~0.2 ~-0.2 air if block ~0.2 ~-0.2 ~0.2 air if block ~0.2 ~-0.2 ~-0.2 air run tag @s add check_move
execute as @s[scores={x_mot=1..},tag=check_move] run tp @s ~0.1 ~ ~
execute as @s[scores={x_mot=1..},tag=check_move] run scoreboard players remove @s x_mot 1
execute as @s[scores={x_mot=1..},tag=!check_move] run scoreboard players set @s x_mot 0

tag @s remove check_move
execute as @s[scores={x_mot=..-1}] at @s if block ~-0.2 ~0.2 ~0.2 air if block ~-0.2 ~0.2 ~-0.2 air if block ~-0.2 ~-0.2 ~0.2 air if block ~-0.2 ~-0.2 ~-0.2 air run tag @s add check_move
execute as @s[scores={x_mot=..-1},tag=check_move] run tp @s ~-0.1 ~ ~
execute as @s[scores={x_mot=..-1},tag=check_move] run scoreboard players add @s x_mot 1
execute as @s[scores={x_mot=..-1},tag=!check_move] run scoreboard players set @s x_mot 0

tag @s remove check_move
execute as @s[scores={y_mot=1..}] at @s if block ~0.2 ~0.2 ~0.2 air if block ~0.2 ~0.2 ~-0.2 air if block ~-0.2 ~0.2 ~0.2 air if block ~-0.2 ~0.2 ~-0.2 air run tag @s add check_move
execute as @s[scores={y_mot=1..},tag=check_move] run tp @s ~ ~0.1 ~
execute as @s[scores={y_mot=1..},tag=check_move] run scoreboard players remove @s y_mot 1
execute as @s[scores={y_mot=1..},tag=!check_move] run scoreboard players set @s y_mot 0

tag @s remove check_move
execute as @s[scores={y_mot=..-1}] at @s if block ~0.2 ~-0.2 ~0.2 air if block ~0.2 ~-0.2 ~-0.2 air if block ~-0.2 ~-0.2 ~0.2 air if block ~-0.2 ~-0.2 ~-0.2 air run tag @s add check_move
execute as @s[scores={y_mot=..-1},tag=check_move] run tp @s ~ ~-0.1 ~
execute as @s[scores={y_mot=..-1},tag=check_move] run scoreboard players add @s y_mot 1
execute as @s[scores={y_mot=..-1},tag=!check_move] run scoreboard players set @s y_mot 0

tag @s remove check_move
execute as @s[scores={z_mot=1..}] at @s if block ~0.2 ~0.2 ~0.2 air if block ~-0.2 ~0.2 ~0.2 air if block ~0.2 ~-0.2 ~0.2 air if block ~-0.2 ~-0.2 ~0.2 air run tag @s add check_move
execute as @s[scores={z_mot=1..},tag=check_move] run tp @s ~ ~ ~0.1
execute as @s[scores={z_mot=1..},tag=check_move] run scoreboard players remove @s z_mot 1
execute as @s[scores={z_mot=1..},tag=!check_move] run scoreboard players set @s z_mot 0

tag @s remove check_move
execute as @s[scores={z_mot=..-1}] at @s if block ~0.2 ~0.2 ~-0.2 air if block ~0.2 ~-0.2 ~-0.2 air if block ~-0.2 ~0.2 ~-0.2 air if block ~-0.2 ~-0.2 ~-0.2 air run tag @s add check_move
execute as @s[scores={z_mot=..-1},tag=check_move] run tp @s ~ ~ ~-0.1
execute as @s[scores={z_mot=..-1},tag=check_move] run scoreboard players add @s z_mot 1
execute as @s[scores={z_mot=..-1},tag=!check_move] run scoreboard players set @s z_mot 0

execute unless entity @s[scores={x_mot=0,y_mot=0,z_mot=0}] at @s run function game:cprojectile/correct_landing