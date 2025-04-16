

execute as @s[scores={class=4}] at @s run effect give @p blindness 1 0 true
execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4},tag=!pig] at @s run summon lightning_bolt
execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4}] at @s run function game:char/wizard/creeptest
execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4},tag=!hascreep] at @s run summon creeper ~ ~.5 ~ {Invulnerable:1,powered:1,ignited:1,Fuse:9999,Attributes:[{Name:"followRange",Base:0},{Name:"movementSpeed",Base:0}],Tags:["wizcreep"]}
scoreboard players add @e[type=minecraft:creeper] tntID 0
execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4},tag=!hascreep] at @s run scoreboard players operation @e[limit=1,sort=nearest,type=minecraft:creeper,scores={tntID=0}] tntID = @s tntID
execute as @s[x=600,y=60,z=600,distance=..100,scores={class=4},tag=!hascreep] at @s run clear @s gray_dye
scoreboard players set @s[scores={class=5}] GoPortal 1
execute as @s[scores={class=3}] at @s run playsound minecraft:entity.tnt.primed master @a
execute as @s[scores={class=3}] at @s run summon tnt ~ ~.5 ~ {fuse:5}
execute as @s[scores={class=3}] at @s run effect give @p speed 1 1
execute as @s[scores={class=2}] at @s run effect give @s levitation 1 8
execute as @s[scores={class=2}] at @s run scoreboard players set @s nolev 17
execute as @s[scores={class=2}] at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 0.5 1
execute as @s[scores={class=2}] at @s run playsound minecraft:entity.breeze.land master @a ~ ~ ~ 1 0
#execute as @s[scores={class=2}] at @s run scoreboard players set @s ghostshift 20

execute as @s[scores={class=1}] at @s run tag @s add divekick
#execute as @s[scores={class=1}] at @s run effect give @s jump_boost 3 4
#execute as @s[scores={class=1}] at @s run scoreboard players set @p Invis 20

execute as @s[scores={class=0},distance=..100] at @s run summon creeper ~ ~.05 ~ {ignited:1,Fuse:3,Activeeffect:[{Id:14,Amplifier:1,Duration:999999,ShowParticles:0b}]}
execute as @s[scores={class=0},distance=..100] at @s run team join noCol @e[type=creeper,distance=..3]

#execute as @s[scores={class=0},distance=..100] at @s run summon minecraft:fireball ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d],ExplosionPower:3}
#execute as @s[scores={class=0},distance=..100] at @s run summon minecraft:slime ~ ~-0.9 ~ {NoAI:1,Size:0,Invulnerable:1,Tags:["killthis"]}

#execute as @s[scores={class=0}] at @s run summon minecraft:marker ~ ~ ~ {Tags:["soldiershift"]}

scoreboard players set @s timer 1

scoreboard players add @s overlordsc 1

#xp add @s[scores={class=0,timer=1}] 17 levels
#xp add @s[scores={class=1,timer=1}] 102 levels
#xp add @s[scores={class=2,timer=1}] 75 levels
#xp add @s[scores={class=3,timer=1}] 80 levels
#xp add @s[scores={class=4,timer=1}] 155 levels
#xp add @s[scores={class=6,timer=1}] 160 levels
#xp add @s[scores={class=7,timer=1}] 160 levels
#xp add @s[scores={class=9,timer=1}] -1 levels

scoreboard players remove @s[scores={class=0,timer=1}] soldier_shifts 1

scoreboard players set @s[scores={class=0,timer=1}] shift_cool 17
scoreboard players set @s[scores={class=1,timer=1}] shift_cool 42
scoreboard players set @s[scores={class=2,timer=1}] shift_cool 76
scoreboard players set @s[scores={class=3,timer=1}] shift_cool 32
scoreboard players set @s[scores={class=4,timer=1}] shift_cool 155
scoreboard players set @s[scores={class=6,timer=1}] shift_cool 160
scoreboard players set @s[scores={class=7,timer=1}] shift_cool 50
scoreboard players remove @s[scores={class=9,timer=1}] shift_cool 1

#reaper
execute as @s[scores={class=6}] at @s run effect give @s slow_falling 1 1 true

#echo
execute as @s[scores={class=7}] at @s run effect give @s slow_falling 3 1
execute as @s[scores={class=7}] at @s run effect give @s speed 3 3

execute as @s[scores={class=7}] at @s run playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 1 1.1

# Unstable mass shift (removed)
#execute as @s[scores={class=9}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:{"italic":false,"text":"ground2"}}
#execute as @s[scores={class=9,Y=4..}] at @s run fill ~-1 ~-3 ~-1 ~1 ~-1 ~1 purple_wool replace air
#execute as @s[scores={class=9,Y=..3}] at @s run fill ~-1 0 ~-1 ~1 ~-1 ~1 purple_wool replace air
#execute as @s[scores={class=9}] at @s run tp @s @s

execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run summon marker ~ ~ ~ {Tags:["overlord_org_tp"]}
execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run tp @e[limit=1,type=marker,tag=overlord_org_tp,tag=!kill] @s

execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run function game:char/overlord/relocate
execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run function game:char/overlord/restore_land

execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run summon marker ~ ~ ~ {Tags:["overlord_new_tp"]}
execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s as @e[limit=1,type=marker,tag=overlord_new_tp,tag=!kill] store result score @s Y run data get entity @s Pos[1]

execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run scoreboard players operation @s t1 = @e[limit=1,type=marker,tag=overlord_new_tp,tag=!kill] Y
execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run scoreboard players operation @s t1 -= @s Y

execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run effect give @s levitation 20 15
execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run scoreboard players set @s nolev 17
#execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9,t1=0..}] at @s run say test
#execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9,t1=0..}] at @s run scoreboard players set @s nolev 10

execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run tp @s @e[limit=1,type=marker,tag=overlord_org_tp,tag=!kill]
execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run function game:char/overlord/raise_y

execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run tag @e[type=marker,tag=overlord_org_tp] add kill
execute as @s[gamemode=adventure,distance=..100,x=620,y=20,z=620,scores={class=9}] at @s run tag @e[type=marker,tag=overlord_new_tp] add kill

execute unless entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {fuse:23}
execute unless entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {fuse:23}

execute as @s[scores={class=8}] at @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 0.8 1.1

execute as @s[scores={class=9}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 1 0
execute as @s[scores={class=9}] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ .5 1.5
execute as @s[scores={class=9}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1.5
execute as @s[scores={class=9}] at @s run playsound minecraft:block.beehive.shear master @a ~ ~ ~ 1 0
execute as @s[scores={class=9}] at @s run playsound minecraft:block.beehive.shear master @a ~ ~ ~ 1 1
execute as @s[scores={class=9}] at @s run playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 1
execute as @s[scores={class=9}] at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 1 0
execute as @s[scores={class=9}] at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 1 1

#execute as @s[scores={class=9}] at @s run summon tnt ~ ~ ~ {fuse:21}
#execute as @s[scores={class=9}] at @s run summon tnt ~ ~ ~ {fuse:21}
#execute as @s[scores={class=9}] at @s run execute as @e[type=tnt,limit=2,sort=nearest] at @s run function game:gridpos

#scoreboard players add @a[scores={class=9}] masterb 3
#execute as @s[scores={class=9}] at @s run function game:char/overlord/masterwandget

execute if entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {fuse:16}
execute if entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {fuse:16}
#execute if entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run summon tnt ~ ~ ~ {fuse:16}

execute if entity @e[scores={mode=1}] run execute as @s[scores={class=8}] at @s run effect give @s slow_falling 2 2

#xp add @s[scores={class=8,timer=1}] 45 levels
scoreboard players set @s[scores={class=8,timer=1}] shift_cool 50

execute as @s[scores={class=10}] at @s positioned ~ ~.36 ~ run summon tnt ^ ^ ^-.36 {NoGravity:1,fuse:4}
execute as @s[scores={class=10}] at @s positioned ~ ~.36 ~ run summon tnt ^ ^ ^-.36 {NoGravity:1,fuse:4}

#execute as @s[scores={class=10}] at @s run effect give @s levitation 1 1

#execute as @s[scores={class=10}] at @s positioned ~ ~.36 ~ run summon tnt ^ ^ ^-.36 {fuse:3}
#execute as @s[scores={class=10}] at @s positioned ~ ~.36 ~ run summon tnt ^ ^ ^-.36 {fuse:3}

execute as @s[scores={class=10}] at @s run effect give @s levitation 1 3

#xp add @s[scores={class=10,timer=1}] 90 levels
scoreboard players set @s[scores={class=10,timer=1}] shift_cool 32

#reaper shift
execute as @s[scores={class=6}] at @s run summon minecraft:tnt ~ ~ ~ {fuse:10,NoGravity:1}
execute as @s[scores={class=6}] at @s run summon minecraft:tnt ~ ~ ~ {fuse:10,NoGravity:1}
execute as @s[scores={class=6}] at @s run summon minecraft:tnt ~ ~ ~ {fuse:0,NoGravity:1}
execute as @s[scores={class=6}] at @s run summon minecraft:tnt ~ ~ ~ {fuse:0,NoGravity:1}

execute as @s[scores={class=9,overlordsc=1..}] at @s run function game:player/class_team
execute as @s[scores={class=9,overlordsc=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Restore World","color":"gray","bold":true},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={class=9,overlordsc=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Restore World","color":"gray","bold":true},{"text":" (0 Remaining) ","color":"white"}]
execute as @s[scores={class=9,overlordsc=3}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Restore World","color":"gray","bold":true},{"text":" (0 Remaining) ","color":"white"}]
execute as @s[scores={class=9,overlordsc=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Restore World","color":"gray","bold":true},{"text":" (0 Remaining) ","color":"white"}]

scoreboard players set @s coyote_frames -1