# execute unless score #goobTick particle matches ..-1 run tellraw @a {"score":{"objective":"particle","name":"#goobTick"}}
scoreboard players remove #goobTick particle 1
execute if score #goobTick particle matches ..-1 run particle dust 1.0 1.0 1.0 0.5 ~ ~ ~ 0.1 0 0.1 0 2 force @a
execute if score #goobTick particle matches ..-1 run particle electric_spark ^ ^ ^0.8 0 0 0 0 1 force @a
execute if score #goobTick particle matches ..-1 run particle minecraft:dust 1.0 0.7 0.0 1 ^ ^ ^0.8 0.065 0.065 0.065 0 3 force @a
# execute if score #goobTick particle matches ..-1 run particle wax_on ^ ^ ^0.7 0 0 0 0 1 force @a

execute if score #goobTick particle matches ..-1 run particle electric_spark ^ ^ ^-0.8 0 0 0 0 1 force @a
execute if score #goobTick particle matches ..-1 run particle minecraft:dust 1.0 0.7 0.0 1 ^ ^ ^-0.8 0.065 0.065 0.065 0 3 force @a
# execute if score #goobTick particle matches ..-1 run particle wax_on ^ ^ ^-0.7 0 0 0 0 1 force @a

execute rotated ~4 0 if score #goobTick particle matches 0.. run function game:player/particle/goomb