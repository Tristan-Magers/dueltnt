# say running toggle_cosmetic.mcfunction ...
# Implemented by TheViralMelon

$execute if score $(fakeplayer) .num matches 1 run scoreboard players set $(fakeplayer) .num 2
$execute if score $(fakeplayer) .num matches 0 run scoreboard players set $(fakeplayer) .num 3

$execute if score $(fakeplayer) .num matches 2 run tellraw @s [{"text":"Custom Cosmetic","color":"gold"},{"text":" disabled","color":"red"}]
$execute if score $(fakeplayer) .num matches 3 run tellraw @s [{"text":"Custom Cosmetic","color":"gold"},{"text":" enabled","color":"green"}]

$execute if score $(fakeplayer) .num matches 2 run scoreboard players set $(fakeplayer) .num 0
$execute if score $(fakeplayer) .num matches 3 run scoreboard players set $(fakeplayer) .num 1