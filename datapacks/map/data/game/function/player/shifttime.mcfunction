scoreboard players set @s[gamemode=adventure,scores={timer=19..,class=0}] timer 0
scoreboard players set @s[gamemode=adventure,scores={timer=44..,class=1}] timer 0
scoreboard players set @s[gamemode=adventure,scores={timer=76..,class=2}] timer 0
scoreboard players set @s[gamemode=adventure,scores={timer=32..,class=3}] timer 0

execute as @s[gamemode=adventure,scores={timer=1..7,class=4,Y=..57},distance=..100,x=620,y=20,z=620] at @s run tp @p ~ ~2 ~

scoreboard players set @s[gamemode=adventure,scores={timer=150..,class=4}] timer 0

execute as @s[gamemode=adventure,distance=..100,scores={timer=1..5,class=4},x=620,y=20,z=620] at @s run effect give @p levitation 1 0 true
execute as @s[gamemode=adventure,distance=..100,scores={timer=12,class=4},x=620,y=20,z=620] at @s run effect clear @p levitation
execute as @s[gamemode=adventure,distance=5..100,scores={timer=9,class=4},x=600,y=60,z=600] at @s run effect clear @p blindness
#execute as @a[gamemode=adventure,distance=..100,scores={timer=17,class=2},x=620,y=20,z=620] at @s run effect clear @p levitation
execute as @s[gamemode=adventure,distance=..100,scores={timer=15,class=10},x=620,y=20,z=620] at @s run effect clear @p levitation

scoreboard players set @s[gamemode=adventure,scores={timer=8..,class=5}] timer 0

effect give @s[gamemode=adventure,scores={class=4,timer=1},distance=..100,x=620,y=20,z=620] slowness 2 2
effect give @s[gamemode=adventure,scores={class=6,timer=2},distance=..100,x=620,y=20,z=620] slowness 2 3 true

execute unless entity @e[scores={mode=1}] run scoreboard players set @s[gamemode=adventure,scores={timer=160..,class=6}] timer 0
execute if entity @e[scores={mode=1}] run scoreboard players set @s[gamemode=adventure,scores={timer=140..,class=6}] timer 0

#execute unless entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={timer=160..,class=7}] timer 0
execute unless entity @e[scores={mode=1}] run scoreboard players set @s[gamemode=adventure,scores={timer=50..,class=7}] timer 0
execute unless entity @e[scores={mode=1}] run scoreboard players set @s[gamemode=adventure,scores={timer=30..,class=9}] timer 0
execute if entity @e[scores={mode=1}] run scoreboard players set @s[gamemode=adventure,scores={timer=30..,class=9}] timer 0
scoreboard players set @s[gamemode=adventure,scores={timer=50..,class=8}] timer 0

scoreboard players set @s[gamemode=adventure,scores={timer=32..,class=10}] timer 0