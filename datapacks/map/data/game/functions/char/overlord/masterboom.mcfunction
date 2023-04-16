execute unless entity @e[scores={mode=1}] run summon tnt ~ ~3 ~2.6 {Fuse:14}
execute unless entity @e[scores={mode=1}] run summon tnt ~ ~3 ~-2.6 {Fuse:14}
execute unless entity @e[scores={mode=1}] run summon tnt ~2.6 ~3 ~ {Fuse:14}
execute unless entity @e[scores={mode=1}] run summon tnt ~-2.6 ~3 ~ {Fuse:14}
execute unless entity @e[scores={mode=1}] run summon tnt ~1.83 ~3 ~1.83 {Fuse:14}
execute unless entity @e[scores={mode=1}] run summon tnt ~1.83 ~3 ~-1.83 {Fuse:14}
execute unless entity @e[scores={mode=1}] run summon tnt ~-1.83 ~3 ~1.83 {Fuse:14}
execute unless entity @e[scores={mode=1}] run summon tnt ~-1.83 ~3 ~-1.83 {Fuse:14}

execute if entity @e[scores={mode=1}] run summon tnt ~ ~1.5 ~2.6 {Fuse:11}
execute if entity @e[scores={mode=1}] run summon tnt ~ ~1.5 ~-2.6 {Fuse:11}
execute if entity @e[scores={mode=1}] run summon tnt ~2.6 ~1.5 ~ {Fuse:11}
execute if entity @e[scores={mode=1}] run summon tnt ~-2.6 ~1.5 ~ {Fuse:11}
execute if entity @e[scores={mode=1}] run summon tnt ~1.83 ~1.5 ~1.83 {Fuse:11}
execute if entity @e[scores={mode=1}] run summon tnt ~1.83 ~1.5 ~-1.83 {Fuse:11}
execute if entity @e[scores={mode=1}] run summon tnt ~-1.83 ~1.5 ~1.83 {Fuse:11}
execute if entity @e[scores={mode=1}] run summon tnt ~-1.83 ~1.5 ~-1.83 {Fuse:11}

playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 0
playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 1 1.5

playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 1 1.7


effect give @p minecraft:levitation 1 2