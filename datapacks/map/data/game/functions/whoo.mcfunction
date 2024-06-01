scoreboard players add @e[tag=Map] whootext 0

execute if entity @e[tag=Map,scores={whootext=0}] run tellraw @a {"text":"WHOOO! Duel TNT is now 6 years old. Published 6/30/2017, it's been a fun ride, and we are here to celebrate with SEASON 9!\n\nIt has been quite the journey. :3 \n\n-ChainsawNinja"}

execute if entity @e[tag=Map,scores={whootext=0}] run summon minecraft:firework_rocket 489 12.5 476 {LifeTime:15,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"burst",colors:[I;16755459],fade_colors:[I;16775088],has_trail:1b,has_twinkle:1b}]}}}}
execute if entity @e[tag=Map,scores={whootext=0}] run summon minecraft:firework_rocket 482 12.5 476 {LifeTime:15,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"burst",colors:[I;16755459],fade_colors:[I;16775088],has_trail:1b,has_twinkle:1b}]}}}}

scoreboard players set @e[tag=Map] whootext 140