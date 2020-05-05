execute as @s at @s run summon tnt ~ ~.2 ~ {Fuse:9999,NoGravity:1,Glowing:1,Tags:["megab"]}
execute as @s at @s run summon tnt ~ ~.2 ~ {Fuse:9999,NoGravity:1,Glowing:1,Tags:["megab"]}
execute as @s at @s run summon tnt ~ ~.2 ~ {Fuse:9999,NoGravity:1,Glowing:1,Tags:["megab"]}
execute as @s at @s run summon tnt ~ ~.2 ~ {Fuse:9999,NoGravity:1,Glowing:1,Tags:["megab"]}
execute as @s at @s run summon tnt ~ ~.2 ~ {Fuse:9999,NoGravity:1,Glowing:1,Tags:["megab"]}
execute as @s at @s run summon tnt ~ ~.2 ~ {Fuse:9999,NoGravity:1,Glowing:1,Tags:["megab"]}
execute as @s at @s run summon tnt ~ ~.2 ~ {Fuse:9999,NoGravity:1,Glowing:1,Tags:["megab"]}

execute as @s at @s positioned ~ ~.2 ~ run scoreboard players operation @e[tag=megab,limit=7,sort=nearest] tntID = @s tntID

#execute if entity @e[scores={mode=1}] run execute as @s at @s run summon tnt ~ ~.3 ~ {Fuse:26,NoGravity:1}
#execute if entity @e[scores={mode=1}] run execute as @s at @s run summon tnt ~ ~.1 ~ {Fuse:26,NoGravity:1}
#execute if entity @e[scores={mode=1}] run execute as @s at @s run summon tnt ~.1 ~.2 ~ {Fuse:26,NoGravity:1}
#execute if entity @e[scores={mode=1}] run execute as @s at @s run summon tnt ~ ~.2 ~.1 {Fuse:26,NoGravity:1}
#execute if entity @e[scores={mode=1}] run execute as @s at @s run summon tnt ~-.1 ~.2 ~ {Fuse:26,NoGravity:1}
#execute if entity @e[scores={mode=1}] run execute as @s at @s run summon tnt ~ ~.2 ~-.1 {Fuse:26,NoGravity:1}
