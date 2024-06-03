scoreboard players set @a[scores={ThrBow=1..}] ThrBowT 1
scoreboard players remove @a[scores={ThrBowT=-10..}] ThrBowT 1
scoreboard players set @a ThrBow 0
item replace entity @a[scores={ThrBowT=0}] hotbar.0 with minecraft:fishing_rod[unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"Grab : Throw to switch"}',lore=['{"italic":false,"color":"white","text":"Breaks after 6s"}','{"italic":false,"color":"white","text":"Breaks if hooked on entity for 3s"}']]
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.0 with minecraft:fishing_rod[unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"Grab : Throw to switch"}',lore=['{"italic":false,"color":"white","text":"Breaks after 6s"}','{"italic":false,"color":"white","text":"Breaks if hooked on entity for 3s"}']]
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.1 with minecraft:fishing_rod[unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"Grab : Throw to switch"}',lore=['{"italic":false,"color":"white","text":"Breaks after 6s"}','{"italic":false,"color":"white","text":"Breaks if hooked on entity for 3s"}']]
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.2 with minecraft:fishing_rod[unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"Grab : Throw to switch"}',lore=['{"italic":false,"color":"white","text":"Breaks after 6s"}','{"italic":false,"color":"white","text":"Breaks if hooked on entity for 3s"}']]
scoreboard players set @a[scores={ThrFish=1..}] ThrFishT 1
scoreboard players remove @a ThrFishT 1 
scoreboard players set @a ThrFish 0
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=3}] hotbar.0 with minecraft:bow[damage=80,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§cTNT Trap§r : Throw to switch"}',hide_additional_tooltip={}]

execute as @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=..0}] run function game:char/soldier/give/bow

item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=1}] hotbar.0 with minecraft:bow[damage=40,unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:flame":1},show_in_tooltip:false},custom_name='{"italic":false,"text":"§dBazooka Bow§f : Throw to switch"}',hide_additional_tooltip={},lore=['{"italic":false,"color":"white","text":"2 TNT"}','{"italic":false,"color":"white","text":"Reload: 1.2s"}','{"italic":false,"color":"white","text":"Fuse: 0.55s"}']]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=2}] hotbar.0 with minecraft:bow[damage=60,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§bVaporizer§r : Throw to switch"}',hide_additional_tooltip={}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=10}] hotbar.0 with minecraft:bow[damage=260,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§9Anti-Ice§r : Throw to switch"}',hide_additional_tooltip={}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=4}] hotbar.0 with air
clear @a[x=620,y=20,z=620,distance=..100,scores={class=0..4,ThrFishT=0..1}] fishing_rod
clear @a[scores={ThrBowT=0,class=0..4}] bow
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=5}] hotbar.0 with minecraft:bow[damage=160,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§aExplosive Gel§r : Throw to switch"}',hide_additional_tooltip={}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=6}] hotbar.0 with minecraft:bow[damage=180,custom_name='{"italic":false,"text":"§7Dark Pillar§r : Throw to switch"}',unbreakable={show_in_tooltip:false},hide_additional_tooltip={}]
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=7}] hotbar.0 with minecraft:bow[damage=200,custom_name='{"italic":false,"text":"§3Space Warp§r : Throw to switch"}',unbreakable={show_in_tooltip:false},hide_additional_tooltip={}]
execute unless entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=8}] hotbar.0 with minecraft:bow[damage=220,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§6Blast Jumper§r : Throw to switch"}',enchantments={punch:2},hide_additional_tooltip={}]
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=8}] hotbar.0 with minecraft:bow[damage=220,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§6Blast Jumper§r : Throw to switch"}',enchantments={punch:3},hide_additional_tooltip={}]
