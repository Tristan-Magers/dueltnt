scoreboard players add @s[scores={potion=..-1}] potion 1

execute as @s[x=600,y=60,z=600,distance=3..95,scores={class=1,potion=-1}] at @s run item replace entity @s hotbar.0 with minecraft:splash_potion{CustomPotionColor:0,custom_potion_effects:[{Id:2,Amplifier:1,Duration:60},{Id:15,Amplifier:1,Duration:60},{Id:24,Amplifier:1,Duration:60}],display:{Name:"{\"italic\":false,\"text\":\"§5Primed for Death §r: Right-click\"}"}}
scoreboard players set @s[scores={potion=1..,class=1}] potion -6

scoreboard players set @s[scores={potion=1..,class=3}] potion -69
execute as @s[x=600,y=60,z=600,distance=3..95,scores={class=3,potion=-1}] at @s run item replace entity @s hotbar.4 with minecraft:splash_potion{CustomPotionColor:0,custom_potion_effects:[{Id:25,Amplifier:2,Duration:55},{Id:15,Amplifier:1,Duration:75},{Id:24,Amplifier:1,Duration:65}],display:{Name:"{\"italic\":false,\"text\":\"Void Vision : Right-click\"}"}}
scoreboard players set @s[scores={potion=1..,class=2}] potion -44
item replace entity @s[x=600,y=60,z=600,distance=3..95,scores={class=2,potion=-1}] hotbar.4 with splash_potion{display:{Name:'[{"text":"Primed for Dark ","color":"dark_purple","italic":false},{"text":": Right-Click","color":"white","italic":false}]'},custom_potion_effects:[{id:"minecraft:blindness",amplifier:1b,duration:80},{id:"minecraft:glowing",amplifier:1b,duration:60}],CustomPotionColor:0}

scoreboard players add @s[scores={potion=-1}] potion 1
