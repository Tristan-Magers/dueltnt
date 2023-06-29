#
team modify Main collisionRule never

#
tp @e[tag=kill_this] ~ ~-1000 ~
kill @e[tag=kill_this]

#
gamerule mobGriefing true

#
execute as @e[tag=killthis,type=slime] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace fire
tp @e[tag=killthis] ~ ~-1000 ~

execute as @e[type=area_effect_cloud,tag=!a,nbt={Potion:"minecraft:poison"}] at @s run function game:char/gardener/plaguepot
execute as @e[type=area_effect_cloud,tag=!a,nbt={Potion:"minecraft:swiftness"}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1,Silent:1,Tags:["a","airnade"]}
kill @e[type=area_effect_cloud,tag=!a,tag=!gameae]

clear @a[gamemode=spectator]

#leave players
clear @a[scores={leave=1..}]
scoreboard players set @a[scores={leave=1..}] ingame 0
gamemode adventure @a[scores={leave=1..}]
tp @a[scores={leave=1..}] 500 20 500 0 0
scoreboard players reset @a[scores={leave=1..}] leave

#team join main
execute if entity @a[team=] run scoreboard players set @a[team=] rejoin 1
team join Main @a[team=]

#tntID
scoreboard players add @a tntID 0
execute if entity @a[scores={tntID=..0}] run scoreboard players add M tntID 1
execute if entity @a[scores={tntID=..0}] run scoreboard players operation @r[scores={tntID=..0}] tntID = M tntID

#run game
execute unless entity @a[x=620,y=20,z=620,distance=..100,gamemode=adventure] run function game:game/run
execute if entity @a[x=620,y=20,z=620,distance=..100,gamemode=adventure] run scoreboard players set ArenaCheck game 0

#menu push
execute as @a[x=473.7,y=16,z=494,dz=10,dy=4] at @s run tp @s ~.1 ~ ~

execute as @e[type=arrow,nbt={pickup:1b}] run data merge entity @s {pickup:0b}
#execute as @e[type=arrow,tag=!checked] at @s run data merge entity @s {pickup:1}
tag @e[type=arrow,tag=!checked] add checked

execute as @e[type=slime] run data merge entity @s {CustomName:"{\"italic\":false,\"text\":\"Slime\"}"}
execute as @e[type=pig] run data merge entity @s {CustomName:"{\"italic\":false,\"text\":\"Not a wizard\"}"}

effect clear @a minecraft:absorption

tp @a[x=322,y=3,z=450,distance=..10,gamemode=adventure] 485 50 473

execute as @a[scores={leavetext=1..}] at @s run function game:killender
execute as @a[scores={leavetext=1..}] at @s run tellraw @a [{"selector":"@s"},{"text":" left the arena","color":"white"}]
scoreboard players reset @a[scores={leavetext=1..}] leavetext

scoreboard players add @r[tag=randclass] randclass 1
scoreboard players set @a[scores={randclass=11..}] randclass 0

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
execute as @e[scores={tntEnd=1..},tag=frost] at @s run summon minecraft:marker ~ ~ ~ {Tags:["frostmarker"]}
scoreboard players add @e[tag=frostmarker] t1 1
execute as @e[scores={t1=2..},tag=frostmarker] at @s run function game:char/shard/tntfill
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
execute as @a[scores={CPtimer=1..,class=4}] at @s run function game:char/wizard/excreep

#particle
execute as @a[scores={Invis=..0,particle=1..}] at @s run function game:player/particle

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

execute as @p[scores={SetPortalP=1..}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,CustomName:"{\"italic\":false,\"text\":\"Portal\"}",Invulnerable:1,Marker:1,Silent:1,Invisible:1}

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
effect give @a resistance 1000000 4 true

execute as @a[scores={Y=..0}] at @s run function game:player/respawn

