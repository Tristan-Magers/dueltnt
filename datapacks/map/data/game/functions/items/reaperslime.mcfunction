effect give @s slow_falling 999 0 true
#function game:physics/negate_gravity

effect give @s[scores={slimeT=..2}] weakness 1 200 true

effect clear @s[scores={slimeT=4}] weakness

scoreboard players add @s slimeT 1
execute as @s[scores={slimeT=6},tag=thrown] at @s run data merge entity @s {Size:2}
execute as @s[scores={slimeT=12},tag=thrown] at @s run data merge entity @s {Size:3}
execute as @s[scores={slimeT=18},tag=thrown] at @s run data merge entity @s {Size:4}
execute as @s[scores={slimeT=24},tag=thrown] at @s run data merge entity @s {Size:5}
execute as @s[scores={slimeT=30},tag=thrown] at @s run data merge entity @s {Size:6}
execute as @s[scores={slimeT=36},tag=thrown] at @s run data merge entity @s {Size:7}

execute as @s[scores={slimeT=14},tag=!thrown] at @s run data merge entity @s {Size:2}
execute as @s[scores={slimeT=16},tag=!thrown] at @s run data merge entity @s {Size:3}
execute as @s[scores={slimeT=18},tag=!thrown] at @s run data merge entity @s {Size:4}
execute as @s[scores={slimeT=20},tag=!thrown] at @s run data merge entity @s {Size:5}
execute as @s[scores={slimeT=22},tag=!thrown] at @s run data merge entity @s {Size:6}
execute as @s[scores={slimeT=24},tag=!thrown] at @s run data merge entity @s {Size:7}
execute as @s[scores={slimeT=26},tag=!thrown] at @s run data merge entity @s {Size:8}
execute as @s[scores={slimeT=28},tag=!thrown] at @s run data merge entity @s {Size:9}
execute as @s[scores={slimeT=30},tag=!thrown] at @s run data merge entity @s {Size:10}

execute as @s[tag=!thrown] at @s run particle minecraft:wax_off ~ ~1 ~ 1 1 1 0 2 force

execute as @s[scores={slimeT=59}] at @s run summon tnt ~ ~1 ~
execute as @s[scores={slimeT=59}] at @s run summon tnt ~ ~1 ~

execute as @s[scores={slimeT=34},tag=!thrown] at @s run summon tnt ~ ~1 ~
execute as @s[scores={slimeT=34},tag=!thrown] at @s run summon tnt ~ ~1 ~
execute as @s[scores={slimeT=34},tag=!thrown] at @s run summon tnt ~ ~1 ~

tp @s[scores={slimeT=34},tag=!thrown] ~ ~-10000 ~