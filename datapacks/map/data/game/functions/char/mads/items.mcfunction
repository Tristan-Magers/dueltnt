#laser
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:rabbit_hide"}}] at @s run scoreboard players set @s laserDummy 30
execute as @s[scores={laserDummy=-300..}] at @s run function game:items/laser
