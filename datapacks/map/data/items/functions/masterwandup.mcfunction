scoreboard players add @s masterup 1
execute unless entity @e[scores={mode=1}] run scoreboard players remove @s masterb 24
execute if entity @e[scores={mode=1}] run scoreboard players remove @s masterb 20
execute unless entity @e[scores={mode=1}] run clear @s gold_ore 24
execute if entity @e[scores={mode=1}] run clear @s gold_ore 20

scoreboard players remove @s masterc 6
scoreboard players set @s[scores={masterc=..0}] masterc 0
scoreboard players set @s mastercT 0

function items:masterwanditems
function items:masterwanduse

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
playsound minecraft:item.bottle.fill_dragonbreath master @a ~ ~ ~ 1 2
playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 1
playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2