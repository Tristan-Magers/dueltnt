scoreboard players add @s timer 1

execute as @s[scores={timer=1}] at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 1.8
execute as @s[scores={timer=1}] at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 0.4 0.5
#execute as @s[scores={timer=1}] at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.3 0.7

execute as @s[scores={timer=1}] at @s run summon tnt ~ ~ ~ {NoGravity:1,Fuse:8,Motion:[0.0,0.0,0.0]}

execute as @s[scores={timer=1}] at @s run summon tnt ~ ~23 ~ {Tags:["part"],Fuse:16,Motion:[0.0,-1.38,0.0]}
execute as @s[scores={timer=9}] at @s run summon tnt ~ ~23 ~ {Tags:["part"],Fuse:16,Motion:[0.0,-1.38,0.0]}
execute as @s[scores={timer=17}] at @s run summon tnt ~ ~23 ~ {Tags:["part"],Fuse:16,Motion:[0.0,-1.38,0.0]}

#execute as @s[scores={timer=1}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
#execute as @s[scores={timer=11}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
#execute as @s[scores={timer=21}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
#execute as @s[scores={timer=21}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}

#execute as @s[scores={timer=31}] at @s run summon tnt ~ ~23 ~ {Fuse:20,Motion:[0.0,-0.9,0.0]}
kill @s[scores={timer=31}]

#turn air
execute as @s[scores={timer=1}] at @s if block ~ ~ ~ blue_ice run setblock ~ ~ ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~1 ~ ~ blue_ice run setblock ~1 ~ ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~-1 ~ ~ blue_ice run setblock ~-1 ~ ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~ ~1 ~ blue_ice run setblock ~ ~1 ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~ ~-1 ~ blue_ice run setblock ~ ~-1 ~ air destroy
execute as @s[scores={timer=1}] at @s if block ~ ~ ~1 blue_ice run setblock ~ ~ ~1 air destroy
execute as @s[scores={timer=1}] at @s if block ~ ~ ~-1 blue_ice run setblock ~ ~ ~-1 air destroy

execute as @s[scores={timer=2}] if block ~1 ~ ~1 blue_ice run setblock ~1 ~ ~1 air destroy
execute as @s[scores={timer=2}] if block ~-1 ~ ~1 blue_ice run setblock ~-1 ~ ~1 air destroy
execute as @s[scores={timer=2}] if block ~1 ~ ~-1 blue_ice run setblock ~1 ~ ~-1 air destroy
execute as @s[scores={timer=2}] if block ~-1 ~ ~-1 blue_ice run setblock ~-1 ~ ~-1 air destroy
execute as @s[scores={timer=2}] if block ~1 ~1 ~ blue_ice run setblock ~1 ~1 ~ air destroy
execute as @s[scores={timer=2}] if block ~-1 ~1 ~ blue_ice run setblock ~-1 ~1 ~ air destroy
execute as @s[scores={timer=2}] if block ~1 ~-1 ~ blue_ice run setblock ~1 ~-1 ~ air destroy
execute as @s[scores={timer=2}] if block ~-1 ~-1 ~ blue_ice run setblock ~-1 ~-1 ~ air destroy
execute as @s[scores={timer=2}] if block ~ ~1 ~1 blue_ice run setblock ~ ~1 ~1 air destroy
execute as @s[scores={timer=2}] if block ~ ~-1 ~1 blue_ice run setblock ~ ~-1 ~1 air destroy
execute as @s[scores={timer=2}] if block ~ ~1 ~-1 blue_ice run setblock ~ ~1 ~-1 air destroy
execute as @s[scores={timer=2}] if block ~ ~-1 ~-1 blue_ice run setblock ~ ~-1 ~-1 air destroy

