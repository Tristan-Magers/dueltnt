#> delta:internal/summon/summon_creepers_recursive
#   Recursively spawns creepers
#
# Callers:
#   > delta:internal/summon_creepers
#
# Inputs:
#   score $creepers_remaining delta.internal.math       <<< Number of creepers to spawn
#
# Output:
#   spawns creepers

execute positioned ~ ~1000 ~ summon creeper run function delta:internal/summon/initialize_creepers
scoreboard players remove $creepers_remaining delta.internal.math 1
execute if score $creepers_remaining delta.internal.math matches 1.. run function delta:internal/summon/summon_creepers_recursive