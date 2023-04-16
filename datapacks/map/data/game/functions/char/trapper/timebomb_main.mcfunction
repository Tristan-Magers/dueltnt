execute as @e[tag=timebombpro,tag=newbomb] at @s anchored eyes run function game:cprojectile/timebombmot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:emerald"}}] at @s run function game:cprojectile/timebomb

scoreboard players add @e[tag=timebombpro] masterb 0
scoreboard players add @e[tag=timebombpro,scores={masterb=8..}] masterb 1

execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~0.0 ~0.5 air unless block ~ ~0.0 ~0.5 barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~0.0 ~-0.5 air unless block ~ ~0.0 ~-0.5 barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~0.5 ~0.0 ~ air unless block ~0.5 ~0.0 ~ barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~-0.5 ~0.0 ~ air unless block ~-0.5 ~0.0 ~ barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~0.9 ~0.5 air unless block ~ ~0.9 ~0.5 barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~0.9 ~-0.5 air unless block ~ ~0.9 ~-0.5 barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~0.5 ~0.9 ~ air unless block ~0.5 ~0.9 ~ barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~-0.5 ~0.9 ~ air unless block ~-0.5 ~0.9 ~ barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ barrier run scoreboard players add @s masterb 1

scoreboard players add @e[tag=timebombpro,nbt={OnGround:1b},scores={masterb=7}] masterb 1
scoreboard players add @e[tag=timebombpro,scores={masterb=..6}] masterb 1

execute as @e[tag=timebombpro,scores={masterb=8..}] at @s run execute as @s at @s run data merge entity @s {Motion:[0.0,0.0,0.0],Marker:1}

execute as @e[tag=timebombpro,scores={masterb=8}] at @s run particle minecraft:wax_off ~ ~1 ~ 0 0 0 15 10 force
execute as @e[tag=timebombpro,scores={masterb=8}] at @s run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 1

execute as @e[tag=timebombpro,scores={masterb=8..}] at @s run tp @s @s

item replace entity @e[tag=timebombpro,scores={masterb=8}] armor.head with minecraft:sculk_shrieker

execute as @e[tag=timebombpro,scores={masterb=1000}] at @s run function game:cprojectile/timebombboom
execute as @e[tag=timebombpro,scores={masterb=160}] at @s run particle minecraft:poof ~ ~0.5 ~ 0.2 0.2 0.2 0 10 force
execute as @e[tag=timebombpro,scores={masterb=160}] at @s run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.5
kill @e[tag=timebombpro,scores={masterb=160}]
kill @e[tag=timebombpro,scores={masterb=1060}]

scoreboard players add @e[tag=timebombpro] nogravity 1
scoreboard players set @e[tag=timebombpro,scores={nogravity=1..}] nogravity 0

execute as @e[tag=timebombpro,scores={nogravity=1..}] at @s run data merge entity @s {NoGravity:1}
execute as @e[tag=timebombpro,scores={nogravity=0}] at @s run data merge entity @s {NoGravity:0}

scoreboard players add @e[type=husk,tag=timeposmark] time_pos 1
effect give @e[type=husk,tag=timeposmark,scores={time_pos=..18}] minecraft:invisibility 10 10 true
tp @e[type=husk,tag=timeposmark,scores={time_pos=18..}] ~ ~-1000 ~

execute as @e[type=husk,tag=timeposmark] at @s run tp @s @s

scoreboard players remove @a[scores={time_pos=-100..}] time_pos 1
execute as @a[scores={time_pos=..-1}] at @s run function game:player/updatetimepos
execute as @a[scores={time_pos=0..}] at @s run particle minecraft:dolphin ~ ~1 ~ 1 1 1 0.25 1 force
execute as @a[scores={time_pos=0..}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0 1 force
execute as @a[scores={time_pos=30}] at @s run playsound minecraft:entity.enderman.hurt master @s ~ ~ ~ 1 0
execute as @a[scores={time_pos=20}] at @s run playsound minecraft:entity.enderman.hurt master @s ~ ~ ~ 1 0
execute as @a[scores={time_pos=10}] at @s run playsound minecraft:entity.enderman.hurt master @s ~ ~ ~ 1 0
execute as @a[scores={time_pos=0..}] at @s run function game:player/revtime
execute as @a[scores={time_pos=0..}] at @s run function game:player/revtime

execute as @a[scores={time_pos=19}] at @s run summon husk ~ ~100 ~ {Tags:["timeposmark"],NoAI:1,Invulnerable:1,Silent:1,NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{Count:1,id:ghast_tear}]}
effect give @a[scores={time_pos=19..}] minecraft:glowing 1 1
effect give @a[scores={time_pos=-5}] minecraft:blindness 2 1 true
#clear @a[scores={time_pos=1}] arrow
#team join Main @e[type=minecraft:husk]

execute as @a[scores={time_pos=1..19}] at @s run function game:player/timemark