execute as @s[scores={timer=3}] if block ~1 ~1 ~1 blue_ice run setblock ~1 ~1 ~1 air destroy
execute as @s[scores={timer=3}] if block ~-1 ~1 ~1 blue_ice run setblock ~-1 ~1 ~1 air destroy
execute as @s[scores={timer=3}] if block ~1 ~-1 ~1 blue_ice run setblock ~1 ~-1 ~1 air destroy
execute as @s[scores={timer=3}] if block ~1 ~1 ~-1 blue_ice run setblock ~1 ~1 ~-1 air destroy
execute as @s[scores={timer=3}] if block ~-1 ~-1 ~1 blue_ice run setblock ~-1 ~-1 ~1 air destroy
execute as @s[scores={timer=3}] if block ~1 ~-1 ~-1 blue_ice run setblock ~1 ~-1 ~-1 air destroy
execute as @s[scores={timer=3}] if block ~-1 ~1 ~-1 blue_ice run setblock ~-1 ~1 ~-1 air destroy
execute as @s[scores={timer=3}] if block ~-1 ~-1 ~-1 blue_ice run setblock ~-1 ~-1 ~-1 air destroy

execute as @s[scores={timer=4}] if block ~2 ~ ~ blue_ice run setblock ~2 ~ ~ air destroy
execute as @s[scores={timer=4}] if block ~-2 ~ ~ blue_ice run setblock ~-2 ~ ~ air destroy
execute as @s[scores={timer=4}] if block ~ ~2 ~ blue_ice run setblock ~ ~2 ~ air destroy
execute as @s[scores={timer=4}] if block ~ ~-2 ~ blue_ice run setblock ~ ~-2 ~ air destroy
execute as @s[scores={timer=4}] if block ~ ~ ~2 blue_ice run setblock ~ ~ ~2 air destroy
execute as @s[scores={timer=4}] if block ~ ~ ~-2 blue_ice run setblock ~ ~ ~-2 air destroy

execute as @s[scores={timer=5}] if block ~2 ~1 ~ blue_ice run setblock ~2 ~1 ~ air destroy
execute as @s[scores={timer=5}] if block ~2 ~ ~1 blue_ice run setblock ~2 ~ ~1 air destroy
execute as @s[scores={timer=5}] if block ~2 ~-1 ~ blue_ice run setblock ~2 ~-1 ~ air destroy
execute as @s[scores={timer=5}] if block ~2 ~ ~-1 blue_ice run setblock ~2 ~ ~-1 air destroy
execute as @s[scores={timer=5}] if block ~-2 ~1 ~ blue_ice run setblock ~-2 ~1 ~ air destroy
execute as @s[scores={timer=5}] if block ~-2 ~ ~1 blue_ice run setblock ~-2 ~ ~1 air destroy
execute as @s[scores={timer=5}] if block ~-2 ~-1 ~ blue_ice run setblock ~-2 ~-1 ~ air destroy
execute as @s[scores={timer=5}] if block ~-2 ~ ~-1 blue_ice run setblock ~-2 ~ ~-1 air destroy

execute as @s[scores={timer=5}] if block ~1 ~2 ~ blue_ice run setblock ~1 ~2 ~ air destroy
execute as @s[scores={timer=5}] if block ~-1 ~2 ~ blue_ice run setblock ~-1 ~2 ~ air destroy
execute as @s[scores={timer=5}] if block ~ ~2 ~1 blue_ice run setblock ~ ~2 ~1 air destroy
execute as @s[scores={timer=5}] if block ~ ~2 ~-1 blue_ice run setblock ~ ~2 ~-1 air destroy
execute as @s[scores={timer=5}] if block ~1 ~-2 ~ blue_ice run setblock ~1 ~-2 ~ air destroy
execute as @s[scores={timer=5}] if block ~-1 ~-2 ~ blue_ice run setblock ~-1 ~-2 ~ air destroy
execute as @s[scores={timer=5}] if block ~ ~-2 ~1 blue_ice run setblock ~ ~-2 ~1 air destroy
execute as @s[scores={timer=5}] if block ~ ~-2 ~-1 blue_ice run setblock ~ ~-2 ~-1 air destroy

execute as @s[scores={timer=5}] if block ~1 ~ ~2 blue_ice run setblock ~1 ~ ~2 air destroy
execute as @s[scores={timer=5}] if block ~-1 ~ ~2 blue_ice run setblock ~-1 ~ ~2 air destroy
execute as @s[scores={timer=5}] if block ~ ~1 ~2 blue_ice run setblock ~ ~1 ~2 air destroy
execute as @s[scores={timer=5}] if block ~ ~-1 ~2 blue_ice run setblock ~ ~-1 ~2 air destroy
execute as @s[scores={timer=5}] if block ~1 ~ ~-2 blue_ice run setblock ~1 ~ ~-2 air destroy
execute as @s[scores={timer=5}] if block ~-1 ~ ~-2 blue_ice run setblock ~-1 ~ ~-2 air destroy
execute as @s[scores={timer=5}] if block ~ ~1 ~-2 blue_ice run setblock ~ ~1 ~-2 air destroy
execute as @s[scores={timer=5}] if block ~ ~-1 ~-2 blue_ice run setblock ~ ~-1 ~-2 air destroy

