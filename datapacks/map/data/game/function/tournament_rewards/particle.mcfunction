# say running particle.mcfunction
# Implemented by TheViralMelon

# Calculations
execute store result score #woa1Val .num run random value 1..10

scoreboard players add #woa1DoublesCycle .num 75
execute if score #woa1DoublesCycle .num matches 3600.. run scoreboard players set #woa1DoublesCycle .num 0
execute store result storage game:woa1 doublesCycle.val float 0.1 run scoreboard players get #woa1DoublesCycle .num

scoreboard players set @s[scores={particle=901},nbt={HurtTime:9s}] woa1SinglesTimer 9
tag @s[scores={woa1SinglesTimer=9},tag=woa1SinglesPurple] add woa1SinglesSwap
tag @s[scores={woa1SinglesTimer=9}] add woa1SinglesPurple
tag @s[tag=woa1SinglesSwap] remove woa1SinglesPurple
tag @s remove woa1SinglesSwap

# Functions
execute as @s[scores={particle=900}] at @s rotated ~ 0 run function game:tournament_rewards/woa1/participation
execute as @s[scores={particle=902}] at @s rotated ~ 0 positioned ^ ^ ^-0.4 run execute positioned ~ ~1 ~ rotated ~90 ~ run function game:tournament_rewards/woa1/doubles with storage game:woa1 doublesCycle
execute as @s[scores={particle=901,woa1SinglesTimer=0..}] at @s rotated ~ 0 positioned ^ ^ ^-0.4 run function game:tournament_rewards/woa1/singles