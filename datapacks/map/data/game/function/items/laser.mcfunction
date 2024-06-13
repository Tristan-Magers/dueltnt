execute as @s[scores={laserDummy=30}] at @s run summon marker ~ ~ ~ {Tags:["stay_put"]}
execute as @s[scores={laserDummy=30}] at @s run tp @e[type=marker,tag=stay_put,limit=1] @s
execute as @s[scores={laserDummy=30}] at @s run scoreboard players operation @e[type=marker,tag=stay_put,limit=1,sort=nearest] tntID = @s tntID
execute at @a[scores={laserDummy=10..}] as @e[type=marker,tag=stay_put] rotated as @s if score @s tntID = @p tntID run tp @s ~ ~ ~
execute as @a[scores={laserDummy=10..}] run tp @s @s
execute as @s[scores={laserDummy=10..}] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1.2 3

execute as @s[scores={laserDummy=30..}] at @s run clear @s rabbit_hide

execute as @s[scores={laserDummy=30..}] at @s run effect give @p minecraft:glowing 1 0 true

execute as @s[scores={laserDummy=30}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 .7
execute as @s[scores={laserDummy=30}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:item.trident.riptide_1 master @s ~ ~ ~ 1 0
execute as @s[scores={laserDummy=30}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:block.conduit.deactivate master @s

execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:block.gravel.break master @s ~ ~ ~ 1 2
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.twinkle master @s[distance=..50] ~ ~ ~ 1 2
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.blast master @s[distance=..50] ~ ~ ~ 1 0
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.launch master @s[distance=..50] ~ ~ ~ 1 1.2

execute as @s[scores={laserDummy=30}] at @s run summon marker ~ ~ ~ {Tags:["wbeam"]}
execute as @s[scores={laserDummy=30}] at @s run tp @e[tag=wbeam,limit=1] @s
execute as @s[scores={laserDummy=30}] at @s run scoreboard players set @e[tag=wbeam] laserDummy 300
execute as @s[scores={laserDummy=30}] at @s run execute as @e[tag=wbeam] at @s run function game:items/whitebeam

execute as @s[scores={laserDummy=17}] at @s run tag @e remove beamhit
tag @s[scores={laserDummy=17}] add nohit
execute as @s[scores={laserDummy=17}] at @s run summon marker ~ ~ ~ {Tags:["wbeam"]}
execute as @s[scores={laserDummy=17}] at @s run tp @e[tag=wbeam,limit=1] @e[tag=stay_put,limit=1,sort=nearest]
execute as @s[scores={laserDummy=17}] at @s run scoreboard players set @e[tag=wbeam] laserDummy 300
execute as @s[scores={laserDummy=17}] at @s run tag @a[gamemode=spectator] add spectest
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=wbeam] run function game:items/redbeam
execute as @s[scores={laserDummy=17}] at @s run tag @a[tag=spectest] remove spectest
tag @s[scores={laserDummy=17}] remove nohit

execute as @s[scores={laserDummy=17}] at @s run execute as @a[tag=beamhit] at @s run function game:items/beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=zombie] at @s run function game:items/beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=skeleton] at @s run function game:items/beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=creeper] at @s run function game:items/beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=ghast] at @s run function game:items/beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=chicken] at @s run function game:items/beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=slime] at @s run function game:items/beamhit
execute as @s[scores={laserDummy=17}] at @s run damage @e[tag=beamhit,type=wither,limit=1] 200 minecraft:arrow
execute as @s[scores={laserDummy=10}] at @s run kill @e[type=marker,tag=stay_put,limit=1,sort=nearest]

execute as @s[scores={laserDummy=-230}] at @s run function game:player/class_team
execute as @s[scores={laserDummy=-228}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Reloaded ","color":"white"},{"text":"Laser","color":"red","bold":true}]
execute as @s[scores={laserDummy=-230}] run function game:char/mads/give/laser

scoreboard players remove @s laserDummy 1
