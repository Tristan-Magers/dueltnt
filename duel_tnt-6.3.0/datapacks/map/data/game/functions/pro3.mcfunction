#execute as @s[tag=short] at @s run summon minecraft:armor_stand ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","slow"],DisabledSlots:4144959}
execute as @s[tag=med] at @s run summon minecraft:armor_stand ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","med"],DisabledSlots:4144959}
execute as @s[tag=fast] at @s run summon minecraft:armor_stand ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","fast"],DisabledSlots:4144959}

execute as @s[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s anchored eyes run summon minecraft:tnt ^ ^ ^3 {Fuse:2}
#execute as @s[tag=short] at @s anchored eyes run summon minecraft:tnt ^ ^ ^3 {Fuse:2}

tp @e[limit=1,tag=trackshot,sort=nearest] @p

scoreboard players operation @e[limit=1,tag=trackshot,sort=nearest] tntID = @p tntID

execute as @e[limit=1,tag=trackshot,sort=nearest] at @s run tp @s ~ ~1.5 ~

clear @s arrow 1
clear @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] arrow

scoreboard players add bow 1

tag @s remove short
tag @s remove med
tag @s remove fast