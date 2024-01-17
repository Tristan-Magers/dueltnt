#
scoreboard players add @s t2 1
tag @s[scores={t2=30..}] add boom

#
tag @e remove me
tag @s add me

scoreboard players set @s t5 0

scoreboard players operation @e[tag=gather_storm,tag=!me] object_id -= @s object_id

execute as @e[tag=gather_storm,tag=!me,scores={object_id=0}] run scoreboard players add @e[tag=me] t5 1

scoreboard players operation @e[tag=gather_storm,tag=!me] object_id += @s object_id

tag @s[scores={t5=2..},tag=!boom] add boom

team leave @s[tag=boom]

effect give @s[tag=boom] glowing 10 10 true

tag @s remove me

#
scoreboard players add @s[tag=boom] t1 1

#execute as @s[scores={t1=4}] at @s positioned ~0.5 ~0.5 ~0.5 store result score @s t4 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #game:bolt_place
#execute as @s[scores={t1=4}] at @s positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dragon_breath ~ ~ ~ 0.6 0.6 0.6 0.25 10
#execute as @s[scores={t1=4}] at @s run tellraw @a {"score":{"name":"@s","objective":"t4"}}
#execute as @s[scores={t1=3}] at @s positioned ~0.5 ~0.5 ~0.5 run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ExplosionRadius:2b,Fuse:2,ignited:1b,NoAI:1b}

execute as @s[scores={t1=4}] at @s positioned ~0.5 ~0.5 ~0.5 run summon tnt ~ ~ ~ {fuse:2}

kill @s[scores={t1=4..}]