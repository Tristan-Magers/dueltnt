execute as @s[x=620,y=20,z=620,distance=..100] at @s run particle explosion_emitter ~ ~ ~ 1 3 1 1 10 force

execute as @s[scores={Lives=7,teamed=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=7}]"},{"text":" fell!","color":"white"},{"text":" 6 ","color":"blue","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=6,teamed=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=6}]"},{"text":" fell!","color":"white"},{"text":" 5 ","color":"dark_aqua","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=5,teamed=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=5}]"},{"text":" fell!","color":"white"},{"text":" 4 ","color":"dark_green","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=4,teamed=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=4}]"},{"text":" fell!","color":"white"},{"text":" 3 ","color":"gold","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=3,teamed=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=3}]"},{"text":" fell!","color":"white"},{"text":" 2 ","color":"red","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=2,teamed=..0},x=620,y=20,z=620,distance=..100] at @s run tellraw @a ["",{"selector":"@p[scores={Y=..0,Lives=2}]"},{"text":" fell!","color":"white"},{"text":" 1 ","color":"dark_red","bold":true},{"text":"life remaining","color":"none","bold":false}]

execute as @s[scores={Lives=7,teamed=1..},x=620,y=20,z=620,distance=..100,tag=red] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"RED","color":"red"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=7}]"},{"text":" fell!","color":"white"},{"text":" 6 ","color":"blue","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=6,teamed=1..},x=620,y=20,z=620,distance=..100,tag=red] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"RED","color":"red"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=6}]"},{"text":" fell!","color":"white"},{"text":" 5 ","color":"dark_aqua","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=5,teamed=1..},x=620,y=20,z=620,distance=..100,tag=red] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"RED","color":"red"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=5}]"},{"text":" fell!","color":"white"},{"text":" 4 ","color":"dark_green","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=4,teamed=1..},x=620,y=20,z=620,distance=..100,tag=red] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"RED","color":"red"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=4}]"},{"text":" fell!","color":"white"},{"text":" 3 ","color":"gold","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=3,teamed=1..},x=620,y=20,z=620,distance=..100,tag=red] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"RED","color":"red"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=3}]"},{"text":" fell!","color":"white"},{"text":" 2 ","color":"red","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=2,teamed=1..},x=620,y=20,z=620,distance=..100,tag=red] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"RED","color":"red"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=2}]"},{"text":" fell!","color":"white"},{"text":" 1 ","color":"dark_red","bold":true},{"text":"life remaining","color":"none","bold":false}]

execute as @s[scores={Lives=7,teamed=1..},x=620,y=20,z=620,distance=..100,tag=blue] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"BLUE","color":"aqua"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=7}]"},{"text":" fell!","color":"white"},{"text":" 6 ","color":"blue","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=6,teamed=1..},x=620,y=20,z=620,distance=..100,tag=blue] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"BLUE","color":"aqua"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=6}]"},{"text":" fell!","color":"white"},{"text":" 5 ","color":"dark_aqua","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=5,teamed=1..},x=620,y=20,z=620,distance=..100,tag=blue] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"BLUE","color":"aqua"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=5}]"},{"text":" fell!","color":"white"},{"text":" 4 ","color":"dark_green","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=4,teamed=1..},x=620,y=20,z=620,distance=..100,tag=blue] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"BLUE","color":"aqua"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=4}]"},{"text":" fell!","color":"white"},{"text":" 3 ","color":"gold","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=3,teamed=1..},x=620,y=20,z=620,distance=..100,tag=blue] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"BLUE","color":"aqua"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=3}]"},{"text":" fell!","color":"white"},{"text":" 2 ","color":"red","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=2,teamed=1..},x=620,y=20,z=620,distance=..100,tag=blue] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"BLUE","color":"aqua"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=2}]"},{"text":" fell!","color":"white"},{"text":" 1 ","color":"dark_red","bold":true},{"text":"life remaining","color":"none","bold":false}]

execute as @s[scores={Lives=7,teamed=1..},x=620,y=20,z=620,distance=..100,tag=green] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"GREEN","color":"green"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=7}]"},{"text":" fell!","color":"white"},{"text":" 6 ","color":"blue","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=6,teamed=1..},x=620,y=20,z=620,distance=..100,tag=green] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"GREEN","color":"green"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=6}]"},{"text":" fell!","color":"white"},{"text":" 5 ","color":"dark_aqua","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=5,teamed=1..},x=620,y=20,z=620,distance=..100,tag=green] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"GREEN","color":"green"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=5}]"},{"text":" fell!","color":"white"},{"text":" 4 ","color":"dark_green","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=4,teamed=1..},x=620,y=20,z=620,distance=..100,tag=green] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"GREEN","color":"green"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=4}]"},{"text":" fell!","color":"white"},{"text":" 3 ","color":"gold","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=3,teamed=1..},x=620,y=20,z=620,distance=..100,tag=green] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"GREEN","color":"green"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=3}]"},{"text":" fell!","color":"white"},{"text":" 2 ","color":"red","bold":true},{"text":"lives remaining","color":"none","bold":false}]
execute as @s[scores={Lives=2,teamed=1..},x=620,y=20,z=620,distance=..100,tag=green] at @s run tellraw @a ["",{"text":"[","color":"white"},{"text":"GREEN","color":"green"},{"text":"] ","color":"white"},{"selector":"@p[scores={Y=..0,Lives=2}]"},{"text":" fell!","color":"white"},{"text":" 1 ","color":"dark_red","bold":true},{"text":"life remaining","color":"none","bold":false}]

scoreboard players remove @s[scores={Lives=-10..}] Lives 1
execute as @s[scores={Lives=1..}] at @s run summon armor_stand ~ 44 ~ {NoGravity:1,Invlunerable:1,Marker:1,Silent:1,CustomName:"{\"italic\":false,\"text\":\"SP\"}",Invisible:1}
execute as @s[scores={Lives=0..}] at @s run function game:killender
execute as @s[scores={Lives=1..}] at @s run tp @s ~ 45 ~
execute as @s[x=620,y=20,z=620,distance=..100] at @s run execute as @a[distance=..100] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 1.5
effect clear @s blindness
effect clear @s poison
tp @s @s
scoreboard players set @s fall 3
scoreboard players set @s platAm -100
execute as @s[scores={Lives=1..}] at @s positioned ~ ~-1 ~ run fill ~1 44 ~1 ~-1 44 ~-1 white_stained_glass replace air

execute as @s[scores={Lives=-8}] at @s run gamemode spectator
execute as @s[scores={Lives=-8}] at @s run scoreboard players set @s Lives 1

scoreboard players set @s[scores={Lives=1..}] Y 45

tag @s remove grave
scoreboard players set @s grave 0
