execute as @s[scores={pig=1..}] at @s run tp @e[limit=1,type=pig] @p

effect give @s[scores={pig=0},x=600,y=40,z=600,distance=..100] slowness 2 2 true
effect give @s[scores={pig=20..},x=600,y=40,z=600,distance=..100] speed 2 2 true
effect give @s[scores={pig=20..},x=600,y=40,z=600,distance=..100] invisibility 2 4 true
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-119},tag=pig_place] run function game:char/wizard/give/pig
scoreboard players set @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=..-119},tag=pig_place] pig -130
tag @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=..-119},tag=pig_place] remove pig_place
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-129}] run function game:char/wizard/give/pig
effect clear @s[scores={pig=20..}] jump_boost
effect give @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1}] jump_boost 300 2 true
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1},gamemode=adventure] at @s run summon tnt ~ ~ ~ {fuse:0}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1},gamemode=adventure] at @s run summon tnt ~ ~ ~ {fuse:0}
execute as @s[scores={pig=10}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ .2 1.1
execute as @s[scores={pig=20}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ .4 1.3
execute as @s[scores={pig=30}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ .6 1.5
execute as @s[scores={pig=40}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ .8 1.7
execute as @s[scores={pig=50}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ 1 2
scoreboard players set @s[scores={pig=20..}] Invis 60
