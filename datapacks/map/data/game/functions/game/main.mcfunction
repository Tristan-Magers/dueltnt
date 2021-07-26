###LEGACY CODE FROM COMMAND BLOCKS. CAUTION

scoreboard players add @a ingame 0

#tnt block
execute unless entity @e[x=500,y=40,z=500,type=tnt,distance=..100] run setblock 490 16 495 tnt
execute if entity @e[x=500,y=40,z=500,type=tnt,distance=..100] run setblock 490 16 495 air

#count lobby players
scoreboard players set PlayerCount game 0
execute as @a[x=460,y=19,z=494,distance=..200,scores={ingame=1},gamemode=adventure] at @s run scoreboard players add PlayerCount game 1

#spawn start button
setblock 490 17 495 air
scoreboard players operation @e[name=Map,type=armor_stand] PlayerCount = PlayerCount game
scoreboard players operation @e[name=Map,type=armor_stand] ArenaCheck = ArenaCheck game
scoreboard players operation @e[name=Map,type=armor_stand] CurrentRound = CurrentRound game
execute if entity @e[name=Map,type=armor_stand,scores={CurrentRound=..0}] if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=140..}] if entity @a[scores={ingame=1..},gamemode=adventure,x=460,y=19,z=494,distance=..200] if block 490 16 495 minecraft:tnt run setblock 490 17 495 minecraft:birch_button[face=floor] keep

#prevent ArenaCheck value from going to high. possibly unnessisary
scoreboard players operation @e[name=Map,type=armor_stand] ArenaCheck = ArenaCheck game
execute if entity @e[name=Map,type=armor_stand,scores={ArenaCheck=900000..}] run scoreboard players set ArenaCheck game 900000

###MENU IN TRANSITION

#team change
scoreboard players set @a teamCh 0
scoreboard players add @a[tag=blue] teamCh 1
scoreboard players add @a[tag=red] teamCh 1
scoreboard players add @a[tag=green] teamCh 1
tag @a[scores={teamCh=..0}] add blue

###RANDOM OTHERS IN TRANSITION

#echo room blindness
execute positioned 473.45 10.00 506.54 run effect give @a[distance=..3.5] minecraft:blindness 2

#tell not joined title
scoreboard players add @a[x=472,y=18,z=503,distance=..80] joinText 1
scoreboard players set @a[scores={joinText=118..}] joinText 0
title @a[scores={joinText=30,ingame=..0}] actionbar {"text":"You have not yet joined the game","color":"gold","bold":"false"}

#optifine sign
#tellraw @a[scores={lagtext=1..}] ["",{"text":"Sorry for the inconvenience. Minecraft is currently having lag issues due to new particle code. To fix this issue, you can download OptiFine. [click here for website] Download the latest version for 1.13.2 (don't download anything else), run the executable you download, and restart Minecart. Select the OptiFine profile on the Minecraft Launcher. Once started, go to settings -> video settings -> animations and turn off smoke and explosion animations. That should make your game run 800% faster. If you still have issues, just turn off all the animations. Good luck, and game on!","color":"yellow","bold":false,"underlined":false,"clickEvent":{"action":"open_url","value":"https://optifine.net/downloads"}}]
#scoreboard players set @a lagtext 0

#old tournament sign
#tellraw @a[scores={clicktourn=1..}] ["",{"text":"Click here to go to the tournament website","color":"gold","bold":true,"underlined":false,"clickEvent":{"action":"open_url","value":"http://tickbytick.org/"}}]
#scoreboard players set @a clicktourn 0

#tournament click redirect
#scoreboard players set @a[scores={clicktourn=1}] clickDis 1
#scoreboard players set @a clicktourn 0