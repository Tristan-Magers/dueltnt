summon minecraft:zombie ~ ~ ~ {Tags:["dummy"],Silent:1b,Invulnerable:0b,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}],Attributes:[{Name:generic.follow_range,Base:0},{Name:generic.movement_speed,Base:0}]}
effect give @e[tag=dummy] weakness 9999 10 true
team join Main @e[tag=dummy]
effect give @e[tag=dummy] minecraft:resistance 999999 10 true