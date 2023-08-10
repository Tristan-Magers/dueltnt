execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}},scores={wand_cooldown=1..}] at @s anchored eyes run tag @s add click_delay
execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}},scores={wand_cooldown=1..}] at @s anchored eyes run tag @s add click_delay
execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={wand_cooldown=1..}] at @s anchored eyes run tag @s add click_delay
execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}},scores={wand_cooldown=1..}] at @s anchored eyes run tag @s add click_delay
execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={wand_cooldown=1..}] at @s anchored eyes run tag @s add click_delay

execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}},scores={wand_cooldown=..0}] at @s anchored eyes run function game:char/overlord/masterwand
execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}},scores={wand_cooldown=..0}] at @s anchored eyes run function game:char/overlord/masterwand
execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}},scores={wand_cooldown=..0}] at @s anchored eyes run function game:char/overlord/masterwand
execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}},scores={wand_cooldown=..0}] at @s anchored eyes run function game:char/overlord/masterwand
execute as @s[tag=!gather,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={wand_cooldown=..0}] at @s anchored eyes run function game:char/overlord/masterwand

execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] at @s anchored eyes run tag @s add mwnext
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] at @s anchored eyes run tag @s add mwnext
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] at @s anchored eyes run tag @s add mwnext
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] at @s anchored eyes run tag @s add mwnext
execute as @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] at @s anchored eyes run tag @s add mwnext