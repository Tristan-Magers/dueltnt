execute as @s[scores={nobow=3..}] run function game:char/reaper/give/bow

clear @s[nbt=!{Inventory:[{id:"minecraft:creeper_spawn_egg",Slot:2b}]},scores={creepegguse=..9}] creeper_spawn_egg
execute as @s[nbt=!{Inventory:[{id:"minecraft:creeper_spawn_egg",Slot:2b}]},scores={creepegguse=0}] run function game:char/reaper/give/creeper {amount:3}
execute as @s[nbt=!{Inventory:[{id:"minecraft:creeper_spawn_egg",Slot:2b}]},scores={creepegguse=1}] run function game:char/reaper/give/creeper {amount:2}
execute as @s[nbt=!{Inventory:[{id:"minecraft:creeper_spawn_egg",Slot:2b}]},scores={creepegguse=2}] run function game:char/reaper/give/creeper {amount:1}
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:creeper_spawn_egg",Slot:2b}]},scores={creepegguse=3}] hotbar.2 with creeper_spawn_egg{display:{Name:"{\"italic\":false,\"text\":\"§bGhost Creeper §f: Right-click (Can click on air)\"}"},CanPlaceOn:["#game:bolt_place"],EntityTag:{id:creeper,ignited:1,Fuse:17,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"{\"italic\":false,\"text\":\"Bomb\"}",Health:500,powered:1,ExplosionRadius:1,fuse:1000},HideFlags:16,Enchantments:[{id:knockback,lvl:2}]} 1

clear @s[nbt=!{Inventory:[{id:"minecraft:slime_spawn_egg",Slot:3b}]},scores={slimeegguse=..7}] slime_spawn_egg 
execute as @s[nbt=!{Inventory:[{id:"minecraft:slime_spawn_egg",Slot:3b}]},scores={slimeegguse=0}] run function game:char/reaper/give/slime
#item replace entity @s[nbt=!{Inventory:[{id:"minecraft:slime_spawn_egg",Slot:3b}]},scores={slimeegguse=1}] hotbar.3 with slime_spawn_egg{display:{Name:"{\"italic\":false,\"text\":\"§aEnchanted Slime §f: Right-click (Can click on air)\"}"},CanPlaceOn:["#game:bolt_place"],EntityTag:{id:slime,Size:1,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,Health:500,Tags:["s1"]},HideFlags:16,Enchantments:[{id:knockback,lvl:1}]} 1

clear @s[nbt=!{Inventory:[{id:"minecraft:feather",Slot:4b}]},scores={featheruse=..3}] feather
execute as @s[nbt=!{Inventory:[{id:"minecraft:feather",Slot:4b}]},scores={featheruse=0}] run function game:char/reaper/give/feather {amount:6}
execute as @s[nbt=!{Inventory:[{id:"minecraft:feather",Slot:4b}]},scores={featheruse=1}] run function game:char/reaper/give/feather {amount:5}
execute as @s[nbt=!{Inventory:[{id:"minecraft:feather",Slot:4b}]},scores={featheruse=2}] run function game:char/reaper/give/feather {amount:4}
execute as @s[nbt=!{Inventory:[{id:"minecraft:feather",Slot:4b}]},scores={featheruse=3}] run function game:char/reaper/give/feather {amount:3}
execute as @s[nbt=!{Inventory:[{id:"minecraft:feather",Slot:4b}]},scores={featheruse=4}] run function game:char/reaper/give/feather {amount:2}
execute as @s[nbt=!{Inventory:[{id:"minecraft:feather",Slot:4b}]},scores={featheruse=5}] run function game:char/reaper/give/feather {amount:1}

clear @s[nbt=!{Inventory:[{id:"minecraft:iron_hoe",Slot:1b}]},scores={Sreload=..0}] iron_hoe
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:iron_hoe",Slot:1b}]},scores={Sreload=..0}] Sreload 2

#> Paper shift display correction because it's necessary for phantom jump cosmetic to work
# Implemented by TheViralMelon
execute as @s[nbt={UUID:[I;830775973,-2059124427,-1980963265,-677121745]}] unless items entity @s hotbar.7 minecraft:paper run function game:tournament_rewards/toggle_cosmetic {fakeplayer:"#woa1PhantomJump"}
clear @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:7b}]}] paper
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",Slot:7b}]}] run function game:char/reaper/give/paper
