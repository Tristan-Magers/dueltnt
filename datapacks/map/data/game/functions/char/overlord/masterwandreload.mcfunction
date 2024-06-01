item replace entity @s[scores={masterup=0}] hotbar.0 with wooden_pickaxe[custom_name='{"italic":false,"text":"§9Master Wand §r: Right-click Blocks (throw/offhand to gather)"}']
item replace entity @s[scores={masterup=1}] hotbar.0 with stone_pickaxe[custom_name='{"italic":false,"text":"§9Master Wand §r: Right-click Blocks (throw/offhand to gather)"}']
item replace entity @s[scores={masterup=2}] hotbar.0 with iron_pickaxe[custom_name='{"italic":false,"text":"§9Master Wand §r: Right-click Blocks (throw/offhand to gather)"}']
item replace entity @s[scores={masterup=3}] hotbar.0 with golden_pickaxe[custom_name='{"italic":false,"text":"§9Master Wand §r: Right-click Blocks (throw/offhand to gather)"}']
item replace entity @s[scores={masterup=4..}] hotbar.0 with diamond_pickaxe[custom_name='{"italic":false,"text":"§9Master Wand §r: Right-click Blocks (throw/offhand to gather)"}']

playsound minecraft:item.trident.return master @a ~ ~ ~ 0.5 2
playsound minecraft:item.bundle.insert master @a
playsound minecraft:item.armor.equip_netherite master @a