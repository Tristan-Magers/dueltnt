function game:end
execute if entity @e[scores={mode=4}] if entity @a[scores={ingame=1..}] if entity @a[scores={survival=1..3999}] run tellraw @a [{"text":"[","bold":true},{"text":"GAME OVER","color":"dark_green","bold":true},{"text":"] You had ","bold":true},{"score":{"name":"Time","objective":"l"},"color":"gold"},{"text":" seconds remaining. Better luck next time!"}]
execute if entity @e[scores={mode=4}] if entity @a[scores={ingame=1..}] if entity @a[scores={survival=4000..}] run tellraw @a [{"text":"[","bold":true},{"text":"YOU WIN","color":"dark_aqua","bold":true},{"text":"] You won! Great job! You are a real Duel TNT master. ","bold":true}]
execute if entity @e[scores={mode=4}] if entity @a[scores={ingame=1..}] if entity @a[scores={survival=4000..}] run scoreboard players add @a[x=600,y=60,z=600,distance=3..100,gamemode=adventure] p 1
execute if entity @e[scores={mode=4}] if entity @a[scores={ingame=1..}] if entity @a[scores={survival=4000..}] run scoreboard players add @a[scores={survival=4000..}] p 1
execute if entity @e[scores={mode=4}] if entity @a[scores={ingame=1..}] if entity @a[scores={survival=4000..}] run function game:mode/survival/survivaladvance

execute if entity @a[scores={ingame=1..}] run function game:game/start