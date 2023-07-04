execute at @s run particle minecraft:electric_spark ~ ~-.1 ~ 0.5 0.5 0.5 0.1 5 force

#turn air
execute as @s at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #game:ice_block

execute as @s at @s if block ~ ~ ~ blue_ice run setblock ~ ~ ~ air destroy
execute as @s at @s if block ~1 ~ ~ blue_ice run setblock ~1 ~ ~ air destroy
execute as @s at @s if block ~-1 ~ ~ blue_ice run setblock ~-1 ~ ~ air destroy
execute as @s at @s if block ~ ~1 ~ blue_ice run setblock ~ ~1 ~ air destroy
execute as @s at @s if block ~ ~-1 ~ blue_ice run setblock ~ ~-1 ~ air destroy
execute as @s at @s if block ~ ~ ~1 blue_ice run setblock ~ ~ ~1 air destroy
execute as @s at @s if block ~ ~ ~-1 blue_ice run setblock ~ ~ ~-1 air destroy

execute as @s if block ~1 ~ ~1 blue_ice run setblock ~1 ~ ~1 air destroy
execute as @s if block ~-1 ~ ~1 blue_ice run setblock ~-1 ~ ~1 air destroy
execute as @s if block ~1 ~ ~-1 blue_ice run setblock ~1 ~ ~-1 air destroy
execute as @s if block ~-1 ~ ~-1 blue_ice run setblock ~-1 ~ ~-1 air destroy
execute as @s if block ~1 ~1 ~ blue_ice run setblock ~1 ~1 ~ air destroy
execute as @s if block ~-1 ~1 ~ blue_ice run setblock ~-1 ~1 ~ air destroy
execute as @s if block ~1 ~-1 ~ blue_ice run setblock ~1 ~-1 ~ air destroy
execute as @s if block ~-1 ~-1 ~ blue_ice run setblock ~-1 ~-1 ~ air destroy
execute as @s if block ~ ~1 ~1 blue_ice run setblock ~ ~1 ~1 air destroy
execute as @s if block ~ ~-1 ~1 blue_ice run setblock ~ ~-1 ~1 air destroy
execute as @s if block ~ ~1 ~-1 blue_ice run setblock ~ ~1 ~-1 air destroy
execute as @s if block ~ ~-1 ~-1 blue_ice run setblock ~ ~-1 ~-1 air destroy

execute as @s if block ~1 ~1 ~1 blue_ice run setblock ~1 ~1 ~1 air destroy
execute as @s if block ~-1 ~1 ~1 blue_ice run setblock ~-1 ~1 ~1 air destroy
execute as @s if block ~1 ~-1 ~1 blue_ice run setblock ~1 ~-1 ~1 air destroy
execute as @s if block ~1 ~1 ~-1 blue_ice run setblock ~1 ~1 ~-1 air destroy
execute as @s if block ~-1 ~-1 ~1 blue_ice run setblock ~-1 ~-1 ~1 air destroy
execute as @s if block ~1 ~-1 ~-1 blue_ice run setblock ~1 ~-1 ~-1 air destroy
execute as @s if block ~-1 ~1 ~-1 blue_ice run setblock ~-1 ~1 ~-1 air destroy
execute as @s if block ~-1 ~-1 ~-1 blue_ice run setblock ~-1 ~-1 ~-1 air destroy

#turn ice
execute as @s at @s unless block ~ ~ ~ white_stained_glass unless block ~ ~ ~ air unless block ~ ~ ~ #game:ice_block run setblock ~ ~ ~ blue_ice
execute as @s at @s unless block ~1 ~ ~ white_stained_glass unless block ~1 ~ ~ air unless block ~1 ~ ~ #game:ice_block run setblock ~1 ~ ~ blue_ice
execute as @s at @s unless block ~-1 ~ ~ white_stained_glass unless block ~-1 ~ ~ air unless block ~-1 ~ ~ #game:ice_block run setblock ~-1 ~ ~ blue_ice
execute as @s at @s unless block ~ ~1 ~ white_stained_glass unless block ~ ~1 ~ air unless block ~ ~1 ~ #game:ice_block run setblock ~ ~1 ~ blue_ice
execute as @s at @s unless block ~ ~-1 ~ white_stained_glass unless block ~ ~-1 ~ air unless block ~ ~-1 ~ #game:ice_block run setblock ~ ~-1 ~ blue_ice
execute as @s at @s unless block ~ ~ ~1 white_stained_glass unless block ~ ~ ~1 air unless block ~ ~ ~1 #game:ice_block run setblock ~ ~ ~1 blue_ice
execute as @s at @s unless block ~ ~ ~-1 white_stained_glass unless block ~ ~ ~-1 air unless block ~ ~ ~-1 #game:ice_block run setblock ~ ~ ~-1 blue_ice

