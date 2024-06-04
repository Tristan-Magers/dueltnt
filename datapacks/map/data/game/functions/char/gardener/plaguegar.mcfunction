effect give @s minecraft:speed 4 2
effect give @s minecraft:jump_boost 4 1
effect give @p minecraft:glowing 4 1 true

scoreboard players set @s ui_action_text 3
scoreboard players set @s ui_action_time 40

#effect clear @s levitation
#effect clear @s slow_falling

scoreboard players set @s garboost 80
# piss bow
#item replace entity @s hotbar.0 with minecraft:bow{Damage:240,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:3}]}

playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 2
playsound minecraft:entity.player.levelup master @a ~ ~ ~ .7 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ .7 2
playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2

clear @s stone_pressure_plate
scoreboard players remove @s gravuse 4
scoreboard players set @s[scores={gravuse=..0}] gravuse 0

# shuba's code: macro sets count to 12 - gravuse
scoreboard players set #amount gravuse 12
execute store result storage shuba_fix amount int 1 run scoreboard players operation #amount gravuse -= @s gravuse
function game:char/gardener/give/gravetrap with storage shuba_fix
data remove storage shuba_fix amount
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=0}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 12
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=1}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 11
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=2}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 10
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=3}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 9
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=4}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 8
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=5}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 7
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=6}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 6
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=7}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 5
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=8}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 4
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=9}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 3
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=10}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 2
#item replace entity @s[x=620,y=20,z=620,distance=..100,scores={gravuse=11}] hotbar.3 with minecraft:stone_pressure_plate[custom_name='{"italic":false,"text":"§7Grave Trap §r: Right-click"}',can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:0b},entity_data={id:"creeper",ignited:1,Fuse:28,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"Bomb",Health:500,ExplosionRadius:4}] 1

tag @s add boosted