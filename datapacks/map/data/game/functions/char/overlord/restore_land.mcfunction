#
fill ~95 ~-40 ~-5 ~110 ~30 ~5 air
fill ~95 ~-40 ~95 ~110 ~30 ~105 air

#clone current map state
clone ~-5 ~-40 ~-5 ~5 ~30 ~5 ~95 ~-40 ~-5 filtered #game:bolt_place

# clone area you are restoring (from dummy map)
clone ~-3 ~-40 ~99 ~3 ~30 ~101 ~97 ~-40 ~99
clone ~-1 ~-40 ~97 ~1 ~30 ~103 ~99 ~-40 ~97
clone ~-2 ~-40 ~98 ~2 ~30 ~102 ~98 ~-40 ~98

#clone ~-10 ~-40 ~90 ~10 ~30 ~110 ~90 ~-40 ~90

# create restored area
fill ~95 ~-40 ~95 ~105 ~30 ~105 minecraft:deepslate_coal_ore replace #game:bolt_place
clone ~95 ~-40 ~95 ~105 ~30 ~105 ~-5 ~-40 ~-5 filtered minecraft:deepslate_coal_ore

# bring back blocks that were still alive
clone ~95 ~-40 ~-5 ~105 ~30 ~5 ~-5 ~-40 ~-5 filtered #game:bolt_place

#
execute as @a at @s run function game:char/overlord/in_unstable

#
effect give @s blindness 1 1 true
effect give @s slowness 1 2 true