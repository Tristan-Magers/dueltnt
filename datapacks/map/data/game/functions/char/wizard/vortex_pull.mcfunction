team modify Main collisionRule always

tag @e remove me
tag @s add me

tag @e remove current_vortex
execute as @e[tag=vortex] if score @s tntID = @e[tag=me,limit=1] vortex_id run tag @s add current_vortex

#execute as @s at @s if entity @e[tag=vortex,tag=current_vortex,distance=..1.0] run tp @s @s
#execute as @s at @s if entity @e[tag=vortex,tag=current_vortex,distance=1.0..2] positioned ~ ~0.8 ~ facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon marker ^ ^ ^ {Tags:["kill_this","marker_turtle","p4"]}
execute as @s at @s if entity @e[tag=vortex,tag=current_vortex,distance=1.0..2.5] positioned ~ ~0.8 ~ facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon marker ^ ^ ^ {Tags:["kill_this","marker_turtle","p3"]}
execute as @s at @s if entity @e[tag=vortex,tag=current_vortex,distance=2.5..5] positioned ~ ~0.8 ~ facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon marker ^ ^ ^ {Tags:["kill_this","marker_turtle","p2"]}
execute as @s at @s if entity @e[tag=vortex,tag=current_vortex,distance=5.0..] positioned ~ ~0.8 ~ facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon marker ^ ^ ^ {Tags:["kill_this","marker_turtle","p1"]}

execute as @s store result score @s p_motion_x run data get entity @s Pos[0] 1000
execute as @s run scoreboard players operation @s p_motion_x -= @s p_motion_x_t
execute as @s store result score @s p_motion_x_t run data get entity @s Pos[0] 1000

execute as @s store result score @s p_motion_z run data get entity @s Pos[2] 1000
execute as @s run scoreboard players operation @s p_motion_z -= @s p_motion_z_t
execute as @s store result score @s p_motion_z_t run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=marker_turtle,tag=!done] DirX = @s p_motion_x
scoreboard players operation @e[tag=marker_turtle,tag=!done] DirZ = @s p_motion_z

execute as @e[tag=marker_turtle,tag=!done] at @s run function game:physics/z_move_rec
execute as @e[tag=marker_turtle,tag=!done] at @s run function game:physics/x_move_rec

execute as @e[tag=marker_turtle,tag=!done,tag=p1] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}

execute as @e[tag=marker_turtle,tag=!done,tag=p2] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}
execute as @e[tag=marker_turtle,tag=!done,tag=p2] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}

execute as @e[tag=marker_turtle,tag=!done,tag=p3] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}
execute as @e[tag=marker_turtle,tag=!done,tag=p3] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}
execute as @e[tag=marker_turtle,tag=!done,tag=p3] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}

execute as @e[tag=marker_turtle,tag=!done,tag=p4] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}
execute as @e[tag=marker_turtle,tag=!done,tag=p4] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}
execute as @e[tag=marker_turtle,tag=!done,tag=p4] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}
execute as @e[tag=marker_turtle,tag=!done,tag=p4] at @s facing entity @e[tag=vortex,tag=current_vortex,limit=1,sort=nearest] feet rotated ~ 0 run summon turtle ^ ^ ^-0.3 {NoAI:1b,Age:-999999,Tags:["kill_next"],Silent:1,Invulnerable:1}

tag @s remove me

tag @e[tag=marker_turtle,tag=!done] add done