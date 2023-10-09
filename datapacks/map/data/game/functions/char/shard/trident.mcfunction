tag @s add old
scoreboard players add @s tntID 0

execute as @e[nbt={inGround:1b}] run tag @s add boom
#execute as @e[type=minecraft:trident] 
#execute as @e[type=minecraft:trident] at @sif entity @e[distance=..1.5,type=zombie] run tag @s add boom
#execute as @e[type=minecraft:trident] at @s positioned ~ ~-1 ~ if entity @e[distance=..1.5,type=zombie] run tag @s add boom

#scoreboard players operation @a tntID -= @s tntID

tag @e remove target_trident
tag @e[type=zombie] add target_trident
tag @a add target_trident
#tag @a[scores={tntID=0}] remove target_trident

#scoreboard players operation @a tntID += @s tntID

scoreboard players set @s t1 0

execute store result entity @s[nbt={LeftOwner:1b}] Owner[0] double 1 run scoreboard players get @s t1

execute as @s[nbt={DealtDamage:1b}] run tag @s add boom

execute store result score @s t1 run data get entity @s Motion[1] 1000
execute store result score @s t2 run data get entity @s Motion[0] 1000
execute store result score @s t3 run data get entity @s Motion[2] 1000
execute as @s[scores={t1=-500..500,t2=-1500..1500,t3=-1500..1500}] at @s if entity @e[distance=..2.6,tag=target_trident] run tag @s add boom
execute as @s[scores={t1=-500..500,t2=-1500..1500,t3=-1500..1500}] at @s if entity @e[distance=..2.6,tag=target_trident] run tag @s add boom
execute as @s[scores={t1=-500..500,t2=-1500..1500,t3=-1500..1500}] at @s positioned ~ ~1 ~ if entity @e[distance=..2.9,tag=target_trident] run tag @s add boom
execute as @s[scores={t1=-500..500,t2=-1500..1500,t3=-1500..1500}] at @s positioned ~ ~-1 ~ if entity @e[distance=..2.9,tag=target_trident] run tag @s add boom
execute as @s[scores={t1=-500..500,t2=-1500..1500,t3=-1500..1500}] at @s positioned ~ ~-2 ~ if entity @e[distance=..2.9,tag=target_trident] run tag @s add boom

execute as @s[tag=boom] at @s run summon slime ~ ~-2.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Size:9,Tags:["kill_next"],active_effects:[{Id:14,Amplifier:1b,Duration:10,ShowParticles:0b}]}
execute as @s[tag=boom] at @s run summon slime ~ ~-2.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Size:9,Tags:["kill_next"],active_effects:[{Id:14,Amplifier:1b,Duration:10,ShowParticles:0b}]}
execute as @s[tag=boom] at @s run summon slime ~ ~-2.9 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Size:10,Tags:["kill_next"],active_effects:[{Id:14,Amplifier:1b,Duration:10,ShowParticles:0b}]}
execute as @s[tag=boom] at @s run summon slime ~ ~-2.9 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Size:10,Tags:["kill_next"],active_effects:[{Id:14,Amplifier:1b,Duration:10,ShowParticles:0b}]}
execute as @s[tag=boom] at @s run summon slime ~ ~-3.2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Size:11,Tags:["kill_next"],active_effects:[{Id:14,Amplifier:1b,Duration:10,ShowParticles:0b}]}
execute as @s[tag=boom] at @s run summon slime ~ ~-3.2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Size:11,Tags:["kill_next"],active_effects:[{Id:14,Amplifier:1b,Duration:10,ShowParticles:0b}]}

execute as @s[tag=boom] at @s run particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1 force

execute as @s[tag=boom] at @s run particle minecraft:item minecraft:lapis_block ~ ~0.5 ~ 0 0 0 0.6 20 force
execute as @s[tag=boom] at @s run playsound minecraft:item.trident.hit_ground master @a[distance=..16] ~ ~ ~ 1 1 0.5
execute as @s[tag=boom] at @s run playsound minecraft:item.trident.return master @a[distance=..16] ~ ~ ~ 1 1.1 0.5

execute as @s[tag=boom] at @s run summon block_display ~-2.2 ~-3.2 ~-2.2 {NoGravity:1b,Silent:1b,Tags:["kill_next"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4.4f,4.4f,4.4f]},block_state:{Name:"minecraft:white_stained_glass"}}
execute as @s[tag=boom] at @s run summon block_display ~-2.7 ~-3.2 ~-2.7 {NoGravity:1b,Silent:1b,Tags:["kill_next"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.4f,5.4f,5.4f]},block_state:{Name:"minecraft:white_stained_glass"}}
execute as @s[tag=boom] at @s run summon block_display ~-3.2 ~-3.2 ~-3.2 {NoGravity:1b,Silent:1b,Tags:["kill_next"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6.4f,6.4f,6.4f]},block_state:{Name:"minecraft:white_stained_glass"}}

execute as @s[tag=boom] at @s run tag @e remove target_trident_close
execute as @s[tag=boom] at @s run tag @e[tag=target_trident,limit=1,sort=nearest] add target_trident_close

execute as @s[tag=boom] at @s positioned ~ ~-3 ~ if entity @e[distance=..2.7,tag=target_trident_close] run summon tnt ~ ~3 ~ {Fuse:3,Motion:[0.0,-2.7,0.0],Tags:["frost"]}
execute as @s[tag=boom] at @s positioned ~ ~-3 ~ unless entity @e[distance=..2.7,tag=target_trident_close] run summon tnt ~ ~3 ~ {Fuse:3,Motion:[0.0,-0.8,0.0],Tags:["frost"]}

execute as @s[tag=boom] at @s run kill @s