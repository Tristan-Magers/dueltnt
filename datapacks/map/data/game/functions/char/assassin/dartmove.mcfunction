tp @s ^ ^ ^.15
particle minecraft:crit ~ ~1.5 ~ 0 0 0 0 1 force
scoreboard players remove @s laserDummy 1
scoreboard players remove @s dart_steps 1
execute as @s at @s positioned ~ ~1.6 ~ run function game:physics/inblock
execute at @s if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..2] run tag @s remove in

execute as @s[tag=in,scores={laserDummy=1..,dart_steps=0..}] at @s run function game:char/assassin/dartmove

execute as @s[tag=!in,tag=!boom] at @s run tp @s ^ ^ ^-.3
execute as @s[tag=!in,tag=!boom] at @s run particle minecraft:crit ~ ~1.4 ~ 1 1 1 0 25 force

execute as @s[tag=!in,tag=!boom] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5
execute as @s[tag=!in,tag=!boom] at @s run playsound minecraft:entity.sheep.shear master @a ~ ~ ~ 1 1.9
execute as @s[tag=!in,tag=!boom] at @s run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2
execute as @s[tag=!in,tag=!boom] at @s run playsound minecraft:block.basalt.place master @a ~ ~ ~ 1 0.9
execute as @s[tag=!in,tag=!boom] at @s run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 2

execute as @s[tag=!in,tag=!boom] at @s run summon armor_stand ~ ~1.5 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",Fuse:9,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
#execute as @s[tag=!in,tag=!boom] at @s run summon armor_stand ~ ~1.4 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",Fuse:10,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}

#execute as @s[tag=!in,tag=!boom] at @s run summon tnt ~ ~1.5 ~ {Fuse:10,NoGravity:1,Tags:["blue_tnt"],Glowing:1}
#execute as @s[tag=!in,tag=!boom] at @s run summon tnt ~ ~1.4 ~ {Fuse:10,NoGravity:1,Tags:["blue_tnt"],Glowing:1}
tag @s[tag=!in] add boom
kill @s[tag=!in]
kill @s[scores={laserDummy=1000..}]