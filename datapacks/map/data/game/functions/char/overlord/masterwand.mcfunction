tag @s remove mw
tag @s remove mw1
tag @s remove mw2
tag @s remove end

tag @s remove wand_success

execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^0.2 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^0.6 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^1.0 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^1.4 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^1.8 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^2.2 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^2.6 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^3.0 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^3.4 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^3.8 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^4.2 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^4.6 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^5.0 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^5.4 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^5.8 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^6.2 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^6.6 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^7.0 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^7.4 run function game:char/overlord/masterwandtest
execute as @s[tag=!end] at @s anchored eyes positioned ^ ^ ^7.8 run function game:char/overlord/masterwandtest


execute as @s[tag=!end,scores={masterup=1..}] at @s anchored eyes positioned ^ ^ ^8.2 run function game:char/overlord/masterwandtest
execute as @s[tag=!end,scores={masterup=1..}] at @s anchored eyes positioned ^ ^ ^8.6 run function game:char/overlord/masterwandtest
execute as @s[tag=!end,scores={masterup=1..}] at @s anchored eyes positioned ^ ^ ^9.0 run function game:char/overlord/masterwandtest

execute as @s[tag=!end,scores={masterup=2..}] at @s anchored eyes positioned ^ ^ ^9.4 run function game:char/overlord/masterwandtest
execute as @s[tag=!end,scores={masterup=2..}] at @s anchored eyes positioned ^ ^ ^9.8 run function game:char/overlord/masterwandtest
execute as @s[tag=!end,scores={masterup=2..}] at @s anchored eyes positioned ^ ^ ^10.2 run function game:char/overlord/masterwandtest

execute as @s[tag=!end,scores={masterup=3..}] at @s anchored eyes positioned ^ ^ ^10.6 run function game:char/overlord/masterwandtest
execute as @s[tag=!end,scores={masterup=3..}] at @s anchored eyes positioned ^ ^ ^11.0 run function game:char/overlord/masterwandtest
execute as @s[tag=!end,scores={masterup=3..}] at @s anchored eyes positioned ^ ^ ^11.4 run function game:char/overlord/masterwandtest

execute as @s[tag=!end,scores={masterup=4..}] at @s anchored eyes positioned ^ ^ ^11.8 run function game:char/overlord/masterwandtest
execute as @s[tag=!end,scores={masterup=4..}] at @s anchored eyes positioned ^ ^ ^12.2 run function game:char/overlord/masterwandtest
execute as @s[tag=!end,scores={masterup=4..}] at @s anchored eyes positioned ^ ^ ^12.6 run function game:char/overlord/masterwandtest

#execute as @s[tag=!end,scores={masterup=4..}] at @s anchored eyes positioned ^ ^ ^13.0 run function game:char/overlord/masterwandtest
#execute as @s[tag=!end,scores={masterup=4..}] at @s anchored eyes positioned ^ ^ ^13.4 run function game:char/overlord/masterwandtest
#execute as @s[tag=!end,scores={masterup=4..}] at @s anchored eyes positioned ^ ^ ^13.8 run function game:char/overlord/masterwandtest
#execute as @s[tag=!end,scores={masterup=4..}] at @s anchored eyes positioned ^ ^ ^14.2 run function game:char/overlord/masterwandtest

tag @s[tag=mw1] add mw
tag @s[tag=mw2] add mw

scoreboard players add @s[tag=wand_success] masterc 1
item replace entity @s[scores={masterc=25..}] hotbar.0 with blaze_rod
clear @s[scores={masterc=25..}] wooden_shovel
clear @s[scores={masterc=25..}] stone_shovel
clear @s[scores={masterc=25..}] iron_shovel
clear @s[scores={masterc=25..}] golden_shovel
clear @s[scores={masterc=25..}] diamond_shovel

execute as @s[tag=wand_success] run function game:char/overlord/masterwanduse
tag @s remove wand_success

execute as @s[tag=mw] at @s run playsound minecraft:block.bamboo.place master @a ~ ~ ~ 1 0
execute as @s[tag=mw] at @s run playsound minecraft:block.bamboo.place master @a ~ ~ ~ 1 .7
execute as @s[tag=mw] at @s run playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 0
execute as @s[tag=mw] at @s run playsound minecraft:block.beehive.exit master @a ~ ~ ~ 1 1
execute as @s[tag=!mw] at @s run playsound minecraft:block.gravel.place master @a ~ ~ ~ 1 1.2
execute as @s[tag=!mw] at @s run playsound minecraft:block.bamboo.place master @a ~ ~ ~ 1 .7