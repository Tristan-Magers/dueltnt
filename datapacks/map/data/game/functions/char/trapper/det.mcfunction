scoreboard players set @s RanExplode 1
scoreboard players operation @e[scores={BombBow=1..}] tntID -= @s tntID
execute as @e[type=arrow,tag=!fast,tag=!trapchick,scores={BombBow=1..,tntID=0}] at @s run summon tnt ~ ~.55 ~ {Fuse:4,NoGravity:1}
execute as @e[type=arrow,tag=fast,tag=!trapchick,scores={BombBow=1..,tntID=0}] at @s run summon tnt ~ ~.55 ~ {Fuse:6,NoGravity:1}
execute as @e[type=arrow,tag=trapchick,scores={BombBow=1..,tntID=0}] at @s run summon chicken ~ ~ ~ {Tags:["exchicken"],Invulnerable:1}
kill @e[type=arrow,scores={BombBow=1..,tntID=0}]
scoreboard players operation @e[scores={BombBow=1..}] tntID += @s tntID
scoreboard players set @s[gamemode=adventure,nbt=!{SelectedItem:{id:"minecraft:bone"}}] BombExplode 0
scoreboard players set @s[gamemode=adventure,scores={RanExplode=1..}] BombExplode 0
execute as @s[gamemode=adventure,scores={RanExplode=1..}] at @s run playsound minecraft:block.piston.extend master @p ~ ~ ~ 1 2
scoreboard players set @s[gamemode=adventure,scores={RanExplode=1..}] RanExplode 0