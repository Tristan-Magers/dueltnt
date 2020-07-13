execute as @s[scores={countdown=75..}] at @s run fill 599 59 599 601 63 601 barrier hollow
execute as @s[scores={countdown=75..}] at @s run tp @a[x=600,y=60,z=600,distance=..3,gamemode=adventure] 600 61 600

execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure] at @s run scoreboard players operation @s class = @s randclass
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=0}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Soldier","color":"dark_red"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=1}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Assassin","color":"dark_purple"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=2}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Ghost","color":"dark_aqua"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=3}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Trapper","color":"red"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=4}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Wizard","color":"blue"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=5}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Mad Scientist","color":"dark_purple"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=6}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Reaper","color":"dark_gray"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=7}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Echo","color":"gray"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=8}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Gardener","color":"dark_green"}]
execute as @s[scores={countdown=72}] at @s run execute as @a[x=600,y=60,z=600,distance=..3,tag=randclass,gamemode=adventure,scores={class=9}] at @s run tellraw @a [{"selector":"@s","color":"gold"},{"text":" spawning as: ","color":"white"},{"text":"Overlord","color":"gold"}]

execute as @s[scores={countdown=75}] at @s run title @a[x=620,y=20,z=620,distance=..100] title ["",{"text":"Round ","color":"light_purple","bold":true},{"score":{"name":"RoundAnnounce","objective":"game"},"color":"light_purple","bold":true}]
execute as @s[scores={countdown=75}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.creeper.primed master @p ~ ~ ~ 1 1.2

execute as @s[scores={countdown=69}] at @s run function game:makemap
execute as @s[scores={countdown=-10}] at @s run scoreboard objectives setdisplay sidebar l

execute as @s[scores={countdown=67}] at @s run setblock 600 9 600 air
execute as @s[scores={countdown=67}] at @s run setblock 600 10 600 air

execute as @s[scores={countdown=60}] at @s run time set 11000
execute as @s[scores={countdown=60}] at @s run execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run time set 12800

execute as @s[scores={countdown=45}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-3-","color":"dark_red","bold":"true"}]
execute as @s[scores={countdown=45}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.chicken.egg master @p

execute as @s[scores={countdown=30}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-2-","color":"gold","bold":"true"}]
execute as @s[scores={countdown=30}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.chicken.egg master @p

execute as @s[scores={countdown=15}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-1-","color":"dark_green","bold":"true"}]
execute as @s[scores={countdown=15}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.chicken.egg master @p

execute as @s[scores={countdown=0}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"-GO!-","color":"dark_green","bold":"true"}]
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.player.levelup master @p
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.shulker_bullet.hit master @p ~ ~ ~ 1 1
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.shulker_bullet.hit master @p ~ ~ ~ 1 1
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.generic.explode master @p ~ ~ ~ .5 1.7

execute as @s[scores={countdown=0}] at @s run tp @a[gamemode=adventure,scores={ingame=1..}] 600 60 600

execute as @s[scores={countdown=-10}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"","color":"dark_green","bold":"true"}]

execute as @s[scores={countdown=-10}] at @s run function game:spawn
execute as @s[scores={countdown=-10}] at @s run fill 599 59 599 601 100 601 air
#execute as @s[scores={countdown=-10}] at @s run scoreboard players remove CurrentRound game 1
execute as @s[scores={countdown=-10}] at @s run scoreboard players add RoundAnnounce game 1
execute as @s[scores={countdown=-10}] at @s run scoreboard players set Time game 6000

scoreboard players remove @s countdown 1