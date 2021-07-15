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
execute as @s[scores={enderct=1,class=1}] run summon tnt ~ ~ ~

scoreboard players operation @s enderct = @s enderc