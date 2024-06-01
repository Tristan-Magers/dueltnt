function game:game/kill

#win text
execute as @a[tag=plague] at @s run scoreboard players operation @s class = @s realclass
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run tellraw @a ["",{"text":"Red Team","color":"red"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run tellraw @a ["",{"text":"Blue Team","color":"aqua"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run tellraw @a ["",{"text":"Green Team","color":"green"},{"text":" WINS","color":"white"}]

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=0}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Soldier","color":"#da1b1b"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=1}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=1}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Assassin","color":"#edd11d"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=2}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=2}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Ghost","color":"#2d87b4"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=3}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=3}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Trapper","color":"#c03411"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=4}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=4}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Wizard","color":"#1ad1c5"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=5}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=5}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Mad Scientist","color":"#0cb05e"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=6}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=6}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Reaper","color":"#990000"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=7}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=7}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Echo","color":"#545454"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=8}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=8}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Gardener","color":"#009900"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=9}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=9}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Overlord","color":"#9d2ca5"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=10}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=10}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Shard","color":"#23e1e1"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=99}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=99}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"God","color":"gold"},{"text":")","color":"white"}]

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Red Team","color":"red"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Blue Team","color":"aqua"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"text":"Green Team","color":"green"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure] run title @a[x=615,y=30,z=615,distance=..90] title ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure]","color":"white"},{"text":" WINS","color":"white"}]

tag @p[x=615,y=30,z=615,distance=..90,gamemode=adventure] add winner

#effect clear
effect clear @a speed
effect clear @a jump_boost
effect clear @a levitation
effect clear @a slowness
effect clear @a poison
effect clear @a blindness

#scores
scoreboard players reset Time game
scoreboard players reset Time p

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run scoreboard players add §r§cRED p 1
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run scoreboard players add §r§bBLUE p 1
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run scoreboard players add §r§aGREEN p 1
scoreboard players add @a[gamemode=adventure,x=620,y=40,z=620,distance=..100,scores={teamed=..0}] p 1

#blocks
data merge block 475 17 495 {front_text:{messages:['[{"text":""}]','[{"score":{"name":"Round","objective":"game"},"bold":true}]','[{"text":"Round(s)"}]','[{"text":""}]']}}

#tags
tag @a remove grave

#
scoreboard players set @a click 0
scoreboard players set @a frozen -10

#
gamerule reducedDebugInfo false