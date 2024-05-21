summon minecraft:armor_stand ~ ~ ~ {Small:1,Marker:1,Silent:1,Invulnerable:1,Tags:["groundpath"],Invisible:1,DisabledSlots:4144959}

effect give @p minecraft:speed 4 1
execute unless entity @e[scores={mode=1}] run effect give @p minecraft:jump_boost 3 3
execute if entity @e[scores={mode=1}] run effect give @p minecraft:jump_boost 3 5

tp @e[limit=1,tag=groundpath,sort=nearest] @p
execute as @e[limit=1,tag=groundpath,sort=nearest] at @s run tp @s ~ ~-1 ~ ~ 0

scoreboard players remove @s masterb 14
clear @s gold_ore 14

scoreboard players set @s slide_cooldown 110

function game:char/overlord/masterwanditems

tp @s @s

playsound minecraft:entity.firework_rocket.blast master @a[distance=..50] ~ ~ ~ 1 0
playsound minecraft:block.chest.open master @a ~ ~ ~ 1 2
playsound minecraft:block.chest.open master @a ~ ~ ~ 1 0
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0
playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 0
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
playsound minecraft:item.armor.equip_turtle master @a ~ ~ ~ 1 0

clear @s cooked_cod