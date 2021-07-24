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
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run tellraw @a ["",{"text":"Blue Team","color":"aqua"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run tellraw @a ["",{"text":"Green Team","color":"green"},{"text":" WINS","color":"white"}]

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=0}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Soldier","color":"red"},{"text":")","color":"white"}]]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=1}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Assassin","color":"dark_purple"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=2}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Ghost","color":"aqua"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=3}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Trapper","color":"red"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=4}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Wizard","color":"blue"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=5}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Mad Scientist","color":"dark_purple"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=6}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Reaper","color":"gray"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=7}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Echo","color":"gray"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=8}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Gardener","color":"green"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=9}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Overlord","color":"gold"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=10}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Shard","color":"dark_aqua"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=99}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"God","color":"gold"},{"text":")","color":"white"}]

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Red Team","color":"red"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Blue Team","color":"aqua"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Green Team","color":"green"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure]","color":"white"},{"text":" WINS","color":"white"}]

#effect clear
effect clear @a speed
effect clear @a jump_boost
effect clear @a levitation

#scores
scoreboard players reset Time game
scoreboard players reset Time p

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run scoreboard players add §cRED p 1
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run scoreboard players add §cBLUE p 1
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run scoreboard players add §aGREEN p 1
scoreboard players add @a[gamemode=adventure,x=620,y=40,z=620,distance=..100,scores={teamed=..0}] p 1

#blocks
data merge block 475 17 495 {Text1:"[{\"text\":\"\"}]",Text2:"[{\"score\":{\"name\":\"Round\",\"objective\":\"game\"},\"bold\":\"true\"}]",Text3:"[{\"text\":\"Round(s)\"}]",Text4:"[{\"text\":\"\"}]"}

#tags
tag @a remove grave