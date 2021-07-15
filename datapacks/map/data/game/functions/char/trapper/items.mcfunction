# tracking bomb
effect give @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] minecraft:levitation 1
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:redstone"}}] TBtimer 240
execute as @s[scores={TBtimer=-10..}] at @s run function items:trackbomb

#bow
execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bamboo"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s anchored eyes run summon minecraft:tnt ^ ^ ^3 {Fuse:2,NoGravity:1}
#coreboard players set @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bamboo"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] bow 10
clear @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bamboo"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] arrow 1
execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:flint"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run tag @s[scores={trapdraw=0}] add med
execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bowl"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run tag @s[scores={trapdraw=0}] add fast

execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:flint"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run scoreboard players set @s[scores={trapdraw=0}] trapdraw 1
execute as @s[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bowl"}},nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run scoreboard players set @s[scores={trapdraw=0}] trapdraw 1

execute as @s[gamemode=adventure,scores={trapdraw=2..}] at @s run function game:pro3

scoreboard players add @s[gamemode=adventure,scores={trapdraw=1..}] trapdraw 1
scoreboard players set @s[gamemode=adventure,scores={trapdraw=3..}] trapdraw 0

item replace entity @s[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] hotbar.0 with bamboo{display:{Name:"{\"italic\":false,\"text\":\"§cShort Blast§r : Throw for mode 1 / Offhand for mode 3\"}"}}
item replace entity @s[gamemode=adventure,scores={class=3,bowlthrow=1..},x=620,y=20,z=620,distance=..100] hotbar.0 with flint{display:{Name:"{\"italic\":false,\"text\":\"§cTNT Trap§r : Throw for mode 2 / Offhand for mode 3\"}"}}
item replace entity @s[gamemode=adventure,scores={class=3,bambthrow=1..},x=620,y=20,z=620,distance=..100] hotbar.0 with flint{display:{Name:"{\"italic\":false,\"text\":\"§cTNT Trap§r : Throw for mode 2 / Offhand for mode 3\"}"}}

execute as @s[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 2
execute as @s[gamemode=adventure,scores={class=3,bowlthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.6
execute as @s[gamemode=adventure,scores={class=3,bambthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.6

execute as @s[gamemode=adventure,scores={class=3,flintthrow=1..},x=620,y=20,z=620,distance=..100] at @s run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 1 1

item replace entity @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] hotbar.0 with bowl{display:{Name:"{\"italic\":false,\"text\":\"§cFast Trap§r : Throw/Offhand for mode 1\"}"}}
item replace entity @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] hotbar.0 with bowl{display:{Name:"{\"italic\":false,\"text\":\"§cFast Trap§r : Throw/Offhand for mode 1\"}"}}

execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.4
execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 1 1.4

execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:bamboo",Slot:-106b}]}] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute as @s[gamemode=adventure,scores={class=3},x=620,y=20,z=620,distance=..100,nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2

scoreboard players set @s bambthrow 0
scoreboard players set @s flintthrow 0
scoreboard players set @s bowlthrow 0