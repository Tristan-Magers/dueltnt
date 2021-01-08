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
scoreboard players set @s[scores={fall=1..}] dy -40
execute as @s[scores={fall=1..}] at @s run function game:wallmovey
