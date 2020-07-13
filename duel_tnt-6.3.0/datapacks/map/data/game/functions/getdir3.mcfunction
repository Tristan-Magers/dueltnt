summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Small:1,Marker:0,Invulnerable:1,Tags:["temptrack"],DisabledSlots:4144959}

execute as @e[limit=1,tag=temptrack] at @s run function game:getdir2

scoreboard players operation @s DirX = @e[limit=1,tag=temptrack] DirX
scoreboard players operation @s DirY = @e[limit=1,tag=temptrack] DirY
scoreboard players operation @s DirZ = @e[limit=1,tag=temptrack] DirZ

kill @e[limit=1,tag=temptrack]