scoreboard players add @a[scores={rejoin=1..}] timer 0
effect give @a[scores={rejoin=1..}] resistance 1000000 255 true
effect give @a[scores={rejoin=1..}] saturation 1000000 255 true
execute as @a[scores={Y=..0,teamed=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a [{"selector":"@p[scores={Y=..0}]"},{"text":" died!","color":"green"}]

execute as @a[scores={Y=..0,teamed=1..},tag=red,x=620,y=20,z=620,distance=..100] at @s run tellraw @a [{"text":"[","color":"white"},{"text":"RED","color":"red"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0}]"},{"text":" died!","color":"green"}]
execute as @a[scores={Y=..0,teamed=1..},tag=blue,x=620,y=20,z=620,distance=..100] at @s run tellraw @a [{"text":"[","color":"white"},{"text":"BLUE","color":"aqua"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0}]"},{"text":" died!","color":"green"}]
execute as @a[scores={Y=..0,teamed=1..},tag=green,x=620,y=20,z=620,distance=..100] at @s run tellraw @a [{"text":"[","color":"white"},{"text":"GREEN","color":"green"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0}]"},{"text":" died!","color":"green"}]

tp @a[scores={rejoin=1..,inarena=..0}] 500 20.5 500 0 0
scoreboard players add @a[scores={rejoin=1..}] class 0
gamemode spectator @a[scores={Y=..0,inarena=1..}]
tp @a[scores={Y=..0,inarena=1..}] 614 40 614
title @a[scores={Y=..0,inarena=1..}] times 0 10 20
effect clear @a[scores={rejoin=1..}] blindness
scoreboard players reset @a[scores={rejoin=1..}] rejoin

#tnt
execute as @e[type=armor_stand,tag=stnt] at @s run execute as @e[distance=..15,tag=!tnt,type=tnt] at @s run data merge entity @s {Fuse:360}
execute as @e[type=armor_stand,tag=stnt] at @s run execute as @e[distance=..15,tag=!tnt,type=tnt] at @s run scoreboard players set @e[type=armor_stand,tag=timer] timer 301
#execute as @e[type=armor_stand,tag=stnt] at @s run tp @e[distance=..3,tag=tnt,type=tnt] 490 16.4 495
execute as @e[type=armor_stand,tag=stnt] at @s run tag @e[type=tnt,tag=!tnt,distance=..15] add tnt
execute as @e[tag=timer,scores={timer=1}] at @s run function game:tntblow

# armor
execute as @a[gamemode=adventure] run function game:player/armor

#Modes
execute if entity @e[scores={mode=1}] run function game:mode/overpowered/overpowered

execute if entity @e[scores={mode=2}] run scoreboard players add @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] hotfeet 1
execute if entity @e[scores={mode=2}] run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={hotfeet=110}] at @s run function game:mode/hotfeet/hotfeetsummon
execute if entity @e[scores={mode=2}] run scoreboard players add @a[scores={hotfeet=110..}] hotfeetlevel 1
execute if entity @e[scores={mode=2}] run function game:mode/hotfeet/hotfeetlevel

execute if entity @e[scores={mode=3}] run function game:mode/phantom/phantommode

execute if entity @e[scores={mode=4}] run function game:mode/survival/survivalmode

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

#manage player locations (SPECTATOR, CEILING DEATH, etc.)
scoreboard players set @a inarena 0
scoreboard players set @a[x=592,z=592,y=-10,dx=51,dz=51,dy=88,distance=..1000] inarena 1
tp @a[gamemode=spectator,x=595,z=595,y=-20,dx=45,dz=45,dy=13,distance=..1000] 500 20 500
tp @a[gamemode=spectator,scores={inarena=..0}] 500 20 500 0 0
gamemode adventure @a[gamemode=spectator,distance=..2,x=500,y=20,z=500]
effect give @a[x=595,z=595,y=65,dx=45,dz=45,dy=68,distance=..1000,gamemode=adventure] blindness 3
execute as @a[x=595,z=595,y=65,dx=45,dz=45,dy=68,distance=..1000,gamemode=adventure] at @s run tp @s ~ 0 ~
tp @a[gamemode=spectator,x=595,z=595,y=80,dx=45,dz=45,dy=14,distance=..1000] 500 20 500

#running game
function game:game/main

#Game end conditions
scoreboard players set gameCheck game 0
execute as @a[x=620,y=20,z=620,distance=..100,gamemode=adventure,scores={teamed=..0}] at @s run scoreboard players add gameCheck game 1
scoreboard players set playerCheck game 0
execute as @a[scores={ingame=1..,teamed=..0}] at @s run scoreboard players add playerCheck game 1
execute as @p[tag=blue,scores={ingame=1..,teamed=1..}] at @s run scoreboard players add playerCheck game 1
execute as @p[tag=red,scores={ingame=1..,teamed=1..}] at @s run scoreboard players add playerCheck game 1
execute as @p[tag=green,scores={ingame=1..,teamed=1..}] at @s run scoreboard players add playerCheck game 1
execute as @p[x=620,y=20,z=620,distance=..100,gamemode=adventure,tag=blue,scores={teamed=1..}] at @s run scoreboard players add gameCheck game 1
execute as @p[x=620,y=20,z=620,distance=..100,gamemode=adventure,tag=red,scores={teamed=1..}] at @s run scoreboard players add gameCheck game 1
execute as @p[x=620,y=20,z=620,distance=..100,gamemode=adventure,tag=green,scores={teamed=1..}] at @s run scoreboard players add gameCheck game 1
scoreboard players operation @e[name=Map,type=armor_stand] gameCheck = gameCheck game
scoreboard players operation @e[name=Map,type=armor_stand] playerCheck = playerCheck game
execute if entity @e[name=Map,type=armor_stand,scores={gameCheck=0}] if entity @e[name=Map,type=armor_stand,scores={playerCheck=1}] run tag @e[name=Map,type=armor_stand,limit=1] add start
execute if entity @e[name=Map,type=armor_stand,scores={gameCheck=0..1}] if entity @e[name=Map,type=armor_stand,scores={playerCheck=2..100}] run tag @e[name=Map,type=armor_stand,limit=1] add start
execute if entity @e[name=Map,type=armor_stand,scores={gameCheck=2..100}] run tag @e[name=Map,type=armor_stand,limit=1] remove start
execute if entity @e[name=Map,type=armor_stand,scores={gameCheck=1}] if entity @e[name=Map,type=armor_stand,scores={playerCheck=1}] run tag @e[name=Map,type=armor_stand,limit=1] remove start
execute if entity @e[name=Map,type=armor_stand,scores={gameCheck=0}] if entity @e[name=Map,type=armor_stand,scores={playerCheck=0}] run tag @e[name=Map,type=armor_stand,limit=1] add start