execute as @s[scores={timer=6}] if block ~2 ~1 ~1 blue_ice run setblock ~2 ~1 ~1 air destroy
execute as @s[scores={timer=6}] if block ~2 ~1 ~-1 blue_ice run setblock ~2 ~1 ~-1 air destroy
execute as @s[scores={timer=6}] if block ~2 ~-1 ~1 blue_ice run setblock ~2 ~-1 ~1 air destroy
execute as @s[scores={timer=6}] if block ~2 ~-1 ~-1 blue_ice run setblock ~2 ~-1 ~-1 air destroy
execute as @s[scores={timer=6}] if block ~-2 ~1 ~1 blue_ice run setblock ~-2 ~1 ~1 air destroy
execute as @s[scores={timer=6}] if block ~-2 ~1 ~-1 blue_ice run setblock ~-2 ~1 ~-1 air destroy
execute as @s[scores={timer=6}] if block ~-2 ~-1 ~1 blue_ice run setblock ~-2 ~-1 ~1 air destroy
execute as @s[scores={timer=6}] if block ~-2 ~-1 ~-1 blue_ice run setblock ~-2 ~-1 ~-1 air destroy

execute as @s[scores={timer=6}] if block ~1 ~2 ~1 blue_ice run setblock ~1 ~2 ~1 air destroy
execute as @s[scores={timer=6}] if block ~1 ~2 ~-1 blue_ice run setblock ~1 ~2 ~-1 air destroy
execute as @s[scores={timer=6}] if block ~-1 ~2 ~1 blue_ice run setblock ~-1 ~2 ~1 air destroy
execute as @s[scores={timer=6}] if block ~-1 ~2 ~-1 blue_ice run setblock ~-1 ~2 ~-1 air destroy
execute as @s[scores={timer=6}] if block ~1 ~-2 ~1 blue_ice run setblock ~1 ~-2 ~1 air destroy
execute as @s[scores={timer=6}] if block ~1 ~-2 ~-1 blue_ice run setblock ~1 ~-2 ~-1 air destroy
execute as @s[scores={timer=6}] if block ~-1 ~-2 ~1 blue_ice run setblock ~-1 ~-2 ~1 air destroy
execute as @s[scores={timer=6}] if block ~-1 ~-2 ~-1 blue_ice run setblock ~-1 ~-2 ~-1 air destroy

execute as @s[scores={timer=6}] if block ~1 ~1 ~2 blue_ice run setblock ~1 ~1 ~2 air destroy
execute as @s[scores={timer=6}] if block ~1 ~-1 ~2 blue_ice run setblock ~1 ~-1 ~2 air destroy
execute as @s[scores={timer=6}] if block ~-1 ~1 ~2 blue_ice run setblock ~-1 ~1 ~2 air destroy
execute as @s[scores={timer=6}] if block ~-1 ~-1 ~2 blue_ice run setblock ~-1 ~-1 ~2 air destroy
execute as @s[scores={timer=6}] if block ~1 ~1 ~-2 blue_ice run setblock ~1 ~1 ~-2 air destroy
execute as @s[scores={timer=6}] if block ~1 ~-1 ~-2 blue_ice run setblock ~1 ~-1 ~-2 air destroy
execute as @s[scores={timer=6}] if block ~-1 ~1 ~-2 blue_ice run setblock ~-1 ~1 ~-2 air destroy
execute as @s[scores={timer=6}] if block ~-1 ~-1 ~-2 blue_ice run setblock ~-1 ~-1 ~-2 air destroy

