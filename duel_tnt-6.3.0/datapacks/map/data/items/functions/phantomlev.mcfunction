effect give @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] glowing 5 0
effect give @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] blindness 6 0
effect give @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] levitation 5 3
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @s ~ ~ ~ 1 2
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:block.barrel.open master @s ~ ~ ~ .4 0
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ .5 1
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:entity.phantom.bite master @s ~ ~ ~ .5 .7
execute as @a[x=600,y=60,z=600,distance=3..100] at @s run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 1 0
tellraw @a [{"selector":"@s"},{"text":" used ","color":"gray","bold":false},{"text":"Phantom Float","color":"dark_purple","bold":true}]
clear @s blaze_powder 