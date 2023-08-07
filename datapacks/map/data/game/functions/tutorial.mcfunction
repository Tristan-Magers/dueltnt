title @a[scores={tutorial=1..2}] times 0 50 10

clear @a[scores={tutorial=10..32}]
item replace entity @a[scores={tutorial=34}] hotbar.0 with golden_apple{display:{Name:"{\"italic\":false,\"text\":\"§r§6Skip Intro\"}"}}
scoreboard players add @a[x=14,y=4,z=1,distance=..2] tutorial 1
execute as @a[x=14,y=4,z=1,distance=..2] at @s run tp @s ~ ~ ~ 0 0

scoreboard players set @a[x=500,y=20,z=500,distance=..20] tutSkip 0
stopsound @a[scores={tutSkip=1..}]
tp @a[scores={tutSkip=1..}] 500 20 500 0 0
clear @a[scores={tutorial=1..}] green_concrete_powder
clear @a[scores={tutorial=1..}] red_concrete_powder
clear @a[scores={tutorial=1..}] written_book
effect clear @a[scores={tutSkip=1..}] absorption
execute as @a[scores={tutSkip=1..}] at @s run title @s title [{"text":"","color":"gold","bold":"false"}]
scoreboard players set @a[x=500,y=20,z=500,distance=..20] tutorial 0
execute as @a[scores={tutorial=2}] at @s run title @s title [{"translate":"\ua010","font":"title"}]
execute as @a[scores={tutorial=6}] at @s run title @s title [{"translate":"\ua011","font":"title"}]
execute as @a[scores={tutorial=12}] at @s run title @s title [{"translate":"\ua012","font":"title"}]
execute as @a[scores={tutorial=18}] at @s run title @s title [{"translate":"\ua013","font":"title"}]
execute as @a[scores={tutorial=24}] at @s run title @s title [{"translate":"\ua014","font":"title"}]
execute as @a[scores={tutorial=41}] at @s run title @s title [{"text":"You know how this goes","color":"gray","bold":"false","font":"fancy_small"}]
execute as @a[scores={tutorial=76}] at @s run title @s title [{"translate":"\ua030","font":"title"}]
execute as @a[scores={tutorial=94}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.15 0.9
execute as @a[scores={tutorial=94}] at @s run particle minecraft:explosion_emitter ^ ^1.6 ^2 0 0 0 0 1 force @s
execute as @a[scores={tutorial=106}] at @s run title @s title [{"translate":"\ua040","font":"title"}]
execute as @a[scores={tutorial=119}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.15 0.9
execute as @a[scores={tutorial=119}] at @s run particle minecraft:explosion_emitter ^ ^1.6 ^2 0 0 0 0 1 force @s
execute as @a[scores={tutorial=131}] at @s run title @s title [{"translate":"\ua050","font":"title"}]
execute as @a[scores={tutorial=140}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.15 0.9
execute as @a[scores={tutorial=140}] at @s run particle minecraft:explosion_emitter ^ ^1.6 ^2 0 0 0 0 1 force @s
execute as @a[scores={tutorial=170}] at @s run title @s title [{"text":"And most importantly","color":"gray","bold":"false","font":"fancy_small"}]
execute as @a[scores={tutorial=207}] at @s run title @s title [{"translate":"\ua070","font":"title"}]

stopsound @a[scores={tutorial=228..}]
tp @a[scores={tutorial=228..}] 500 20 500 0 0

tag @a[scores={tutorial=1..2}] remove logo

scoreboard players set @a[scores={tutorial=1..2}] joinText -100
scoreboard players set @a[scores={tutorial=1..2}] LobbyMusic -120
scoreboard players set @a[scores={tutorial=1..2}] LobbyMusic2 -10
scoreboard players set @a[scores={tutorial=1..2}] LobbyMusic3 -10
scoreboard players set @a[scores={tutorial=1..2}] LobbyMusic4 -10

stopsound @a[scores={tutorial=1}]
stopsound @a[scores={tutorial=1..100}] * minecraft:music_disc.chirp
execute as @a[scores={tutorial=1}] at @s run playsound custom:intro_song master @s ~ ~ ~ 0.5
execute as @a[scores={tutorial=2}] at @s run playsound custom:tutorial_1 master @s ~ ~ ~ 1 0.95
execute as @a[scores={tutorial=41}] at @s run playsound custom:tutorial_2 master @s ~ ~ ~ 0.8 0.95
execute as @a[scores={tutorial=76}] at @s run playsound custom:tutorial_3 master @s ~ ~ ~ 1 0.95
execute as @a[scores={tutorial=170}] at @s run playsound custom:tutorial_4 master @s ~ ~ ~ 0.8 0.95
execute as @a[scores={tutorial=207}] at @s run playsound custom:tutorial_5 master @s ~ ~ ~ 1 0.95

#execute as @a[scores={tutorial=2}] at @s run playsound minecraft:music_disc.chirp record @s