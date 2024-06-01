tellraw @a[scores={clickDis=1..}] ["",{"text":"Click here to join our Discord server.","color":"dark_aqua","bold":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/XrUJ7K3"}}]
scoreboard players set @a clickDis 0

function game:tutorial

function game:lobbyitems

#Tourny area
tp @a[x=506,y=6,z=469,distance=..2] 498 83 462
execute as @a[x=496,y=9,z=427,distance=..8,gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:bedrock run tp @s 501 11 475

#kills
kill @e[type=armor_stand,name=place,x=496,y=20,z=520,distance=..60]
kill @e[type=arrow,x=496,y=20,z=520,distance=..60]
clear @a[gamemode=adventure,x=496,y=20,z=520,distance=..80,scores={lobby=2}]
scoreboard players add @a[x=500,y=20,z=500,distance=..80] lobby 1
scoreboard players set @a[x=620,y=30,z=620,distance=..90] lobby 0
xp add @a[scores={lobby=1..20},x=500,y=20,z=500,distance=..80] -100 levels
effect clear @a[scores={lobby=1..20},x=500,y=20,z=500,distance=..80] jump_boost
effect clear @a[scores={lobby=1..20},x=500,y=20,z=500,distance=..80] speed
effect clear @a[scores={lobby=1..20},x=500,y=20,z=500,distance=..80] minecraft:regeneration
tag @a[scores={lobby=2},x=500,y=20,z=500,distance=..80,tag=!logo] add delay_items
tag @a[scores={lobby=75},x=500,y=20,z=500,distance=..80] remove delay_items
execute as @a[scores={lobby=2},x=500,y=20,z=500,distance=..80,tag=!logo] at @s run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.7 0
execute as @a[scores={lobby=2},x=500,y=20,z=500,distance=..80,tag=!logo] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.6 0.6
title @a[scores={lobby=2},x=500,y=20,z=500,distance=..80,tag=!logo] times 20 25 35
title @a[scores={lobby=2},x=500,y=20,z=500,distance=..80,tag=!logo] title [{"translate":"\u000c","font":"title"}]
tag @a[scores={lobby=2},x=500,y=20,z=500,distance=..80,tag=!logo] add logo
#title @a[scores={lobby=1},x=500,y=20,z=500,distance=..80] title {"text":""}
title @a[scores={lobby=2},x=500,y=20,z=500,distance=..80] actionbar {"text":""}
title @a[scores={lobby=100},x=500,y=20,z=500,distance=..80] title {"text":""}
scoreboard players set @a[x=0,y=30,z=0,distance=..190] lobby 0
scoreboard players set @a[x=496,y=20,z=520,distance=..60] Y 30
kill @e[type=minecraft:potion,x=496,y=20,z=520,distance=..60]
kill @e[type=minecraft:fireball,x=496,y=20,z=520,distance=..60]
kill @e[tag=mastertnt,x=496,y=20,z=520,distance=..60]
kill @e[name=acid,x=496,y=20,z=520,distance=..60]
execute as @a[x=496,y=20,z=520,distance=..60] at @s run attribute @p minecraft:generic.movement_speed base set .1

#master portal
execute as @e[name=menu,scores={mastercut=0}] at @s run particle minecraft:falling_water 495.51 26.60 564.52 1.5 1.5 .15 0 2 force
execute as @e[name=menu,scores={mastercut=10}] at @s run particle minecraft:portal 495 26 564 0 0 0 1 300 force
execute as @e[name=menu,scores={mastercut=40}] at @s run clone 496 0 565 494 2 564 494 25 564
execute as @e[name=menu,scores={mastercut=40}] at @s run tellraw @a[x=495.47,y=26.00,z=564.14,distance=..19] [{"text":"What have you done?","color":"#7e7089","obfuscated":true}]
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
execute as @e[name=menu,tag=RoundCheckUp] at @s run function game:menu/roundup
execute as @e[name=menu,tag=RoundCheckDown] at @s run function game:menu/rounddown

#Map Change
execute as @e[name=menu,scores={MChange=1..}] at @s run function game:mapchange

#Custom Random
execute as @e[x=0,y=0,z=0,distance=..100,type=armor_stand,scores={CustomRandom=2..}] at @s run function game:customrandom

#Custom Random toggle
execute as @e[name=menu,scores={RoundType=1}] at @s run function game:menu/crenable
execute as @e[name=menu,scores={RoundType=2}] at @s run function game:menu/crdisable

#Instant start
execute as @e[name=menu,tag=instant] at @s run function game:instantstart
execute as @e[name=menu,scores={instant=1}] at @s run scoreboard players set @e[type=armor_stand,scores={timer=3..},tag=timer] timer 3

#teams
tag @a[tag=green] remove Sgreen
tag @a[tag=red] remove Sred
tag @a[tag=blue] remove Sblue
execute as @a[tag=Sgreen] at @s run tellraw @a [{"selector":"@s"},{"text":" joined "},{"text":"GREEN","color":"green"}]
execute as @a[tag=Sblue] at @s run tellraw @a [{"selector":"@s"},{"text":" joined "},{"text":"BLUE","color":"blue"}]
execute as @a[tag=Sred] at @s run tellraw @a [{"selector":"@s"},{"text":" joined "},{"text":"RED","color":"red"}]
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

#Set players team value
execute if entity @e[name=menu,type=armor_stand,scores={Team=0}] run scoreboard players set @a teamed 0
execute if entity @e[name=menu,type=armor_stand,scores={Team=1}] run scoreboard players set @a teamed 1

#Options Button
execute if entity @e[name=menu,type=armor_stand,scores={Opt=3}] run function game:menu/optionsoff
execute if entity @e[name=menu,type=armor_stand,scores={Opt=2}] run function game:menu/options

#Team Buttons
execute if entity @e[name=menu,type=armor_stand,scores={Team=3}] run data merge block 475 16 495 {front_text:{messages:['[{"text":""}]','{"text":"Teams","bold":false,"clickEvent":{"action":"run_command","value":"scoreboard players set @e[name=menu,type=armor_stand] Team 2"}}','{"text":"[disabled]","color":"dark_red","bold":true}','[{"text":""}]']}}
execute if entity @e[name=menu,type=armor_stand,scores={Team=3}] run playsound minecraft:entity.armor_stand.fall master @a 475 18 497 .6 .9
execute if entity @e[name=menu,type=armor_stand,scores={Team=3}] run scoreboard players set @e[name=menu,type=armor_stand] Team 0

execute if entity @e[name=menu,type=armor_stand,scores={Team=2}] run data merge block 475 16 495 {front_text:{messages:['[{"text":""}]','{"text":"Teams","bold":false,"clickEvent":{"action":"run_command","value":"scoreboard players set @e[name=menu,type=armor_stand] Team 3"}}','{"text":"[enabled]","color":"dark_green","bold":true}','[{"text":""}]']}}
execute if entity @e[name=menu,type=armor_stand,scores={Team=2}] run playsound minecraft:entity.armor_stand.fall master @a 475 18 497 .6 .9
execute if entity @e[name=menu,type=armor_stand,scores={Team=2}] run clone 459 3 491 459 3 489 475 18 494
execute if entity @e[name=menu,type=armor_stand,scores={Team=2}] run scoreboard players set @e[name=menu,type=armor_stand] Team 1

execute if entity @e[name=menu,type=armor_stand,scores={Team=0}] run fill 475 18 496 475 18 494 air

#Shard area
execute if block 485 11 476 minecraft:polished_blackstone_button[powered=true] run function game:menu/shard

#Iris ladder
execute if entity @e[name=Map,tag=!ladder] if block 478 14 467 minecraft:stone_button[powered=true] run tag @e[name=Map,tag=!ladder] add laddert
execute if entity @e[name=Map,tag=!ladder] if block 478 14 467 minecraft:stone_button[powered=true] run clone 477 6 466 480 2 467 477 12 466

execute if entity @e[name=Map,tag=ladder] if block 478 14 467 minecraft:stone_button[powered=true] run fill 479 14 467 480 12 467 air
execute if entity @e[name=Map,tag=ladder] if block 478 14 467 minecraft:stone_button[powered=true] run tag @e[name=Map] remove ladder

execute if block 478 14 467 minecraft:stone_button[powered=true] run setblock 478 14 467 minecraft:stone_button[facing=east,powered=false]

tag @e[name=Map,tag=laddert] add ladder
tag @e[name=Map,tag=laddert] remove laddert

#particle sound
scoreboard players enable @a particle_trigger

execute if score .part_6 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=6}] particle_trigger 0
execute if score .part_7 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=7}] particle_trigger 0
execute if score .part_8 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=8}] particle_trigger 0
execute if score .part_9 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=9}] particle_trigger 0
execute if score .part_10 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=10}] particle_trigger 0
execute if score .part_11 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=11}] particle_trigger 0
execute if score .part_12 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=12}] particle_trigger 0
execute if score .part_13 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=13}] particle_trigger 0
execute if score .part_14 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=14}] particle_trigger 0
execute if score .part_15 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=15}] particle_trigger 0
execute if score .part_16 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=16}] particle_trigger 0
execute if score .part_17 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=17}] particle_trigger 0
execute if score .part_18 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=18}] particle_trigger 0
execute if score .part_19 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=19}] particle_trigger 0
execute if score .part_20 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=20}] particle_trigger 0
execute if score .part_21 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=21}] particle_trigger 0
execute if score .part_22 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=22}] particle_trigger 0
execute if score .part_23 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=23}] particle_trigger 0
execute if score .part_24 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=24}] particle_trigger 0
execute if score .part_25 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=25}] particle_trigger 0
execute if score .part_26 .part_unlock matches 0 run scoreboard players set @a[scores={particle_trigger=26}] particle_trigger 0

