item replace block 0 4 -2 container.0 with minecraft:player_head
loot replace block 0 4 -2 container.0 loot game:player_head
data modify storage ns:main SkullName set from block 0 4 -2 Items[0].components."minecraft:profile".name

data modify storage ns:main Characters set value ["#","#","#","#","#","#","#","#"]
data modify storage ns:main Characters[0] set string storage ns:main SkullName 0 1
data modify storage ns:main Characters[1] set string storage ns:main SkullName 1 2
data modify storage ns:main Characters[2] set string storage ns:main SkullName 2 3
data modify storage ns:main Characters[3] set string storage ns:main SkullName 3 4
data modify storage ns:main Characters[4] set string storage ns:main SkullName 4 5
data modify storage ns:main Characters[5] set string storage ns:main SkullName 5 6
data modify storage ns:main Characters[6] set string storage ns:main SkullName 6 7
data modify storage ns:main Characters[7] set string storage ns:main SkullName 7 8

setblock 1 4 -2 oak_sign{front_text:{messages:[[{"nbt":"Characters[0]","storage":"ns:main"},{"nbt":"Characters[1]","storage":"ns:main"},{"nbt":"Characters[2]","storage":"ns:main"},{"nbt":"Characters[3]","storage":"ns:main"},{"nbt":"Characters[4]","storage":"ns:main"},{"nbt":"Characters[5]","storage":"ns:main"},{"nbt":"Characters[6]","storage":"ns:main"},{"nbt":"Characters[7]","storage":"ns:main"}],{"text":""},{"text":""},{"text":""}]}} destroy

tag @e[type=marker,tag=name_temp,tag=!old] add old

summon marker 0 4 0 {Tags:["name_temp"]}
tag @e[type=marker,tag=name_temp,tag=!old,limit=1] add has_name
data modify entity @e[type=marker,tag=name_temp,tag=!old,limit=1] CustomName set from block 1 4 -2 front_text.messages[0]

scoreboard players operation @e[tag=name_temp,type=marker] tntID -= @s tntID
kill @e[tag=name_temp,type=marker,scores={tntID=0}]
scoreboard players operation @e[tag=name_temp,type=marker] tntID += @s tntID

scoreboard players operation @e[type=marker,limit=1,sort=nearest,tag=name_temp,tag=!old] tntID = @s tntID

tag @e[type=marker,tag=name_temp,tag=!old] add old