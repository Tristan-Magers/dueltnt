summon minecraft:zombie ~ ~ ~ {Tags:["dummy"],Silent:1b,Invulnerable:1b,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:glass",count:1}],Attributes:[{Name:"followRange",Base:0},{Name:"movementSpeed",Base:0}]}
effect give @e[tag=dummy] weakness 9999 10 true
team join Main @e[tag=dummy]