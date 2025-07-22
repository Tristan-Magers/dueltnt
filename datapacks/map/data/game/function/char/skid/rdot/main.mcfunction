#
execute store result score @s[tag=!started] rainbow_color run random value 1..11
tag @s add started

#
scoreboard players add @s rainbow_color 1
scoreboard players set @s[scores={rainbow_color=13..}] rainbow_color 1

execute as @s[scores={rainbow_color=1..2}] run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[1.0,0.0,1.0]} ~ ~ ~ 0 0 0 1 1 force
execute as @s[scores={rainbow_color=3..4}] run particle dust_color_transition{from_color:[1.000,0.000,1.000],scale:1,to_color:[0.0,0.0,1.0]} ~ ~ ~ 0 0 0 1 1 force
execute as @s[scores={rainbow_color=5..6}] run particle dust_color_transition{from_color:[0.000,0.000,1.000],scale:1,to_color:[0.0,1.0,1.0]} ~ ~ ~ 0 0 0 1 1 force
execute as @s[scores={rainbow_color=7..8}] run particle dust_color_transition{from_color:[0.000,1.000,1.000],scale:1,to_color:[0.0,1.0,0.0]} ~ ~ ~ 0 0 0 1 1 force
execute as @s[scores={rainbow_color=9..10}] run particle dust_color_transition{from_color:[0.000,1.000,0.000],scale:1,to_color:[1.0,1.0,0.0]} ~ ~ ~ 0 0 0 1 1 force
execute as @s[scores={rainbow_color=11..12}] run particle dust_color_transition{from_color:[1.000,1.000,0.000],scale:1,to_color:[1.0,0.0,0.0]} ~ ~ ~ 0 0 0 1 1 force

#
tp ~ ~-0.4 ~
scoreboard players add @s raintimer 1

#
execute at @s unless block ~ ~ ~ air run function game:char/skid/rdot/hit

#
kill @s[scores={raintimer=240..}]
