execute as @e[type=area_effect_cloud,tag=!a,nbt={Potion:"minecraft:poison"}] at @s run function game:plaguepot
execute as @e[type=area_effect_cloud,tag=!a,nbt={Potion:"minecraft:swiftness"}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1,Tags:["a","airnade"]}
kill @e[type=area_effect_cloud,tag=!a,tag=!gameae]

clear @a[gamemode=spectator]

#menu push
execute as @a[x=473.7,y=16,z=494,dz=10,dy=4] at @s run tp @s ~.1 ~ ~

execute as @e[type=arrow,nbt={pickup:1b}] run data merge entity @s {pickup:0b}
#execute as @e[type=arrow,tag=!checked] at @s run data merge entity @s {pickup:1}
tag @e[type=arrow,tag=!checked] add checked

execute as @e[type=slime] run data merge entity @s {CustomName:"{\"italic\":false,\"text\":\"Slime\"}"}
execute as @e[type=pig] run data merge entity @s {CustomName:"{\"italic\":false,\"text\":\"Not a wizard\"}"}

effect clear @a minecraft:absorption

tp @a[x=322,y=3,z=450,distance=..10,gamemode=adventure] 485 50 473

execute as @a[scores={leavetext=1..}] at @s run tellraw @a [{"selector":"@p"},{"text":" left the arena","color":"white"}]
scoreboard players reset @a[scores={leavetext=1..}] leavetext

scoreboard players add @r[tag=randclass] randclass 1
scoreboard players set @a[scores={randclass=10..}] randclass 0

scoreboard players set @a[x=600,y=60,z=600,distance=105..,tag=randclass] class 99

#execute as @a[x=600,y=60,z=600,distance=3..95,scores={ingame=1,Lives=1..},gamemode=adventure] at @s run scoreboard players operation @s p = @s Lives
#scoreboard players reset @a[gamemode=!adventure] p
#scoreboard players reset @a[scores={ingame=0}] p
#scoreboard players reset @a[x=600,y=60,z=600,distance=105..] p

# leave server
tp @a[scores={leaveServer=1..}] 500 20 500 0 0
clear @a[scores={leaveServer=1..}]
gamemode adventure @a[scores={leaveServer=1..}]
scoreboard players reset @a[scores={leaveServer=1..}] rejoin
effect clear @a[scores={leaveServer=1..}] speed
effect clear @a[scores={leaveServer=1..}] jump_boost
scoreboard players reset @a[scores={leaveServer=1..}] LobbyMusic
scoreboard players reset @a[scores={leaveServer=1..}] LobbyMusic2
scoreboard players reset @a[scores={leaveServer=1..}] LobbyMusic3
scoreboard players set @a[scores={leaveServer=1..}] ingame 0
scoreboard players reset @a[scores={leaveServer=1..}] leaveServer

# spec
gamemode spectator @a[tag=spec]
stopsound @a[tag=spec]
tp @a[tag=spec] 625 40 625
tag @a remove spec

function game:items

function game:menu

execute as @e[name=Map,type=armor_stand,scores={countdown=-11..}] at @s run function game:countdown

execute as @e[tag=button,scores={timer=1..}] at @s run function game:buttontitle

particle cloud 486 15 485 20 10 20 .1 2

tp @a[gamemode=!creative,x=500,y=35,z=500,distance=..4] 500 20 500

#bedremove
scoreboard players set @e[type=tnt,x=615,y=30,z=615,distance=..90,nbt={Fuse:1s}] tntEnd 1
execute as @e[scores={tntEnd=1..},type=!creeper] at @s run function game:bedremove
execute as @e[type=tnt,scores={tntEnd=1..}] at @s run fill ~ ~ ~ ~ ~ ~ air
scoreboard players set @e[type=creeper,nbt={ignited:1b}] tntEnd 1
execute as @e[type=creeper,scores={tntEnd=1..}] at @s run fill ~ ~ ~ ~ ~ ~ air

#kit
scoreboard players enable @a kit
execute as @a[scores={kit=0..}] at @s run function game:kit

#explode creepers
scoreboard players set @a CPbomb 0
scoreboard players set @a[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] CPbomb 1
scoreboard players set @a[scores={CPbomb=1..}] CPtimer 140
execute as @a[scores={CPtimer=1..,class=4}] at @s run function game:excreep

