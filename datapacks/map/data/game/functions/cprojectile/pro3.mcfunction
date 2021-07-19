#execute as @s[tag=short] at @s run summon minecraft:armor_stand ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","slow"],DisabledSlots:4144959}
execute as @s[tag=med,scores={chickenbow=..0}] at @s run summon minecraft:armor_stand ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","med"],DisabledSlots:4144959}
execute as @s[tag=fast,scores={chickenbow=..0}] at @s run summon minecraft:armor_stand ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","fast"],DisabledSlots:4144959}

execute as @s[tag=med,scores={chickenbow=1..}] at @s run summon minecraft:armor_stand ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","med","chickenbowsum"],DisabledSlots:4144959}
execute as @s[tag=fast,scores={chickenbow=1..}] at @s run summon minecraft:armor_stand ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","fast","chickenbowsum"],DisabledSlots:4144959}

execute as @s[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s anchored eyes run summon minecraft:tnt ^ ^ ^3 {Fuse:2}
#execute as @s[tag=short] at @s anchored eyes run summon minecraft:tnt ^ ^ ^3 {Fuse:2}

tp @e[limit=1,tag=trackshot,sort=nearest] @p

scoreboard players operation @e[limit=1,tag=trackshot,sort=nearest] tntID = @p tntID

execute as @e[limit=1,tag=trackshot,sort=nearest] at @s run tp @s ~ ~1.5 ~

clear @s arrow 1
clear @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] arrow

scoreboard players add @s bow 1
scoreboard players set @s[tag=fast] bow -104

tag @s remove short
tag @s remove med
tag @s remove fast