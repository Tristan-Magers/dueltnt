clear @s[scores={masterc=25..}] wooden_pickaxe
clear @s[scores={masterc=25..}] stone_pickaxe
clear @s[scores={masterc=25..}] iron_pickaxe
clear @s[scores={masterc=25..}] golden_pickaxe
clear @s[scores={masterc=25..}] diamond_pickaxe
execute as @s[scores={masterc=25..}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0
execute as @s[scores={masterc=25..}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1.2
execute as @s[scores={masterc=25..}] at @s run particle minecraft:campfire_signal_smoke ~ ~1 ~ 0.5 0.3 0.5 0 10 force
execute as @s[scores={masterc=25..}] at @s run particle minecraft:cloud ~ ~1 ~ 0.2 0.2 0.2 0.3 10 force

# hey look i condensed your 100 command thingy into 12 commands with macroes
execute if score @s masterup matches 0 run data modify storage shuba_fix masterwand.item set value "wooden_pickaxe"
execute if score @s masterup matches 1 run data modify storage shuba_fix masterwand.item set value "stone_pickaxe"
execute if score @s masterup matches 2 run data modify storage shuba_fix masterwand.item set value "iron_pickaxe"
execute if score @s masterup matches 3 run data modify storage shuba_fix masterwand.item set value "golden_pickaxe"
execute if score @s masterup matches 4.. run data modify storage shuba_fix masterwand.item set value "diamond_pickaxe"
execute if score @s masterup matches 0 run data modify storage shuba_fix masterwand.reach set value "7.8"
execute if score @s masterup matches 1 run data modify storage shuba_fix masterwand.reach set value "9.0"
execute if score @s masterup matches 2 run data modify storage shuba_fix masterwand.reach set value "10.2"
execute if score @s masterup matches 3 run data modify storage shuba_fix masterwand.reach set value "11.4"
execute if score @s masterup matches 4.. run data modify storage shuba_fix masterwand.reach set value "12.6"
execute store result storage shuba_fix masterwand.damage int 1 run scoreboard players get @s masterc
function game:char/overlord/masterwanduse_macro with storage shuba_fix masterwand
data remove storage shuba_fix masterwand

item replace entity @s[scores={masterc=25..}] hotbar.0 with blaze_rod[custom_name={"italic":false,"text":"§9On Cooldown"},lore=[{"italic":false,"color":"white","text":"Mines 3 blocks for material"},{"italic":false,"color":"white","text":"Reload: 2.5s"},{"italic":false,"color":"white","text":"Offhand/Throw to Gather"},{"italic":false,"color":"white","text":"Gather reload: 10s"}]]
