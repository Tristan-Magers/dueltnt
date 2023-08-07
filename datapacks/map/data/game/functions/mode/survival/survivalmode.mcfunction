scoreboard players add @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] survival 1
execute run execute as @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,limit=1] at @s run function game:mode/survival/survival

execute as @e[type=wither] run scoreboard players remove @e[tag=Map] withercount 1
execute if entity @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,limit=1] as @e[tag=Map,scores={withercount=1..}] run advancement grant @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] only survival:wither
scoreboard players set @e[tag=Map] withercount 0
execute as @e[type=wither] run scoreboard players add @e[tag=Map] withercount 1

execute as @e[type=ghast] run scoreboard players remove @e[tag=Map] ghastcount 1
execute if entity @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure,limit=1] as @e[tag=Map,scores={ghastcount=1..}] run scoreboard players add @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] ghastcount 1
scoreboard players set @e[tag=Map] ghastcount 0
execute as @e[type=ghast] run scoreboard players add @e[tag=Map] ghastcount 1

execute run scoreboard players add @e[type=chicken,x=600,y=60,z=600,distance=3..100] survival 1
execute run execute as @e[type=chicken,x=600,y=60,z=600,distance=3..100] at @s run function game:mode/survival/survivalchicken

execute run execute as @e[type=ghast,x=580,y=0,z=580,dx=100,dy=15,dz=100] at @s run tp @s ~ ~.08 ~
execute run execute as @e[type=ghast,x=580,y=56,z=580,dx=100,dy=55,dz=50] at @s run tp @s ~ ~-.08 ~

execute run execute as @e[type=wither,x=580,y=0,z=580,dx=100,dy=15,dz=100] at @s run tp @s ~ ~.08 ~
execute run execute as @e[type=wither,x=580,y=30,z=580,dx=100,dy=55,dz=100] at @s run tp @s ~ ~-.1 ~

execute if entity @a[scores={survival=1000}] run title @a title {"text":"HEADS UP!","color":"dark_red","bold":true,"underlined":true}
execute if entity @a[scores={survival=1400}] run title @a title {"text":"HEADS UP!","color":"dark_red","bold":true,"underlined":true}
execute if entity @a[scores={survival=2200}] run title @a title {"text":"HEADS UP! D:","color":"dark_red","bold":true,"underlined":true}

execute if entity @a[scores={survival=2700}] run title @a title {"text":"Ok Ok","color":"dark_green","bold":true,"underlined":true,"font":"fancy"}
execute if entity @a[scores={survival=2730}] run title @a title {"text":"Not Bad","color":"dark_green","bold":true,"underlined":true,"font":"fancy"}
execute if entity @a[scores={survival=2760}] run advancement grant @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] only survival:round2
execute if entity @a[scores={survival=2760}] run title @a title {"text":"Round 2","color":"dark_green","bold":true,"underlined":true,"font":"fancy"}
execute if entity @a[scores={survival=2790}] run title @a title {"text":"","color":"dark_green","bold":true,"underlined":true}
execute if entity @a[scores={survival=2790}] run scoreboard players set @e[tag=Map] withercount 0
execute if entity @a[scores={survival=2790}] run scoreboard players set @e[tag=Map] ghastcount 0
execute if entity @a[scores={survival=2790}] run kill @e[type=wither]
execute if entity @a[scores={survival=2790}] run kill @e[type=chicken]
execute if entity @a[scores={survival=2790}] run kill @e[type=ghast]
execute if entity @a[scores={survival=2790}] run kill @e[type=zombie]
execute if entity @a[scores={survival=2790}] run kill @e[type=skeleton]

advancement grant @a[scores={ghastcount=13..}] only survival:ghasts