execute as @s at @s unless block ~1 ~ ~1 white_stained_glass unless block ~1 ~ ~1 air unless block ~1 ~ ~1 #game:ice_block run setblock ~1 ~ ~1 blue_ice
execute as @s at @s unless block ~-1 ~ ~1 white_stained_glass unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 #game:ice_block run setblock ~-1 ~ ~1 blue_ice
execute as @s at @s unless block ~1 ~ ~-1 white_stained_glass unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 #game:ice_block run setblock ~1 ~ ~-1 blue_ice
execute as @s at @s unless block ~-1 ~ ~-1 white_stained_glass unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 #game:ice_block run setblock ~-1 ~ ~-1 blue_ice
execute as @s at @s unless block ~1 ~1 ~ white_stained_glass unless block ~1 ~1 ~ air unless block ~1 ~1 ~ #game:ice_block run setblock ~1 ~1 ~ blue_ice
execute as @s at @s unless block ~-1 ~1 ~ white_stained_glass unless block ~-1 ~1 ~ air unless block ~-1 ~1 ~ #game:ice_block run setblock ~-1 ~1 ~ blue_ice
execute as @s at @s unless block ~1 ~-1 ~ white_stained_glass unless block ~1 ~-1 ~ air unless block ~1 ~-1 ~ #game:ice_block run setblock ~1 ~-1 ~ blue_ice
execute as @s at @s unless block ~-1 ~-1 ~ white_stained_glass unless block ~-1 ~-1 ~ air unless block ~-1 ~-1 ~ #game:ice_block run setblock ~-1 ~-1 ~ blue_ice
execute as @s at @s unless block ~ ~1 ~1 white_stained_glass unless block ~ ~1 ~1 air unless block ~ ~1 ~1 #game:ice_block run setblock ~ ~1 ~1 blue_ice
execute as @s at @s unless block ~ ~-1 ~1 white_stained_glass unless block ~ ~-1 ~1 air unless block ~ ~-1 ~1 #game:ice_block run setblock ~ ~-1 ~1 blue_ice
execute as @s at @s unless block ~ ~1 ~-1 white_stained_glass unless block ~ ~1 ~-1 air unless block ~ ~1 ~-1 #game:ice_block run setblock ~ ~1 ~-1 blue_ice
execute as @s at @s unless block ~ ~-1 ~-1 white_stained_glass unless block ~ ~-1 ~-1 air unless block ~ ~-1 ~-1 #game:ice_block run setblock ~ ~-1 ~-1 blue_ice

execute as @s at @s unless block ~1 ~1 ~1 white_stained_glass unless block ~1 ~1 ~1 air unless block ~1 ~1 ~1 #game:ice_block run setblock ~1 ~1 ~1 blue_ice
execute as @s at @s unless block ~-1 ~1 ~1 white_stained_glass unless block ~-1 ~1 ~1 air unless block ~-1 ~1 ~1 #game:ice_block run setblock ~-1 ~1 ~1 blue_ice
execute as @s at @s unless block ~1 ~-1 ~1 white_stained_glass unless block ~1 ~-1 ~1 air unless block ~1 ~-1 ~1 #game:ice_block run setblock ~1 ~-1 ~1 blue_ice
execute as @s at @s unless block ~1 ~1 ~-1 white_stained_glass unless block ~1 ~1 ~-1 air unless block ~1 ~1 ~-1 #game:ice_block run setblock ~1 ~1 ~-1 blue_ice
execute as @s at @s unless block ~-1 ~-1 ~1 white_stained_glass unless block ~-1 ~-1 ~1 air unless block ~-1 ~-1 ~1 #game:ice_block run setblock ~-1 ~-1 ~1 blue_ice
execute as @s at @s unless block ~1 ~-1 ~-1 white_stained_glass unless block ~1 ~-1 ~-1 air unless block ~1 ~-1 ~-1 #game:ice_block run setblock ~1 ~-1 ~-1 blue_ice
execute as @s at @s unless block ~-1 ~1 ~-1 white_stained_glass unless block ~-1 ~1 ~-1 air unless block ~-1 ~1 ~-1 #game:ice_block run setblock ~-1 ~1 ~-1 blue_ice
execute as @s at @s unless block ~-1 ~-1 ~-1 white_stained_glass unless block ~-1 ~-1 ~-1 air unless block ~-1 ~-1 ~-1 #game:ice_block run setblock ~-1 ~-1 ~-1 blue_ice


