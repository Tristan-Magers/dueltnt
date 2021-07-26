scoreboard players operation @s sqvalt = @s sqval
scoreboard players operation @s sqvalt *= @s sqvalt
scoreboard players operation @s sqtest -= @s sqvalt

tag @s add unsolved
tag @s[scores={sqtest=..0}] remove unsolved

scoreboard players operation @s sqtest += @s sqvalt
scoreboard players add @s sqval 5

execute as @s[tag=unsolved] run function game:sqroot