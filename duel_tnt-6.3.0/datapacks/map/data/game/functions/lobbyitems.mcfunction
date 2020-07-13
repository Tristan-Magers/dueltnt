scoreboard players set @a[scores={inSwCheckG=1..}] inSwCheck 1
replaceitem entity @a[x=500,y=20,z=500,distance=..80,scores={ingame=..0},gamemode=adventure] hotbar.0 minecraft:red_concrete_powder{display:{Name:"{\"italic\":false,\"text\":\"Not in game! (Throw to join)\"}"}}
replaceitem entity @a[x=500,y=20,z=500,distance=..80,gamemode=adventure] hotbar.1 minecraft:air
replaceitem entity @a[x=500,y=20,z=500,distance=..80,gamemode=adventure] hotbar.2 minecraft:air
replaceitem entity @a[x=500,y=20,z=500,distance=..80,gamemode=adventure] hotbar.3 minecraft:air
replaceitem entity @a[x=500,y=20,z=500,distance=..80,gamemode=adventure] hotbar.4 minecraft:air
replaceitem entity @a[x=500,y=20,z=500,distance=..80,gamemode=adventure] hotbar.5 minecraft:air
replaceitem entity @a[x=500,y=20,z=500,distance=..80,gamemode=adventure] hotbar.7 minecraft:air
replaceitem entity @a[x=500,y=20,z=500,distance=..80,gamemode=adventure] hotbar.6 minecraft:air
replaceitem entity @a[x=500,y=20,z=500,distance=..80,gamemode=adventure] hotbar.8 minecraft:air
replaceitem entity @a[x=500,y=20,z=500,distance=..80,scores={ingame=1..},gamemode=adventure] hotbar.0 minecraft:green_concrete_powder{display:{Name:"{\"italic\":false,\"text\":\"Joined game (Throw to leave)\"}"}}
scoreboard players set @a[scores={ingame=..0,inSwCheck=1..}] ingame 3
scoreboard players set @a[scores={ingame=1,inSwCheck=1..}] ingame 2
execute as @a[scores={inSwCheck=1..}] at @s run playsound minecraft:block.dispenser.dispense master @p ~ ~ ~ 1 1.5
title @a[scores={ingame=2}] actionbar {"text":"Left game","color":"red"}
title @a[scores={ingame=3}] actionbar {"text":"Joined game","color":"dark_green"}
execute as @a[scores={inSwCheck=1..}] at @s run kill @e[type=item,distance=..3]
scoreboard players set @a[scores={ingame=3}] ingame 1
scoreboard players set @a[scores={ingame=2}] ingame 0
scoreboard players set @a inSwCheck 0
scoreboard players set @a inSwCheckG 0

