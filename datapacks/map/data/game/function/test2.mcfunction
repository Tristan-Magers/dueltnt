item replace block 0 4 -2 container.0 with minecraft:player_head
loot replace block 0 4 -2 container.0 loot game:player_head
data modify storage ns:main SkullName set from block 0 4 -2 Items[0].components."minecraft:profile".name

data modify storage ns:main Characters set value ["#","#","#","#","#"]
data modify storage ns:main Characters[0] set string storage ns:main SkullName 0 1
data modify storage ns:main Characters[1] set string storage ns:main SkullName 1 2
data modify storage ns:main Characters[2] set string storage ns:main SkullName 2 3
data modify storage ns:main Characters[3] set string storage ns:main SkullName 3 4
data modify storage ns:main Characters[4] set string storage ns:main SkullName 4 5

setblock 1 4 -2 oak_sign{front_text:{messages:['[{"nbt":"Characters[0]","storage":"ns:main"},{"nbt":"Characters[1]","storage":"ns:main"},{"nbt":"Characters[2]","storage":"ns:main"},{"nbt":"Characters[3]","storage":"ns:main"},{"nbt":"Characters[4]","storage":"ns:main"}]','{"text":""}','{"text":""}','{"text":""}']}} destroy

summon marker ~ ~ ~ {Tags:["name_temp"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=name_temp] CustomName set from block 1 4 -2 front_text.messages[0]

function game:test

kill @e[type=marker,tag=name_temp]