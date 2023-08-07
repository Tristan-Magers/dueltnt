#
tag @s add kill_this

execute if block 502 11 504 lever[powered=true] if block 502 12 504 lever[powered=true] if block 502 13 504 lever[powered=true] run summon wither ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Invul:650,Rotation:[90F,10F],Tags:["lab_result"]}
execute if block 502 11 504 lever[powered=true] if block 502 12 504 lever[powered=true] if block 502 13 504 lever[powered=false] run summon vex ~ ~0.1 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Rotation:[90F,10F],Tags:["lab_result"]}
execute if block 502 11 504 lever[powered=true] if block 502 12 504 lever[powered=false] if block 502 13 504 lever[powered=true] run summon ravager ~1.7 ~-0.8 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Invul:650,Rotation:[90F,10F],Tags:["lab_result"]}
execute if block 502 11 504 lever[powered=true] if block 502 12 504 lever[powered=false] if block 502 13 504 lever[powered=false] run summon minecraft:strider ~ ~-0.5 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Invul:650,Rotation:[90F,10F],Tags:["lab_result"]}
execute if block 502 11 504 lever[powered=false] if block 502 12 504 lever[powered=true] if block 502 13 504 lever[powered=true] run summon sniffer ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Age:-1000,Rotation:[90F,10F],Tags:["lab_result"]}
execute if block 502 11 504 lever[powered=false] if block 502 12 504 lever[powered=true] if block 502 13 504 lever[powered=false] run summon glow_squid ~ ~0.5 ~ {NoGravity:1,Silent:1b,Invulnerable:1b,NoAI:1b,Type:"bamboo",Rotation:[90F,10F],Tags:["lab_result"]}
execute if block 502 11 504 lever[powered=false] if block 502 12 504 lever[powered=false] if block 502 13 504 lever[powered=true] run summon axolotl ~ ~0.5 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Rotation:[90F,10F],Tags:["lab_result"]}
execute if block 502 11 504 lever[powered=false] if block 502 12 504 lever[powered=false] if block 502 13 504 lever[powered=false] run summon tropical_fish ~ ~0.5 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Rotation:[90F,10F],Tags:["lab_result"]}

particle minecraft:explosion ~ ~0.5 ~ 0.5 0.5 0.5 0 15 force

playsound minecraft:entity.zombie.infect master @a[x=500,y=11,z=502,distance=..8] ~ ~ ~ 1 0.5
playsound minecraft:entity.chicken.hurt master @a[x=500,y=11,z=502,distance=..8]