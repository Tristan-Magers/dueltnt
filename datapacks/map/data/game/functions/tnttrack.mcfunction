effect give @s minecraft:glowing 10

execute store result score @s R1 run data get entity @s Rotation[0] 1
execute store result score @s R2 run data get entity @s Rotation[1] 1

data merge entity @s {Motion:[0.0,0.0,0.0]}
#tp @s ~ ~ ~ facing entity @e[limit=1,type=villager,distance=2..50] eyes
#execute unless entity @e[limit=1,type=villager,distance=..2] run tp @s ^ ^ ^.2

scoreboard players operation @a tntID -= @s tntID

tag @e remove target
tag @a remove self
tag @a[scores={tntID=0}] add self
execute unless entity @e[scores={mode=4}] run tag @e[type=player,gamemode=adventure,tag=!self,distance=..20] add target
execute if entity @a[scores={playercount=1}] run tag @e[type=zombie,distance=..20] add target
execute if entity @e[scores={mode=4}] run tag @e[type=zombie,distance=..20] add target
execute if entity @e[scores={mode=4}] run tag @e[type=skeleton,distance=..20] add target
execute if entity @e[scores={mode=4}] run tag @e[type=creeper,distance=..20] add target
execute if entity @e[scores={mode=4}] run tag @e[type=chicken,distance=..20] add target
execute if entity @e[scores={mode=4}] run tag @e[type=ghast,distance=..20] add target
execute if entity @e[scores={mode=4}] run tag @e[type=wither,distance=..20] add target
#tag @e[limit=1,type=villager,distance=..50] add target

execute positioned ^ ^ ^4 run tag @e[sort=nearest,limit=1,tag=target] add close

execute as @s at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,tag=close,limit=1] eyes
execute positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=target] if entity @e[distance=1..50,tag=target,tag=close] positioned ~ ~1 ~ run tp @s ^ ^ ^.3

tag @e[tag=close] remove close

#say @a[tag=self] self
#say @a[tag=!self] notself

scoreboard players operation @a tntID += @s tntID

execute store result score @s R11 run data get entity @s Rotation[0] 1
execute store result score @s R22 run data get entity @s Rotation[1] 1

function game:finddif

execute as @s at @s run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s R1
execute as @s at @s run execute store result entity @s Rotation[1] float 1 run scoreboard players get @s R2

execute as @s[scores={R11=1..}] at @s run tp @s ~ ~ ~ ~2.5 ~
execute as @s[scores={R11=..-1}] at @s run tp @s ~ ~ ~ ~-2.5 ~
execute as @s[scores={R22=1..}] at @s run tp @s ~ ~ ~ ~ ~2.5
execute as @s[scores={R22=..-1}] at @s run tp @s ~ ~ ~ ~ ~-2.5

execute positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=target] if entity @e[distance=1..50,tag=target] positioned ~ ~1 ~ run tp @s ^ ^ ^.22

scoreboard players add @s TBtimer 1

execute as @s at @s positioned ~ ~ ~ if entity @e[tag=target,distance=..2.2] run scoreboard players set @s TBtimer 100

execute as @s[scores={TBtimer=80..}] at @s run summon tnt ~ ~.4 ~ {fuse:1}
execute as @s[scores={TBtimer=90..}] at @s run summon tnt ~ ~.4 ~ {fuse:1}
kill @s[scores={TBtimer=80..}]

particle minecraft:spit ~ ~1 ~ 0.3 0.3 0.3 0 1 force

execute if block ~ ~ ~ barrier run kill @s