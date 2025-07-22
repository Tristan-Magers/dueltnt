#
execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["rainbow_spread"]}
execute as @e[tag=rainbow_spread,tag=!started] at @s run function game:char/skid/rblocks/spread