#turn ice
execute as @s[scores={timer=1}] at @s unless block ~ ~ ~ white_stained_glass unless block ~ ~ ~ air unless block ~ ~ ~ barrier run setblock ~ ~ ~ blue_ice
execute as @s[scores={timer=1}] at @s unless block ~1 ~ ~ white_stained_glass unless block ~1 ~ ~ air unless block ~1 ~ ~ barrier run setblock ~1 ~ ~ blue_ice
execute as @s[scores={timer=1}] at @s unless block ~-1 ~ ~ white_stained_glass unless block ~-1 ~ ~ air unless block ~-1 ~ ~ barrier run setblock ~-1 ~ ~ blue_ice
execute as @s[scores={timer=1}] at @s unless block ~ ~1 ~ white_stained_glass unless block ~ ~1 ~ air unless block ~ ~1 ~ barrier run setblock ~ ~1 ~ blue_ice
execute as @s[scores={timer=1}] at @s unless block ~ ~-1 ~ white_stained_glass unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ blue_ice
execute as @s[scores={timer=1}] at @s unless block ~ ~ ~1 white_stained_glass unless block ~ ~ ~1 air unless block ~ ~ ~1 barrier run setblock ~ ~ ~1 blue_ice
execute as @s[scores={timer=1}] at @s unless block ~ ~ ~-1 white_stained_glass unless block ~ ~ ~-1 air unless block ~ ~ ~-1 barrier run setblock ~ ~ ~-1 blue_ice

execute as @s[scores={timer=2}] at @s unless block ~1 ~ ~1 white_stained_glass unless block ~1 ~ ~1 air unless block ~1 ~ ~1 barrier run setblock ~1 ~ ~1 blue_ice
execute as @s[scores={timer=2}] at @s unless block ~-1 ~ ~1 white_stained_glass unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 barrier run setblock ~-1 ~ ~1 blue_ice
execute as @s[scores={timer=2}] at @s unless block ~1 ~ ~-1 white_stained_glass unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 barrier run setblock ~1 ~ ~-1 blue_ice
execute as @s[scores={timer=2}] at @s unless block ~-1 ~ ~-1 white_stained_glass unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 barrier run setblock ~-1 ~ ~-1 blue_ice
execute as @s[scores={timer=2}] at @s unless block ~1 ~1 ~ white_stained_glass unless block ~1 ~1 ~ air unless block ~1 ~1 ~ barrier run setblock ~1 ~1 ~ blue_ice
execute as @s[scores={timer=2}] at @s unless block ~-1 ~1 ~ white_stained_glass unless block ~-1 ~1 ~ air unless block ~-1 ~1 ~ barrier run setblock ~-1 ~1 ~ blue_ice
execute as @s[scores={timer=2}] at @s unless block ~1 ~-1 ~ white_stained_glass unless block ~1 ~-1 ~ air unless block ~1 ~-1 ~ barrier run setblock ~1 ~-1 ~ blue_ice
execute as @s[scores={timer=2}] at @s unless block ~-1 ~-1 ~ white_stained_glass unless block ~-1 ~-1 ~ air unless block ~-1 ~-1 ~ barrier run setblock ~-1 ~-1 ~ blue_ice
execute as @s[scores={timer=2}] at @s unless block ~ ~1 ~1 white_stained_glass unless block ~ ~1 ~1 air unless block ~ ~1 ~1 barrier run setblock ~ ~1 ~1 blue_ice
execute as @s[scores={timer=2}] at @s unless block ~ ~-1 ~1 white_stained_glass unless block ~ ~-1 ~1 air unless block ~ ~-1 ~1 barrier run setblock ~ ~-1 ~1 blue_ice
execute as @s[scores={timer=2}] at @s unless block ~ ~1 ~-1 white_stained_glass unless block ~ ~1 ~-1 air unless block ~ ~1 ~-1 barrier run setblock ~ ~1 ~-1 blue_ice
execute as @s[scores={timer=2}] at @s unless block ~ ~-1 ~-1 white_stained_glass unless block ~ ~-1 ~-1 air unless block ~ ~-1 ~-1 barrier run setblock ~ ~-1 ~-1 blue_ice