execute as @s at @s unless block ~2 ~ ~ white_stained_glass unless block ~2 ~ ~ air unless block ~2 ~ ~ #game:ice_block run setblock ~2 ~ ~ blue_ice
execute as @s at @s unless block ~-2 ~ ~ white_stained_glass unless block ~-2 ~ ~ air unless block ~-2 ~ ~ #game:ice_block run setblock ~-2 ~ ~ blue_ice
execute as @s at @s unless block ~ ~2 ~ white_stained_glass unless block ~ ~2 ~ air unless block ~ ~2 ~ #game:ice_block run setblock ~ ~2 ~ blue_ice
execute as @s at @s unless block ~ ~-2 ~ white_stained_glass unless block ~ ~-2 ~ air unless block ~ ~-2 ~ #game:ice_block run setblock ~ ~-2 ~ blue_ice
execute as @s at @s unless block ~ ~ ~2 white_stained_glass unless block ~ ~ ~2 air unless block ~ ~ ~2 #game:ice_block run setblock ~ ~ ~2 blue_ice
execute as @s at @s unless block ~ ~ ~-2 white_stained_glass unless block ~ ~ ~-2 air unless block ~ ~ ~-2 #game:ice_block run setblock ~ ~ ~-2 blue_ice

execute as @s at @s unless block ~2 ~1 ~ white_stained_glass unless block ~2 ~1 ~ air unless block ~2 ~1 ~ #game:ice_block run setblock ~2 ~1 ~ blue_ice
execute as @s at @s unless block ~2 ~ ~1 white_stained_glass unless block ~2 ~ ~1 air unless block ~2 ~ ~1 #game:ice_block run setblock ~2 ~ ~1 blue_ice
execute as @s at @s unless block ~2 ~-1 ~ white_stained_glass unless block ~2 ~-1 ~ air unless block ~2 ~-1 ~ #game:ice_block run setblock ~2 ~-1 ~ blue_ice
execute as @s at @s unless block ~2 ~ ~-1 white_stained_glass unless block ~2 ~ ~-1 air unless block ~2 ~ ~-1 #game:ice_block run setblock ~2 ~ ~-1 blue_ice
execute as @s at @s unless block ~-2 ~1 ~ white_stained_glass unless block ~-2 ~1 ~ air unless block ~-2 ~1 ~ #game:ice_block run setblock ~-2 ~1 ~ blue_ice
execute as @s at @s unless block ~-2 ~ ~1 white_stained_glass unless block ~-2 ~ ~1 air unless block ~-2 ~ ~1 #game:ice_block run setblock ~-2 ~ ~1 blue_ice
execute as @s at @s unless block ~-2 ~-1 ~ white_stained_glass unless block ~-2 ~-1 ~ air unless block ~-2 ~-1 ~ #game:ice_block run setblock ~-2 ~-1 ~ blue_ice
execute as @s at @s unless block ~-2 ~ ~-1 white_stained_glass unless block ~-2 ~ ~-1 air unless block ~-2 ~ ~-1 #game:ice_block run setblock ~-2 ~ ~-1 blue_ice

