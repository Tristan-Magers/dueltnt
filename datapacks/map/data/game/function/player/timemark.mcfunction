execute store result entity @e[tag=timeposmark,limit=1,sort=nearest] Pos[0] double .001 run scoreboard players get @s time_pos_x.39
execute store result entity @e[tag=timeposmark,limit=1,sort=nearest] Pos[1] double .001 run scoreboard players get @s time_pos_y.39
execute store result entity @e[tag=timeposmark,limit=1,sort=nearest] Pos[2] double .001 run scoreboard players get @s time_pos_z.39

execute store result entity @e[tag=timeposmark,limit=1,sort=nearest] Rotation[0] float .001 run scoreboard players get @s time_pos_r1.39
#execute store result entity @e[tag=timeposmark,limit=1,sort=nearest] Rotation[1] float .001 run scoreboard players get @s time_pos_r2.39