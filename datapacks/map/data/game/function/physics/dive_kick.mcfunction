#
#scoreboard players set $strength delta.api.launch 11000

#effect clear @s minecraft:levitation

scoreboard players set @s timer 1
scoreboard players set @s shift_cool 42

scoreboard players set @s dive_kick 16
scoreboard players set @s[nbt={OnGround:1b}] dive_kick 11

scoreboard players add @s[nbt={OnGround:1b}] timer 8
scoreboard players remove @s[nbt={OnGround:1b}] shift_cool 8

effect give @s[nbt={OnGround:1b},scores={nolev=..8}] minecraft:levitation 1 1 false
scoreboard players set @s[nbt={OnGround:1b},scores={nolev=..8}] nolev 8

#execute at @s positioned ^ ^ ^100 run summon marker ~ ~1.6 ~ {Tags:["dive_look"]}
#execute as @s positioned ~ ~ ~ run tp @s[x_rotation=-90..10] ~ ~ ~ ~ 10
#execute at @s run tp @s ~ ~ ~ ~ ~12
#execute at @s positioned ~ ~ ~ run function delta:api/launch_looking
#execute unless entity @s[x_rotation=90] at @s run tp @s ~ ~ ~ facing entity @e[tag=dive_look,limit=1,tag=!kill_this]
#tag @s remove divekick
#tag @e[tag=dive_look] add kill_this

execute as @s at @s run playsound minecraft:entity.firework_rocket.large_blast master @a[distance=..30] ~ ~ ~ 1 1.2 0.5
execute as @s at @s run playsound minecraft:entity.firework_rocket.launch master @a[distance=..30] ~ ~ ~ 1 0.9 0.5

#tag @s add ground_boom

# New dive kick code post delta dying rip
attribute @s minecraft:gravity base set 0.015

#tp @s ~ ~10 ~
execute at @s run tp @s @s

#6 max 45 , 5 max 51, 4 max 57, 3 max 65 , 2 max 71, 1 max 82

# 4 weak 1 strong 54 ,4 weak 61, 2 weak 73

#-.21 strong, -.45 weak

#+5 to the angle

#side
execute as @s[x_rotation=-90..50] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=-90..50] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=-90..50] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=-90..50] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=-90..50] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=-90..50] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=50.001..56] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=50.001..56] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=50.001..56] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=50.001..56] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=50.001..56] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=56.001..59] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=56.001..59] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=56.001..59] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=56.001..59] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=56.001..59] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=59.001..62] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=59.001..62] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=59.001..62] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=59.001..62] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=62.001..66] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=62.001..66] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=62.001..66] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=62.001..66] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=66.001..70] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=66.001..70] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=66.001..70] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=70.001..76] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=70.001..76] rotated ~ 0 positioned ^ ^ ^-.21 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

execute at @s[x_rotation=76.001..90] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
execute at @s[x_rotation=76.001..90] rotated ~ 0 positioned ^ ^ ^-.45 run summon creeper ~ ~1.62 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

#down
#execute at @s run summon creeper ~ ~1.63 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
#execute at @s run summon creeper ~ ~1.63 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}

#execute at @s run summon creeper ~ ~1.63 ~ {ignited:1,Fuse:0,ExplosionRadius:1b,Tags:["noeffects"]}
team join noCol @e[type=creeper,distance=..3]