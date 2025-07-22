# starts assuming you are in valid non-air non-rainbow block

tag @s add started
scoreboard players add @s[tag=rainbow_spread] rainbow_rec 1

#
tag @s remove spread

# speed here if unused block
execute unless block ~ ~ ~ #game:rainbow_invalid run tag @s add spread
execute unless block ~ ~ ~ #game:rainbow_invalid run setblock ~ ~ ~ minecraft:purple_stained_glass

# spread to side blocks if unused
execute unless entity @s[tag=spread] store result score .rand .calc run random value 0..3

execute unless entity @s[tag=spread] positioned ~ ~-1 ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new

execute unless entity @s[tag=spread] if score .rand .calc matches 0 positioned ~1 ~ ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 0 positioned ~-1 ~ ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 0 positioned ~ ~ ~1 unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 0 positioned ~ ~ ~-1 unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new

execute unless entity @s[tag=spread] if score .rand .calc matches 1 positioned ~ ~ ~1 unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 1 positioned ~ ~ ~-1 unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 1 positioned ~1 ~ ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 1 positioned ~-1 ~ ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new

execute unless entity @s[tag=spread] if score .rand .calc matches 2 positioned ~-1 ~ ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 2 positioned ~1 ~ ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 2 positioned ~ ~ ~-1 unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 2 positioned ~ ~ ~1 unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new

execute unless entity @s[tag=spread] if score .rand .calc matches 3 positioned ~ ~ ~-1 unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 3 positioned ~ ~ ~1 unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 3 positioned ~-1 ~ ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new
execute unless entity @s[tag=spread] if score .rand .calc matches 3 positioned ~1 ~ ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new

execute unless entity @s[tag=spread] positioned ~ ~1 ~ unless block ~ ~ ~ #game:rainbow_invalid run function game:char/skid/rblocks/spread_new

# ask side blocks to spread if available
execute unless entity @s[tag=spread] run scoreboard players set .min .calc 9999
execute unless entity @s[tag=spread] run scoreboard players operation .min .calc < @e[distance=0.1..1.1,tag=rainbow_spread] rainbow_rec
execute unless entity @s[tag=spread] run tag @e remove can_spread
execute unless entity @s[tag=spread] at @s as @e[distance=0.1..1.1,tag=rainbow_spread] if score @s rainbow_rec = .min .calc run tag @s add can_spread
execute unless entity @s[tag=spread] run tag @e[scores={rainbow_rec=30..}] remove can_spread
execute unless entity @s[tag=spread] at @s as @e[tag=can_spread,limit=1,sort=random] at @s run function game:char/skid/rblocks/spread