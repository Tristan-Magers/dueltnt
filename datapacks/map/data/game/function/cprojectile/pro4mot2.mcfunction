scoreboard players add @s vel 450

execute store result entity @s acceleration_power double .00014 run scoreboard players get @s vel

execute store result entity @s Motion[0] double .0015 run scoreboard players get @s DirX
execute store result entity @s Motion[2] double .0015 run scoreboard players get @s DirZ
execute store result entity @s Motion[1] double .0015 run scoreboard players get @s DirY