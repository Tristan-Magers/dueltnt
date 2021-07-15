tag @s add frostuser

function game:frostsuck/frostscan

clear @s[gamemode=adventure] lime_dye
scoreboard players set @s frostsT 160

tp @s @s
tp @s ~ ~.3 ~

summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["gameae","frostplat"]}
scoreboard players operation @e[tag=frostplat,limit=1,sort=nearest] objID = @s tntID

tag @s remove frostuser