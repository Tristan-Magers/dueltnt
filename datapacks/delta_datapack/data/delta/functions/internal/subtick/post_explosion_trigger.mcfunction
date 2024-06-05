#> delta:internal/subtick/post_explosion_trigger
#   Runs commands as the player immediately after the creeper explosion has been processed
#
# Callers:
#   > delta:post_explosion_trigger (advancement)

advancement revoke @s only delta:post_explosion_trigger

#Revert player to previous gamemode
gamemode adventure @s[scores={delta.internal.gamemode=0}]
gamemode creative @s[scores={delta.internal.gamemode=1}]
gamemode spectator @s[scores={delta.internal.gamemode=2}]
gamemode survival @s[scores={delta.internal.gamemode=3}]

#Revert difficulty if necessary
execute if score $diff delta.internal.gamemode matches 0 run difficulty peaceful

#Teleport self down
tp @s ~ ~-1000 ~

#Restore blast protection
execute as @s[tag=delta.internal.blastprot] run return 0

execute if score @s delta.internal.blastprot.feet matches 1.. run item modify entity @s armor.feet delta:blastprot/restore/feet
execute if score @s delta.internal.blastprot.legs matches 1.. run item modify entity @s armor.legs delta:blastprot/restore/legs
execute if score @s delta.internal.blastprot.chest matches 1.. run item modify entity @s armor.chest delta:blastprot/restore/chest
execute if score @s delta.internal.blastprot.head matches 1.. run item modify entity @s armor.head delta:blastprot/restore/head