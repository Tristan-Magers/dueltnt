scoreboard players set @a[scores={inSwCheckG=1..}] inSwCheck 1
item replace entity @a[nbt=!{Inventory:[{id:"minecraft:red_concrete_powder",Slot:0b}]},x=500,y=20,z=470,distance=..110,scores={ingame=..0},gamemode=adventure] hotbar.0 with minecraft:red_concrete_powder{display:{Name:"{\"italic\":false,\"text\":\"Not in game! (Throw to join)\"}"}}
item replace entity @a[x=500,y=20,z=470,distance=..110,gamemode=adventure] hotbar.1 with minecraft:air

item replace entity @a[x=500,y=20,z=470,distance=..110,gamemode=adventure] hotbar.3 with minecraft:air
item replace entity @a[x=500,y=20,z=470,distance=..110,gamemode=adventure] hotbar.4 with minecraft:air
item replace entity @a[x=500,y=20,z=470,distance=..110,gamemode=adventure] hotbar.5 with minecraft:air
item replace entity @a[x=500,y=20,z=470,distance=..110,gamemode=adventure] hotbar.6 with minecraft:air
item replace entity @a[x=500,y=20,z=470,distance=..110,gamemode=adventure] hotbar.7 with minecraft:air
item replace entity @a[x=500,y=20,z=470,distance=..110,gamemode=adventure] hotbar.8 with minecraft:air

#book for nerds
item replace entity @a[nbt=!{Inventory:[{id:"minecraft:written_book",Slot:2b}]},x=500,y=20,z=470,distance=..110,gamemode=adventure] hotbar.2 with written_book{title:"Book for Nerds",author:"ChainsawNinja",generation:0,resolved:1b,pages:['[{"text":"Book for nerds","bold":true,"underlined":false},{"text":"\\nGame Version 9.0.0","underlined":false,"bold":false},{"text":"\\n\\nLinks:","underlined":false},{"text":"\\n\\nDiscord","color":"dark_aqua","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Talk with the community and find out about upcoming tournaments. :)","color":"dark_green"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/6xatFYH"}},{"text":"\\n\\nSupport Me :3","color":"#1B4EA6","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Just letting me know you enjoy the game is enough, but if you are inclined, I have a Patreon.","color":"dark_aqua"}]},"clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"text":"\\n\\nPatch Notes","color":"#240E57","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"My pastebin profile includes an archive of all previous patch notes as well.","color":"gold"}]},"clickEvent":{"action":"open_url","value":"https://pastebin.com/NEqbuAaK"}},{"text":"\\n\\nGitHub","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Download of world and all files. May be a slightly different version.","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Tristan-Magers/dueltnt"}}]']} 1

item replace entity @a[nbt=!{Inventory:[{id:"minecraft:green_concrete_powder",Slot:0b}]},x=500,y=20,z=470,distance=..110,scores={ingame=1..},gamemode=adventure] hotbar.0 with minecraft:green_concrete_powder{display:{Name:"{\"italic\":false,\"text\":\"Joined game (Throw to leave)\"}"}}
scoreboard players set @a[scores={ingame=..0,inSwCheck=1..}] ingame 3
scoreboard players set @a[scores={ingame=1,inSwCheck=1..}] ingame 2
execute as @a[scores={inSwCheck=1..}] at @s run playsound minecraft:block.dispenser.dispense master @p ~ ~ ~ 1 1.5
title @a[scores={ingame=2}] actionbar {"text":"Left game","color":"red"}
title @a[scores={ingame=3}] actionbar {"text":"Joined game","color":"dark_green"}
execute as @a[scores={inSwCheck=1..}] at @s run kill @e[type=item,distance=..3]
scoreboard players set @a[scores={ingame=3}] ingame 1
scoreboard players set @a[scores={ingame=2}] ingame 0
scoreboard players set @a inSwCheck 0
scoreboard players set @a inSwCheckG 0