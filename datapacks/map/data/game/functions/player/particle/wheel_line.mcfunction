execute if score #wheelLength particle matches 6 run particle witch ~ ~ ~
execute unless score #wheelLength particle matches 6 run particle electric_spark ~ ~ ~
scoreboard players remove #wheelLength particle 1
execute unless score #wheelLength particle matches ..-1 positioned ^ ^ ^-0.15 run function game:player/particle/wheel_line