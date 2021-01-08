execute as @s[scores={laserDummy=10..}] at @s run tp @s @s
execute as @s[scores={laserDummy=10..}] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1.2 3

execute as @s[scores={laserDummy=30..}] at @s run clear @s rabbit_hide

execute as @s[scores={laserDummy=30..}] at @s run effect give @p minecraft:glowing 1 0 true

execute as @s[scores={laserDummy=30}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 .7
execute as @s[scores={laserDummy=30}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 0
execute as @s[scores={laserDummy=30}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:block.conduit.deactivate master @a

execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 2
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 2
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0
execute as @s[scores={laserDummy=17}] at @s run execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.2

execute as @s[scores={laserDummy=30}] at @s run summon armor_stand ~ ~ ~ {Tags:["wbeam"]}
execute as @s[scores={laserDummy=30}] at @s run tp @e[tag=wbeam] @s
execute as @s[scores={laserDummy=30}] at @s run scoreboard players set @e[tag=wbeam] laserDummy 300
execute as @s[scores={laserDummy=30}] at @s run execute as @e[tag=wbeam] at @s run function items:whitebeam

execute as @s[scores={laserDummy=17}] at @s run tag @e remove beamhit
tag @s[scores={laserDummy=17}] add nohit
execute as @s[scores={laserDummy=17}] at @s run summon armor_stand ~ ~ ~ {Tags:["wbeam"]}
execute as @s[scores={laserDummy=17}] at @s run tp @e[tag=wbeam] @s
execute as @s[scores={laserDummy=17}] at @s run scoreboard players set @e[tag=wbeam] laserDummy 300
execute as @s[scores={laserDummy=17}] at @s run tag @a[gamemode=spectator] add spectest
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=wbeam] at @s run function items:redbeam
execute as @s[scores={laserDummy=17}] at @s run tag @a[tag=spectest] remove spectest
tag @s[scores={laserDummy=17}] remove nohit

execute as @s[scores={laserDummy=17}] at @s run execute as @a[tag=beamhit] at @s run function items:beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=zombie] at @s run function items:beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=skeleton] at @s run function items:beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=creeper] at @s run function items:beamhit
execute as @s[scores={laserDummy=17}] at @s run execute as @e[tag=beamhit,type=slime] at @s run function items:beamhit

replaceitem entity @s[scores={laserDummy=-230}] hotbar.4 rabbit_hide{display:{Name:"{\"italic\":false,\"text\":\"§4Laser §r: Right-click\"}"}}

scoreboard players remove @s laserDummy 1