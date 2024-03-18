execute if score #woa1Val .num matches 1..8 positioned ~ ~0.3 ~ run particle minecraft:trial_spawner_detection ^ ^ ^-0.3 0.1 0 0.1 0 1 force @a
execute if score #woa1Val .num matches 1..6 positioned ~ ~0.1 ~ run particle minecraft:smoke ^ ^ ^-0.3 0.1 0 0.1 0 1 force @a
execute if score #woa1Val .num matches 1..2 run particle flame ~ ~0.025 ~ 0.1 0.1 0.1 0 1 force @a
particle minecraft:dust 0.1 0.1 0.1 0.75 ~ ~0.025 ~ 0.2 0 0.2 0.5 1 force @a