#particle
execute as @a[scores={Invis=..0,particle=1}] at @s run particle flame ~ ~.1 ~ .3 .1 .3 .02 1 force
execute as @a[scores={Invis=..0,particle=2,parttimer=1}] at @s positioned ~ ~.05 ~ run particle cloud ~ ~.25 ~ .14 .1 .14 0 2 force
execute as @a[scores={Invis=..0,particle=2,parttimer=1}] at @s positioned ~ ~.05 ~ run particle spit ~ ~.25 ~ .14 .1 .14 0 1 force
#execute as @a[scores={Invis=..0,particle=2,parttimer=1}] at @s positioned ~ ~.05 ~ run particle poof ~ ~.25 ~ .3 .1 .3 .1 1 force
execute as @a[scores={Invis=..0,particle=2,parttimer=1}] at @s positioned ~ ~.05 ~ run particle minecraft:block snow ~ ~.3 ~ .3 .1 .3 0 2
execute as @a[scores={Invis=..0,particle=3,parttimer=1}] at @s run particle dragon_breath ~ ~.1 ~ .5 .1 .5 .04 2 force
execute as @a[scores={Invis=..0,particle=4}] at @s run particle enchant ~ ~.1 ~ .5 .5 .5 .1 2 force
execute as @a[scores={Invis=..0,particle=5}] at @s run particle minecraft:dust 15277350 20 2 2 ~ ~ ~ .2 .2 .2 0 3 force
execute as @a[scores={Invis=..0,particle=6,parttimer=1}] at @s run particle angry_villager ~ ~2.5 ~ .3 .2 .3 0 1 force
execute as @a[scores={Invis=..0,particle=6,parttimer=1}] at @s run particle falling_water ~ ~3.1 ~ .25 .3 .25 0 1 force
execute as @a[scores={Invis=..0,particle=7}] at @s run particle note ~ ~-.5 ~ .3 .6 .3 0 1 force
execute as @a[scores={Invis=..0,particle=8}] at @s run particle witch ~ ~ ~ .3 .2 .3 0 1 force
execute as @a[scores={Invis=..0,particle=8}] at @s run particle minecraft:dragon_breath ~ ~ ~ 2.5 0 2.5 .02 1 force
execute as @a[scores={Invis=..0,particle=9}] at @s run particle end_rod ~ ~ ~ .2 .2 .2 .05 1 force
execute as @a[scores={Invis=..0,particle=9}] at @s run particle crit ~ ~ ~ 1.5 1.5 1.5 .05 1 force
execute as @a[scores={Invis=..0,particle=10}] at @s run particle minecraft:totem_of_undying ~ ~.5 ~ .5 1 .5 0 1 force
execute as @a[scores={Invis=..0,particle=10}] at @s run particle minecraft:rain ~ ~.2 ~ .3 .1 .3 0 1 force
execute as @a[scores={Invis=..0,particle=11,gpart=0..2}] at @s run particle minecraft:lava ~ ~.2 ~ .5 .1 .5 0 1 force
execute as @a[scores={Invis=..0,particle=11,gpart=5..7}] at @s run particle minecraft:large_smoke ~ ~.2 ~ .32 .1 .32 .03 1 force
execute as @a[scores={Invis=..0,particle=12,parttimer=1}] at @s run particle minecraft:heart ~ ~.2 ~ 0.7 0.1 0.7 0 1 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1}] at @s run particle minecraft:portal ~ ~1 ~ 1 1 1 0 2 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1,spacepart=0}] at @s run particle minecraft:end_rod ~1 ~.9 ~ .1 0 .2 0 1 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1,spacepart=1}] at @s run particle minecraft:end_rod ~-1 ~.9 ~ .1 0 .2 0 1 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1,spacepart=2}] at @s run particle minecraft:end_rod ~ ~.9 ~1 .2 0 .1 0 1 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1,spacepart=3}] at @s run particle minecraft:end_rod ~ ~.9 ~-1 .2 0 .1 0 1 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1,spacepart=4}] at @s run particle minecraft:end_rod ~.7 ~.9 ~.7 .1 0 .1 0 1 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1,spacepart=5}] at @s run particle minecraft:end_rod ~-.7 ~.9 ~.7 .1 0 .1 0 1 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1,spacepart=6}] at @s run particle minecraft:end_rod ~.7 ~.9 ~-.7 .1 0 .1 0 1 force
execute as @a[scores={Invis=..0,particle=13,parttimer=1,spacepart=7}] at @s run particle minecraft:end_rod ~-.7 ~.9 ~-.7 .1 0 .1 0 1 force

