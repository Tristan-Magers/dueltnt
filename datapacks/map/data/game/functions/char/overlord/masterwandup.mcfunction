scoreboard players add @s masterup 1

execute as @s[x=580,dx=80,y=-1,dy=100,z=580,dz=80,distance=..100,scores={masterup=1..}] at @s run function game:player/class_team
#execute as @s[x=580,dx=80,y=-1,dy=100,z=580,dz=80,distance=..100,scores={masterup=1}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Wand's Upgraded","color":"dark_aqua","bold":"true"},{"text":" (Level 2) ","color":"white"}]
#execute as @s[x=580,dx=80,y=-1,dy=100,z=580,dz=80,distance=..100,scores={masterup=2}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Wand's Upgraded","color":"dark_aqua","bold":"true"},{"text":" (Level 3) ","color":"white"}]
#execute as @s[x=580,dx=80,y=-1,dy=100,z=580,dz=80,distance=..100,scores={masterup=3}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Wand's Upgraded","color":"dark_aqua","bold":"true"},{"text":" (Level 4) ","color":"white"}]
execute as @s[x=580,dx=80,y=-1,dy=100,z=580,dz=80,distance=..100,scores={masterup=4}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Wand's Upgraded","color":"dark_aqua","bold":"true"},{"text":" (MAX Level) ","color":"white"}]

#execute unless entity @e[scores={mode=1}] run scoreboard players remove @s masterb 26
#execute if entity @e[scores={mode=1}] run scoreboard players remove @s masterb 20
#execute unless entity @e[scores={mode=1}] run clear @s gold_ore 26
#execute if entity @e[scores={mode=1}] run clear @s gold_ore 20

#scoreboard players remove @s masterc 6
#scoreboard players set @s[scores={masterc=..0}] masterc 0
#scoreboard players set @s mastercT 0

function game:char/overlord/masterwanditems
function game:char/overlord/masterwanduse

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 1
playsound minecraft:item.bottle.fill_dragonbreath master @a ~ ~ ~ 0.5 2
playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~ 0.5 1
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 0.5 1
playsound minecraft:block.conduit.activate master @a ~ ~ ~ 0.5 2

particle minecraft:totem_of_undying ~ ~1 ~ 0 1 0 0.7 10 force