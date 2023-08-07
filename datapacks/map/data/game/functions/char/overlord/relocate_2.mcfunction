#
scoreboard players set @s t5 0
execute at @s positioned over motion_blocking run summon minecraft:marker ~ ~ ~ {Tags:["kill_this","over_shift_test"]}
#execute at @s positioned ~ -64 ~ unless entity @e[tag=over_shift_test,distance=..10] run scoreboard players set @s t5 1
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 1 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 2 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 3 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 4 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 5 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 6 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 7 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 8 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 9 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 10 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 11 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 12 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 13 under 50 false @s
execute as @s[scores={t5=0}] store success score @s t5 run spreadplayers ~ ~ 0 14 under 50 false @s

kill @e[tag=over_shift_test]