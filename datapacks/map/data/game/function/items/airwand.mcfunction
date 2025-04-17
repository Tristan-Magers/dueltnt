execute as @s at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.8
execute as @s at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ .2 2
execute as @s at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Silent:1,Invulnerable:1,Invisible:1,CustomName:{"italic":false,"text":"air"}}
execute as @s at @s run tp @e[limit=1,name=air] @p
execute as @s at @s run tp @e[limit=1,name=air] ~ ~1.6 ~
execute as @e[name=air] at @s run function game:hitscan
execute as @e[name=air] at @s run function game:airstike
scoreboard players set @s airwandtime 120
item replace entity @s hotbar.3 with minecraft:golden_hoe[custom_name={"italic":false,"text":"§bRecharging.."},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:10,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"any"}],tooltip_display={hidden_components:["attribute_modifiers","can_break","custom_model_data","unbreakable","tooltip_display","weapon","max_damage","can_place_on","trim","dyed_color","damage","enchantments","food","tool","tooltip_display","potion_contents","item_model"]}]
