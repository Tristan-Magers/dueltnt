#
#execute as @s[scores={countdown=75..}] at @s run effect 

#
execute as @s[scores={countdown=75..}] at @s run fill 599 59 599 601 63 601 barrier hollow
execute as @s[scores={countdown=75..}] at @s run tp @a[x=600,y=60,z=600,distance=..3,gamemode=adventure] 600 61 600

#say class names solo
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,scores={teamed=..0}] at @s run function game:player/sayclass

#say class names teams
#execute as @s[scores={countdown=72}] at @s run execute as @p[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] at @s run tellraw @a [{"text":"TEAM RED","color":"red"},{"text":": ","color":"white"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,scores={teamed=1..},tag=red] at @s run function game:player/sayclass

#execute as @s[scores={countdown=72}] at @s run execute as @p[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] at @s run tellraw @a [{"text":"TEAM BLUE","color":"aqua"},{"text":": ","color":"white"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,scores={teamed=1..},tag=blue] at @s run function game:player/sayclass
#
title @a times 0 10 20

#execute as @s[scores={countdown=72}] at @s run execute as @p[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] at @s run tellraw @a [{"text":"TEAM GREEN","color":"green"},{"text":": ","color":"white"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,scores={teamed=1..},tag=green] at @s run function game:player/sayclass

execute as @s[scores={countdown=75}] at @s run title @a[x=620,y=20,z=620,distance=..100] title ["",{"text":"Round ","color":"light_purple","bold":true},{"score":{"name":"RoundAnnounce","objective":"game"},"color":"light_purple","bold":true}]
execute as @s[scores={countdown=75}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.creeper.primed master @p ~ ~ ~ 1 1.2

execute as @s[scores={countdown=69}] at @s run function game:makemap
execute as @s[scores={countdown=-10}] at @s run scoreboard objectives setdisplay sidebar l

execute as @s[scores={countdown=67}] at @s run setblock 600 9 600 air
execute as @s[scores={countdown=67}] at @s run setblock 600 10 600 air

execute as @s[scores={countdown=50}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run stopsound @s

execute as @s[scores={countdown=60}] at @s run time set 11000
execute as @s[scores={countdown=60}] at @s run execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run time set 12800

execute as @s[scores={countdown=45}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"---3---","color":"dark_red","bold":"true"}]

execute as @s[scores={countdown=36}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"- --3-- -","color":"dark_red","bold":"true"}]
execute as @s[scores={countdown=35}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"- - -3- - -","color":"dark_red","bold":"true"}]
execute as @s[scores={countdown=34}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"- - - 3 - - -","color":"dark_red","bold":"true"}]
execute as @s[scores={countdown=33}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"- - -3- - -","color":"dark_red","bold":"true"}]
execute as @s[scores={countdown=32}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-- -3- --","color":"dark_red","bold":"true"}]

execute as @s[scores={countdown=45}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.chicken.egg master @p

execute as @s[scores={countdown=30}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"--2--","color":"gold","bold":"true"}]

execute as @s[scores={countdown=30}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.chicken.egg master @p

execute as @s[scores={countdown=21}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-- 2 --","color":"dark_red","bold":"true"}]
execute as @s[scores={countdown=19}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"- - 2 - -","color":"dark_red","bold":"true"}]
execute as @s[scores={countdown=17}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"- -2- -","color":"dark_red","bold":"true"}]

execute as @s[scores={countdown=15}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-1-","color":"dark_green","bold":"true"}]
execute as @s[scores={countdown=15}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.chicken.egg master @p

execute as @s[scores={countdown=6}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"- 1 -","color":"dark_green","bold":"true"}]
execute as @s[scores={countdown=4}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-  1  -","color":"dark_green","bold":"true"}]
execute as @s[scores={countdown=2}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"- 1 -","color":"dark_green","bold":"true"}]

execute as @s[scores={countdown=15}] at @s positioned 614 30 614 run kill @e[type=minecraft:armor_stand,distance=..50]

#clone extra map for phantom blocks
execute as @s[scores={countdown=10}] at @s run clone 596 7 596 639 21 639 596 7 696
execute as @s[scores={countdown=10}] at @s run clone 596 22 596 639 34 639 596 22 696
execute as @s[scores={countdown=10}] at @s run clone 596 35 596 639 49 639 596 35 696

execute as @s[scores={countdown=0}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-GO!-","color":"dark_green","bold":"true"}]
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.player.levelup master @p
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.shulker_bullet.hit master @p ~ ~ ~ 1 1
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.shulker_bullet.hit master @p ~ ~ ~ 1 1
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.generic.explode master @p ~ ~ ~ .5 1.7

#execute as @s[scores={countdown=0}] at @s run effect give @a[gamemode=adventure,scores={ingame=1..}] slow_falling 3 4 true
execute as @s[scores={countdown=0}] at @s run tp @a[gamemode=adventure,scores={ingame=1..}] 600 60 600

execute as @s[scores={countdown=-10}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"","color":"dark_green","bold":"true"}]

execute as @s[scores={countdown=-10}] at @s run function game:spawn
execute as @s[scores={countdown=-10}] at @s run fill 599 59 599 601 100 601 air
#execute as @s[scores={countdown=-10}] at @s run scoreboard players remove CurrentRound game 1
execute as @s[scores={countdown=-10}] at @s run scoreboard players add RoundAnnounce game 1
execute as @s[scores={countdown=-10}] at @s run scoreboard players set Time game 6000

scoreboard players remove @s countdown 1

execute as @s[scores={countdown=-10}] at @s run gamerule mobGriefing true

#players spawning
scoreboard players set @a[x=600,y=60,z=600,distance=..3] Invis 5
clear @a[x=600,y=60,z=600,distance=..3]
scoreboard players set @a[x=600,y=60,z=600,distance=..3] timer 100
effect give @a[x=600,y=60,z=600,distance=..3] blindness 1 0 true