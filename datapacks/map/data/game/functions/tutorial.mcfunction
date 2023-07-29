title @a[scores={tutorial=1..2}] times 0 50 10

clear @a[scores={tutorial=10..32}]
item replace entity @a[scores={tutorial=30..32}] hotbar.0 with golden_apple{display:{Name:"{\"italic\":false,\"text\":\"§r§6Skip Intro\"}"}}
scoreboard players add @a[x=14,y=4,z=1,distance=..2] tutorial 1
execute as @a[x=14,y=4,z=1,distance=..2] at @s run tp @s ~ ~ ~ 0 0

scoreboard players set @a[x=500,y=20,z=500,distance=..20] tutSkip 0
stopsound @a[scores={tutSkip=1..}]
tp @a[scores={tutSkip=1..}] 500 20 500 0 0
clear @a[scores={tutorial=1..}] green_concrete_powder
clear @a[scores={tutorial=1..}] red_concrete_powder
effect clear @a[scores={tutSkip=1..}] absorption
execute as @a[scores={tutSkip=1..}] at @s run title @s title [{"text":"","color":"gold","bold":"false"}]
scoreboard players set @a[x=500,y=20,z=500,distance=..20] tutorial 0
execute as @a[scores={tutorial=2}] at @s run title @s title [{"text":"Get Ready Superstar","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=41}] at @s run title @s title [{"text":"You know how this goes","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=76}] at @s run title @s title [{"text":"Pick a kit","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=96}] at @s run title @s title [{"text":"Break the map","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=125}] at @s run title @s title [{"text":"Don't fall off","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=170}] at @s run title @s title [{"text":"And most importantly","color":"gold","bold":"false"}]
execute as @a[scores={tutorial=207}] at @s run title @s title [{"text":"Have fun","color":"gold","bold":"false"}]

stopsound @a[scores={tutorial=230..}]
tp @a[scores={tutorial=230..}] 500 20 500 0 0

tag @a[scores={tutorial=1..2}] remove logo

scoreboard players set @a[scores={tutorial=1..2}] joinText -80

execute as @a[scores={tutorial=2}] at @s run playsound custom:tutorial_1 master @s ~ ~ ~ 1 0.95
execute as @a[scores={tutorial=41}] at @s run playsound custom:tutorial_2 master @s ~ ~ ~ 0.8 0.95
execute as @a[scores={tutorial=76}] at @s run playsound custom:tutorial_3 master @s ~ ~ ~ 1 0.95
execute as @a[scores={tutorial=170}] at @s run playsound custom:tutorial_4 master @s ~ ~ ~ 0.8 0.95
execute as @a[scores={tutorial=207}] at @s run playsound custom:tutorial_5 master @s ~ ~ ~ 1 0.95

execute as @a[scores={tutorial=2}] at @s run playsound minecraft:music_disc.chirp record @s