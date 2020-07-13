scoreboard players add @e[tag=Map] whootext 0

execute if entity @e[tag=Map,scores={whootext=0}] run tellraw @a {"text":"WHOOO! Duel TNT is now 2 years old. Published 6/30/2017, its been a fun ride, and we are here to celebrate with SEASON 5! I worked really hard to add lots of cool new features. \n\nHere is to many more maps and years to come. :3 \n\n-ChainsawNinja"}

scoreboard players set @e[tag=Map] whootext 80

summon minecraft:firework_rocket 489 11 476 {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16755459],FadeColors:[I;16775088]}]}}}}
summon minecraft:firework_rocket 482 11 476 {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16755459],FadeColors:[I;16775088]}]}}}}


