#laser
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:rabbit_hide"}}] at @s run scoreboard players set @s laserDummy 30
execute as @s[scores={laserDummy=-300..}] at @s run function game:items/laser

# set portal
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:ink_sac"}}] SPorttimer 210
execute as 3a39fd32-c01f-489e-9536-22ad5eb307f8 if score #woa1Portal .num matches 1 run tag @s add woa1Portal

execute as @s[scores={SPorttimer=210},tag=!woa1Portal] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ .7 .8
execute as @s[scores={SPorttimer=205},tag=!woa1Portal] at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 .9
execute as @s[scores={SPorttimer=210},tag=!woa1Portal] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ .2 1.2
execute as @s[scores={SPorttimer=210},tag=!woa1Portal] at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ .12 1.2

# Alternate sounds for WoA1 portal cosmetic; Implemented by TheViralMelon, designed by Zephyrean_
execute as @s[scores={SPorttimer=210},tag=woa1Portal] at @s run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 1 0
execute as @s[scores={SPorttimer=205},tag=woa1Portal] at @s run playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 1 0
execute as @s[scores={SPorttimer=210},tag=woa1Portal] at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 .7
execute as @s[scores={SPorttimer=210},tag=woa1Portal] at @s run playsound minecraft:block.conduit.ambient master @a ~ ~ ~ 2 2
tag @s remove woa1Portal

clear @s[scores={SPorttimer=210}] ink_sac
scoreboard players remove @s[scores={SPorttimer=1..}] SPorttimer 1
scoreboard players set @s[scores={SPorttimer=209}] SetPortal 1
item replace entity @s[scores={SPorttimer=1}] hotbar.1 with ink_sac[custom_name='{"italic":false,"text":"§2Set Portal §r: Right-click (lasts 6 seconds) [16 block range]"}']

# bruh bruh bruh