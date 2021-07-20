#kills
kill @e[tag=phantomairmissile]
kill @e[tag=tnttrack]
scoreboard objectives setdisplay sidebar p
kill @e[tag=powerupitem]
kill @e[type=creeper]
kill @e[type=ghast]
kill @e[type=wither]
kill @e[type=chicken]
kill @e[type=skeleton]
kill @e[type=zombie]
kill @e[name=Portal,type=armor_stand]
#kill @e[name=PS,type=armor_stand]
kill @e[name=acid,type=armor_stand]
kill @e[type=tnt]
kill @e[type=ender_pearl]
kill @e[type=item]
kill @e[type=arrow]
tp @e[type=slime] ~ ~-1000 ~
kill @e[type=fireball]
kill @e[type=creeper]
kill @e[tag=telebow]

#win text
execute as @a[tag=plague] at @s run scoreboard players operation @s class = @s realclass
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run tellraw @a ["",{"text":"Red Team","color":"red"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run tellraw @a ["",{"text":"Blue Team","color":"blue"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run tellraw @a ["",{"text":"Green Team","color":"green"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure]","color":"white"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Red Team","color":"red"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Blue Team","color":"blue"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Green Team","color":"green"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure]","color":"white"},{"text":" WINS","color":"white"}]

#effect clear
effect clear @a speed
effect clear @a jump_boost
effect clear @a levitation

#scores
scoreboard players reset Time game
scoreboard players reset Time p

scoreboard players add @a[gamemode=adventure,x=620,y=40,z=620,distance=..100] p 1

#blocks
data merge block 475 17 495 {Text1:"[{\"text\":\"\"}]",Text2:"[{\"score\":{\"name\":\"Round\",\"objective\":\"game\"},\"bold\":\"true\"}]",Text3:"[{\"text\":\"Round(s)\"}]",Text4:"[{\"text\":\"\"}]"}