execute as @s[scores={ballArrowT=1}] at @s run playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 0
execute as @s[scores={ballArrowT=1}] at @s run playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 1 1.4
execute as @s[scores={ballArrowT=1}] at @s run playsound minecraft:item.armor.equip_turtle master @a ~ ~ ~ 1 0.6
execute as @s[scores={ballArrowT=1}] at @s run playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 0.6 0.8
execute as @s[scores={ballArrowT=1}] at @s run playsound minecraft:item.honey_bottle.drink master @a ~ ~ ~ 1 2
execute as @s[scores={ballArrowT=1}] at @s run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1 2
execute as @s[scores={ballArrowT=2..}] at @s run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute as @s[scores={ballArrowT=1}] at @s run particle minecraft:poof ~ ~ ~ 0.3 0.3 0.3 0.3 10 force