scoreboard players add @s WheelCounter 1

particle minecraft:enchanted_hit ~ ~.05 ~ 0 0 0 0 1 force @a

scoreboard players set #wheelLength particle 6
execute if score @s WheelCounter matches 1 rotated ~ 0 positioned ^ ^ ^1 run function game:player/particle/wheel_line
execute if score @s WheelCounter matches 2 rotated ~ 45 positioned ^ ^ ^1 run function game:player/particle/wheel_line
execute if score @s WheelCounter matches 3 rotated ~ 90 positioned ^ ^ ^1 run function game:player/particle/wheel_line
execute if score @s WheelCounter matches 4 rotated ~ 135 positioned ^ ^ ^1 run function game:player/particle/wheel_line
execute if score @s WheelCounter matches 5 rotated ~ 180 positioned ^ ^ ^1 run function game:player/particle/wheel_line
execute if score @s WheelCounter matches 6 rotated ~ 225 positioned ^ ^ ^1 run function game:player/particle/wheel_line
execute if score @s WheelCounter matches 7 rotated ~ 270 positioned ^ ^ ^1 run function game:player/particle/wheel_line
execute if score @s WheelCounter matches 8 rotated ~ 315 positioned ^ ^ ^1 run function game:player/particle/wheel_line

execute if score @s WheelCounter matches 8.. run scoreboard players set @s WheelCounter 0