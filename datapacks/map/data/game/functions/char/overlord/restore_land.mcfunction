#
fill ~95 ~-40 ~-5 ~110 ~30 ~5 air
fill ~95 ~-40 ~95 ~110 ~30 ~105 air

#clone current map state
clone ~-5 ~-40 ~-5 ~5 ~30 ~5 ~95 ~-40 ~-5 filtered #game:bolt_place

# clone area you are restoring (from dummy map)
clone ~-4 ~-40 ~98 ~4 ~30 ~102 ~96 ~-40 ~98
clone ~-2 ~-40 ~96 ~2 ~30 ~104 ~98 ~-40 ~96
clone ~-3 ~-40 ~97 ~3 ~30 ~103 ~97 ~-40 ~97

#clone ~-10 ~-40 ~90 ~10 ~30 ~110 ~90 ~-40 ~90

# create restored area
fill ~95 ~-40 ~95 ~105 ~30 ~105 minecraft:blackstone replace #game:bolt_place
clone ~95 ~-40 ~95 ~105 ~30 ~105 ~-5 ~-40 ~-5 filtered minecraft:blackstone

# bring back blocks that were still alive
clone ~95 ~-40 ~-5 ~105 ~30 ~5 ~-5 ~-40 ~-5 filtered #game:bolt_place

#
execute as @a at @s run function game:char/overlord/in_unstable

#
effect give @s blindness 1 1 true
effect give @s slowness 1 2 true