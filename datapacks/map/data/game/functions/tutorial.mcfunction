clear @a[scores={tutorial=30..32}]
item replace entity @a[scores={tutorial=30..32}] hotbar.0 with golden_apple{display:{Name:"{\"italic\":false,\"text\":\"§r§6Skip Intro\"}"}}
scoreboard players add @a[x=14,y=4,z=1,distance=..2] tutorial 1
scoreboard players set @a[x=500,y=20,z=500,distance=..20] tutSkip 0
tp @a[scores={tutSkip=1..}] 500 20 500
clear @a[scores={tutorial=1..}] green_concrete_powder
clear @a[scores={tutorial=1..}] red_concrete_powder
effect clear @a[scores={tutSkip=1..}] absorption
execute as @a[scores={tutSkip=1..}] at @s run title @s title [{"text":"","color":"gold","bold":"false"}]
scoreboard players set @a[x=500,y=20,z=500,distance=..20] tutorial 0
execute as @a[scores={tutorial=18..20}] at @s run title @s title [{"text":"Welcome to DuelTNT","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=58..60}] at @s run title @s title [{"text":"TNT Minecraft PvP","color":"dark_red","bold":"false"}]
execute as @a[scores={tutorial=98..100}] at @s run title @s title [{"text":"Fight your friends!","color":"blue","bold":"false"}]
execute as @a[scores={tutorial=138..140}] at @s run title @s title [{"text":"Blow things up","color":"red","bold":"false"}]
execute as @a[scores={tutorial=178..180}] at @s run title @s title [{"text":"Don't fall...","color":"white","bold":"false"}]
execute as @a[scores={tutorial=273..275}] at @s run title @s title [{"text":"HOW TO PLAY:","color":"gold","bold":"true"}]
execute as @a[scores={tutorial=308..310}] at @s run title @s title [{"text":"1. Pick a class","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=343..345}] at @s run title @s title [{"text":"2. Blow up land","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=378..380}] at @s run title @s title [{"text":"3. Stay Alive","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=418..420}] at @s run title @s title [{"text":"4. Have fun ;)","color":"gold","bold":"false"}]
tp @a[scores={tutorial=460..}] 500 20 500 0 0
title @a[scores={tutorial=1..2}] times 0 50 10