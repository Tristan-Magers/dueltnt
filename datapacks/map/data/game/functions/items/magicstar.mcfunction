execute as @s at @s positioned ~ ~1.4 ~ run summon item ^ ^ ^1 {NoGravity:1,PickupDelay:9999,Item:{id:"minecraft:nether_star",Count:64b}}
execute as @s at @s run summon armor_stand ~ ~1.7 ~ {Marker:1}
execute as @s at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ .4 .7
execute as @s at @s run tp @e[sort=nearest,limit=1,type=armor_stand] @p
execute as @s at @s run execute as @e[sort=nearest,limit=1,type=armor_stand] at @s run function game:setstarmot
execute as @s at @s run kill @e[sort=nearest,limit=1,type=armor_stand]
scoreboard players add @s starUse 1
clear @s nether_star

scoreboard players add @s starT 1