# say running doubles.mcfunction ...
# Designed by TheViralMelon

#> Particle awarded to WoA1 Doubles 1st and 2nd place (TheViralMelon, Zephyrean_, MightyJosh11, and R4dace)
$execute as @s[scores={teamed=0}] rotated ~ $(val) run particle minecraft:dust_color_transition{from_color:[0.5,0.5,0.5],scale:1.0,to_color:[1.0,1.0,1.0]} ^ ^ ^0.75 0 0 0 0 2 force @a
$execute as @s[tag=red,scores={teamed=1}] rotated ~ $(val) run particle minecraft:dust_color_transition{from_color:[1.0,0.25,0.25],scale:1.0,to_color:[1.0,0.75,0.75]} ^ ^ ^0.75 0 0 0 0 2 force @a
$execute as @s[tag=green,scores={teamed=1}] rotated ~ $(val) run particle minecraft:dust_color_transition{from_color:[0.25,1.0,0.25],scale:1.0,to_color:[0.75,1.0,0.75]} ^ ^ ^0.75 0 0 0 0 2 force @a
$execute as @s[tag=blue,scores={teamed=1}] rotated ~ $(val) run particle minecraft:dust_color_transition{from_color:[0.25,0.25,1.0],scale:1.0,to_color:[0.75,0.75,1.0]} ^ ^ ^0.75 0 0 0 0 2 force @a

execute as @s[scores={teamed=0}] if score #trVal .num matches ..5 run particle minecraft:firework ~ ~ ~ 0.075 0.075 0.075 0.03 1 force @a
execute as @s[tag=red,scores={teamed=1}] if score #trVal .num matches ..5 run particle minecraft:flame ~ ~ ~ 0.075 0.075 0.075 0.02 1 force @a
execute as @s[tag=blue,scores={teamed=1}] run particle minecraft:enchanted_hit ~ ~ ~ 0.075 0.075 0.075 0.05 1 force @a
execute as @s[tag=green,scores={teamed=1}] if score #trVal .num matches ..7 run particle minecraft:scrape ~ ~ ~ 0.075 0.075 0.075 0 1 force @a