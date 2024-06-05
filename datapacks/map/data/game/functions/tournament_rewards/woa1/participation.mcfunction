# Designed and implemented by TheViralMelon

#> Particle awarded to WoA1 participants (Squectangle, Zephyrean_, Shuba_Shuba, MightyJosh11, rubix_yi, TheViralMelon, ChainsawNinja, R4dace, Aiden_Monster, flcwing, Rule0, dillpickle09, wertyghty2, catwithabomb898, betaRadiation)
execute if score #woa1Val .num matches 1..8 positioned ~ ~0.3 ~ run particle minecraft:trial_spawner_detection ^ ^ ^-0.3 0.1 0 0.1 0 1 force @a
execute if score #woa1Val .num matches 1..6 positioned ~ ~0.1 ~ run particle minecraft:smoke ^ ^ ^-0.3 0.1 0 0.1 0 1 force @a
execute if score #woa1Val .num matches 1..2 run particle flame ~ ~0.025 ~ 0.1 0.1 0.1 0 1 force @a
particle minecraft:dust{color:[0.1,0.1,0.1],scale:0.75} ~ ~0.025 ~ 0.2 0 0.2 0.5 1 force @a