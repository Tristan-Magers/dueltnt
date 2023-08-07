scoreboard players remove #rubixRot particle 1
execute if score #rubixRot particle matches ..-1 run particle scrape ^ ^ ^-.6 0.01 0 0.01 0 1 force @a
execute if score #rubixRot particle matches 0.. rotated ~7.5 ~ run function game:player/particle/halo