execute as @s at @s run scoreboard players operation @e[sort=nearest,type=ender_pearl,scores={enderT=1}] tntID = @s tntID

scoreboard players add @s enderct 1

execute as @s[scores={class=0}] at @s run function game:player/class_team
execute as @s[scores={endercount=1,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (4 Remaining) ","color":"white"}]
execute as @s[scores={endercount=2,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
execute as @s[scores={endercount=3,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={endercount=4,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={endercount=5,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]
#execute as @s[scores={endercount=6,class=0}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

#execute as @s[scores={endercount=1,class=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
#execute as @s[scores={endercount=2,class=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
#execute as @s[scores={endercount=3,class=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
#execute as @s[scores={endercount=4,class=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

#effect give @s[scores={class=0}] invisibility 3 0 true

execute as @s[scores={class=2}] at @s run function game:player/class_team
execute as @s[scores={endercount=1,class=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={endercount=2,class=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={endercount=3,class=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]
#execute as @s[scores={endercount=4,class=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Teleport","color":"green","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

effect give @s[scores={class=2}] invisibility 2 0 true
scoreboard players set @s[scores={class=2}] Invis 40

#scoreboard players set @s[scores={class=0}] Invis 30
#scoreboard players set @s[scores={class=2}] enderreload 300
scoreboard players set @s[scores={class=1,endercount=1..}] enderreload 210
scoreboard players set @s[scores={class=1,endercount=1..}] endercount 0
scoreboard players set @s[scores={class=1}] sneakdisable 40
clear @s[scores={class=1}] squid_spawn_egg
scoreboard players set @s ender 0

scoreboard players set @s mass_lev_air_use 0