scoreboard players set @a[scores={particle_trigger=27..}] particle_trigger 0

execute as @a[scores={particle_trigger=1..}] at @s run scoreboard players operation @s particle = @s particle_trigger

scoreboard players set @a partTest 0
execute as @a at @s run scoreboard players operation @s partTest += @s particle
execute as @a at @s run scoreboard players operation @s partTest -= @s partPast
execute as @a[scores={partTest=1..}] at @s run function game:player/dif_particle
execute as @a[scores={partTest=..-1}] at @s run function game:player/dif_particle
execute as @a at @s run scoreboard players operation @s partPast = @s particle

scoreboard players set @a particle_trigger 0

#lab
stopsound @a * minecraft:block.water.ambient

execute if score .lab_spawn .data matches 1.. run scoreboard players remove .lab_spawn .data 1

execute if score .lab_spawn .data matches ..0 if block 498 12 503 minecraft:oak_button[powered=true] run function game:menu/lab_new

execute if score .lab_spawn .data matches 110 run setblock 498 12 503 air destroy
execute if score .lab_spawn .data matches 1 run setblock 498 12 503 minecraft:oak_button[facing=south,powered=false,face=floor] keep

scoreboard players add @e[type=minecraft:chicken,x=504.5,y=12,z=503.5,distance=..3,tag=lab] t1 1

