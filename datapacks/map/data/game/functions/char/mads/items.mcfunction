#laser
execute as @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:rabbit_hide"}}] at @s run scoreboard players set @s laserDummy 30
execute as @s[scores={laserDummy=-300..}] at @s run function game:items/laser

# set portal
scoreboard players set @s[scores={click=1..},nbt={SelectedItem:{id:"minecraft:ink_sac"}}] SPorttimer 210
execute as @s[scores={SPorttimer=210}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ .7 .8
execute as @s[scores={SPorttimer=205}] at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 .9
execute as @s[scores={SPorttimer=210}] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ .2 1.2
execute as @s[scores={SPorttimer=210}] at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ .12 1.2
clear @s[scores={SPorttimer=210}] ink_sac
scoreboard players remove @s[scores={SPorttimer=1..}] SPorttimer 1
scoreboard players set @s[scores={SPorttimer=209}] SetPortal 1
item replace entity @s[scores={SPorttimer=1}] hotbar.1 with ink_sac{display:{Name:"{\"italic\":false,\"text\":\"§2Set Portal §r: Right-click (lasts 6 seconds) [16 block range]\"}"}}