execute as @a[scores={Invis=..0,particle=14}] at @s run function game:waterpart

execute as @a[scores={Invis=..0,particle=15,gpart=8..9}] at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0 1 force
execute as @a[scores={Invis=..0,particle=15,gpart=15..16}] at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0 1 force
execute as @a[scores={Invis=..0,particle=15,gpart=1..5}] at @s run particle enchant ~ ~1 ~ .8 .8 .8 0 2 force
execute as @a[scores={Invis=..0,particle=15,gpart=1..2}] at @s run particle minecraft:sneeze ~ ~.3 ~ .3 .1 .3 0 1 force
execute as @a[scores={Invis=..0,particle=15,gpart=10..12}] at @s run particle minecraft:sneeze ~ ~.3 ~ .3 .1 .3 0 1 force

execute as @a[scores={Invis=..0,particle=16,parttimer=1}] at @s run particle minecraft:crimson_spore ~ ~-.5 ~ .2 .2 .2 0 2 force @a
execute as @a[scores={Invis=..0,particle=16,parttimer=1}] at @s run particle minecraft:smoke ~ ~.22 ~ .4 0 .4 0 3 force @a

execute as @a[scores={Invis=..0,particle=17,gpart=4..7}] at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .4 .1 .4 0 1 force @a
execute as @a[scores={Invis=..0,particle=17,gpart=14..17}] at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .4 .1 .4 0 1 force @a
execute as @a[scores={Invis=..0,particle=17,parttimer=1}] at @s run particle minecraft:white_ash ~ ~1 ~ .4 .5 .4 0 2 force @a
execute as @a[scores={Invis=..0,particle=17,gpart=1}] at @s run particle minecraft:soul ~ ~.4 ~ .4 .2 .4 0 1 force @a
execute as @a[scores={Invis=..0,particle=17,gpart=10}] at @s run particle minecraft:soul ~ ~.4 ~ .4 .2 .4 0 1 force @a

execute as @a[scores={Invis=..0,particle=18,OPp=20..30}] at @s run particle minecraft:warped_spore ~ ~0.5 ~ .5 .3 .5 .08 3 force
execute as @a[scores={Invis=..0,particle=18,OPp=0..19}] at @s run particle minecraft:ash ~ ~0.5 ~ .6 .3 .6 .08 1 force
execute as @a[scores={Invis=..0,particle=18,OPp=0..19}] at @s run particle minecraft:block nether_portal ~ ~.2 ~ 0.4 0.1 0.4 0.1 1 force

scoreboard players add @a[scores={Invis=..0}] OPp 1
scoreboard players set @a[scores={OPp=54..}] OPp 0

scoreboard players add @a[scores={Invis=..0}] gpart 1
scoreboard players set @a[scores={gpart=20..}] gpart 0

scoreboard players add @a[scores={Invis=..0,particle=13,parttimer=1}] spacepart 1
scoreboard players set @a[scores={spacepart=8..}] spacepart 0

scoreboard players add @a parttimer 1
scoreboard players set @a[scores={parttimer=4..}] parttimer 1

#misc
kill @e[x=595,z=595,y=-10,dx=45,dz=45,dy=10,distance=..1000,type=fireball]
effect give @a[scores={hunger=..19}] saturation 5 10 true
execute as @e[type=creeper] at @s run data merge entity @s {Fire:0}
scoreboard players set @a[gamemode=spectator] Invis 5

#use portal
scoreboard players set @a SetPortalP 0
scoreboard players set @r[scores={SetPortal=1..}] SetPortalP 1
scoreboard players set @a[scores={SetPortalP=1..}] SetPortal 0

scoreboard players operation @e[name=Portal] tntID -= @p[scores={SetPortalP=1..}] tntID
kill @e[name=Portal,type=armor_stand,scores={tntID=0}]
scoreboard players operation @e[name=Portal] tntID += @p[scores={SetPortalP=1..}] tntID

execute as @p[scores={SetPortalP=1..}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,CustomName:"{\"italic\":false,\"text\":\"Portal\"}",Invulnerable:1,Marker:1,Invisible:1}

scoreboard players add @e[name=Portal,type=armor_stand] PS 1
execute as @p[scores={SetPortalP=1..}] at @s run scoreboard players operation @e[name=Portal,type=armor_stand,distance=..1] tntID = @p tntID