execute as @s[scores={timer=3}] at @s unless block ~1 ~1 ~1 white_stained_glass unless block ~1 ~1 ~1 air unless block ~1 ~1 ~1 barrier run setblock ~1 ~1 ~1 blue_ice
execute as @s[scores={timer=3}] at @s unless block ~-1 ~1 ~1 white_stained_glass unless block ~-1 ~1 ~1 air unless block ~-1 ~1 ~1 barrier run setblock ~-1 ~1 ~1 blue_ice
execute as @s[scores={timer=3}] at @s unless block ~1 ~-1 ~1 white_stained_glass unless block ~1 ~-1 ~1 air unless block ~1 ~-1 ~1 barrier run setblock ~1 ~-1 ~1 blue_ice
execute as @s[scores={timer=3}] at @s unless block ~1 ~1 ~-1 white_stained_glass unless block ~1 ~1 ~-1 air unless block ~1 ~1 ~-1 barrier run setblock ~1 ~1 ~-1 blue_ice
execute as @s[scores={timer=3}] at @s unless block ~-1 ~-1 ~1 white_stained_glass unless block ~-1 ~-1 ~1 air unless block ~-1 ~-1 ~1 barrier run setblock ~-1 ~-1 ~1 blue_ice
execute as @s[scores={timer=3}] at @s unless block ~1 ~-1 ~-1 white_stained_glass unless block ~1 ~-1 ~-1 air unless block ~1 ~-1 ~-1 barrier run setblock ~1 ~-1 ~-1 blue_ice
execute as @s[scores={timer=3}] at @s unless block ~-1 ~1 ~-1 white_stained_glass unless block ~-1 ~1 ~-1 air unless block ~-1 ~1 ~-1 barrier run setblock ~-1 ~1 ~-1 blue_ice
execute as @s[scores={timer=3}] at @s unless block ~-1 ~-1 ~-1 white_stained_glass unless block ~-1 ~-1 ~-1 air unless block ~-1 ~-1 ~-1 barrier run setblock ~-1 ~-1 ~-1 blue_ice

execute as @s[scores={timer=4}] at @s unless block ~2 ~ ~ white_stained_glass unless block ~2 ~ ~ air unless block ~2 ~ ~ barrier run setblock ~2 ~ ~ blue_ice
execute as @s[scores={timer=4}] at @s unless block ~-2 ~ ~ white_stained_glass unless block ~-2 ~ ~ air unless block ~-2 ~ ~ barrier run setblock ~-2 ~ ~ blue_ice
execute as @s[scores={timer=4}] at @s unless block ~ ~2 ~ white_stained_glass unless block ~ ~2 ~ air unless block ~ ~2 ~ barrier run setblock ~ ~2 ~ blue_ice
execute as @s[scores={timer=4}] at @s unless block ~ ~-2 ~ white_stained_glass unless block ~ ~-2 ~ air unless block ~ ~-2 ~ barrier run setblock ~ ~-2 ~ blue_ice
execute as @s[scores={timer=4}] at @s unless block ~ ~ ~2 white_stained_glass unless block ~ ~ ~2 air unless block ~ ~ ~2 barrier run setblock ~ ~ ~2 blue_ice
execute as @s[scores={timer=4}] at @s unless block ~ ~ ~-2 white_stained_glass unless block ~ ~ ~-2 air unless block ~ ~ ~-2 barrier run setblock ~ ~ ~-2 blue_ice

execute as @s[scores={timer=5}] at @s unless block ~2 ~1 ~ white_stained_glass unless block ~2 ~1 ~ air unless block ~2 ~1 ~ barrier run setblock ~2 ~1 ~ blue_ice
execute as @s[scores={timer=5}] at @s unless block ~2 ~ ~1 white_stained_glass unless block ~2 ~ ~1 air unless block ~2 ~ ~1 barrier run setblock ~2 ~ ~1 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~2 ~-1 ~ white_stained_glass unless block ~2 ~-1 ~ air unless block ~2 ~-1 ~ barrier run setblock ~2 ~-1 ~ blue_ice
execute as @s[scores={timer=5}] at @s unless block ~2 ~ ~-1 white_stained_glass unless block ~2 ~ ~-1 air unless block ~2 ~ ~-1 barrier run setblock ~2 ~ ~-1 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~-2 ~1 ~ white_stained_glass unless block ~-2 ~1 ~ air unless block ~-2 ~1 ~ barrier run setblock ~-2 ~1 ~ blue_ice
execute as @s[scores={timer=5}] at @s unless block ~-2 ~ ~1 white_stained_glass unless block ~-2 ~ ~1 air unless block ~-2 ~ ~1 barrier run setblock ~-2 ~ ~1 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~-2 ~-1 ~ white_stained_glass unless block ~-2 ~-1 ~ air unless block ~-2 ~-1 ~ barrier run setblock ~-2 ~-1 ~ blue_ice
execute as @s[scores={timer=5}] at @s unless block ~-2 ~ ~-1 white_stained_glass unless block ~-2 ~ ~-1 air unless block ~-2 ~ ~-1 barrier run setblock ~-2 ~ ~-1 blue_ice