execute as @e[type=minecraft:chicken,x=504.5,y=12,z=503.5,distance=..3,tag=lab,scores={t1=40}] at @s run function game:menu/lab_transition

scoreboard players add @e[tag=lab_result] t1 1

execute as @e[tag=lab_result,scores={t1=20..}] at @s run particle minecraft:explosion ~ ~0.5 ~ 0.5 0.5 0.5 0 15 force
execute as @e[tag=lab_result,scores={t1=20..}] at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.5 1.5

tag @e[tag=lab_result,scores={t1=20..}] add kill_this

#disable settings while game is in play
tag @e[name=Map,type=armor_stand,limit=1] remove removeset
execute if entity @e[type=player,distance=..100,x=600,y=60,z=600,gamemode=adventure] run tag @e[name=Map,type=armor_stand,limit=1] add removeset
execute if entity @e[type=player,distance=..100,x=600,y=60,z=600,gamemode=spectator,tag=countdown] run tag @e[name=Map,type=armor_stand,limit=1] add removeset

#execute as @e[name=Map,type=armor_stand,limit=1,tag=removeset,tag=!removesett] run function game:menu/setdisable
#execute as @e[name=Map,type=armor_stand,limit=1,tag=!removeset,tag=removesett] run schedule function game:menu/setenable 20t

tag @e[name=Map,type=armor_stand,limit=1,tag=removeset] add removesett
tag @e[name=Map,type=armor_stand,limit=1,tag=!removeset] remove removesett