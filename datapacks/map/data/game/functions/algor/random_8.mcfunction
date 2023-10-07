tag @s add random_dummy

scoreboard players set @s random 0
scoreboard players add @e[limit=1,tag=random_dummy,sort=random] random 1
scoreboard players add @e[limit=1,tag=random_dummy,sort=random] random 2
scoreboard players add @e[limit=1,tag=random_dummy,sort=random] random 4

tag @s remove random_dummy