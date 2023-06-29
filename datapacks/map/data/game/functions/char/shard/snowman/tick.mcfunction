scoreboard players add @s timer 1

execute as @s[scores={timer=4}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=12}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=20}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=28}] at @s run function game:char/shard/snowman/scan

#execute as @s[scores={timer=40}] at @s run function game:char/shard/snowman/scan

kill @s[scores={timer=45..}]