execute as @s at @s unless block ~1 ~2 ~ white_stained_glass unless block ~1 ~2 ~ air unless block ~1 ~2 ~ #game:ice_block run setblock ~1 ~2 ~ blue_ice
execute as @s at @s unless block ~-1 ~2 ~ white_stained_glass unless block ~-1 ~2 ~ air unless block ~-1 ~2 ~ #game:ice_block run setblock ~-1 ~2 ~ blue_ice
execute as @s at @s unless block ~ ~2 ~1 white_stained_glass unless block ~ ~2 ~1 air unless block ~ ~2 ~1 #game:ice_block run setblock ~ ~2 ~1 blue_ice
execute as @s at @s unless block ~ ~2 ~-1 white_stained_glass unless block ~ ~2 ~-1 air unless block ~ ~2 ~-1 #game:ice_block run setblock ~ ~2 ~-1 blue_ice
execute as @s at @s unless block ~1 ~-2 ~ white_stained_glass unless block ~1 ~-2 ~ air unless block ~1 ~-2 ~ #game:ice_block run setblock ~1 ~-2 ~ blue_ice
execute as @s at @s unless block ~-1 ~-2 ~ white_stained_glass unless block ~-1 ~-2 ~ air unless block ~-1 ~-2 ~ #game:ice_block run setblock ~-1 ~-2 ~ blue_ice
execute as @s at @s unless block ~ ~-2 ~1 white_stained_glass unless block ~ ~-2 ~1 air unless block ~ ~-2 ~1 #game:ice_block run setblock ~ ~-2 ~1 blue_ice
execute as @s at @s unless block ~ ~-2 ~-1 white_stained_glass unless block ~ ~-2 ~-1 air unless block ~ ~-2 ~-1 #game:ice_block run setblock ~ ~-2 ~-1 blue_ice

execute as @s at @s unless block ~1 ~ ~2 white_stained_glass unless block ~1 ~ ~2 air unless block ~1 ~ ~2 #game:ice_block run setblock ~1 ~ ~2 blue_ice
execute as @s at @s unless block ~-1 ~ ~2 white_stained_glass unless block ~-1 ~ ~2 air unless block ~-1 ~ ~2 #game:ice_block run setblock ~-1 ~ ~2 blue_ice
execute as @s at @s unless block ~ ~1 ~2 white_stained_glass unless block ~ ~1 ~2 air unless block ~ ~1 ~2 #game:ice_block run setblock ~ ~1 ~2 blue_ice
execute as @s at @s unless block ~ ~-1 ~2 white_stained_glass unless block ~ ~-1 ~2 air unless block ~ ~-1 ~2 #game:ice_block run setblock ~ ~-1 ~2 blue_ice
execute as @s at @s unless block ~1 ~ ~-2 white_stained_glass unless block ~1 ~ ~-2 air unless block ~1 ~ ~-2 #game:ice_block run setblock ~1 ~ ~-2 blue_ice
execute as @s at @s unless block ~-1 ~ ~-2 white_stained_glass unless block ~-1 ~ ~-2 air unless block ~-1 ~ ~-2 #game:ice_block run setblock ~-1 ~ ~-2 blue_ice
execute as @s at @s unless block ~ ~1 ~-2 white_stained_glass unless block ~ ~1 ~-2 air unless block ~ ~1 ~-2 #game:ice_block run setblock ~ ~1 ~-2 blue_ice
execute as @s at @s unless block ~ ~-1 ~-2 white_stained_glass unless block ~ ~-1 ~-2 air unless block ~ ~-1 ~-2 #game:ice_block run setblock ~ ~-1 ~-2 blue_ice

execute as @s at @s unless block ~2 ~1 ~1 white_stained_glass unless block ~2 ~1 ~1 air unless block ~2 ~1 ~1 #game:ice_block run setblock ~2 ~1 ~1 blue_ice
execute as @s at @s unless block ~2 ~1 ~-1 white_stained_glass unless block ~2 ~1 ~-1 air unless block ~2 ~1 ~-1 #game:ice_block run setblock ~2 ~1 ~-1 blue_ice
execute as @s at @s unless block ~2 ~-1 ~1 white_stained_glass unless block ~2 ~-1 ~1 air unless block ~2 ~-1 ~1 #game:ice_block run setblock ~2 ~-1 ~1 blue_ice
execute as @s at @s unless block ~2 ~-1 ~-1 white_stained_glass unless block ~2 ~-1 ~-1 air unless block ~2 ~-1 ~-1 #game:ice_block run setblock ~2 ~-1 ~-1 blue_ice
execute as @s at @s unless block ~-2 ~1 ~1 white_stained_glass unless block ~-2 ~1 ~1 air unless block ~-2 ~1 ~1 #game:ice_block run setblock ~-2 ~1 ~1 blue_ice
execute as @s at @s unless block ~-2 ~1 ~-1 white_stained_glass unless block ~-2 ~1 ~-1 air unless block ~-2 ~1 ~-1 #game:ice_block run setblock ~-2 ~1 ~-1 blue_ice
execute as @s at @s unless block ~-2 ~-1 ~1 white_stained_glass unless block ~-2 ~-1 ~1 air unless block ~-2 ~-1 ~1 #game:ice_block run setblock ~-2 ~-1 ~1 blue_ice
execute as @s at @s unless block ~-2 ~-1 ~-1 white_stained_glass unless block ~-2 ~-1 ~-1 air unless block ~-2 ~-1 ~-1 #game:ice_block run setblock ~-2 ~-1 ~-1 blue_ice

