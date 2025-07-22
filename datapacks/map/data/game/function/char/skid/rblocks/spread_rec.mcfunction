#
execute as @s[scores={rainbow_weight=1..}] at @s run function game:char/skid/rblocks/spread
scoreboard players remove @s rainbow_weight 1

execute as @s[scores={rainbow_weight=1..}] at @s run function game:char/skid/rblocks/spread_rec
