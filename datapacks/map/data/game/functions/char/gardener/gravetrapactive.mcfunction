summon tnt ~ ~ ~ {Fuse:14}
execute as @s at @s run summon armor_stand ^ ^ ^25 {DisabledSlots:4144959,Invisible:1,NoGravity:1,NoAI:1,Invulnerable:1,Size:0,Tags:["killthisthing"]}
execute as @e[type=tnt,limit=1,sort=nearest] at @s run function game:gridpos
tp @e[type=tnt,limit=1,sort=nearest]
execute as @s at @s run tp @s ~ ~ ~ facing entity @e[limit=1,tag=killthisthing]
fill ~ ~ ~ ~ 0 ~ air
kill @e[tag=killthisthing]

#effect give @s minecraft:blindness 3
effect give @s minecraft:slowness 2 1
#effect give @s minecraft:slow_falling 2 0

scoreboard players set @s grave 12