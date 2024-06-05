# Implemented by TheViralMelon
# Designed by TheViralMelon

#> Cosmetic awarded to TheViralMelon for WoA1 Doubles 1st place
scoreboard players set #woa1PJumpTimer .num 12
# Lingering particle trail is done via game:char/reaper/items.mcfunction

#> Basic Particles
particle minecraft:large_smoke ~ ~ ~ 0.2 0.1 0.2 0.2 25 force @a
particle minecraft:squid_ink ~ ~ ~ 0.4 0.1 0.4 0 10 force @a
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0 3 force @a

#> Lava Circle
function game:tournament_rewards/woa1/lava_ring

#> SFX
playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 1.5
playsound minecraft:entity.ghast.death master @s ~ ~ ~ 2 2
playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 2 1.25
playsound minecraft:item.trident.riptide_2 master @s ~ ~ ~ 2 1.5