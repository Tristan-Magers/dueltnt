scoreboard players set @a[scores={ThrBow=1..}] ThrBowT 1
scoreboard players remove @a[scores={ThrBowT=-10..}] ThrBowT 1
scoreboard players set @a ThrBow 0
item replace entity @a[scores={ThrBowT=0}] hotbar.0 with minecraft:fishing_rod[unbreakable={},custom_name={"italic":false,"text":"Grab : Throw to switch"},lore=[{"italic":false,"color":"white","text":"Breaks after 6s"},{"italic":false,"color":"white","text":"Breaks if hooked on entity for 3s"}]]
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.0 with minecraft:fishing_rod[unbreakable={},custom_name={"italic":false,"text":"Grab : Throw to switch"},lore=[{"italic":false,"color":"white","text":"Breaks after 6s"},{"italic":false,"color":"white","text":"Breaks if hooked on entity for 3s"}]]
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.1 with minecraft:fishing_rod[unbreakable={},custom_name={"italic":false,"text":"Grab : Throw to switch"},lore=[{"italic":false,"color":"white","text":"Breaks after 6s"},{"italic":false,"color":"white","text":"Breaks if hooked on entity for 3s"}]]
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.2 with minecraft:fishing_rod[unbreakable={},custom_name={"italic":false,"text":"Grab : Throw to switch"},lore=[{"italic":false,"color":"white","text":"Breaks after 6s"},{"italic":false,"color":"white","text":"Breaks if hooked on entity for 3s"}]]
scoreboard players set @a[scores={ThrFish=1..}] ThrFishT 1
scoreboard players remove @a ThrFishT 1 
scoreboard players set @a ThrFish 0
execute as @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=3}] run function game:char/trapper/give/tnttrap

execute as @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=..0}] run function game:char/soldier/give/bow
execute as @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=1}] run function game:char/assassin/give/bow

execute as @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=10}] run function game:char/shard/give/bow
execute as @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=2}] run function game:char/ghost/give/bow

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=4}] hotbar.0 with air
clear @a[x=620,y=20,z=620,distance=..100,scores={class=0..4,ThrFishT=0..1}] fishing_rod
clear @a[scores={ThrBowT=0,class=0..4}] bow
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=5}] hotbar.0 with minecraft:bow[damage=160,unbreakable={},custom_name={"italic":false,"text":"§aExplosive Gel§r : Throw to switch"}]
execute as @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=6}] run function game:char/reaper/give/bow
execute as @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=7}] run function game:char/echo/give/bow
execute unless entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=8}] hotbar.0 with minecraft:bow[damage=220,unbreakable={},custom_name={"italic":false,"text":"§6Blast Jumper§r : Throw to switch"},enchantments={punch:2}]
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=8}] hotbar.0 with minecraft:bow[damage=220,unbreakable={},custom_name={"italic":false,"text":"§6Blast Jumper§r : Throw to switch"},enchantments={punch:3}]
