scoreboard players add @s timer 1
execute as @s[scores={timer=1}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
execute as @s[scores={timer=11}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
execute as @s[scores={timer=21}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
execute as @s[scores={timer=21}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
#execute as @s[scores={timer=31}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
kill @s[scores={timer=31}]

#turn air
execute as @s[scores={timer=1}] at @s if block ~ ~ ~ packed_ice run setblock ~ ~ ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~1 ~ ~ packed_ice run setblock ~1 ~ ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~-1 ~ ~ packed_ice run setblock ~-1 ~ ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~ ~1 ~ packed_ice run setblock ~ ~1 ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ packed_ice run setblock ~ ~-1 ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~ ~ ~1 packed_ice run setblock ~ ~ ~1 air destroy
execute as @s[scores={timer=1}] at @s if block ~ ~ ~-1 packed_ice run setblock ~ ~ ~-1 air destroy

execute as @s[scores={timer=3}] if block ~1 ~ ~1 packed_ice run setblock ~1 ~ ~1 air destroy
execute as @s[scores={timer=3}] if block ~-1 ~ ~1 packed_ice run setblock ~-1 ~ ~1 air destroy
execute as @s[scores={timer=3}] if block ~1 ~ ~-1 packed_ice run setblock ~1 ~ ~-1 air destroy
execute as @s[scores={timer=3}] if block ~-1 ~ ~-1 packed_ice run setblock ~-1 ~ ~-1 air destroy
execute as @s[scores={timer=3}] if block ~1 ~1 ~ packed_ice run setblock ~1 ~1 ~ air destroy
execute as @s[scores={timer=3}] if block ~-1 ~1 ~ packed_ice run setblock ~-1 ~1 ~ air destroy
execute as @s[scores={timer=3}] if block ~1 ~-1 ~ packed_ice run setblock ~1 ~-1 ~ air destroy
execute as @s[scores={timer=3}] if block ~-1 ~-1 ~ packed_ice run setblock ~-1 ~-1 ~ air destroy
execute as @s[scores={timer=3}] if block ~ ~1 ~1 packed_ice run setblock ~ ~1 ~1 air destroy
execute as @s[scores={timer=3}] if block ~ ~-1 ~1 packed_ice run setblock ~ ~-1 ~1 air destroy
execute as @s[scores={timer=3}] if block ~ ~1 ~-1 packed_ice run setblock ~ ~1 ~-1 air destroy
execute as @s[scores={timer=3}] if block ~ ~-1 ~-1 packed_ice run setblock ~ ~-1 ~-1 air destroy

execute as @s[scores={timer=5}] if block ~1 ~1 ~1 packed_ice run setblock ~1 ~1 ~1 air destroy
execute as @s[scores={timer=5}] if block ~-1 ~1 ~1 packed_ice run setblock ~-1 ~1 ~1 air destroy
execute as @s[scores={timer=5}] if block ~1 ~-1 ~1 packed_ice run setblock ~1 ~-1 ~1 air destroy
execute as @s[scores={timer=5}] if block ~1 ~1 ~-1 packed_ice run setblock ~1 ~1 ~-1 air destroy
execute as @s[scores={timer=5}] if block ~-1 ~-1 ~1 packed_ice run setblock ~-1 ~-1 ~1 air destroy
execute as @s[scores={timer=5}] if block ~1 ~-1 ~-1 packed_ice run setblock ~1 ~-1 ~-1 air destroy
execute as @s[scores={timer=5}] if block ~-1 ~1 ~-1 packed_ice run setblock ~-1 ~1 ~-1 air destroy
execute as @s[scores={timer=5}] if block ~-1 ~-1 ~-1 packed_ice run setblock ~-1 ~-1 ~-1 air destroy

execute as @s[scores={timer=7}] if block ~2 ~ ~ packed_ice run setblock ~2 ~ ~ air destroy
execute as @s[scores={timer=7}] if block ~-2 ~ ~ packed_ice run setblock ~-2 ~ ~ air destroy
execute as @s[scores={timer=7}] if block ~ ~2 ~ packed_ice run setblock ~ ~2 ~ air destroy
execute as @s[scores={timer=7}] if block ~ ~-2 ~ packed_ice run setblock ~ ~-2 ~ air destroy
execute as @s[scores={timer=7}] if block ~ ~ ~2 packed_ice run setblock ~ ~ ~2 air destroy
execute as @s[scores={timer=7}] if block ~ ~ ~-2 packed_ice run setblock ~ ~ ~-2 air destroy

execute as @s[scores={timer=9}] if block ~2 ~1 ~ packed_ice run setblock ~2 ~1 ~ air destroy
execute as @s[scores={timer=9}] if block ~2 ~ ~1 packed_ice run setblock ~2 ~ ~1 air destroy
execute as @s[scores={timer=9}] if block ~2 ~-1 ~ packed_ice run setblock ~2 ~-1 ~ air destroy
execute as @s[scores={timer=9}] if block ~2 ~ ~-1 packed_ice run setblock ~2 ~ ~-1 air destroy
execute as @s[scores={timer=9}] if block ~-2 ~1 ~ packed_ice run setblock ~-2 ~1 ~ air destroy
execute as @s[scores={timer=9}] if block ~-2 ~ ~1 packed_ice run setblock ~-2 ~ ~1 air destroy
execute as @s[scores={timer=9}] if block ~-2 ~-1 ~ packed_ice run setblock ~-2 ~-1 ~ air destroy
execute as @s[scores={timer=9}] if block ~-2 ~ ~-1 packed_ice run setblock ~-2 ~ ~-1 air destroy

execute as @s[scores={timer=9}] if block ~1 ~2 ~ packed_ice run setblock ~1 ~2 ~ air destroy
execute as @s[scores={timer=9}] if block ~-1 ~2 ~ packed_ice run setblock ~-1 ~2 ~ air destroy
execute as @s[scores={timer=9}] if block ~ ~2 ~1 packed_ice run setblock ~ ~2 ~1 air destroy
execute as @s[scores={timer=9}] if block ~ ~2 ~-1 packed_ice run setblock ~ ~2 ~-1 air destroy
execute as @s[scores={timer=9}] if block ~1 ~-2 ~ packed_ice run setblock ~1 ~-2 ~ air destroy
execute as @s[scores={timer=9}] if block ~-1 ~-2 ~ packed_ice run setblock ~-1 ~-2 ~ air destroy
execute as @s[scores={timer=9}] if block ~ ~-2 ~1 packed_ice run setblock ~ ~-2 ~1 air destroy
execute as @s[scores={timer=9}] if block ~ ~-2 ~-1 packed_ice run setblock ~ ~-2 ~-1 air destroy

execute as @s[scores={timer=9}] if block ~1 ~ ~2 packed_ice run setblock ~1 ~ ~2 air destroy
execute as @s[scores={timer=9}] if block ~-1 ~ ~2 packed_ice run setblock ~-1 ~ ~2 air destroy
execute as @s[scores={timer=9}] if block ~ ~1 ~2 packed_ice run setblock ~ ~1 ~2 air destroy
execute as @s[scores={timer=9}] if block ~ ~-1 ~2 packed_ice run setblock ~ ~-1 ~2 air destroy
execute as @s[scores={timer=9}] if block ~1 ~ ~-2 packed_ice run setblock ~1 ~ ~-2 air destroy
execute as @s[scores={timer=9}] if block ~-1 ~ ~-2 packed_ice run setblock ~-1 ~ ~-2 air destroy
execute as @s[scores={timer=9}] if block ~ ~1 ~-2 packed_ice run setblock ~ ~1 ~-2 air destroy
execute as @s[scores={timer=9}] if block ~ ~-1 ~-2 packed_ice run setblock ~ ~-1 ~-2 air destroy

execute as @s[scores={timer=11}] if block ~2 ~1 ~1 packed_ice run setblock ~2 ~1 ~1 air destroy
execute as @s[scores={timer=11}] if block ~2 ~1 ~-1 packed_ice run setblock ~2 ~1 ~-1 air destroy
execute as @s[scores={timer=11}] if block ~2 ~-1 ~1 packed_ice run setblock ~2 ~-1 ~1 air destroy
execute as @s[scores={timer=11}] if block ~2 ~-1 ~-1 packed_ice run setblock ~2 ~-1 ~-1 air destroy
execute as @s[scores={timer=11}] if block ~-2 ~1 ~1 packed_ice run setblock ~-2 ~1 ~1 air destroy
execute as @s[scores={timer=11}] if block ~-2 ~1 ~-1 packed_ice run setblock ~-2 ~1 ~-1 air destroy
execute as @s[scores={timer=11}] if block ~-2 ~-1 ~1 packed_ice run setblock ~-2 ~-1 ~1 air destroy
execute as @s[scores={timer=11}] if block ~-2 ~-1 ~-1 packed_ice run setblock ~-2 ~-1 ~-1 air destroy

execute as @s[scores={timer=11}] if block ~1 ~2 ~1 packed_ice run setblock ~1 ~2 ~1 air destroy
execute as @s[scores={timer=11}] if block ~1 ~2 ~-1 packed_ice run setblock ~1 ~2 ~-1 air destroy
execute as @s[scores={timer=11}] if block ~-1 ~2 ~1 packed_ice run setblock ~-1 ~2 ~1 air destroy
execute as @s[scores={timer=11}] if block ~-1 ~2 ~-1 packed_ice run setblock ~-1 ~2 ~-1 air destroy
execute as @s[scores={timer=11}] if block ~1 ~-2 ~1 packed_ice run setblock ~1 ~-2 ~1 air destroy
execute as @s[scores={timer=11}] if block ~1 ~-2 ~-1 packed_ice run setblock ~1 ~-2 ~-1 air destroy
execute as @s[scores={timer=11}] if block ~-1 ~-2 ~1 packed_ice run setblock ~-1 ~-2 ~1 air destroy
execute as @s[scores={timer=11}] if block ~-1 ~-2 ~-1 packed_ice run setblock ~-1 ~-2 ~-1 air destroy

execute as @s[scores={timer=11}] if block ~1 ~1 ~2 packed_ice run setblock ~1 ~1 ~2 air destroy
execute as @s[scores={timer=11}] if block ~1 ~-1 ~2 packed_ice run setblock ~1 ~-1 ~2 air destroy
execute as @s[scores={timer=11}] if block ~-1 ~1 ~2 packed_ice run setblock ~-1 ~1 ~2 air destroy
execute as @s[scores={timer=11}] if block ~-1 ~-1 ~2 packed_ice run setblock ~-1 ~-1 ~2 air destroy
execute as @s[scores={timer=11}] if block ~1 ~1 ~-2 packed_ice run setblock ~1 ~1 ~-2 air destroy
execute as @s[scores={timer=11}] if block ~1 ~-1 ~-2 packed_ice run setblock ~1 ~-1 ~-2 air destroy
execute as @s[scores={timer=11}] if block ~-1 ~1 ~-2 packed_ice run setblock ~-1 ~1 ~-2 air destroy
execute as @s[scores={timer=11}] if block ~-1 ~-1 ~-2 packed_ice run setblock ~-1 ~-1 ~-2 air destroy

#turn ice
execute as @s[scores={timer=1}] at @s unless block ~ ~ ~ white_stained_glass unless block ~ ~ ~ air unless block ~ ~ ~ barrier run setblock ~ ~ ~ packed_ice
execute as @s[scores={timer=1}] at @s unless block ~1 ~ ~ white_stained_glass unless block ~1 ~ ~ air unless block ~1 ~ ~ barrier run setblock ~1 ~ ~ packed_ice
execute as @s[scores={timer=1}] at @s unless block ~-1 ~ ~ white_stained_glass unless block ~-1 ~ ~ air unless block ~-1 ~ ~ barrier run setblock ~-1 ~ ~ packed_ice
execute as @s[scores={timer=1}] at @s unless block ~ ~1 ~ white_stained_glass unless block ~ ~1 ~ air unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ packed_ice
execute as @s[scores={timer=1}] at @s unless block ~ ~-1 ~ white_stained_glass unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ packed_ice
execute as @s[scores={timer=1}] at @s unless block ~ ~ ~1 white_stained_glass unless block ~ ~ ~1 air unless block ~ ~ ~1 barrier run setblock ~ ~ ~1 packed_ice
execute as @s[scores={timer=1}] at @s unless block ~ ~ ~-1 white_stained_glass unless block ~ ~ ~-1 air unless block ~ ~ ~-1 barrier run setblock ~ ~ ~-1 packed_ice

execute as @s[scores={timer=3}] at @s unless block ~1 ~ ~1 white_stained_glass unless block ~1 ~ ~1 air unless block ~1 ~ ~1 barrier run setblock ~1 ~ ~1 packed_ice
execute as @s[scores={timer=3}] at @s unless block ~-1 ~ ~1 white_stained_glass unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 barrier run setblock ~-1 ~ ~1 packed_ice
execute as @s[scores={timer=3}] at @s unless block ~1 ~ ~-1 white_stained_glass unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 barrier run setblock ~1 ~ ~-1 packed_ice
execute as @s[scores={timer=3}] at @s unless block ~-1 ~ ~-1 white_stained_glass unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 barrier run setblock ~-1 ~ ~-1 packed_ice
execute as @s[scores={timer=3}] at @s unless block ~1 ~1 ~ white_stained_glass unless block ~1 ~1 ~ air unless block ~1 ~1 ~ barrier run setblock ~1 ~1 ~ packed_ice
execute as @s[scores={timer=3}] at @s unless block ~-1 ~1 ~ white_stained_glass unless block ~-1 ~1 ~ air unless block ~-1 ~1 ~ barrier run setblock ~-1 ~1 ~ packed_ice
execute as @s[scores={timer=3}] at @s unless block ~1 ~-1 ~ white_stained_glass unless block ~1 ~-1 ~ air unless block ~1 ~-1 ~ barrier run setblock ~1 ~-1 ~ packed_ice
execute as @s[scores={timer=3}] at @s unless block ~-1 ~-1 ~ white_stained_glass unless block ~-1 ~-1 ~ air unless block ~-1 ~-1 ~ barrier run setblock ~-1 ~-1 ~ packed_ice
execute as @s[scores={timer=3}] at @s unless block ~ ~1 ~1 white_stained_glass unless block ~ ~1 ~1 air unless block ~ ~1 ~1 barrier run setblock ~ ~1 ~1 packed_ice
execute as @s[scores={timer=3}] at @s unless block ~ ~-1 ~1 white_stained_glass unless block ~ ~-1 ~1 air unless block ~ ~-1 ~1 barrier run setblock ~ ~-1 ~1 packed_ice
execute as @s[scores={timer=3}] at @s unless block ~ ~1 ~-1 white_stained_glass unless block ~ ~1 ~-1 air unless block ~ ~1 ~-1 barrier run setblock ~ ~1 ~-1 packed_ice
execute as @s[scores={timer=3}] at @s unless block ~ ~-1 ~-1 white_stained_glass unless block ~ ~-1 ~-1 air unless block ~ ~-1 ~-1 barrier run setblock ~ ~-1 ~-1 packed_ice

execute as @s[scores={timer=5}] at @s unless block ~1 ~1 ~1 white_stained_glass unless block ~1 ~1 ~1 air unless block ~1 ~1 ~1 barrier run setblock ~1 ~1 ~1 packed_ice
execute as @s[scores={timer=5}] at @s unless block ~-1 ~1 ~1 white_stained_glass unless block ~-1 ~1 ~1 air unless block ~-1 ~1 ~1 barrier run setblock ~-1 ~1 ~1 packed_ice
execute as @s[scores={timer=5}] at @s unless block ~1 ~-1 ~1 white_stained_glass unless block ~1 ~-1 ~1 air unless block ~1 ~-1 ~1 barrier run setblock ~1 ~-1 ~1 packed_ice
execute as @s[scores={timer=5}] at @s unless block ~1 ~1 ~-1 white_stained_glass unless block ~1 ~1 ~-1 air unless block ~1 ~1 ~-1 barrier run setblock ~1 ~1 ~-1 packed_ice
execute as @s[scores={timer=5}] at @s unless block ~-1 ~-1 ~1 white_stained_glass unless block ~-1 ~-1 ~1 air unless block ~-1 ~-1 ~1 barrier run setblock ~-1 ~-1 ~1 packed_ice
execute as @s[scores={timer=5}] at @s unless block ~1 ~-1 ~-1 white_stained_glass unless block ~1 ~-1 ~-1 air unless block ~1 ~-1 ~-1 barrier run setblock ~1 ~-1 ~-1 packed_ice
execute as @s[scores={timer=5}] at @s unless block ~-1 ~1 ~-1 white_stained_glass unless block ~-1 ~1 ~-1 air unless block ~-1 ~1 ~-1 barrier run setblock ~-1 ~1 ~-1 packed_ice
execute as @s[scores={timer=5}] at @s unless block ~-1 ~-1 ~-1 white_stained_glass unless block ~-1 ~-1 ~-1 air unless block ~-1 ~-1 ~-1 barrier run setblock ~-1 ~-1 ~-1 packed_ice

execute as @s[scores={timer=7}] at @s unless block ~2 ~ ~ white_stained_glass unless block ~2 ~ ~ air unless block ~2 ~ ~ barrier run setblock ~2 ~ ~ packed_ice
execute as @s[scores={timer=7}] at @s unless block ~-2 ~ ~ white_stained_glass unless block ~-2 ~ ~ air unless block ~-2 ~ ~ barrier run setblock ~-2 ~ ~ packed_ice
execute as @s[scores={timer=7}] at @s unless block ~ ~2 ~ white_stained_glass unless block ~ ~2 ~ air unless block ~ ~2 ~ barrier run setblock ~ ~2 ~ packed_ice
execute as @s[scores={timer=7}] at @s unless block ~ ~-2 ~ white_stained_glass unless block ~ ~-2 ~ air unless block ~ ~-2 ~ barrier run setblock ~ ~-2 ~ packed_ice
execute as @s[scores={timer=7}] at @s unless block ~ ~ ~2 white_stained_glass unless block ~ ~ ~2 air unless block ~ ~ ~2 barrier run setblock ~ ~ ~2 packed_ice
execute as @s[scores={timer=7}] at @s unless block ~ ~ ~-2 white_stained_glass unless block ~ ~ ~-2 air unless block ~ ~ ~-2 barrier run setblock ~ ~ ~-2 packed_ice

execute as @s[scores={timer=9}] at @s unless block ~2 ~1 ~ white_stained_glass unless block ~2 ~1 ~ air unless block ~2 ~1 ~ barrier run setblock ~2 ~1 ~ packed_ice
execute as @s[scores={timer=9}] at @s unless block ~2 ~ ~1 white_stained_glass unless block ~2 ~ ~1 air unless block ~2 ~ ~1 barrier run setblock ~2 ~ ~1 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~2 ~-1 ~ white_stained_glass unless block ~2 ~-1 ~ air unless block ~2 ~-1 ~ barrier run setblock ~2 ~-1 ~ packed_ice
execute as @s[scores={timer=9}] at @s unless block ~2 ~ ~-1 white_stained_glass unless block ~2 ~ ~-1 air unless block ~2 ~ ~-1 barrier run setblock ~2 ~ ~-1 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~-2 ~1 ~ white_stained_glass unless block ~-2 ~1 ~ air unless block ~-2 ~1 ~ barrier run setblock ~-2 ~1 ~ packed_ice
execute as @s[scores={timer=9}] at @s unless block ~-2 ~ ~1 white_stained_glass unless block ~-2 ~ ~1 air unless block ~-2 ~ ~1 barrier run setblock ~-2 ~ ~1 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~-2 ~-1 ~ white_stained_glass unless block ~-2 ~-1 ~ air unless block ~-2 ~-1 ~ barrier run setblock ~-2 ~-1 ~ packed_ice
execute as @s[scores={timer=9}] at @s unless block ~-2 ~ ~-1 white_stained_glass unless block ~-2 ~ ~-1 air unless block ~-2 ~ ~-1 barrier run setblock ~-2 ~ ~-1 packed_ice

execute as @s[scores={timer=9}] at @s unless block ~1 ~2 ~ white_stained_glass unless block ~1 ~2 ~ air unless block ~1 ~2 ~ barrier run setblock ~1 ~2 ~ packed_ice
execute as @s[scores={timer=9}] at @s unless block ~-1 ~2 ~ white_stained_glass unless block ~-1 ~2 ~ air unless block ~-1 ~2 ~ barrier run setblock ~-1 ~2 ~ packed_ice
execute as @s[scores={timer=9}] at @s unless block ~ ~2 ~1 white_stained_glass unless block ~ ~2 ~1 air unless block ~ ~2 ~1 barrier run setblock ~ ~2 ~1 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~ ~2 ~-1 white_stained_glass unless block ~ ~2 ~-1 air unless block ~ ~2 ~-1 barrier run setblock ~ ~2 ~-1 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~1 ~-2 ~ white_stained_glass unless block ~1 ~-2 ~ air unless block ~1 ~-2 ~ barrier run setblock ~1 ~-2 ~ packed_ice
execute as @s[scores={timer=9}] at @s unless block ~-1 ~-2 ~ white_stained_glass unless block ~-1 ~-2 ~ air unless block ~-1 ~-2 ~ barrier run setblock ~-1 ~-2 ~ packed_ice
execute as @s[scores={timer=9}] at @s unless block ~ ~-2 ~1 white_stained_glass unless block ~ ~-2 ~1 air unless block ~ ~-2 ~1 barrier run setblock ~ ~-2 ~1 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~ ~-2 ~-1 white_stained_glass unless block ~ ~-2 ~-1 air unless block ~ ~-2 ~-1 barrier run setblock ~ ~-2 ~-1 packed_ice

execute as @s[scores={timer=9}] at @s unless block ~1 ~ ~2 white_stained_glass unless block ~1 ~ ~2 air unless block ~1 ~ ~2 barrier run setblock ~1 ~ ~2 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~-1 ~ ~2 white_stained_glass unless block ~-1 ~ ~2 air unless block ~-1 ~ ~2 barrier run setblock ~-1 ~ ~2 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~ ~1 ~2 white_stained_glass unless block ~ ~1 ~2 air unless block ~ ~1 ~2 barrier run setblock ~ ~1 ~2 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~ ~-1 ~2 white_stained_glass unless block ~ ~-1 ~2 air unless block ~ ~-1 ~2 barrier run setblock ~ ~-1 ~2 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~1 ~ ~-2 white_stained_glass unless block ~1 ~ ~-2 air unless block ~1 ~ ~-2 barrier run setblock ~1 ~ ~-2 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~-1 ~ ~-2 white_stained_glass unless block ~-1 ~ ~-2 air unless block ~-1 ~ ~-2 barrier run setblock ~-1 ~ ~-2 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~ ~1 ~-2 white_stained_glass unless block ~ ~1 ~-2 air unless block ~ ~1 ~-2 barrier run setblock ~ ~1 ~-2 packed_ice
execute as @s[scores={timer=9}] at @s unless block ~ ~-1 ~-2 white_stained_glass unless block ~ ~-1 ~-2 air unless block ~ ~-1 ~-2 barrier run setblock ~ ~-1 ~-2 packed_ice

execute as @s[scores={timer=11}] at @s unless block ~2 ~1 ~1 white_stained_glass unless block ~2 ~1 ~1 air unless block ~2 ~1 ~1 barrier run setblock ~2 ~1 ~1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~2 ~1 ~-1 white_stained_glass unless block ~2 ~1 ~-1 air unless block ~2 ~1 ~-1 barrier run setblock ~2 ~1 ~-1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~2 ~-1 ~1 white_stained_glass unless block ~2 ~-1 ~1 air unless block ~2 ~-1 ~1 barrier run setblock ~2 ~-1 ~1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~2 ~-1 ~-1 white_stained_glass unless block ~2 ~-1 ~-1 air unless block ~2 ~-1 ~-1 barrier run setblock ~2 ~-1 ~-1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-2 ~1 ~1 white_stained_glass unless block ~-2 ~1 ~1 air unless block ~-2 ~1 ~1 barrier run setblock ~-2 ~1 ~1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-2 ~1 ~-1 white_stained_glass unless block ~-2 ~1 ~-1 air unless block ~-2 ~1 ~-1 barrier run setblock ~-2 ~1 ~-1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-2 ~-1 ~1 white_stained_glass unless block ~-2 ~-1 ~1 air unless block ~-2 ~-1 ~1 barrier run setblock ~-2 ~-1 ~1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-2 ~-1 ~-1 white_stained_glass unless block ~-2 ~-1 ~-1 air unless block ~-2 ~-1 ~-1 barrier run setblock ~-2 ~-1 ~-1 packed_ice

execute as @s[scores={timer=11}] at @s unless block ~1 ~2 ~1 white_stained_glass unless block ~1 ~2 ~1 air unless block ~1 ~2 ~1 barrier run setblock ~1 ~2 ~1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~1 ~2 ~-1 white_stained_glass unless block ~1 ~2 ~-1 air unless block ~1 ~2 ~-1 barrier run setblock ~1 ~2 ~-1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-1 ~2 ~1 white_stained_glass unless block ~-1 ~2 ~1 air unless block ~-1 ~2 ~1 barrier run setblock ~-1 ~2 ~1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-1 ~2 ~-1 white_stained_glass unless block ~-1 ~2 ~-1 air unless block ~-1 ~2 ~-1 barrier run setblock ~-1 ~2 ~-1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~1 ~-2 ~1 white_stained_glass unless block ~1 ~-2 ~1 air unless block ~1 ~-2 ~1 barrier run setblock ~1 ~-2 ~1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~1 ~-2 ~-1 white_stained_glass unless block ~1 ~-2 ~-1 air unless block ~1 ~-2 ~-1 barrier run setblock ~1 ~-2 ~-1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-1 ~-2 ~1 white_stained_glass unless block ~-1 ~-2 ~1 air unless block ~-1 ~-2 ~1 barrier run setblock ~-1 ~-2 ~1 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-1 ~-2 ~-1 white_stained_glass unless block ~-1 ~-2 ~-1 air unless block ~-1 ~-2 ~-1 barrier run setblock ~-1 ~-2 ~-1 packed_ice

execute as @s[scores={timer=11}] at @s unless block ~1 ~1 ~2 white_stained_glass unless block ~1 ~1 ~2 air unless block ~1 ~1 ~2 barrier run setblock ~1 ~1 ~2 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~1 ~-1 ~2 white_stained_glass unless block ~1 ~-1 ~2 air unless block ~1 ~-1 ~2 barrier run setblock ~1 ~-1 ~2 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-1 ~1 ~2 white_stained_glass unless block ~-1 ~1 ~2 air unless block ~-1 ~1 ~2 barrier run setblock ~-1 ~1 ~2 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-1 ~-1 ~2 white_stained_glass unless block ~-1 ~-1 ~2 air unless block ~-1 ~-1 ~2 barrier run setblock ~-1 ~-1 ~2 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~1 ~1 ~-2 white_stained_glass unless block ~1 ~1 ~-2 air unless block ~1 ~1 ~-2 barrier run setblock ~1 ~1 ~-2 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~1 ~-1 ~-2 white_stained_glass unless block ~1 ~-1 ~-2 air unless block ~1 ~-1 ~-2 barrier run setblock ~1 ~-1 ~-2 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-1 ~1 ~-2 white_stained_glass unless block ~-1 ~1 ~-2 air unless block ~-1 ~1 ~-2 barrier run setblock ~-1 ~1 ~-2 packed_ice
execute as @s[scores={timer=11}] at @s unless block ~-1 ~-1 ~-2 white_stained_glass unless block ~-1 ~-1 ~-2 air unless block ~-1 ~-1 ~-2 barrier run setblock ~-1 ~-1 ~-2 packed_ice
