scoreboard players add @s masterb 1
execute as @s[scores={masterb=1..2}] at @s run tp @s ~ ~1 ~
kill @s[scores={masterb=80}]

particle minecraft:smoke ~ ~-.2 ~ 0 0 0 0 1 force

execute as @s[tag=!boom,scores={masterb=2..}] at @s run tp ^ ^ ^.4
tag @s remove air
execute as @s[scores={masterb=2..}] at @s if block ~-.25 ~-.05 ~-.25 air if block ~-.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~-.25 air if block ~.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~.25 air if block ~.25 ~-.45 ~.25 air if block ~-.25 ~-.05 ~.25 air if block ~-.25 ~-.45 ~.25 air run tag @s add air
tag @s[tag=!air,scores={masterb=2..}] add boom

execute as @s[tag=!boom,scores={masterb=2..}] at @s run tp ^ ^ ^.4
tag @s remove air
execute as @s[scores={masterb=2..}] at @s if block ~-.25 ~-.05 ~-.25 air if block ~-.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~-.25 air if block ~.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~.25 air if block ~.25 ~-.45 ~.25 air if block ~-.25 ~-.05 ~.25 air if block ~-.25 ~-.45 ~.25 air run tag @s add air
tag @s[tag=!air,scores={masterb=2..}] add boom

execute as @s[tag=!boom,scores={masterb=2..}] at @s run tp ^ ^ ^.4
tag @s remove air
execute as @s[scores={masterb=2..}] at @s if block ~-.25 ~-.05 ~-.25 air if block ~-.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~-.25 air if block ~.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~.25 air if block ~.25 ~-.45 ~.25 air if block ~-.25 ~-.05 ~.25 air if block ~-.25 ~-.45 ~.25 air run tag @s add air
tag @s[tag=!air,scores={masterb=2..}] add boom

execute as @s[tag=!boom,scores={masterb=2..}] at @s run tp ^ ^ ^.4
tag @s remove air
execute as @s[scores={masterb=2..}] at @s if block ~-.25 ~-.05 ~-.25 air if block ~-.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~-.25 air if block ~.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~.25 air if block ~.25 ~-.45 ~.25 air if block ~-.25 ~-.05 ~.25 air if block ~-.25 ~-.45 ~.25 air run tag @s add air
tag @s[tag=!air,scores={masterb=2..}] add boom

execute as @s[tag=!boom,scores={masterb=2..}] at @s run tp ^ ^ ^.4
tag @s remove air
execute as @s[scores={masterb=2..}] at @s if block ~-.25 ~-.05 ~-.25 air if block ~-.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~-.25 air if block ~.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~.25 air if block ~.25 ~-.45 ~.25 air if block ~-.25 ~-.05 ~.25 air if block ~-.25 ~-.45 ~.25 air run tag @s add air
tag @s[tag=!air,scores={masterb=2..}] add boom

#execute as @s[tag=boom] at @s if block ~-.25 ~-.05 ~-.25 air if block ~-.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~-.25 air if block ~.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~.25 air if block ~.25 ~-.45 ~.25 air if block ~-.25 ~-.05 ~.25 air if block ~-.25 ~-.45 ~.25 air run tp ^ ^ ^-.1
#execute as @s[tag=boom] at @s if block ~-.25 ~-.05 ~-.25 air if block ~-.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~-.25 air if block ~.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~.25 air if block ~.25 ~-.45 ~.25 air if block ~-.25 ~-.05 ~.25 air if block ~-.25 ~-.45 ~.25 air run tp ^ ^ ^-.1
#execute as @s[tag=boom] at @s if block ~-.25 ~-.05 ~-.25 air if block ~-.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~-.25 air if block ~.25 ~-.45 ~-.25 air if block ~.25 ~-.05 ~.25 air if block ~.25 ~-.45 ~.25 air if block ~-.25 ~-.05 ~.25 air if block ~-.25 ~-.45 ~.25 air run tp ^ ^ ^-.1


execute as @s[tag=boom] at @s run summon tnt ~ ~.2 ~ {Fuse:2}
kill @s[tag=boom]