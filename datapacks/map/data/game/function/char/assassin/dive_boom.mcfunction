#
#summon armor_stand ~ ~-1.1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["kill_this"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,AttachFace:0b,Tags:["kill_this"]}]}

tag @s add divekick_end

effect give @s[scores={nolev=..10}] levitation 1 0 true
scoreboard players set @s[scores={nolev=..10}] nolev 10
tp @s @s



summon tnt ~ ~ ~ {fuse:2,NoGravity:1,Tags:["blue_tnt"]}
summon tnt ~ ~ ~ {fuse:2,NoGravity:1,Tags:["blue_tnt"]}