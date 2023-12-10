summon tnt ~ ~30 ~ {fuse:43}
summon tnt ~ ~30 ~ {fuse:43}
summon tnt ~ ~30 ~ {fuse:43}

particle minecraft:end_rod ~ ~ ~ .1 .1 .1 .18 20 force
particle minecraft:end_rod ~ ~ ~ .1 .1 .1 .02 10 force

execute as @s at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.8
execute as @s at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ .2 2
execute as @s at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2

kill @s