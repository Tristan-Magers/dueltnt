tellraw @a[scores={clickDis=1..}] ["",{"text":"Click here to join our Discord server.","color":"dark_aqua","bold":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/XrUJ7K3"}}]
scoreboard players set @a clickDis 0

function game:tutorial

#master portal
execute as @e[name=menu,scores={mastercut=0}] at @s run particle minecraft:falling_water 495.51 26.60 564.52 1.5 1.5 .15 0 2 force
execute as @e[name=menu,scores={mastercut=10}] at @s run particle minecraft:portal 495 26 564 0 0 0 1 300 force
execute as @e[name=menu,scores={mastercut=40}] at @s run clone 496 0 565 494 2 564 494 25 564
execute as @e[name=menu,scores={mastercut=40}] at @s run particle minecraft:dragon_breath 495 26 564 .2 .2 0 1 300 force
execute as @e[name=menu,scores={mastercut=40}] at @s run particle minecraft:end_rod 495 26 564 .2 .2 0 1 300 force
execute as @e[name=menu,scores={mastercut=40}] at @s run particle minecraft:explosion 495 26 564 .3 .3 .3 1 5 force
execute as @e[name=menu,scores={mastercut=1}] at @s run playsound minecraft:block.beacon.deactivate master @a 495 20 564 1 0
execute as @e[name=menu,scores={mastercut=1}] at @s run playsound minecraft:block.beacon.power_select master @a 495 20 564 1 0
execute as @e[name=menu,scores={mastercut=40}] at @s run playsound minecraft:entity.ender_dragon.growl master @a 495 20 564 1 2
execute as @e[name=menu,scores={mastercut=40}] at @s run playsound minecraft:entity.ghast.scream master @a 495 20 564 1 0
execute as @e[name=menu,scores={mastercut=44}] at @s run playsound minecraft:entity.generic.explode master @a 495 20 564 1 0
execute as @e[name=menu,scores={mastercut=40}] at @s run playsound minecraft:entity.generic.explode master @a 495 20 564 1 1.5
execute as @e[name=menu,scores={mastercut=30}] at @s run playsound minecraft:block.bell.resonate master @a 495 20 564 1 0
execute as @e[name=menu,scores={mastercut=80..}] at @s run particle minecraft:falling_water 495.51 26.60 564.52 1.5 1.5 .15 0 2 force
scoreboard players add @e[name=menu,scores={mastercut=1..80}] mastercut 1
execute as @a[x=495,y=23,z=564,distance=..10] if block 495 31 564 minecraft:red_glazed_terracotta if block 492 30 564 minecraft:yellow_glazed_terracotta if block 490 27 564 minecraft:blue_glazed_terracotta if blocks 486 17 513 488 16 513 486 16 510 all run scoreboard players add @e[name=menu,scores={mastercut=0}] mastercut 1

#Mode
execute as @e[tag=ModeC] at @s run scoreboard players add @e[name=Map] mode 1
scoreboard players set @e[scores={mode=1}] mode 2
scoreboard players set @e[scores={mode=5..}] mode 0
execute as @e[tag=ModeC] at @s run function game:mode
tag @e[tag=ModeC] remove ModeC

#Lives
execute as @e[name=menu,tag=LifeC] at @s run function game:lives

#Rounds
execute as @e[name=menu,tag=RoundCheckUp] at @s run function game:roundup
execute as @e[name=menu,tag=RoundCheckDown] at @s run function game:rounddown

#Map Change
execute as @e[name=menu,scores={MChange=1..}] at @s run function game:mapchange

#Custom Random
execute as @e[x=0,y=0,z=0,distance=..100,type=armor_stand,scores={CustomRandom=2..}] at @s run function game:customrandom

#Custom Random toggle
execute as @e[name=menu,scores={RoundType=1}] at @s run function game:crenable
execute as @e[name=menu,scores={RoundType=2}] at @s run function game:crdisable

#Instant start
execute as @e[name=menu,tag=instant] at @s run function game:instantstart
execute as @e[name=menu,scores={instant=1}] at @s run scoreboard players set @e[type=armor_stand,scores={timer=3..}] timer 2

#teams
tag @a[tag=green] remove Sgreen
tag @a[tag=red] remove Sred
tag @a[tag=blue] remove Sblue
execute as @a[tag=Sgreen] at @s run me joined §2GREEN
execute as @a[tag=Sblue] at @s run me joined §9BLUE
execute as @a[tag=Sred] at @s run me joined §cRED
tag @a[tag=Sblue] add blue
tag @a[tag=Sblue] remove red
tag @a[tag=Sblue] remove green
tag @a[tag=Sblue] remove Sblue
tag @a[tag=Sred] add red
tag @a[tag=Sred] remove blue
tag @a[tag=Sred] remove green
tag @a[tag=Sred] remove Sred
tag @a[tag=Sgreen] add green
tag @a[tag=Sgreen] remove blue
tag @a[tag=Sgreen] remove red
tag @a[tag=Sgreen] remove Sgreen