scoreboard players set @a[scores={GoPortal=0}] GoPortal -1
scoreboard players set @a GoPortalP 0
scoreboard players set @r[scores={GoPortal=1..}] GoPortalP 1

scoreboard players set @a[scores={GoPortalP=1..}] GoPortal 0

execute as @e[tag=portstopmove] at @s run tp @s @s
tag @e[tag=portstopmove] remove portstopmove

scoreboard players operation @e[name=Portal] tntID -= @p[scores={GoPortalP=1..}] tntID
execute as @a[scores={GoPortalP=1..}] at @s if entity @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1,distance=..16] run tag @s add portstopmove

execute as @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1] at @s run execute as @a[scores={GoPortalP=1..},distance=..16] at @s run summon tnt ~ ~ ~ {Fuse:1,NoGravity:1}
execute as @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1] at @s run execute as @a[scores={GoPortalP=1..},distance=..16] at @s run summon tnt ~ ~ ~ {Fuse:2,NoGravity:1}
execute if entity @e[scores={mode=1}] run execute as @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1] at @s run execute as @a[scores={GoPortalP=1..},distance=..16] at @s run summon tnt ~ ~ ~ {Fuse:1}
execute as @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1] at @s run teleport @a[scores={GoPortalP=1..},distance=..16] ~ ~ ~
#execute as @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1] at @s run execute as @a[scores={GoPortalP=1..},distance=..16] at @s run tp @s @s
execute as @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1] at @s run xp add @a[scores={GoPortalP=1..},distance=..16] 20 levels
execute as @e[name=Portal,type=armor_stand] at @s positioned ~ ~1 ~ run particle sneeze ~ ~ ~ .1 0 .1 .03 2 force
execute as @e[name=Portal,type=armor_stand] at @s positioned ~ ~1 ~ run particle minecraft:item_slime ~ ~ ~ .1 0 .1 .03 2 force
execute as @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1] at @s run scoreboard players set @a[scores={GoPortalP=1..},distance=..16] timer 1
scoreboard players set @a[scores={GoPortalP=1..}] haveportal 0
execute as @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1] at @s run scoreboard players set @a[scores={GoPortalP=1..},distance=..16] haveportal 1
execute as @a[scores={GoPortalP=1..}] at @s run kill @e[name=Portal,type=armor_stand,scores={tntID=0},limit=1,distance=..16]
scoreboard players operation @e[name=Portal] tntID += @p[scores={GoPortalP=1..}] tntID
title @a[scores={GoPortalP=1..,haveportal=..0}] actionbar {"text":"No portal nearby","color":"green"}

scoreboard players add @e[name=Portal,type=armor_stand] PLife 1
execute as @e[name=Portal,type=armor_stand,scores={PLife=130..}] at @s positioned ~ ~1 ~ run particle minecraft:totem_of_undying ~ ~ ~ .3 .3 .3 .03 20 force
execute as @e[name=Portal,type=armor_stand,scores={PLife=130..}] at @s positioned ~ ~1 ~ run particle minecraft:large_smoke ~ ~ ~ .2 .2 .2 .1 20 force
kill @e[name=Portal,type=armor_stand,scores={PLife=130..}]

#Y
execute as @a store result score @s Y run data get entity @s Pos[1]
scoreboard players set @a[scores={Y=..0}] Y 0
#execute as @a at @s run fill ~ ~ ~ ~ 0 ~ minecraft:bone_block replace air
#execute as @a at @s store result score @s Y run fill ~ ~ ~ ~ 0 ~ minecraft:air replace bone_block
scoreboard players set @a[gamemode=spectator] Y 45
scoreboard players set @a[x=600,y=60,z=600,distance=..3] Y 45

