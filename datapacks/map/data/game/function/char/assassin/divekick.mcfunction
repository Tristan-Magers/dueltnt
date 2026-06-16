scoreboard players set @s timer 1
scoreboard players set @s shift_cool 42

scoreboard players set @s dive_kick 16

attribute @s minecraft:gravity base set 0.08
execute as @s[x_rotation=-90..20] run attribute @s minecraft:gravity base set 0.06
execute as @s[x_rotation=65..90] run attribute @s minecraft:gravity base set 0.1

attribute @s minecraft:explosion_knockback_resistance base set 0.3
attribute @s[nbt={OnGround:1b}] minecraft:explosion_knockback_resistance base set 0.35
scoreboard players set @s ex_res 2

scoreboard players set @s dive_kick 16
scoreboard players set @s[nbt={OnGround:1b}] dive_kick 11

scoreboard players add @s[nbt={OnGround:1b}] timer 8
scoreboard players remove @s[nbt={OnGround:1b}] shift_cool 8

effect give @s[nbt={OnGround:1b},scores={nolev=..8}] minecraft:levitation 1 3 false
scoreboard players set @s[nbt={OnGround:1b},scores={nolev=..8}] nolev 8

tag @s remove grounddash
tag @s[nbt={OnGround:1b}] add grounddash

#tp @s ~ ~10 ~
execute at @s run tp @s @s

#6 max 45 , 5 max 51, 4 max 57, 3 max 65 , 2 max 71, 1 max 82

# 4 weak 1 strong 54 ,4 weak 61, 2 weak 73

#-.21 strong, -.45 weak

#+5 to the angle

#side
execute at @s[x_rotation=-90..30,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=-90..30,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=-90..30,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=-90..30,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=-90..30,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute as @s[x_rotation=30.001..60,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=30.001..60,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=30.001..60,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=30.001..60,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute as @s[x_rotation=60.001..90,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=60.001..90,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=60.001..90,tag=grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

#execute as @s[x_rotation=-90..50] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=-90..50,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=-90..45,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=-90..45,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=-90..45,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=-90..45,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=45.001..51,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=45.001..51,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=45.001..51,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=45.001..51,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=45.001..51,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=51.001..54,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=51.001..54,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=51.001..54,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=51.001..54,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=51.001..54,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute as @s[x_rotation=54.001..57,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=54.001..57,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=54.001..57,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=54.001..57,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute as @s[x_rotation=57.001..61,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=57.001..61,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=57.001..61,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=57.001..61,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute as @s[x_rotation=61.001..65,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=61.001..65,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=61.001..65,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute as @s[x_rotation=65.001..71,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=65.001..71,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute as @s[x_rotation=71.001..73,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[x_rotation=71.001..73,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute as @s[x_rotation=73.001..,tag=!grounddash] at @s rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.27 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

#down
execute as @s[tag=!grounddash] at @s run summon creeper ~ ~1.28 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute as @s[tag=!grounddash] at @s run summon creeper ~ ~1.28 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
#execute at @s run summon creeper ~ ~1.63 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
team join noCol @e[type=creeper,distance=..3]