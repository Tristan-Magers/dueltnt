scoreboard players set @s PlatTimer 270
scoreboard players set @s platAm 6

execute as @s[scores={platUse=3},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":" (3 Remaining) ","color":"white"}]
execute as @s[scores={platUse=2},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
execute as @s[scores={platUse=1},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
execute as @s[scores={platUse=0},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

execute as @s at @s run tp @s @s

clear @s diamond_sword
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.3 1.5
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.3 0.8
playsound minecraft:block.piston.extend master @a ~ ~ ~ 0.7 0
playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1.2
playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 2