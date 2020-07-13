scoreboard players add @s groundtimer 1

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~-1 ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~-1 ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~-1 ~1 purple_wool run tag @s add sound

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~ ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~ ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~ ~1 purple_wool run tag @s add sound

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~1 ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~1 ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~-1 ~1 ~1 purple_wool run tag @s add sound

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~-1 ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~-1 ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~-1 ~1 purple_wool run tag @s add sound

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~ ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~ ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~ ~1 purple_wool run tag @s add sound

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~1 ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~1 ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~ ~1 ~1 purple_wool run tag @s add sound

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~-1 ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~-1 ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~-1 ~1 purple_wool run tag @s add sound

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~ ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~ ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~ ~1 purple_wool run tag @s add sound

execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~1 ~-1 purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~1 ~ purple_wool run tag @s add sound
execute as @s[scores={groundtimer=176..}] at @s positioned ~ ~-2 ~ if block ~1 ~1 ~1 purple_wool run tag @s add sound


execute as @s[scores={groundtimer=176..},tag=sound] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0
execute as @s[scores={groundtimer=176..}] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace purple_wool
execute as @s[scores={groundtimer=178..}] at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 air replace purple_wool
execute as @s[scores={groundtimer=180..}] at @s run fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 air replace purple_wool
kill @s[scores={groundtimer=180..}]