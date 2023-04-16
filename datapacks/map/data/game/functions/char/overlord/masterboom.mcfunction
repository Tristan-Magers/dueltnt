summon tnt ~ ~3 ~2.2 {Fuse:8,Motion:[0.0,-0.2,0.0]}
summon tnt ~ ~3 ~-2.2 {Fuse:8,Motion:[0.0,-0.2,0.0]}
summon tnt ~2.2 ~3 ~ {Fuse:8,Motion:[0.0,-0.2,0.0]}
summon tnt ~-2.2 ~3 ~ {Fuse:8,Motion:[0.0,-0.2,0.0]}
summon tnt ~1.41 ~3 ~1.41 {Fuse:8,Motion:[0.0,-0.2,0.0]}
summon tnt ~1.41 ~3 ~-1.41 {Fuse:8,Motion:[0.0,-0.2,0.0]}
summon tnt ~-1.41 ~3 ~1.41 {Fuse:8,Motion:[0.0,-0.2,0.0]}
summon tnt ~-1.41 ~3 ~-1.41 {Fuse:8,Motion:[0.0,-0.2,0.0]}

playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 0
playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 1 1.7

#tp @s @s
effect give @p minecraft:levitation 1 11
scoreboard players set @s nolev 10
