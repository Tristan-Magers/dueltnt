scoreboard players set @s masterc 0
execute as @s[gamemode=adventure,x=600,y=60,z=600,distance=3..95] at @s run function game:char/overlord/masterwandreload
scoreboard players set @s mastercT 0
tag @s remove gather