#respawn
execute as @a[scores={Y=..0},x=620,y=20,z=620,distance=..100] at @s run particle explosion_emitter ~ 1 ~ 1 3 1 1 20
execute as @a[scores={Lives=7,Y=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=7}]"},{"text":" fell!","color":"white"},{"text":" 6 ","color":"dark_aqua","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @a[scores={Lives=6,Y=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=6}]"},{"text":" fell!","color":"white"},{"text":" 5 ","color":"blue","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @a[scores={Lives=5,Y=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=5}]"},{"text":" fell!","color":"white"},{"text":" 4 ","color":"dark_green","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @a[scores={Lives=4,Y=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=4}]"},{"text":" fell!","color":"white"},{"text":" 3 ","color":"gold","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @a[scores={Lives=3,Y=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=3}]"},{"text":" fell!","color":"white"},{"text":" 2 ","color":"red","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @a[scores={Lives=2,Y=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=2}]"},{"text":" fell!","color":"white"},{"text":" 1 ","color":"dark_red","bold":true},{"text":"life remaining","color":"none","bold":false}]
scoreboard players remove @a[scores={Lives=-10..,Y=..0}] Lives 1
execute as @a[scores={Lives=1..,Y=..0}] at @s run summon armor_stand ~ 44 ~ {NoGravity:1,Invlunerable:1,Marker:1,CustomName:"{\"italic\":false,\"text\":\"SP\"}",Invisible:1}
execute as @a[scores={Lives=1..,Y=..0}] at @s run function game:killender
execute as @a[scores={Lives=1..,Y=..0}] at @s run tp @s ~ 45 ~
execute as @a[scores={Y=..0},x=620,y=20,z=620,distance=..100] at @s run execute as @a[distance=..100] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 1.5
#execute as @a[scores={Lives=1..,Y=..0}] at @s run scoreboard players set @s Y 45
effect clear @a[scores={Y=..0}] blindness
effect clear @a[scores={Y=..0}] poison
scoreboard players set @a[scores={Y=..0}] fall 3
scoreboard players set @a[scores={Y=..0}] platAm -100
execute as @a[scores={Lives=1..,Y=..0}] at @s positioned ~ ~-1 ~ run fill ~1 44 ~1 ~-1 44 ~-1 white_stained_glass replace air
#execute as @a[scores={Lives=1..,Y=..0}] at @s run tp @s ~ 999 ~
#scoreboard players remove @a[scores={Lives=1..,Y=..0}] Lives 1

execute as @a[scores={Lives=-8,Y=..0}] at @s run gamemode spectator
execute as @a[scores={Lives=-8,Y=..0}] at @s run scoreboard players set @s Lives 1

