execute as @s[scores={masterstorm=9}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
execute as @s[scores={masterstorm=9}] at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
execute as @s[scores={masterstorm=9}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 0
#execute as @s[scores={masterstorm=12}] at @s run function game:char/overlord/masterstorm
execute as @s[scores={masterstorm=9}] at @s run function game:char/overlord/masterstorm
execute as @s[scores={masterstorm=7}] at @s run function game:char/overlord/masterstorm
execute as @s[scores={masterstorm=5}] at @s run function game:char/overlord/masterstorm
scoreboard players remove @s masterstorm 1