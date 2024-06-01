scoreboard players add @s NArrow 1
kill @s[scores={NArrow=38..}]
execute as @s[scores={NArrow=..1}] at @s run fill ~1 ~-1 ~1 ~-1 ~2 ~-1 black_stained_glass
execute as @s[scores={NArrow=37..}] at @s run fill ~1 ~-1 ~1 ~-1 ~2 ~-1 air
execute as @s[scores={NArrow=..1}] at @s run fill ~ ~-1 ~-1 ~1 ~1 ~-1 black_stained_glass

execute as @s[scores={NArrow=..1}] at @s run execute as @e[type=zombie,distance=..4.5,tag=dummy] at @s if block ~0.3 ~1.8 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @e[type=zombie,distance=..4.5,tag=dummy] at @s if block ~0.3 ~1.8 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar

execute as @s[scores={NArrow=..1}] at @s run execute as @e[type=zombie,distance=..4.5,tag=dummy] at @s if block ~0.3 ~1.8 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @e[type=zombie,distance=..4.5,tag=dummy] at @s if block ~0.3 ~1.8 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar

execute as @s[scores={NArrow=..1}] at @s run execute as @e[type=zombie,distance=..4.5,tag=dummy] at @s if block ~-0.3 ~1.8 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @e[type=zombie,distance=..4.5,tag=dummy] at @s if block ~-0.3 ~1.8 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar

execute as @s[scores={NArrow=..1}] at @s run execute as @e[type=zombie,distance=..4.5,tag=dummy] at @s if block ~-0.3 ~1.8 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @e[type=zombie,distance=..4.5,tag=dummy] at @s if block ~-0.3 ~1.8 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar

execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~0.3 ~1.8 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~0.3 ~1.8 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar

execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~0.3 ~1.8 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~0.3 ~1.8 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar

execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~-0.3 ~1.8 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~-0.3 ~1.8 ~0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar

execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~-0.3 ~1.8 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar
execute as @s[scores={NArrow=..1}] at @s run execute as @a[gamemode=adventure,distance=..4.5] at @s if block ~-0.3 ~1.8 ~-0.3 minecraft:black_stained_glass run function game:char/reaper/darkpillar

execute as @s[scores={NArrow=..1},tag=hit_player] at @s run playsound minecraft:entity.armadillo.brush master @a ~ ~ ~ 1 0
execute as @s[scores={NArrow=..1},tag=hit_player] at @s run playsound minecraft:entity.iron_golem.step master @a ~ ~ ~ 1 0
execute as @s[scores={NArrow=..1},tag=hit_player] at @s run playsound minecraft:block.vault.hit master @a ~ ~ ~ 1 0
execute as @s[scores={NArrow=..1},tag=hit_player] at @s run playsound minecraft:block.wool.break master @a ~ ~ ~ 1 0

execute as @s[scores={NArrow=..1},tag=!hit_player] at @s run summon tnt ~ ~ ~ {fuse:30,NoGravity:1}
execute as @s[scores={NArrow=..1},tag=hit_player] at @s run summon tnt ~ ~ ~ {fuse:28,NoGravity:1}

scoreboard players add @s[scores={NArrow=..1},tag=hit_player] NArrow 2