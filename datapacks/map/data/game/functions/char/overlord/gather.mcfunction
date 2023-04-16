#
tag @s add gather

scoreboard players set @s otherlord_gather_count 0

scoreboard players set @s gather_cooldown 10
scoreboard players set @s gather_cooldown_T 0

playsound minecraft:ui.loom.take_result master @a
playsound minecraft:item.crossbow.quick_charge_3 master @a
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 0.2 0