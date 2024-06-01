clear @s

effect give @s minecraft:blindness 2 0
effect give @s minecraft:poison 3 6
effect give @s minecraft:glowing 5 10

xp set @s 0 levels

scoreboard players set @s frozen -10
scoreboard players set @s Sreload 0
scoreboard players set @s endercount 0
scoreboard players set @s shift_cool 0
scoreboard players set @s potion 0
scoreboard players set @s snowReset 0
scoreboard players set @s XPReset 0
scoreboard players set @s FZtimer 0
scoreboard players set @s BBtimer 0
scoreboard players set @s TBtimer -100
scoreboard players set @s mTtimer 0
scoreboard players set @s PlatTimer 0
scoreboard players set @s PlaceMineTime 0
scoreboard players set @s tntegguse 0
scoreboard players set @s boomwandtime 0
scoreboard players set @s blastwandtime 0
scoreboard players set @s airwandtime 0
scoreboard players set @s vortextime 0
scoreboard players set @s pig -101
scoreboard players set @s groundtime 0
scoreboard players set @s grounduse 0
scoreboard players set @s rjump 0
scoreboard players set @s PStimer 0
scoreboard players set @s acidTimer 0
scoreboard players set @s ghostshift 0
scoreboard players set @s plaguetimer 60

scoreboard players operation @s realclass = @s class
scoreboard players set @p class 8
execute unless entity @e[scores={mode=1}] run item replace entity @s hotbar.0 with minecraft:bow[damage=220,unbreakable={},enchantments={punch:2},custom_name='{"italic":false,"text":"§6Blast Jumper§r : Throw to switch"}']
execute if entity @e[scores={mode=1}] run item replace entity @s hotbar.0 with minecraft:bow[damage=220,unbreakable={},enchantments={punch:3},custom_name='{"italic":false,"text":"§6Blast Jumper§r : Throw to switch"}']
#item replace entity @s hotbar.5 with arrow{display:{Name:"{\"italic\":false,\"text\":\"Not your father's Blast Off\"}"}}
scoreboard players set @s bow 0
item replace entity @s hotbar.4 with minecraft:paper[custom_name='{"italic":false,"text":"§6You can now PvP with players :D"}']
item replace entity @s hotbar.5 with minecraft:paper[custom_name='{"italic":false,"text":"§6Shift for retro trapper simulator"}']
item replace entity @a[x=620,y=20,z=620,distance=..100,scores={class=8}] hotbar.6 with paper[custom_name='{"italic":false,"text":"§6Regain a life every 45 seconds"}']
team join gardener @s
item replace entity @s hotbar.8 with minecraft:potion[potion_contents={custom_color:16711918},custom_name='{"italic":false,"text":"§dLeave Game"}']
item replace entity @s hotbar.3 with stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:["#game:bolt_place"]}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 12

effect clear @s minecraft:jump_boost
effect clear @s minecraft:speed

tag @s add plague

function game:ui/name_markers