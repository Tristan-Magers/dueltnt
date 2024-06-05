# say running particle_assign.mcfunction ...
# Implemented by TheViralMelon

#> Assign Participant
execute unless score @s particle matches 900.. run scoreboard players set @s[tag=woa1_part] particle 900

#> Assign Singles Top 3
scoreboard players set @s[tag=woa1_top3,scores={particle=900}] particle 801

#> Assign Doubles Top 2
scoreboard players set @s[tag=woa1_d_top2,tag=!woa1_top3,scores={particle=900}] particle 802
scoreboard players set @s[tag=woa1_d_top2,tag=woa1_top3,scores={particle=901}] particle 802

#> Reassign Participant
scoreboard players set @s[tag=woa1_top3,tag=!woa1_d_top2,scores={particle=901}] particle 900
scoreboard players set @s[tag=woa1_d_top2,scores={particle=902}] particle 900

#> Adjustment to prevent participant being reassigned instantly
scoreboard players set @s[scores={particle=801}] particle 901
scoreboard players set @s[scores={particle=802}] particle 902

#> FX/tellraw
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
title @s[scores={particle=900}] actionbar [{"color":"gold","text":"Selected "},{"color":"dark_red","text":"Participant"}]
title @s[scores={particle=901}] actionbar [{"color":"gold","text":"Selected "},{"color":"aqua","text":"Singles Top 3"}]
title @s[scores={particle=902}] actionbar [{"color":"gold","text":"Selected "},{"color":"green","text":"Doubles Top 2"}]