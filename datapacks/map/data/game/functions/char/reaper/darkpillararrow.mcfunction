scoreboard players add @s NArrow 1
kill @s[scores={NArrow=42..}]
execute as @s[scores={NArrow=..1}] at @s run fill ~1 ~-1 ~1 ~-1 ~2 ~-1 black_stained_glass
execute as @s[scores={NArrow=41..}] at @s run fill ~1 ~-1 ~1 ~-1 ~2 ~-1 air
execute as @s[scores={NArrow=..1}] at @s run fill ~ ~-1 ~-1 ~1 ~1 ~-1 black_stained_glass
execute as @s[scores={NArrow=..1}] at @s run summon tnt ~ ~ ~ {Fuse:34,NoGravity:1}
execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~ ~1.8 ~ minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~ ~1.8 ~ minecraft:black_stained_glass run function game:char/reaper/darkpillar