execute as @s at @s unless block ~1 ~2 ~1 white_stained_glass unless block ~1 ~2 ~1 air unless block ~1 ~2 ~1 #game:ice_block run setblock ~1 ~2 ~1 blue_ice
execute as @s at @s unless block ~1 ~2 ~-1 white_stained_glass unless block ~1 ~2 ~-1 air unless block ~1 ~2 ~-1 #game:ice_block run setblock ~1 ~2 ~-1 blue_ice
execute as @s at @s unless block ~-1 ~2 ~1 white_stained_glass unless block ~-1 ~2 ~1 air unless block ~-1 ~2 ~1 #game:ice_block run setblock ~-1 ~2 ~1 blue_ice
execute as @s at @s unless block ~-1 ~2 ~-1 white_stained_glass unless block ~-1 ~2 ~-1 air unless block ~-1 ~2 ~-1 #game:ice_block run setblock ~-1 ~2 ~-1 blue_ice
execute as @s at @s unless block ~1 ~-2 ~1 white_stained_glass unless block ~1 ~-2 ~1 air unless block ~1 ~-2 ~1 #game:ice_block run setblock ~1 ~-2 ~1 blue_ice
execute as @s at @s unless block ~1 ~-2 ~-1 white_stained_glass unless block ~1 ~-2 ~-1 air unless block ~1 ~-2 ~-1 #game:ice_block run setblock ~1 ~-2 ~-1 blue_ice
execute as @s at @s unless block ~-1 ~-2 ~1 white_stained_glass unless block ~-1 ~-2 ~1 air unless block ~-1 ~-2 ~1 #game:ice_block run setblock ~-1 ~-2 ~1 blue_ice
execute as @s at @s unless block ~-1 ~-2 ~-1 white_stained_glass unless block ~-1 ~-2 ~-1 air unless block ~-1 ~-2 ~-1 #game:ice_block run setblock ~-1 ~-2 ~-1 blue_ice

execute as @s at @s unless block ~1 ~1 ~2 white_stained_glass unless block ~1 ~1 ~2 air unless block ~1 ~1 ~2 #game:ice_block run setblock ~1 ~1 ~2 blue_ice
execute as @s at @s unless block ~1 ~-1 ~2 white_stained_glass unless block ~1 ~-1 ~2 air unless block ~1 ~-1 ~2 #game:ice_block run setblock ~1 ~-1 ~2 blue_ice
execute as @s at @s unless block ~-1 ~1 ~2 white_stained_glass unless block ~-1 ~1 ~2 air unless block ~-1 ~1 ~2 #game:ice_block run setblock ~-1 ~1 ~2 blue_ice
execute as @s at @s unless block ~-1 ~-1 ~2 white_stained_glass unless block ~-1 ~-1 ~2 air unless block ~-1 ~-1 ~2 #game:ice_block run setblock ~-1 ~-1 ~2 blue_ice
execute as @s at @s unless block ~1 ~1 ~-2 white_stained_glass unless block ~1 ~1 ~-2 air unless block ~1 ~1 ~-2 #game:ice_block run setblock ~1 ~1 ~-2 blue_ice
execute as @s at @s unless block ~1 ~-1 ~-2 white_stained_glass unless block ~1 ~-1 ~-2 air unless block ~1 ~-1 ~-2 #game:ice_block run setblock ~1 ~-1 ~-2 blue_ice
execute as @s at @s unless block ~-1 ~1 ~-2 white_stained_glass unless block ~-1 ~1 ~-2 air unless block ~-1 ~1 ~-2 #game:ice_block run setblock ~-1 ~1 ~-2 blue_ice
execute as @s at @s unless block ~-1 ~-1 ~-2 white_stained_glass unless block ~-1 ~-1 ~-2 air unless block ~-1 ~-1 ~-2 #game:ice_block run setblock ~-1 ~-1 ~-2 blue_ice
