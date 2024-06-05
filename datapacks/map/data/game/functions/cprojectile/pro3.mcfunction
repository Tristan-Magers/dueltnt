#
execute as @s[tag=med] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 0.6 1.1
execute as @s[tag=fast] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 0.6 1.2
execute as @s[tag=fast] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 0.6 0.5

#execute as @s[tag=short] at @s run summon minecraft:marker ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","slow"],DisabledSlots:4144959}
execute as @s[tag=med,scores={chickenbow=..0}] at @s run summon minecraft:marker ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","med"],DisabledSlots:4144959}
execute as @s[tag=fast,scores={chickenbow=..0}] at @s run summon minecraft:marker ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","fast"],DisabledSlots:4144959}

execute as @s[tag=med,scores={chickenbow=1..}] at @s run summon minecraft:marker ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","med","chickenbowsum"],DisabledSlots:4144959}

execute as @s[tag=fast,scores={chickenbow=1..}] at @s run summon minecraft:marker ~ ~ ~ {PierceLevel:10,NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["trackshot","newbomb","fast","chickenbowsum"],DisabledSlots:4144959}

execute as @s[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s anchored eyes run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.5
execute as @s[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s anchored eyes run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 1.15
execute as @s[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s anchored eyes run summon minecraft:tnt ^ ^ ^3 {fuse:2}
#execute as @s[tag=short] at @s anchored eyes run summon minecraft:tnt ^ ^ ^3 {fuse:2}

tp @e[limit=1,tag=trackshot,sort=nearest] @p[gamemode=adventure,scores={class=3}]

scoreboard players operation @e[limit=1,tag=trackshot,sort=nearest] tntID = @p[gamemode=adventure,scores={class=3}] tntID

execute as @e[limit=1,tag=trackshot,sort=nearest] at @s run tp @s ~ ~1.5 ~

clear @s arrow 1
clear @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] arrow

scoreboard players add @s bow 1
scoreboard players set @s[tag=fast] bow -103

tag @s remove short
tag @s remove med
tag @s remove fast