#blast wand
#scoreboard players set @s[scores={grtest=0}] bwandlimit 0
#limits uses in air. currently unused and negated by previous command
scoreboard players set @s[nbt={OnGround:1b},scores={grtest=0}] bwandlimit 0
scoreboard players remove @s[scores={blastwandtime=0..}] blastwandtime 1
execute as @s[scores={click=1..,blastwandtime=..0,bwandlimit=..5},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run function game:items/blastwand

item replace entity @s[scores={blastwandtime=0,blastdur=0}] hotbar.2 with minecraft:stone_hoe[damage=0,custom_name='{"italic":false,"text":"§aBlast Wand §r: Right-click"}',attribute_modifiers=[{type:"generic.attack_speed",name:"generic.attack_speed",amount:10,operation:"add_value",uuid:[I;1,2,3,4]}]]
item replace entity @s[scores={blastwandtime=0,blastdur=1}] hotbar.2 with minecraft:stone_hoe[damage=22,custom_name='{"italic":false,"text":"§aBlast Wand §r: Right-click"}',attribute_modifiers=[{type:"generic.attack_speed",name:"generic.attack_speed",amount:10,operation:"add_value",uuid:[I;1,2,3,4]}]]
item replace entity @s[scores={blastwandtime=0,blastdur=2}] hotbar.2 with minecraft:stone_hoe[damage=43,custom_name='{"italic":false,"text":"§aBlast Wand §r: Right-click"}',attribute_modifiers=[{type:"generic.attack_speed",name:"generic.attack_speed",amount:10,operation:"add_value",uuid:[I;1,2,3,4]}]]
item replace entity @s[scores={blastwandtime=0,blastdur=3}] hotbar.2 with minecraft:stone_hoe[damage=65,custom_name='{"italic":false,"text":"§aBlast Wand §r: Right-click"}',attribute_modifiers=[{type:"generic.attack_speed",name:"generic.attack_speed",amount:10,operation:"add_value",uuid:[I;1,2,3,4]}]]
item replace entity @s[scores={blastwandtime=0,blastdur=4}] hotbar.2 with minecraft:stone_hoe[damage=84,custom_name='{"italic":false,"text":"§aBlast Wand §r: Right-click"}',attribute_modifiers=[{type:"generic.attack_speed",name:"generic.attack_speed",amount:10,operation:"add_value",uuid:[I;1,2,3,4]}]]
item replace entity @s[scores={blastwandtime=0,blastdur=5}] hotbar.2 with minecraft:stone_hoe[damage=104,custom_name='{"italic":false,"text":"§aBlast Wand §r: Right-click"}',attribute_modifiers=[{type:"generic.attack_speed",name:"generic.attack_speed",amount:10,operation:"add_value",uuid:[I;1,2,3,4]}]]
item replace entity @s[scores={blastwandtime=0,blastdur=6..}] hotbar.2 with minecraft:stone_hoe[damage=130,custom_name='{"italic":false,"text":"§aBlast Wand §r: Right-click"}',attribute_modifiers=[{type:"generic.attack_speed",name:"generic.attack_speed",amount:10,operation:"add_value",uuid:[I;1,2,3,4]}]]

scoreboard players set @s[scores={blastdur=0}] blastdurt 0
scoreboard players set @s[scores={blastwandtime=1..}] blastdurt 0
scoreboard players add @s[scores={blastdur=1..,blastwandtime=..0}] blastdurt 1
scoreboard players remove @s[scores={blastdurt=20..}] blastdur 1
scoreboard players set @s[scores={blastdurt=20..}] blastwandtime 1
scoreboard players set @s[scores={blastdurt=20..}] blastdurt 0

item replace entity @s[scores={blastwandtime=90}] hotbar.2 with minecraft:pink_dye[custom_name='{"italic":false,"text":"§eUnstable Orb §r: Right-click"}',attribute_modifiers=[{type:"generic.attack_speed",name:"generic.attack_speed",amount:10,operation:"add_value",uuid:[I;1,2,3,4]}],custom_data={BlastOrb:1b}]
scoreboard players set @s[scores={blastwandtime=89..90}] blastwandtime 90


scoreboard players remove @s[scores={grtest=1..}] grtest 1