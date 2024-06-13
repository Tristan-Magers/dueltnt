# Implemented by TheViralMelon
# Designed by Zephyrean_, Squectangle and Shuba_Shuba

#> Particle awarded to WoA1 Singles 1st - 3rd place (Zephyrean_, Squectangle, and Shuba_Shuba)
execute if entity @s[tag=!woa1SinglesPurple] run particle minecraft:dust_color_transition{from_color:[0.2,0.8,0.8],scale:3,to_color:[1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=!woa1SinglesPurple] run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.3 0.3 0.3 0 3 force @a
execute if entity @s[tag=!woa1SinglesPurple] run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0 3 force @a

execute if entity @s[tag=woa1SinglesPurple] run particle minecraft:dust_color_transition{from_color:[0.8,0.2,0.8],scale:3,to_color:[1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=woa1SinglesPurple] run particle minecraft:portal ~ ~1 ~ 0.3 0.3 0.3 0 3 force @a
execute if entity @s[tag=woa1SinglesPurple] run particle minecraft:witch ~ ~1 ~ 0.2 0 0.2 0 3 force @a

execute if entity @s[tag=!woa1SinglesPurple,scores={woa1SinglesTimer=0}] run particle minecraft:scrape ~ ~1 ~ 0.6 0.6 0.6 0 35 force @a
execute if entity @s[tag=woa1SinglesPurple,scores={woa1SinglesTimer=0}] run particle minecraft:dragon_breath ~ ~1 ~ 0.6 0.6 0.6 0 35 force @a

scoreboard players remove @s woa1SinglesTimer 1