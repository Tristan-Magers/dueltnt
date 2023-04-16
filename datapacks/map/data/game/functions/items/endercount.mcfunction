tag @e remove me
tag @s add me

scoreboard players set @s enderc 0

scoreboard players operation @e[type=minecraft:ender_pearl] tntID -= @s tntID
execute as @e[type=minecraft:ender_pearl,scores={tntID=0}] run scoreboard players add @a[tag=me] enderc 1
execute as @e[type=minecraft:ender_pearl,scores={tntID=0}] at @s if entity @s[y=0,dy=-100] run scoreboard players remove @a[tag=me] enderct 1
execute as @e[type=minecraft:ender_pearl,scores={tntID=0}] at @s if entity @s[y=0,dy=-100] run scoreboard players remove @a[tag=me] enderc 1
execute as @e[type=minecraft:ender_pearl,scores={tntID=0}] at @s if entity @s[y=0,dy=-100] run kill @s
scoreboard players operation @e[type=minecraft:ender_pearl] tntID += @s tntID

scoreboard players operation @s enderct -= @s enderc

execute as @s[scores={enderct=1,class=0}] run tp @s @s
execute as @s[scores={enderct=1,class=0}] run effect give @s minecraft:levitation 1 8 true

execute as @s[scores={enderct=1,class=1}] run tp @s @s
#execute as @s[scores={enderct=1,class=1}] run scoreboard players set @s nolev 12
#execute as @s[scores={enderct=1,class=1}] run effect give @s minecraft:levitation 1 0 true

execute as @s[scores={enderct=1,class=1}] run effect give @s speed 2 2
execute as @s[scores={enderct=1,class=1}] run effect give @s jump_boost 2 4

#execute as @s[scores={enderct=1,class=1}] unless block ~ ~-1 ~ air run summon tnt ~ ~ ~
#execute as @s[scores={enderct=1,class=1}] if block ~ ~-1 ~ air run summon tnt ~ ~-1 ~
#execute as @s[scores={enderct=1,class=1}] if block ~ ~-1 ~ air run effect give @s levitation 1 0 true
#execute as @s[scores={enderct=1,class=1}] if block ~ ~-1 ~ air run scoreboard players set @s nolev 2

#execute as @s[scores={enderct=1,class=1}] run gamerule mobGriefing false
#execute as @s[scores={enderct=1,class=1}] run summon creeper ~ ~ ~ {ingited:1,Fuse:0}
#execute as @s[scores={enderct=1,class=1}] run scoreboard players set @s ass_pearl 1

execute as @s[scores={enderct=1,class=2}] run effect give @s minecraft:levitation 1 1 true
execute as @s[scores={enderct=1,class=2}] run scoreboard players set @s nolev 12

execute as @s[x=600,y=60,z=600,distance=6..100,scores={enderct=1}] run playsound entity.enderman.teleport master @a

scoreboard players operation @s enderct = @s enderc