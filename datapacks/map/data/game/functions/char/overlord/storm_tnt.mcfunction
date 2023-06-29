#
data merge entity @s {Motion:[0.0,0.0,0.0]}

tag @e remove me
tag @s add me

scoreboard players set @s t5 0

scoreboard players operation @e[tag=storm_tnt,tag=!me] object_id -= @s object_id

execute as @e[tag=storm_tnt,tag=!me,scores={object_id=0}] run scoreboard players add @e[tag=me] t5 1

scoreboard players operation @e[tag=storm_tnt,tag=!me] object_id += @s object_id

data merge entity @s[scores={t5=2..},tag=!boom] {Fuse:4}
tag @s[scores={t5=2..},tag=!boom] add boom

team leave @s[tag=boom]

effect give @s[tag=boom] glowing 10 10 true

tag @s remove me