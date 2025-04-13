clear @a[nbt=!{Inventory:[{id:"minecraft:potion",Slot:8b}]},x=620,y=20,z=620,distance=3..100] potion
item replace entity @a[nbt=!{Inventory:[{id:"minecraft:potion",Slot:8b}]},x=620,y=20,z=620,distance=3..100] hotbar.8 with minecraft:potion[potion_contents={custom_color:16711918},custom_name={"italic":false,"text":"§dLeave game §r: Right-click"}]

tag @s remove hasbow
tag @s remove haspup

tag @s[nbt={Inventory:[{id:"minecraft:blaze_powder"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:apple"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:cookie"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:bread"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:potato"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:porkchop"}]}] add haspup
tag @s[nbt={Inventory:[{id:"minecraft:cooked_porkchop"}]}] add haspup

tag @s[tag=haspup] add hasbow

tag @s[nbt={Inventory:[{id:"minecraft:bow"}]}] add hasbow
tag @s[nbt={Inventory:[{id:"minecraft:fishing_rod"}]}] add hasbow
scoreboard players add @a[x=600,y=60,z=600,distance=3..95,tag=!hasbow] nobow 1
scoreboard players set @a[x=600,y=60,z=600,distance=3..95,tag=hasbow] nobow 0

tag @s add arrow
tag @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] remove arrow
tag @s[nbt={Inventory:[{id:"minecraft:tipped_arrow"}]}] remove arrow
clear @s[tag=arrow] arrow
clear @s[tag=arrow] tipped_arrow
scoreboard players set @s[tag=arrow,scores={bow=..0}] bow 1

clear @s[scores={nobow=3..}] bow

execute as @s[scores={class=0}] at @s run function game:char/soldier/correct
execute as @s[scores={class=1}] at @s run function game:char/assassin/correct
execute as @s[scores={class=2}] at @s run function game:char/ghost/correct
execute as @s[scores={class=3}] at @s run function game:char/trapper/correct
execute as @s[scores={class=4}] at @s run function game:char/wizard/correct
execute as @s[scores={class=5}] at @s run function game:char/mads/correct
execute as @s[scores={class=6}] at @s run function game:char/reaper/correct
execute as @s[scores={class=7}] at @s run function game:char/echo/correct
execute as @s[scores={class=8}] at @s run function game:char/gardener/correct
execute as @s[scores={class=9}] at @s run function game:char/overlord/correct
execute as @s[scores={class=10}] at @s run function game:char/shard/correct

execute as @s[scores={nobow=3..,class=8}] run function game:char/gardener/give/bow