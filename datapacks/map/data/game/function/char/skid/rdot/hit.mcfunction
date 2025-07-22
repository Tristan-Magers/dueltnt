execute if block ~ ~ ~ purple_stained_glass align xyz positioned ~0.5 ~0.5 ~0.5 run say @e[tag=rainbow_spread,sort=nearest,limit=1,distance=..0.5]
execute if block ~ ~ ~ purple_stained_glass align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players set @e[tag=rainbow_spread,sort=nearest,limit=1,distance=..0.5] rainbow_weight 5
execute if block ~ ~ ~ purple_stained_glass align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=rainbow_spread,sort=nearest,limit=1,distance=..0.5] at @s run function game:char/skid/rblocks/spread_rec

execute unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_start

kill @s
