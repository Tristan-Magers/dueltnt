#ghost missile
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:coal"}}] at @s run function game:items/ghostmissile
#item replace entity @s[scores={misreload=1}] hotbar.5 with minecraft:coal{display:{Name:"{\"italic\":false,\"text\":\"§9Air Missile§r : Right-click\"}"}}
execute as @s[scores={misreload=20}] run function game:char/ghost/give/smoke_bomb {count:2}
scoreboard players remove @s misreload 1