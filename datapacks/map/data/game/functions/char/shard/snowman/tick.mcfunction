scoreboard players add @s timer 1

execute as @s[scores={timer=8}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=16}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=24}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=32}] at @s run function game:char/shard/snowman/scan

#execute as @s[scores={timer=40}] at @s run function game:char/shard/snowman/scan

kill @s[scores={timer=45..}]