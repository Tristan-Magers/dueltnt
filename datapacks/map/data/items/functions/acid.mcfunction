scoreboard players remove @s[scores={acidTimer=1..}] acidTimer 1

replaceitem entity @s[x=600,y=60,z=600,distance=3..95,scores={acidTimer=1}] hotbar.2 sugar{display:{Name:"{\"text\":\"§r§aAcid §r: Right-click\",\"color\":\"green\"}"}}

execute as @s[scores={acidTimer=99}] at @s positioned ^ ^ ^5 run function items:acidsummon
execute as @s[scores={acidTimer=99}] at @s run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~
clear @s[scores={acidTimer=99}] sugar

scoreboard players set @s[scores={acidTimer=40}] acidTimer 30