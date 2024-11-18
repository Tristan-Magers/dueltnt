# say running particle_assign.mcfunction ...
# Implemented by TheViralMelon

#> Assign Participant
$execute unless score @s particle matches $(part_val)..$(d_val) run scoreboard players set @s[tag=$(part_tag)] particle $(part_store)

#> Assign Singles Top 3
$scoreboard players set @s[tag=$(s_tag),scores={particle=$(part_val)}] particle $(s_store)

#> Assign Doubles Top 2
$scoreboard players set @s[tag=$(d_tag),tag=!$(s_tag),scores={particle=$(part_val)}] particle $(d_store)
$scoreboard players set @s[tag=$(d_tag),tag=$(s_tag),scores={particle=$(s_val)}] particle $(d_store)

#> Reassign Participant
$scoreboard players set @s[tag=$(s_tag),tag=!$(d_tag),scores={particle=$(s_val)}] particle $(part_val)
$scoreboard players set @s[tag=$(d_tag),scores={particle=$(d_val)}] particle $(part_val)

#> Adjustment to actual particles
$scoreboard players set @s[scores={particle=$(part_store)}] particle $(part_val)
$scoreboard players set @s[scores={particle=$(s_store)}] particle $(s_val)
$scoreboard players set @s[scores={particle=$(d_store)}] particle $(d_val)

#> FX/tellraw
$playsound minecraft:entity.player.levelup master @s[scores={particle=$(part_val)..$(d_val)}] ~ ~ ~ 1 2
$title @s[scores={particle=$(part_val)}] actionbar [{"color":"gold","text":"Selected "},{"color":"yellow","text":"Participant"}]
$title @s[scores={particle=$(s_val)}] actionbar [{"color":"gold","text":"Selected "},{"color":"aqua","text":"Singles Top 3"}]
$title @s[scores={particle=$(d_val)}] actionbar [{"color":"gold","text":"Selected "},{"color":"green","text":"Doubles Top 2"}]