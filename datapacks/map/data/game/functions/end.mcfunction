
#
execute as @e[name=ground] at @s run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace end_stone
execute as @e[name=ground] at @s run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace blue_ice

execute as @s[scores={NArrow=1..}] at @s run fill ~1 ~-1 ~1 ~-1 ~2 ~-1 air

execute as @s[scores={PS=1..},x=600,y=60,z=600,distance=3..100] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace white_stained_glass
execute as @s[scores={PS=1..},x=600,y=60,z=600,distance=3..100] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace blue_ice

execute as @e[name=SP] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace white_stained_glass

tag @e[tag=groundpath] add end_game
execute as @e[tag=groundpath] at @s run function game:char/overlord/groundpath

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
kill @e[type=egg]
kill @e[type=trident]
kill @e[type=minecraft:snow_golem]
tp @e[type=slime] ~ ~-1000 ~
kill @e[type=fireball]
kill @e[type=creeper]
kill @e[tag=telebow]
kill @e[tag=phantom_block]

kill @e[type=minecraft:armor_stand,x=621,y=17,z=617,distance=..100]
kill @e[type=minecraft:marker,x=621,y=17,z=617,distance=..100]

#win text
execute as @a[tag=plague] at @s run scoreboard players operation @s class = @s realclass
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] run tellraw @a ["",{"text":"Red Team","color":"red"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] run tellraw @a ["",{"text":"Blue Team","color":"aqua"},{"text":" WINS","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] run tellraw @a ["",{"text":"Green Team","color":"green"},{"text":" WINS","color":"white"}]

execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=0}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=0}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Soldier","color":"red"},{"text":")","color":"white"}]]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=1}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=1}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Assassin","color":"dark_purple"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=2}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=2}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Ghost","color":"aqua"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=3}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=3}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Trapper","color":"red"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=4}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=4}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Wizard","color":"blue"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=5}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=5}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Mad Scientist","color":"dark_purple"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=6}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=6}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Reaper","color":"gray"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=7}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=7}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Echo","color":"gray"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=8}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=8}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Gardener","color":"green"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=9}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=9}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Overlord","color":"gold"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=10}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=10}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"Shard","color":"dark_aqua"},{"text":")","color":"white"}]
execute if entity @a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={teamed=..0,class=99}] run tellraw @a ["",{"selector":"@a[x=615,y=30,z=615,distance=..90,gamemode=adventure,scores={class=99}]","color":"white"},{"text":" WINS (","color":"white"},{"text":"God","color":"gold"},{"text":")","color":"white"}]

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
data merge block 475 17 495 {front_text:{messages:["[{\"text\":\"\"}]","[{\"score\":{\"name\":\"Round\",\"objective\":\"game\"},\"bold\":\"true\"}]","[{\"text\":\"Round(s)\"}]","[{\"text\":\"\"}]"]}}

#tags
tag @a remove grave

#
scoreboard players set @a click 0

#
gamerule reducedDebugInfo false