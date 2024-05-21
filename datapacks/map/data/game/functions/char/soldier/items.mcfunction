# mega bomb
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:kelp"}}] BBtimer 160
execute as @s[scores={BBtimer=-10..}] at @s run function game:items/megab
execute as @s[scores={class=0}] at @s run function game:char/soldier/megabombtrigger

# anvil
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:anvil"}}] at @s run function game:char/soldier/anvil
scoreboard players remove @s[scores={fall=1..}] fall 1
execute as @s[scores={fall=1..}] at @s run tp @s @s
scoreboard players set @s[scores={fall=1..}] dy -23
execute as @s[scores={fall=1..}] at @s run function game:physics/wallmovey

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

#
scoreboard players add @s[scores={soldier_shifts=..4}] soldier_shift_reload 1
scoreboard players add @s[scores={soldier_shifts=..4},nbt={OnGround:1b}] soldier_shift_reload 1
scoreboard players add @s[scores={soldier_shifts=..4},nbt={OnGround:1b}] soldier_shift_reload 1
scoreboard players set @s[scores={soldier_shifts=5..}] soldier_shift_reload 0
scoreboard players add @s[scores={soldier_shift_reload=60..}] soldier_shifts 1
scoreboard players set @s[scores={soldier_shift_reload=60..}] soldier_shift_reload 0