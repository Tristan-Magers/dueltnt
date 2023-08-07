scoreboard players add @s masterc 1
scoreboard players set @s[scores={masterc=25..}] masterc 25
scoreboard players set @s mastercT 100

scoreboard players add @s otherlord_gather_count 0

scoreboard players add @s gather_amount 1
scoreboard players operation @s mastercT -= @s gather_amount

particle minecraft:sculk_charge_pop ~ ~1 ~ 0.7 0.3 0.7 0 2 force

scoreboard players add @s otherlord_gather_count 1
scoreboard players set @s[scores={otherlord_gather_count=2..}] otherlord_gather_count 0

execute as @s[scores={masterb=..31,otherlord_gather_count=1}] run function game:char/overlord/masterwandget

execute as @s[scores={masterc=25..}] run execute as @s[scores={masterb=..31}] run function game:char/overlord/masterwandget
execute as @s[scores={masterc=25..}] run execute as @s[scores={masterb=..31}] run function game:char/overlord/masterwandget
execute as @s[scores={masterc=25..}] run execute as @s[scores={masterb=..31}] run function game:char/overlord/masterwandget
execute as @s[scores={masterc=25..}] run execute as @s[scores={masterb=..31}] run function game:char/overlord/masterwandget

function game:char/overlord/masterwanduse
function game:char/overlord/masterwanditems