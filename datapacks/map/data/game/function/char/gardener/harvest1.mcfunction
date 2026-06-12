#Shovel hit

#
scoreboard players add @s[scores={shovel_cool=..0}] harvest 4
scoreboard players add @s[scores={shovel_cool=1..}] harvest 2

#execute as @s[scores={shovel_cool=1..}] run say test

scoreboard players set @s[scores={shovel_cool=..0}] shovel_cool 15
scoreboard players add @s[scores={shovel_cool=1..}] shovel_cool 10

#function game:char/gardener/harvest1

advancement revoke @s only game:harvest_shovel
advancement revoke @s only game:harvest_shovel_zombie