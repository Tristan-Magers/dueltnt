execute as @s[scores={class=4}] at @s run effect give @p blindness 1 0 true
execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4},tag=!pig] at @s run summon lightning_bolt
execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4}] at @s run summon creeper ~ ~.5 ~ {Invulnerable:1,powered:1,Fuse:9999,Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0}],Tags:["wizcreep"]}
execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4}] at @s run scoreboard players operation @e[limit=1,sort=nearest,type=minecraft:creeper] tntID = @s tntID
execute if entity @e[scores={mode=1}] run execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4}] at @s run summon creeper ~ ~.5 ~ {Invulnerable:1,powered:1,Fuse:9999,Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0}]}
execute if entity @e[scores={mode=1}] run execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4}] at @s run scoreboard players operation @e[limit=2,sort=nearest,type=minecraft:creeper] tntID = @s tntID
scoreboard players set @s[scores={class=5}] GoPortal 1
execute as @s[scores={class=3}] at @s run playsound minecraft:entity.tnt.primed master @p
execute as @s[scores={class=3}] at @s run summon tnt ~ ~.5 ~ {Fuse:5}
execute as @s[scores={class=3}] at @s run effect give @p speed 1 1
execute as @s[scores={class=2}] at @s run effect give @s levitation 1 8
execute as @s[scores={class=2}] at @s run scoreboard players set @s nolev 17
#execute as @s[scores={class=2}] at @s run scoreboard players set @s ghostshift 20

execute unless entity @e[scores={mode=1}] run execute as @s[scores={class=1}] at @s run effect give @s jump_boost 3 4
execute unless entity @e[scores={mode=1}] run execute as @s[scores={class=1}] at @s run scoreboard players set @p Invis 20
execute if entity @e[scores={mode=1}] run execute as @s[scores={class=1}] at @s run effect give @s jump_boost 3 5
execute if entity @e[scores={mode=1}] run execute as @s[scores={class=1}] at @s run scoreboard players set @p Invis 35

execute as @s[scores={class=0},distance=..100] at @s run summon creeper ~ ~.05 ~ {ignited:1,Fuse:3,Activeeffect:[{Id:14,Amplifier:1,Duration:999999,ShowParticles:0b}]}
execute as @s[scores={class=0},distance=..100] at @s run team join noCol @e[type=creeper,distance=..3]

#execute as @s[scores={class=0},distance=..100] at @s run summon minecraft:fireball ~ ~ ~ {Motion:[0.0,-1.0,0.0],ExplosionPower:3}
#execute as @s[scores={class=0},distance=..100] at @s run summon minecraft:slime ~ ~-0.9 ~ {NoAI:1,Size:0,Invulnerable:1,Tags:["killthis"]}

#execute as @s[scores={class=0}] at @s run summon minecraft:marker ~ ~ ~ {Tags:["soldiershift"]}

scoreboard players set @s timer 1

scoreboard players add @s overlordsc 1

execute unless entity @e[scores={mode=1}] run xp add @s[scores={class=0,timer=1}] 17 levels
execute unless entity @e[scores={mode=1}] run xp add @s[scores={class=1,timer=1}] 88 levels
execute unless entity @e[scores={mode=1}] run xp add @s[scores={class=2,timer=1}] 73 levels
execute unless entity @e[scores={mode=1}] run xp add @s[scores={class=3,timer=1}] 80 levels
execute unless entity @e[scores={mode=1}] run xp add @s[scores={class=4,timer=1}] 135 levels
execute unless entity @e[scores={mode=1}] run xp add @s[scores={class=6,timer=1}] 160 levels
execute unless entity @e[scores={mode=1}] run xp add @s[scores={class=7,timer=1}] 160 levels
execute unless entity @e[scores={mode=1}] run xp add @s[scores={class=9,timer=1}] -1 levels

