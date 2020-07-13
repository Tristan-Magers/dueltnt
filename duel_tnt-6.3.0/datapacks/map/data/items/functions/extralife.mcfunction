execute as @s[scores={Lives=..6}] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 2
execute as @s[scores={Lives=..6}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
execute as @s[scores={Lives=..6}] at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 1.8
execute as @s[scores={Lives=..6}] at @s run playsound minecraft:entity.elder_guardian.death master @s ~ ~ ~ 1 2
execute as @s[scores={Lives=..6}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ .4 .8

execute as @s[scores={Lives=..6}] at @s run tellraw @a [{"selector":"@s"},{"text":" used ","color":"gray","bold":false},{"text":"Extra Life","color":"red","bold":true}]

scoreboard players add @s[scores={Lives=..6}] Lives 1

clear @s bread