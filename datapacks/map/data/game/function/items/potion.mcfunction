scoreboard players add @s[scores={potion=..-1}] potion 1

execute as @s[x=600,y=60,z=600,distance=3..95,scores={class=1,potion=-1}] at @s run item replace entity @s hotbar.0 with minecraft:splash_potion[custom_name={"italic":false,"text":"§5Primed for Death §r: Right-click"},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:slowness",amplifier:1,duration:60},{id:"minecraft:blindness",amplifier:1,duration:60},{id:"minecraft:glowing",amplifier:1,duration:60}]}]
scoreboard players set @s[scores={potion=1..,class=1}] potion -6

scoreboard players set @s[scores={potion=1..,class=3}] potion -69
execute as @s[x=600,y=60,z=600,distance=3..95,scores={class=3,potion=-1}] at @s run item replace entity @s hotbar.4 with minecraft:splash_potion[custom_name={"italic":false,"text":"Void Vision : Right-click"},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:levitation",amplifier:2,duration:55},{id:"minecraft:blindness",amplifier:1,duration:75},{id:"minecraft:glowing",amplifier:1,duration:65}]}]
scoreboard players set @s[scores={potion=1..,class=2}] potion -44
execute as @s[x=600,y=60,z=600,distance=3..95,scores={class=2,potion=-1}] run function game:char/ghost/give/potion

scoreboard players add @s[scores={potion=-1}] potion 1