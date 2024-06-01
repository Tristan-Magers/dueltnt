#> delta:internal/subtick/pre_explosion_trigger
#   Runs commands as the player after all other entity processing has occurred and before the explosion has occurred
#
# Callers:
#   > delta:pre_explosion_trigger (advancement)

advancement revoke @s only delta:pre_explosion_trigger

#Store previous gamemode before switching
scoreboard players set @s[gamemode=adventure] delta.internal.gamemode 0
scoreboard players set @s[gamemode=creative] delta.internal.gamemode 1
scoreboard players set @s[gamemode=spectator] delta.internal.gamemode 2
scoreboard players set @s[gamemode=survival] delta.internal.gamemode 3

#Put self in creative so only knockback is applied, no damage
gamemode creative

#Teleport self up
tp @s ~ ~1000 ~

#Store blast protection values & temporarily remove it if present
tag @s remove delta.internal.blastprot
execute unless items entity @s armor.* *[enchantments~[{enchantment:"minecraft:blast_protection"}]] run return 0
tag @s add delta.internal.blastprot

scoreboard players set @s delta.internal.blastprot.feet 0
scoreboard players set @s delta.internal.blastprot.legs 0
scoreboard players set @s delta.internal.blastprot.chest 0
scoreboard players set @s delta.internal.blastprot.head 0

data modify storage delta:storage Inventory set from entity @s Inventory

execute if items entity @s armor.feet *[minecraft:enchantments] store result score @s delta.internal.blastprot.feet run data get storage delta:storage Inventory[{Slot:100b}].components."minecraft:enchantments".levels."minecraft:blast_protection"
execute if items entity @s armor.legs *[minecraft:enchantments] store result score @s delta.internal.blastprot.legs run data get storage delta:storage Inventory[{Slot:101b}].components."minecraft:enchantments".levels."minecraft:blast_protection"
execute if items entity @s armor.chest *[minecraft:enchantments] store result score @s delta.internal.blastprot.chest run data get storage delta:storage Inventory[{Slot:102b}].components."minecraft:enchantments".levels."minecraft:blast_protection"
execute if items entity @s armor.head *[minecraft:enchantments] store result score @s delta.internal.blastprot.head run data get storage delta:storage Inventory[{Slot:103b}].components."minecraft:enchantments".levels."minecraft:blast_protection"

item modify entity @s armor.feet delta:blastprot/remove
item modify entity @s armor.legs delta:blastprot/remove
item modify entity @s armor.chest delta:blastprot/remove
item modify entity @s armor.head delta:blastprot/remove