execute as @e[name=Map,type=armor_stand,limit=1,tag=start,tag=!startt] at @s run function game:game/roundend

tag @e[name=Map,type=armor_stand,limit=1,tag=start] add startt
tag @e[name=Map,type=armor_stand,limit=1,tag=!start] remove startt

#New Player
scoreboard players add @a NewPlay 1
tag @a[scores={NewPlay=2}] add blue
scoreboard players set @a[scores={NewPlay=2}] class 1
scoreboard players set @a[scores={NewPlay=2}] Invis 0
tp @a[scores={NewPlay=1..40}] 14 4 1
scoreboard players set @a[scores={NewPlay=1..2}] ingame 0
scoreboard players set @a[scores={NewPlay=2}] tntID 0
clear @a[scores={NewPlay=2..4}] red_concrete_powder
clear @a[scores={NewPlay=2..4}] green_concrete_powder
gamemode adventure @a[scores={NewPlay=2..8}]

#Tutorial
effect give @a[x=14,y=4,z=1,distance=..2] blindness 2 99 true
scoreboard players add @a[x=14,y=4,z=1,distance=..2] tutorial 1
scoreboard players set @a[x=500,y=20,z=500,distance=..20] tutorial 0
effect give @a[x=14,y=4,z=1,distance=..2] jump_boost 2 200 true
scoreboard players set @a[x=14,y=4,z=1,distance=..2] Invis 3

#Timer
scoreboard players operation @e[name=Map,type=armor_stand] Time = Time game
execute if entity @e[name=Map,type=armor_stand,scores={Time=1..}] run scoreboard players remove Time game 1
execute if entity @e[name=Map,type=armor_stand,scores={Time=600}] run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"30 seconds","color":"dark_red","bold":"false"}]
execute if entity @e[name=Map,type=armor_stand,scores={Time=1}] run gamemode spectator @a[x=620,y=20,z=620,distance=..100]

scoreboard players operation TimeReal game = Time game
scoreboard players operation TimeReal game /= 20 game
execute if entity @e[name=Map,type=armor_stand,scores={Time=1..}] run scoreboard players operation Time l = TimeReal game

execute if entity @e[name=Map,type=armor_stand,scores={Time=580}] run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"","color":"dark_red","bold":"false"}]

execute if entity @e[name=Map,type=armor_stand,scores={Time=15}] run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"TIMES OUT","color":"dark_red","bold":"false"}]
execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,scores={teamed=..0}] at @s run scoreboard players operation @s l = @s Lives

#Team Lives
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run scoreboard players set §cRED l 0
execute as @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run scoreboard players operation §cRED l += @s Lives

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run scoreboard players set §bBLUE l 0
execute as @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run scoreboard players operation §bBLUE l += @s Lives

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run scoreboard players set §aGREEN l 0
execute as @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run scoreboard players operation §aGREEN l += @s Lives

#Trident Slimes
tag @e[tag=kill_this_next] add kill_this
tag @e[tag=kill_next] add kill_this_next
execute as @e[tag=kill_next] run team modify Main collisionRule always

#testing
execute as @a[nbt={OnGround:1b},tag=ground_boom] at @s run summon tnt ~ ~ ~ {Fuse:4}
execute as @a[nbt={OnGround:1b},tag=ground_boom] at @s run summon tnt ~ ~ ~ {Fuse:2}
execute as @a[nbt={OnGround:1b},tag=ground_boom] at @s run tp @s @s
execute as @a[nbt={OnGround:1b},tag=ground_boom] at @s run tp @s ~ ~0.1 ~
execute as @a[nbt={OnGround:1b},tag=ground_boom] at @s run effect give @s levitation 1 10 true
execute as @a[nbt={OnGround:1b},tag=ground_boom] at @s run scoreboard players set @s nolev 6
tag @a[nbt={OnGround:1b},tag=ground_boom] remove ground_boom

execute as @a[scores={ass_pearl=0..}] at @s run function game:physics/ass_pearl

execute as @e[tag=blue_tnt] at @s run tp @s @s
team join blue_color @e[tag=blue_tnt]

execute as @a[tag=divekick_end2] at @s run function game:physics/dive_end
execute as @a[tag=divekick] at @s run function game:physics/dive_kick

tag @a[tag=divekick_end] add divekick_end2