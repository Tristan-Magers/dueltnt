execute as @s positioned ~ ~1.4 ~ run summon tnt ~ ~ ~ {fuse:7,NoGravity:1}
execute as @s positioned ~ ~1.4 ~ run summon tnt ~ ~ ~ {fuse:7,NoGravity:1}

playsound minecraft:block.anvil.place master @a ~ ~ ~ .35 1.75
playsound minecraft:block.anvil.place master @a ~ ~ ~ .1 .6
playsound minecraft:entity.armor_stand.fall master @a ~ ~ ~ 1 0
playsound minecraft:entity.firework_rocket.blast master @a[distance=..50] ~ ~ ~ .7 0
playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..50] ~ ~ ~ 1 0

playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 .3
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1

kill @s