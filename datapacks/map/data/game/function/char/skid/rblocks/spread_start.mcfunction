#
execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["rainbow_spread"]}
scoreboard players set @e[tag=rainbow_spread,tag=!started] rainbow_weight 5
execute as @e[tag=rainbow_spread,tag=!started] at @s run function game:char/skid/rblocks/spread_rec

#kill @e[tag=rainbow_spread]