execute as @s[scores={timer=5}] at @s unless block ~1 ~2 ~ white_stained_glass unless block ~1 ~2 ~ air unless block ~1 ~2 ~ barrier run setblock ~1 ~2 ~ blue_ice
execute as @s[scores={timer=5}] at @s unless block ~-1 ~2 ~ white_stained_glass unless block ~-1 ~2 ~ air unless block ~-1 ~2 ~ barrier run setblock ~-1 ~2 ~ blue_ice
execute as @s[scores={timer=5}] at @s unless block ~ ~2 ~1 white_stained_glass unless block ~ ~2 ~1 air unless block ~ ~2 ~1 barrier run setblock ~ ~2 ~1 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~ ~2 ~-1 white_stained_glass unless block ~ ~2 ~-1 air unless block ~ ~2 ~-1 barrier run setblock ~ ~2 ~-1 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~1 ~-2 ~ white_stained_glass unless block ~1 ~-2 ~ air unless block ~1 ~-2 ~ barrier run setblock ~1 ~-2 ~ blue_ice
execute as @s[scores={timer=5}] at @s unless block ~-1 ~-2 ~ white_stained_glass unless block ~-1 ~-2 ~ air unless block ~-1 ~-2 ~ barrier run setblock ~-1 ~-2 ~ blue_ice
execute as @s[scores={timer=5}] at @s unless block ~ ~-2 ~1 white_stained_glass unless block ~ ~-2 ~1 air unless block ~ ~-2 ~1 barrier run setblock ~ ~-2 ~1 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~ ~-2 ~-1 white_stained_glass unless block ~ ~-2 ~-1 air unless block ~ ~-2 ~-1 barrier run setblock ~ ~-2 ~-1 blue_ice

execute as @s[scores={timer=5}] at @s unless block ~1 ~ ~2 white_stained_glass unless block ~1 ~ ~2 air unless block ~1 ~ ~2 barrier run setblock ~1 ~ ~2 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~-1 ~ ~2 white_stained_glass unless block ~-1 ~ ~2 air unless block ~-1 ~ ~2 barrier run setblock ~-1 ~ ~2 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~ ~1 ~2 white_stained_glass unless block ~ ~1 ~2 air unless block ~ ~1 ~2 barrier run setblock ~ ~1 ~2 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~ ~-1 ~2 white_stained_glass unless block ~ ~-1 ~2 air unless block ~ ~-1 ~2 barrier run setblock ~ ~-1 ~2 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~1 ~ ~-2 white_stained_glass unless block ~1 ~ ~-2 air unless block ~1 ~ ~-2 barrier run setblock ~1 ~ ~-2 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~-1 ~ ~-2 white_stained_glass unless block ~-1 ~ ~-2 air unless block ~-1 ~ ~-2 barrier run setblock ~-1 ~ ~-2 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~ ~1 ~-2 white_stained_glass unless block ~ ~1 ~-2 air unless block ~ ~1 ~-2 barrier run setblock ~ ~1 ~-2 blue_ice
execute as @s[scores={timer=5}] at @s unless block ~ ~-1 ~-2 white_stained_glass unless block ~ ~-1 ~-2 air unless block ~ ~-1 ~-2 barrier run setblock ~ ~-1 ~-2 blue_ice

