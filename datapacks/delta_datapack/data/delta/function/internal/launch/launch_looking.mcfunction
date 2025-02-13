#> delta:internal/launch/launch_looking
#   Launches the player in the input direction
#
# Inputs:
#   executed as player at player's position
#   execute rotated <desired direction>
#   score $temp_strength delta.api.launch       <<< Strength to launch in looking direction (scaled up by 10000)
#
# Outputs
#   player is launched in the looking direction of the command with the desired strength

#Set up bat + arrow to trigger advancement immediately before explosion
execute positioned ~ ~10000 ~ run function delta:internal/subtick/begin_launch_context

#Figure out offset angle to get reduced motion
function delta:internal/math/get_angle

#Check if peaceful
execute store result score $diff delta.internal.gamemode run difficulty
execute if score $diff delta.internal.gamemode matches 0 run difficulty easy

#Summon creepers
scoreboard players operation $temp delta.internal.id = @s delta.internal.id

execute anchored eyes positioned ^ ^ ^ run function delta:internal/summon/summon_creepers with storage delta:macros rotation

#Set up bat + arrow to trigger advancement immediately after explosion
execute positioned ~ ~12000 ~ run function delta:internal/subtick/end_launch_context