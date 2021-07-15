# mega bomb
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:kelp"}}] BBtimer 160
execute as @s[scores={BBtimer=-10..}] at @s run function items:megab
execute as @s[scores={class=0}] at @s run function game:megabombtrigger

# anvil
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:anvil"}}] at @s run summon tnt ~ ~ ~ {Fuse:0}
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:anvil"}}] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ .4 1
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:anvil"}}] fall 10
scoreboard players add @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:anvil"}}] anviluse 1
clear @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:anvil"}}] anvil 1
scoreboard players remove @s[scores={fall=1..}] fall 1
execute as @s[scores={fall=1..}] at @s run tp @s @s
scoreboard players set @s[scores={fall=1..}] dy -20
execute as @s[scores={fall=1..}] at @s run function game:wallmovey

#slime
scoreboard players add @s snowReset 0
scoreboard players set @s[scores={snow=1}] snowTime 5
scoreboard players remove @s[scores={snowReset=1..}] snowTime 1
scoreboard players set @s[scores={snow=1..}] snowReset 100
scoreboard players set @s[scores={snowReset=2..}] snow 0
scoreboard players remove @s[scores={snowReset=1..}] snowReset 1
#item replace entity @s[scores={snowReset=1}] hotbar.1 with snowball{display:{Name:"{\"italic\":false,\"text\":\"§2Slimer §f§r: Right-click (hit players)\"}"}}
tag @s[scores={snowReset=50}] add checkairnade
item replace entity @s[scores={snowReset=50}] hotbar.1 with minecraft:lingering_potion{Potion:"minecraft:swiftness",display:{Name:"{\"italic\":false,\"text\":\"§3Air Grenade §r: Right-click\"}"}}