execute as @s[scores={timer=6}] at @s unless block ~2 ~1 ~1 white_stained_glass unless block ~2 ~1 ~1 air unless block ~2 ~1 ~1 barrier run setblock ~2 ~1 ~1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~2 ~1 ~-1 white_stained_glass unless block ~2 ~1 ~-1 air unless block ~2 ~1 ~-1 barrier run setblock ~2 ~1 ~-1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~2 ~-1 ~1 white_stained_glass unless block ~2 ~-1 ~1 air unless block ~2 ~-1 ~1 barrier run setblock ~2 ~-1 ~1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~2 ~-1 ~-1 white_stained_glass unless block ~2 ~-1 ~-1 air unless block ~2 ~-1 ~-1 barrier run setblock ~2 ~-1 ~-1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-2 ~1 ~1 white_stained_glass unless block ~-2 ~1 ~1 air unless block ~-2 ~1 ~1 barrier run setblock ~-2 ~1 ~1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-2 ~1 ~-1 white_stained_glass unless block ~-2 ~1 ~-1 air unless block ~-2 ~1 ~-1 barrier run setblock ~-2 ~1 ~-1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-2 ~-1 ~1 white_stained_glass unless block ~-2 ~-1 ~1 air unless block ~-2 ~-1 ~1 barrier run setblock ~-2 ~-1 ~1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-2 ~-1 ~-1 white_stained_glass unless block ~-2 ~-1 ~-1 air unless block ~-2 ~-1 ~-1 barrier run setblock ~-2 ~-1 ~-1 blue_ice

execute as @s[scores={timer=6}] at @s unless block ~1 ~2 ~1 white_stained_glass unless block ~1 ~2 ~1 air unless block ~1 ~2 ~1 barrier run setblock ~1 ~2 ~1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~1 ~2 ~-1 white_stained_glass unless block ~1 ~2 ~-1 air unless block ~1 ~2 ~-1 barrier run setblock ~1 ~2 ~-1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-1 ~2 ~1 white_stained_glass unless block ~-1 ~2 ~1 air unless block ~-1 ~2 ~1 barrier run setblock ~-1 ~2 ~1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-1 ~2 ~-1 white_stained_glass unless block ~-1 ~2 ~-1 air unless block ~-1 ~2 ~-1 barrier run setblock ~-1 ~2 ~-1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~1 ~-2 ~1 white_stained_glass unless block ~1 ~-2 ~1 air unless block ~1 ~-2 ~1 barrier run setblock ~1 ~-2 ~1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~1 ~-2 ~-1 white_stained_glass unless block ~1 ~-2 ~-1 air unless block ~1 ~-2 ~-1 barrier run setblock ~1 ~-2 ~-1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-1 ~-2 ~1 white_stained_glass unless block ~-1 ~-2 ~1 air unless block ~-1 ~-2 ~1 barrier run setblock ~-1 ~-2 ~1 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-1 ~-2 ~-1 white_stained_glass unless block ~-1 ~-2 ~-1 air unless block ~-1 ~-2 ~-1 barrier run setblock ~-1 ~-2 ~-1 blue_ice

execute as @s[scores={timer=6}] at @s unless block ~1 ~1 ~2 white_stained_glass unless block ~1 ~1 ~2 air unless block ~1 ~1 ~2 barrier run setblock ~1 ~1 ~2 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~1 ~-1 ~2 white_stained_glass unless block ~1 ~-1 ~2 air unless block ~1 ~-1 ~2 barrier run setblock ~1 ~-1 ~2 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-1 ~1 ~2 white_stained_glass unless block ~-1 ~1 ~2 air unless block ~-1 ~1 ~2 barrier run setblock ~-1 ~1 ~2 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-1 ~-1 ~2 white_stained_glass unless block ~-1 ~-1 ~2 air unless block ~-1 ~-1 ~2 barrier run setblock ~-1 ~-1 ~2 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~1 ~1 ~-2 white_stained_glass unless block ~1 ~1 ~-2 air unless block ~1 ~1 ~-2 barrier run setblock ~1 ~1 ~-2 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~1 ~-1 ~-2 white_stained_glass unless block ~1 ~-1 ~-2 air unless block ~1 ~-1 ~-2 barrier run setblock ~1 ~-1 ~-2 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-1 ~1 ~-2 white_stained_glass unless block ~-1 ~1 ~-2 air unless block ~-1 ~1 ~-2 barrier run setblock ~-1 ~1 ~-2 blue_ice
execute as @s[scores={timer=6}] at @s unless block ~-1 ~-1 ~-2 white_stained_glass unless block ~-1 ~-1 ~-2 air unless block ~-1 ~-1 ~-2 barrier run setblock ~-1 ~-1 ~-2 blue_ice