scoreboard players set @a[scores={Lives=1..,Y=..0}] Y 45
scoreboard players add @a[scores={rejoin=1..}] timer 0
#scoreboard players add @a[scores={rejoin=1..}] Y 0
effect give @a[scores={rejoin=1..}] resistance 1000000 255 true
effect give @a[scores={rejoin=1..}] saturation 1000000 255 true
execute as @a[scores={Y=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a [{"selector":"@p[scores={Y=..0}]"},{"text":" died!","color":"green"}]
tp @a[scores={rejoin=1..,inarena=..0}] 500 20.5 500 0 0
#scoreboard players reset @a[scores={bow_min=1,scores={rejoin=1..}] bow
scoreboard players add @a[scores={rejoin=1..}] class 0
gamemode spectator @a[scores={Y=..0,inarena=1..}]
tp @a[scores={Y=..0,inarena=1..}] 614 40 614
title @a times 0 10 20
effect clear @a[scores={rejoin=1..}] blindness
scoreboard players reset @a[scores={rejoin=1..}] rejoin

#tnt
execute as @e[type=armor_stand,tag=stnt] at @s run execute as @e[distance=..15,tag=!tnt,type=tnt] at @s run data merge entity @s {Fuse:360}
execute as @e[type=armor_stand,tag=stnt] at @s run execute as @e[distance=..15,tag=!tnt,type=tnt] at @s run scoreboard players set @e[type=armor_stand,tag=timer] timer 301
#execute as @e[type=armor_stand,tag=stnt] at @s run tp @e[distance=..3,tag=tnt,type=tnt] 490 16.4 495
execute as @e[type=armor_stand,tag=stnt] at @s run tag @e[type=tnt,tag=!tnt,distance=..15] add tnt
execute as @e[tag=timer,scores={timer=1}] at @s run function game:tntblow

# armor
item replace entity @a[gamemode=adventure,scores={Invis=2..}] armor.chest with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=2,ingame=1..,Invis=0..1},nbt=!{Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b}]},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:diamond_chestplate{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=0,ingame=1..,Invis=0..1},nbt=!{Inventory:[{id:"minecraft:iron_chestplate",Slot:102b}]},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:iron_chestplate{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=1,ingame=1..,Invis=0..1},nbt=!{Inventory:[{id:"minecraft:golden_chestplate",Slot:102b}]},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:golden_chestplate{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={Invis=2..}] armor.head with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=3,teamed=..0,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]},x=620,y=20,z=620,distance=..500] armor.head with minecraft:leather_helmet{Unbreakable:1}
item replace entity @a[gamemode=adventure,tag=red,x=620,y=20,z=620,distance=..500,nbt=!{Inventory:[{id:"minecraft:red_stained_glass",Slot:103b}]},scores={teamed=1..,Invis=0..1,ingame=1..}] armor.head with red_stained_glass{ench:[{id:10,lvl:1}]}
item replace entity @a[gamemode=adventure,tag=green,x=620,y=20,z=620,distance=..500,nbt=!{Inventory:[{id:"minecraft:green_stained_glass",Slot:103b}]},scores={teamed=1..,Invis=0..1,ingame=1..}] armor.head with green_stained_glass{ench:[{id:10,lvl:1}]}
item replace entity @a[gamemode=adventure,tag=blue,x=620,y=20,z=620,distance=..500,nbt=!{Inventory:[{id:"minecraft:blue_stained_glass",Slot:103b}]},scores={teamed=1..,Invis=0..1,ingame=1..}] armor.head with blue_stained_glass{ench:[{id:10,lvl:1}]}
item replace entity @a[gamemode=adventure,x=500,y=20,z=500,distance=..80,scores={class=0..2,teamed=..0}] armor.head with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,x=500,y=20,z=500,distance=..80,scores={ingame=..0}] armor.head with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=3,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:leather_chestplate{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=4,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:chainmail_chestplate{Unbreakable:1}
item replace entity @a[gamemode=adventure,x=500,y=20,z=500,distance=..80,scores={ingame=..0}] armor.chest with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,x=500,y=20,z=500,distance=..80,scores={class=4,teamed=..0}] armor.head with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=6,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:netherite_chestplate",Slot:102b}]},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:netherite_chestplate
item replace entity @a[gamemode=adventure,x=620,y=20,z=620,distance=..500,nbt=!{Inventory:[{id:"minecraft:diamond_helmet",Slot:103b}]},scores={class=5,teamed=..0,Invis=0..1,ingame=1..}] armor.head with minecraft:diamond_helmet{Unbreakable:1}
item replace entity @a[gamemode=adventure,x=500,y=20,z=500,distance=..80,scores={class=5..6,ingame=..0}] armor.head with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=4,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:chainmail_chestplate{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=7,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]},x=620,y=20,z=620,distance=..500] armor.legs with minecraft:golden_leggings{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=7,Invis=0..1,ingame=0},x=620,y=20,z=620,distance=..500] armor.legs with minecraft:air
item replace entity @a[gamemode=adventure,scores={class=5,Invis=0..1,ingame=1..},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=7..,Invis=0..1,ingame=1..},x=620,y=20,z=620,distance=..500] armor.chest with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=6..7,teamed=..0,Invis=0..1,ingame=1..},x=620,y=20,z=620,distance=..500] armor.head with minecraft:air{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=8,teamed=..0,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:golden_helmet",Slot:103b}]},x=620,y=20,z=620,distance=..500] armor.head with minecraft:golden_helmet{Unbreakable:1}
item replace entity @a[gamemode=adventure,scores={class=9,teamed=..0,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:chicken",Slot:103b}]},x=620,y=20,z=620,distance=..500] armor.head with minecraft:chicken
item replace entity @a[gamemode=adventure,scores={class=99,teamed=..0,Invis=0..1,ingame=1..},nbt=!{Inventory:[{id:"minecraft:iron_ore",Slot:103b}]},x=620,y=20,z=620,distance=..500] armor.head with minecraft:iron_ore

#Modes
execute if entity @e[scores={mode=1}] run function game:overpowered

execute if entity @e[scores={mode=2}] run scoreboard players add @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] hotfeet 1
execute if entity @e[scores={mode=2}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={hotfeet=110}] at @s run function game:hotfeetsummon
execute if entity @e[scores={mode=2}] run scoreboard players add @a[scores={hotfeet=110..}] hotfeetlevel 1
execute if entity @e[scores={mode=2}] run function game:hotfeetlevel

execute if entity @e[scores={mode=3}] run function game:phantommode

execute if entity @e[scores={mode=4}] run function game:survivalmode

#Training Mode
scoreboard players enable @a dummytrigger
execute if entity @e[tag=Map,scores={mode=0..1}] as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={dummytrigger=1,playercount=1}] at @s run function game:summondummy
scoreboard players set @a dummytrigger 0

scoreboard players enable @a dummytrigger2
execute if entity @e[tag=Map,scores={mode=0..1}] as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={dummytrigger2=1,playercount=1}] at @s run function game:summondummy2
scoreboard players set @a dummytrigger2 0

