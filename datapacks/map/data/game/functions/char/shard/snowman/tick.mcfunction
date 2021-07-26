scoreboard players add @s timer 1

execute as @s[scores={timer=7}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=14}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=21}] at @s run function game:char/shard/snowman/scan

execute as @s[scores={timer=28}] at @s run function game:char/shard/snowman/scan

#execute as @s[scores={timer=35}] at @s run function game:char/shard/snowman/scan

kill @s[scores={timer=40..}]