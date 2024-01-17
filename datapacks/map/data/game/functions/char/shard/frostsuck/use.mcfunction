tag @s add frostuser

function game:char/shard/frostsuck/frostscan

clear @s[gamemode=adventure] lime_dye
scoreboard players set @s frostsT 240

tp @s @s
tp @s ~ ~.3 ~

summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["gameae","frostplat"]}
scoreboard players operation @e[tag=frostplat,limit=1,sort=nearest] objID = @s tntID

tag @s remove frostuser

playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 2
playsound minecraft:ui.toast.out master @a ~ ~ ~ 1 2
playsound minecraft:ui.toast.out master @a ~ ~ ~ 1 0
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 0.7 2
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 0.4 1