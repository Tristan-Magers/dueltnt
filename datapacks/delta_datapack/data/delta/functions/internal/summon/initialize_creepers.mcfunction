#> delta:internal/summon/initialize_creepers
#   Links creepers to players via a scoreboard

data merge entity @s {Tags:["delta.launcher"],Silent:1b,Invulnerable:1b,Team:"delta.no_collide",ExplosionRadius:-1b,Fuse:0s,PersistenceRequired:1b}
scoreboard players operation @s delta.internal.id = $temp delta.internal.id