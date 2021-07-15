#ghost missile
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:coal"}}] at @s run function items:ghostmissile
#item replace entity @s[scores={misreload=1}] hotbar.5 with minecraft:coal{display:{Name:"{\"italic\":false,\"text\":\"§9Air Missile§r : Right-click\"}"}}
item replace entity @s[scores={misreload=20}] hotbar.1 with experience_bottle{display:{Name:"{\"italic\":false,\"text\":\"§7Smoke Bomb §r: Right-click\"}"}} 2
scoreboard players remove @s misreload 1