execute if entity @e[scores={mode=1}] run xp add @s[scores={class=0,timer=1}] 12 levels
execute if entity @e[scores={mode=1}] run xp add @s[scores={class=1,timer=1}] 40 levels
execute if entity @e[scores={mode=1}] run xp add @s[scores={class=2,timer=1}] 75 levels
execute if entity @e[scores={mode=1}] run xp add @s[scores={class=3,timer=1}] 30 levels
execute if entity @e[scores={mode=1}] run xp add @s[scores={class=4,timer=1}] 100 levels
execute if entity @e[scores={mode=1}] run xp add @s[scores={class=6,timer=1}] 140 levels
execute if entity @e[scores={mode=1}] run xp add @s[scores={class=7,timer=1}] 130 levels
execute if entity @e[scores={mode=1}] run xp add @s[scores={class=9,timer=1}] -1 levels

#reaper
execute as @s[scores={class=6}] at @s run effect give @s slow_falling 1 1 true

#echo
execute as @s[scores={class=7}] at @s run effect give @s slow_falling 3 1
execute as @s[scores={class=7}] at @s run effect give @s speed 3 3

execute as @s[scores={class=9}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:"{\"italic\":false,\"text\":\"ground2\"}"}
execute as @s[scores={class=9,Y=4..}] at @s run fill ~-1 ~-3 ~-1 ~1 ~-1 ~1 purple_wool replace air
execute as @s[scores={class=9,Y=..3}] at @s run fill ~-1 0 ~-1 ~1 ~-1 ~1 purple_wool replace air
execute as @s[scores={class=9}] at @s run tp @s @s

execute unless entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {Fuse:23}
execute unless entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {Fuse:23}

execute as @s[scores={class=9}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0
execute as @s[scores={class=9}] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ .5 1.5
execute as @s[scores={class=9}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1.5
execute as @s[scores={class=9}] at @s run playsound minecraft:block.beehive.shear master @a ~ ~ ~ 1 0
execute as @s[scores={class=9}] at @s run playsound minecraft:block.beehive.shear master @a ~ ~ ~ 1 1
execute as @s[scores={class=9}] at @s run playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 1
execute as @s[scores={class=9}] at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 1 0
execute as @s[scores={class=9}] at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 1 1

#execute as @s[scores={class=9}] at @s run summon tnt ~ ~ ~ {Fuse:21}
#execute as @s[scores={class=9}] at @s run summon tnt ~ ~ ~ {Fuse:21}
#execute as @s[scores={class=9}] at @s run execute as @e[type=tnt,limit=2,sort=nearest] at @s run function game:gridpos

#scoreboard players add @a[scores={class=9}] masterb 3
#execute as @s[scores={class=9}] at @s run function game:char/overlord/masterwandget

execute if entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {Fuse:16}
execute if entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {Fuse:16}
#execute if entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {Fuse:16}

execute if entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run effect give @s slow_falling 2 2

xp add @s[scores={class=8,timer=1}] 45 levels

execute as @s[scores={class=10}] at @s positioned ~ ~.36 ~ run summon tnt ^ ^ ^-.36 {Fuse:3}
execute as @s[scores={class=10}] at @s positioned ~ ~.36 ~ run summon tnt ^ ^ ^-.36 {Fuse:3}

execute as @s[scores={class=10}] at @s run effect give @s levitation 1 3

xp add @s[scores={class=10,timer=1}] 60 levels

#reaper shift
execute as @s[scores={class=6}] at @s run summon minecraft:tnt ~ ~ ~ {Fuse:10,NoGravity:1}
execute as @s[scores={class=6}] at @s run summon minecraft:tnt ~ ~ ~ {Fuse:10,NoGravity:1}
execute as @s[scores={class=6}] at @s run summon minecraft:tnt ~ ~ ~ {Fuse:0,NoGravity:1}
execute as @s[scores={class=6}] at @s run summon minecraft:tnt ~ ~ ~ {Fuse:0,NoGravity:1}

execute as @a[scores={class=9,overlordsc=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Unstable Mass","color":"gray","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
execute as @a[scores={class=9,overlordsc=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Unstable Mass","color":"gray","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @a[scores={class=9,overlordsc=3}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Unstable Mass","color":"gray","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @a[scores={class=9,overlordsc=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Unstable Mass","color":"gray","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]