scoreboard players set @a[scores={ThrBow=1..}] ThrBowT 1
scoreboard players remove @a[scores={ThrBowT=-10..}] ThrBowT 1
scoreboard players set @a ThrBow 0
item replace entity @a[scores={ThrBowT=0}] hotbar.0 with fishing_rod{Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"Grab : Throw to switch\"}"}}
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.0 with fishing_rod{Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"Grab : Throw to switch\"}"}}
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.1 with fishing_rod{Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"Grab : Throw to switch\"}"}}
item replace entity @a[scores={ThrBowT=0,class=4}] hotbar.2 with fishing_rod{Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"Grab : Throw to switch\"}"}}
scoreboard players set @a[scores={ThrFish=1..}] ThrFishT 1
scoreboard players remove @a ThrFishT 1 
scoreboard players set @a ThrFish 0
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=3}] hotbar.0 with bow{Damage:80,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§cTNT Trap§r : Throw to switch\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=..0}] hotbar.0 with bow{Damage:20,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§cBomb Bow§r : Throw to switch\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=1}] hotbar.0 with bow{Damage:40,Unbreakable:1,Enchantments:[{id:flame,lvl:1}],display:{Name:"{\"italic\":false,\"text\":\"§dBazooka Bow§f : Throw to switch\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=2}] hotbar.0 with bow{Damage:60,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§bVaporizer§r : Throw to switch\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=10}] hotbar.0 with bow{Damage:260,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§9Anti-Ice§r : Throw to switch\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=4}] hotbar.0 with air
clear @a[x=620,y=20,z=620,distance=..100,scores={class=0..4,ThrFishT=0..1}] fishing_rod
clear @a[scores={ThrBowT=0,class=0..4}] bow
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=5}] hotbar.0 with bow{Damage:160,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§aExplosive Gel§r : Throw to switch\"}"}}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=6}] hotbar.0 with bow{Damage:180,display:{Name:"{\"italic\":false,\"text\":\"§7Dark Pillar§r : Throw to switch\"}"},Unbreakable:1}
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=7}] hotbar.0 with bow{Damage:200,display:{Name:"{\"italic\":false,\"text\":\"§3Space Warp§r : Throw to switch\"}"},Unbreakable:1}
execute unless entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=8}] hotbar.0 with minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:2}]}
execute if entity @e[scores={mode=1}] run item replace entity @a[x=620,y=20,z=620,distance=..100,scores={ThrFishT=0,class=8}] hotbar.0 with minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:3}]}
