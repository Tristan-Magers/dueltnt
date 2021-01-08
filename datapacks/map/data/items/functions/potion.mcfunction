scoreboard players add @s[scores={potion=..-1}] potion 1

execute as @s[x=600,y=60,z=600,distance=3..95,scores={class=1,potion=-1}] at @s run replaceitem entity @s hotbar.1 minecraft:splash_potion{CustomPotionColor:0,CustomPotionEffects:[{Id:2,Amplifier:1,Duration:60},{Id:15,Amplifier:1,Duration:60},{Id:24,Amplifier:1,Duration:60}],display:{Name:"{\"italic\":false,\"text\":\"§5Primed for Death §r: Right-click\"}"}}
scoreboard players set @s[scores={potion=1..,class=1}] potion -6

scoreboard players set @s[scores={potion=1..,class=3}] potion -69
execute as @s[x=600,y=60,z=600,distance=3..95,scores={class=3,potion=-1}] at @s run replaceitem entity @s hotbar.4 minecraft:splash_potion{CustomPotionColor:0,CustomPotionEffects:[{Id:25,Amplifier:2,Duration:55},{Id:15,Amplifier:1,Duration:75},{Id:24,Amplifier:1,Duration:65}],display:{Name:"{\"italic\":false,\"text\":\"Void Vision : Right-click\"}"}}
scoreboard players set @s[scores={potion=1..,class=2}] potion -44
replaceitem entity @s[x=600,y=60,z=600,distance=3..95,scores={class=2,potion=-1}] hotbar.4 minecraft:splash_potion{CustomPotionColor:0,CustomPotionEffects:[{Id:15,Amplifier:1,Duration:110},{Id:24,Amplifier:1,Duration:90}],display:{Name:"{\"italic\":false,\"text\":\"§5Primed for Dark §r: Right-click\"}"}}

scoreboard players add @s[scores={potion=-1}] potion 1
