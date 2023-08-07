scoreboard players set @s chickenbow 220

playsound minecraft:entity.chicken.death master @s
playsound minecraft:entity.chicken.hurt master @s
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1.5 0

function game:player/class_team
execute as @s at @s run tellraw @a [{"selector":"@s"},{"text":" used ","color":"gray","bold":false},{"text":"Chicken Bow","color":"white","bold":true}]

clear @s potato