scoreboard players add @s PS 1
execute as @s[scores={PS=..4},x=600,y=60,z=600,distance=3..100] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 white_stained_glass replace air
execute as @s[scores={PS=55..},x=600,y=60,z=600,distance=3..100] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace white_stained_glass
kill @s[scores={PS=55..}]
execute as @s[scores={PS=..4},x=600,y=60,z=600,distance=3..100] at @s run fill ~-1 ~0 ~-1 ~1 ~2 ~1 air replace white_stained_glass
execute as @s[scores={PS=..2}] at @s positioned ~ ~.2 ~ run teleport @s @s
execute as @s[scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~ ~ ~3.9 {Fuse:3}
execute as @s[scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~ ~ ~-3.9 {Fuse:3}
execute as @s[scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~3.9 ~ ~ {Fuse:3}
execute as @s[scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~-3.9 ~ ~ {Fuse:3}
execute as @s[scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~ ~ ~3.9 {Fuse:3}
execute as @s[scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~ ~ ~-3.9 {Fuse:3}
execute as @s[scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~3.9 ~ ~ {Fuse:3}
execute as @s[scores={PS=..1},x=600,y=60,z=600,distance=3..100] at @s run summon tnt ~-3.9 ~ ~ {Fuse:3}