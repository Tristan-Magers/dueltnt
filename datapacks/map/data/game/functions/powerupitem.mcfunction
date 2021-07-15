#execute if entity @p[distance=..5.0,gamemode=adventure] run tp @s ~ ~ ~ facing entity @p

execute if entity @p[distance=..0.6,gamemode=adventure] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2
execute if entity @p[distance=..0.6,gamemode=adventure] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 2
execute if entity @p[distance=..0.6,gamemode=adventure] run playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ .1
execute if entity @p[distance=..0.6,gamemode=adventure] run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 .1
execute if entity @p[distance=..0.6,gamemode=adventure] run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 .8

#execute as @s[tag=phantomfloat] at @s run item replace entity @p[distance=..0.6,gamemode=adventure] hotbar.0 with minecraft:blaze_powder

item replace entity @p[distance=..0.6,gamemode=adventure,scores={phantomrand=0..2}] hotbar.0 with minecraft:blaze_powder{display:{Name:"{\"italic\":false,\"text\":\"§5Phantom Float§r : Right-click\"}"}}
item replace entity @p[distance=..0.6,gamemode=adventure,scores={phantomrand=3..4}] hotbar.0 with minecraft:apple{display:{Name:"{\"italic\":false,\"text\":\"§2Acid Rain§r : Right-click\"}"}}
item replace entity @p[distance=..0.6,gamemode=adventure,scores={phantomrand=5..7}] hotbar.0 with minecraft:cookie{display:{Name:"{\"italic\":false,\"text\":\"§3Phantom Boost§r : Right-click\"}"}}
item replace entity @p[distance=..0.6,gamemode=adventure,scores={phantomrand=8..9}] hotbar.0 with minecraft:bread{display:{Name:"{\"italic\":false,\"text\":\"§cExtra Life§r : Right-click\"}"}}
item replace entity @p[distance=..0.6,gamemode=adventure,scores={phantomrand=10..12}] hotbar.0 with minecraft:potato{display:{Name:"{\"italic\":false,\"text\":\"§7Chicken Bow§r : Right-click\"}"}}
item replace entity @p[distance=..0.6,gamemode=adventure,scores={phantomrand=13..14}] hotbar.0 with minecraft:porkchop{display:{Name:"{\"italic\":false,\"text\":\"§6Phantom Missile§r : Right-click\"}"}}
item replace entity @p[distance=..0.6,gamemode=adventure,scores={phantomrand=15..16}] hotbar.0 with minecraft:cooked_porkchop{display:{Name:"{\"italic\":false,\"text\":\"§9Air Missile§r : Right-click\"}"}}

tag @p[distance=..0.6] add haspup

execute if entity @p[distance=..0.6,gamemode=adventure] run kill @s