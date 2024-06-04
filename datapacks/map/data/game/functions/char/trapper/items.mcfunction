# tracking bomb
effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] minecraft:levitation 1
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] at @s run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 1.5
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] at @s run playsound minecraft:block.note_block. master @a ~ ~ ~ 1 0
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] at @s run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 0.5 2
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] TBtimer 140
#execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] at @s run tp @s @s
execute as @s[scores={TBtimer=-10..}] at @s run function game:items/trackbomb

#bow
execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bamboo"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s anchored eyes run summon minecraft:tnt ^ ^ ^3 {fuse:3,NoGravity:1}
#coreboard players set @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bamboo"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] bow 10
clear @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bamboo"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] arrow 1
execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:flint"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run tag @s[scores={trapdraw=0}] add med
execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bowl"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run tag @s[scores={trapdraw=0}] add fast

execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:flint"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run scoreboard players set @s[scores={trapdraw=0}] trapdraw 1
execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bowl"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run scoreboard players set @s[scores={trapdraw=0}] trapdraw 1

execute as @s[gamemode=adventure,scores={trapdraw=2..}] at @s run function game:cprojectile/pro3

scoreboard players add @s[gamemode=adventure,scores={trapdraw=1..}] trapdraw 1
scoreboard players set @s[gamemode=adventure,scores={trapdraw=3..}] trapdraw 0

execute as @s[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] run function game:char/trapper/give/shortblast
execute as @s[gamemode=adventure,scores={class=3,bowlthrow=1..},x=620,y=20,z=620,distance=..100] run function game:char/trapper/give/tnttrap
execute as @s[gamemode=adventure,scores={class=3,bambthrow=1..},x=620,y=20,z=620,distance=..100] run function game:char/trapper/give/tnttrap

execute as @s[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 2
execute as @s[gamemode=adventure,scores={class=3,bowlthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.6
execute as @s[gamemode=adventure,scores={class=3,bambthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.6

execute as @s[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 1 1

execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] run function game:char/trapper/give/fasttrap
execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] run function game:char/trapper/give/fasttrap

execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.4
execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.4

execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2

scoreboard players set @s bambthrow 0
scoreboard players set @s flintthrow 0
scoreboard players set @s bowlthrow 0