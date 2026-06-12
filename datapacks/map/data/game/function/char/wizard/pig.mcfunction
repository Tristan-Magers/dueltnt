execute as @s[scores={pig=1..}] at @s run tp @e[limit=1,type=pig] @p

effect give @s[scores={pig=0},x=600,y=40,z=600,distance=..100] slowness 2 2 true
effect give @s[scores={pig=20..},x=600,y=40,z=600,distance=..100] speed 2 2 true
effect give @s[scores={pig=20..},x=600,y=40,z=600,distance=..100] invisibility 2 4 true
#scoreboard players remove @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-1}] pig_count 1
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-90,pig_count=6..}] run function game:char/wizard/give/pig {"amount":6}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-90,pig_count=5}] run function game:char/wizard/give/pig {"amount":5}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-90,pig_count=4}] run function game:char/wizard/give/pig {"amount":4}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-90,pig_count=3}] run function game:char/wizard/give/pig {"amount":3}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-90,pig_count=2}] run function game:char/wizard/give/pig {"amount":2}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-90,pig_count=1}] run function game:char/wizard/give/pig {"amount":1}
#scoreboard players set @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=..-90},tag=pig_place] pig -101
tag @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=..-100},tag=pig_place] remove pig_place
#execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=-100}] run function game:char/wizard/give/pig {"amount":3}
effect clear @s[scores={pig=20..}] jump_boost
effect give @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1}] jump_boost 300 2 true
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1},gamemode=adventure,tag=!big_pig] at @s run summon tnt ~ ~ ~ {fuse:0}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1},gamemode=adventure,tag=!big_pig] at @s run summon tnt ~ ~ ~ {fuse:0}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1},gamemode=adventure,tag=big_pig] at @s rotated ~ 0 positioned ^ ^0.1 ^-0.1 run summon tnt ~ ~ ~ {fuse:0}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1},gamemode=adventure,tag=big_pig] at @s rotated ~ 0 positioned ^ ^ ^-0.2 run summon tnt ~ ~ ~ {fuse:0}
execute as @s[x=620,y=20,z=620,distance=..100,scores={class=4,pig=1},gamemode=adventure,tag=big_pig] at @s rotated ~ 0 positioned ^ ^0.2 ^-0.2 run summon tnt ~ ~ ~ {fuse:0}
tag @s[scores={pig=1}] remove big_pig
execute as @s[scores={pig=10}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ .2 1.1
execute as @s[scores={pig=20}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ .4 1.3
execute as @s[scores={pig=30}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ .6 1.5
execute as @s[scores={pig=40}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ .8 1.7
execute as @s[scores={pig=50}] at @s run playsound entity.arrow.hit_player master @a[x=600,y=40,z=600,distance=..100] ~ ~ ~ 1 2
scoreboard players set @s[scores={pig=20..}] Invis 60