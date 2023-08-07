execute as @s at @s positioned ^ ^1 ^ run function game:physics/ymove
execute as @s at @s positioned ^ ^1 ^ run function game:physics/xmove
execute as @s at @s positioned ^ ^1 ^ run function game:physics/zmove

execute unless entity @s[scores={tDirX=0,tDirY=0,tDirZ=0}] as @s at @s positioned ^ ^1 ^ run function game:physics/card_move