effect give @e[tag=dummy] minecraft:slowness 1 10 true
effect give @e[tag=wizcreep] minecraft:slowness 1 10 true

#scoreboard players enable @a resettrigger
#execute if entity @e[tag=Map,scores={mode=0..1}] as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={resettrigger=1,playercount=1}] at @s run fill 600 9 600 600 10 600 air
#execute if entity @e[tag=Map,scores={mode=0..1}] as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={resettrigger=2,playercount=1}] at @s run tp @s 600 60 600
#execute if entity @e[tag=Map,scores={mode=0..1}] as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={resettrigger=2,playercount=1}] at @s run function game:spawn
#execute if entity @e[tag=Map,scores={mode=0..1}] as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={resettrigger=2,playercount=1}] at @s run function game:makemap
#scoreboard players remove @a resettrigger 1

scoreboard players set @a playercount 0
execute as @a[scores={ingame=1..}] run scoreboard players add @a[scores={ingame=1..}] playercount 1

scoreboard players remove @e[tag=Map,scores={whootext=1..}] whootext 1

execute as @a unless entity @s[x=600,y=60,z=600,distance=3..100,gamemode=adventure] run scoreboard players reset @s l

#music
scoreboard players add @a[x=487,y=15,z=499,distance=..16] LobbyMusic 1
stopsound @a[scores={LobbyMusic=2}]
playsound minecraft:music_disc.stal record @a[scores={LobbyMusic=2}] 487 16 499 .8 1 0
scoreboard players add @a[scores={LobbyMusic=1..},x=487,y=15,z=499,distance=16..2000] LobbyMusic 1
scoreboard players set @a[scores={LobbyMusic=1379..}] LobbyMusic 0
scoreboard players set @a[scores={LobbyMusic=2}] LobbyMusic2 0
scoreboard players set @a[scores={LobbyMusic=2}] LobbyMusic3 0

scoreboard players add @a[x=486,y=13,z=472,distance=..10] LobbyMusic2 1
playsound minecraft:music_disc.cat record @a[scores={LobbyMusic2=10}] 486 12 472 .6 1 0
scoreboard players add @a[scores={LobbyMusic2=10..},x=486,y=13,z=472,distance=10..2000] LobbyMusic2 1
scoreboard players set @a[scores={LobbyMusic2=10}] LobbyMusic 0
scoreboard players set @a[scores={LobbyMusic2=10}] LobbyMusic3 0
scoreboard players set @a[scores={LobbyMusic2=560..}] LobbyMusic2 0
stopsound @a[scores={LobbyMusic2=9}]

scoreboard players add @a[x=521,y=21,z=505,distance=..15] LobbyMusic3 1
playsound minecraft:music_disc.far record @a[scores={LobbyMusic3=40}] 521 16 505 1 1 0
scoreboard players add @a[scores={LobbyMusic3=40..},x=521,y=19,z=505,distance=15..2000] LobbyMusic3 1
scoreboard players set @a[scores={LobbyMusic3=40}] LobbyMusic 0
scoreboard players set @a[scores={LobbyMusic3=40}] LobbyMusic2 0
scoreboard players set @a[scores={LobbyMusic3=5000..}] LobbyMusic3 0
stopsound @a[scores={LobbyMusic3=39}]

#patreon
tellraw @a[scores={patclick=1..}] ["",{"text":"Hey there! ","color":"aqua"},{"text":"I made a page where you can see all my future games and work over on Patreon. Over the past half year, I have been making Minecraft maps full time on the Minecraft Marketplace. ","color":"white","bold":false,"underlined":false,"clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"text":"Now I want to move my effort to making games right here on Realms, with higher quality than ever, just for you guys.","color":"yellow","bold":"false","clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"text":" If you want to see the cool games coming, or you want to support me so I can make these games, [","clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"color":"blue","text":"CLICK HERE","clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"text":"] to go the page about it. Thanks :D ","clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"text":"  <3 <3 <3","color":"red"}]
scoreboard players set @a patclick 0

#clear
clear @a[x=520,y=40,z=587,distance=..20]