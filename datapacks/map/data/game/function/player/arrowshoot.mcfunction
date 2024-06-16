execute as @s[scores={class=0}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] SolBow 1
execute as @s[scores={class=2}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] VaporBow 1
execute as @s[scores={class=2,bow=..0}] at @s run tag @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] add crit
execute as @s[scores={class=2,bow=..0}] at @s run clear @s tipped_arrow
execute as @s[scores={class=2,bow=..0}] at @s run item replace entity @s hotbar.5 with arrow 2
execute as @s[scores={class=5}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] SciBow 1
execute as @s[scores={class=6}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] NecroBow 1
execute as @s[scores={class=7}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] AprBow 1
execute as @s[scores={class=8}] at @s run scoreboard players set @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] GardBow 1
execute as d1f4d3f7-02c6-40e8-a2ff-1d7b5385f5eb if entity @s[scores={class=8}] at @s run tag @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] add WoaTrail
#execute as @s[scores={class=8}] at @s run data merge entity @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] {PierceLevel:10b}
execute as @s[scores={class=10}] at @s run execute as @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] at @s run function game:char/shard/frostbow_v2
execute as @s[scores={chickenbow=1..}] at @s run tag @e[type=arrow,scores={arrowTime=1},distance=..5,limit=1] add chickenbow
scoreboard players set @a bowDetect 0