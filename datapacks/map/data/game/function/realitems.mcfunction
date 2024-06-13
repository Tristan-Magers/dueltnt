execute as @a[scores={PlaceMine=1..}] at @s run playsound minecraft:entity.item_frame.add_item master @a ~ ~ ~ 1 2
execute as @a[scores={PlaceMine=2..}] at @s run playsound minecraft:entity.item_frame.add_item master @a ~ ~ ~ 1 1

scoreboard players set @e[type=item] Mine 0
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] Mine 2
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:tnt"}},tag=!new] Mine 1
tag @e[type=item,nbt={Item:{id:"minecraft:tnt"}},tag=!new] add new
execute if entity @e[scores={mode=1}] run execute as @e[type=item,scores={Mine=1..}] at @s run data merge entity @s {PickupDelay:9}
execute unless entity @e[scores={mode=1}] run execute as @e[type=item,scores={Mine=1..}] at @s run data merge entity @s {PickupDelay:13}
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:tnt"}}] Mine 1
#scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:anvil"}}] Mine 3
kill @e[type=item,scores={Mine=..0}]
#execute as @e[type=item,scores={Mine=3}] at @s run data merge entity @s {PickupDelay:0,Invulnerable:1}
execute as @e[type=item,scores={Mine=1..}] at @s run data merge entity @s {Invulnerable:1,Item:{components:{"minecraft:custom_name":'"Mine"'}}}
scoreboard players set @a HoldMine 0
scoreboard players set @a[nbt={Inventory:[{components:{"minecraft:custom_name":'"Mine"'}}]}] HoldMine 1
clear @a[scores={HoldMine=1..}] tnt[custom_name='"Mine"'] 1
execute as @a[scores={HoldMine=1..},x=600,z=600,y=60,distance=..100] at @s run summon tnt ~ ~ ~
execute as @a[scores={HoldMine=1..},x=600,z=600,y=60,distance=..100] at @s run summon tnt ~ ~ ~
scoreboard players add @a[scores={placetnt=1..}] PlaceMine 1
scoreboard players remove @a[scores={placetnt=1..}] placetnt 1
scoreboard players set @a[scores={PlaceMine=2..}] PlaceMineTime 200
scoreboard players set @a[scores={PlaceMine=2..}] PlaceMine 0
scoreboard players remove @a[scores={PlaceMineTime=1..}] PlaceMineTime 1
scoreboard players set @a[scores={PlaceMine=1,PlaceMineTime=1..}] PlaceMineTime 200
scoreboard players set @a[scores={PlaceMine=1,PlaceMineTime=1..}] PlaceMine 0

tag @a[scores={PlaceMine=1,PlaceMineTime=0}] add plm1
scoreboard players set @a[tag=plm1] PlaceMineTime 137
scoreboard players set @a[tag=plm1] PlaceMine 0
tag @a remove plm1

execute as @a[x=600,y=60,z=600,distance=3..95,scores={PlaceMineTime=138}] run function game:char/trapper/give/mines {count:1}
execute as @a[x=600,y=60,z=600,distance=3..95,scores={PlaceMineTime=76}] run function game:char/trapper/give/mines {count:2}
execute as @a[scores={HoldMine=1..}] at @s run effect give @s blindness 1
execute as @e[type=item,scores={Mine=..0}] at @s run tp @e[distance=..0,limit=1,scores={Mine=..0}] @p
scoreboard players add @e[type=item] egg 1
execute as @e[type=item,scores={egg=30..},nbt={Item:{id:"minecraft:nether_star"}}] at @s run summon tnt ~ ~ ~ {fuse:2}
execute as @e[type=item,scores={egg=30..},nbt={Item:{id:"minecraft:nether_star"}}] at @s run summon tnt ~ ~ ~ {fuse:2}
kill @e[type=item,scores={egg=30..},nbt={Item:{id:"minecraft:nether_star"}}]
kill @e[type=item,scores={egg=100..},nbt={Item:{id:"minecraft:tnt"}}]
execute as @e[type=item,scores={Mine=2..}] at @s run data merge entity @s {NoGravity:1,Invulnerable:1,Item:{count:64}}

execute as @a at @s run execute as @e[limit=1,type=item,scores={Mine=2..,egg=6},distance=..20] at @s run summon magma_cube ~ ~ ~ {NoGravity:1,NoAI:0,Invulnerable:1,Size:2,CustomName:'{"text":"star"}',Silent:1,Attributes:[{Name:"generic.followRange",Base:0},{Name:"generic.movementSpeed",Base:0}]}
execute as @e[type=magma_cube] at @s run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute as @e[type=magma_cube] at @s run tp @s ~ ~ ~ 0 0
effect give @e[type=magma_cube] invisibility 1 0 true

tag @e[type=magma_cube] remove star
execute as @e[type=item,scores={Mine=2..,egg=6..}] at @s positioned ~ ~-.4 ~ run function game:getcube
tp @e[type=magma_cube,tag=!star] ~ ~-1000 ~
effect give @e[type=magma_cube] glowing

tp @e[type=magma_cube,limit=1,scores={egg=288..}] ~ ~-2000 ~
effect give @e[type=magma_cube] invisibility 5 1 true
scoreboard players add @e[type=magma_cube] egg 1
tag @e[type=item,nbt={Item:{id:"bow"}}] add killI
tag @e[type=item,nbt={Item:{id:"fishing_rod"}}] add killI
kill @e[type=item,tag=killI]