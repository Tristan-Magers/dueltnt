clear @s[scores={BBtimer=159..}] kelp
scoreboard players remove @s BBtimer 1
execute as @s[scores={BBtimer=159}] at @s run function game:items/megabsummon
execute as @s[scores={BBtimer=159}] at @s run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ .7 1
execute as @s[scores={BBtimer=159}] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ .3 0
execute as @s[scores={BBtimer=159}] at @s run playsound minecraft:item.armor.equip_turtle master @a ~ ~ ~ .8 1.4
item replace entity @s[scores={BBtimer=1},x=620,y=20,z=620,distance=3..100] hotbar.3 with kelp[custom_name='{"italic":false,"text":"§4Mega Bomb§r : Right Click"}',hide_additional_tooltip={}]