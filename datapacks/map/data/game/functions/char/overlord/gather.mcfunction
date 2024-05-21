#
tag @s add gather

scoreboard players set @s otherlord_gather_count 0

scoreboard players set @s gather_cooldown 40

scoreboard players set @s[scores={masterc=5..}] gather_cooldown 35
scoreboard players set @s[scores={masterc=10..}] gather_cooldown 30
scoreboard players set @s[scores={masterc=15..}] gather_cooldown 25
scoreboard players set @s[scores={masterc=20..}] gather_cooldown 20

scoreboard players set @s gather_cooldown_T 0

scoreboard players set @s gather_amount 0

playsound minecraft:ui.loom.take_result master @a
playsound minecraft:item.crossbow.quick_charge_3 master @a
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 0.2 0