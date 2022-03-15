tp @e[type=minecraft:silverfish] ~ ~-1000 ~

#nolev
effect clear @a[scores={nolev=1}] levitation
scoreboard players remove @a[scores={nolev=0..}] nolev 1

#characters
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100] at @s run function game:char/items

# items
function game:realitems

scoreboard players add @a[scores={ggravuse=1..}] gravuse 1
scoreboard players remove @a[scores={ggravuse=1..}] ggravuse 1

scoreboard players set @a[gamemode=adventure,scores={class=8,bow=1..17,garboost=1..}] bow 19
#item replace entity @a[gamemode=adventure,scores={class=8,garboost=1}] hotbar.0 with minecraft:bow{Damage:220,Unbreakable:1,display:{Name:"{\"italic\":false,\"text\":\"§6Blast Jumper§r : Throw to switch\"}"},Enchantments:[{id:punch,lvl:2}]}
scoreboard players remove @a[gamemode=adventure,scores={class=8,garboost=1..}] garboost 1

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=1},nbt={OnGround:1b}] at @s run scoreboard players remove @s rjump 1
scoreboard players remove @a[gamemode=adventure,scores={class=8,rjump=2..}] rjump 1

team join Main @a[gamemode=adventure,team=!Main,x=600,y=60,z=600,distance=110..]
team join Main @a[gamemode=adventure,team=!Main,scores={class=..7}]

# arrow reloading
scoreboard players set @a[gamemode=adventure,scores={bow=-100}] bow 1
scoreboard players add @a[gamemode=adventure,scores={bow=..-99}] bow 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={bow=1..}] at @s run function game:player/arrowreload

#ender land effects
execute as @a[gamemode=adventure,distance=..100,x=620,y=20,z=620] at @s run function game:items/endercount

# shifting specials
execute as @a unless entity @s[scores={class=9}] run xp add @s -1 levels
xp add @a[scores={class=9,overlordsc=4..}] -1 levels
scoreboard players add @a[gamemode=adventure,scores={timer=1..},distance=..100,x=620,y=20,z=620] timer 1
execute as @a[gamemode=adventure,scores={shift=1..,timer=..0},distance=..100,x=620,y=20,z=620] at @s unless entity @s[scores={class=9,overlordsc=4..}] run function game:shift

execute as @a[gamemode=adventure,scores={timer=1..},distance=..100,x=620,y=20,z=620] at @s run function game:player/shifttime

title @a[gamemode=adventure,scores={shift=1..},x=600,y=60,z=600,distance=3..500] title {"text":""}
scoreboard players reset @a[gamemode=adventure,scores={shift=1..}] shift

# arrow effects
scoreboard players add @e[type=arrow] arrowTime 1
execute as @e[type=arrow,scores={arrowTime=1}] at @s run function game:items/arrowscores

execute as @a[gamemode=adventure,scores={bowDetect=1..}] at @s run function game:player/arrowshoot

execute as @e[type=arrow,scores={BombBow=1..}] at @s run function game:char/trapper/traparrowalarm
execute as @e[tag=!inG,type=arrow,nbt={inGround:1b},scores={BombBow=1..}] run function game:char/trapper/traparrowhit
tag @e[type=arrow,nbt={inGround:1b}] add inG

execute as @a[scores={alarm=5}] at @s run playsound minecraft:block.note_block.iron_xylophone master @p ~ ~ ~ 1 1
scoreboard players remove @a[scores={alarm=1..}] alarm 1

execute as @e[type=arrow,tag=chickenbow,tag=inG] at @s run summon chicken ~ ~ ~ {Tags:["exchicken"],Invulnerable:1}
kill @e[type=arrow,tag=chickenbow,tag=inG]

execute as @e[tag=frostset] at @s run function game:char/shard/frostplace
kill @e[tag=frostset]

tag @e[type=arrow,tag=!flame,nbt={Fire:1999s}] add flame
tag @e[tag=inG,tag=flame] add explode
execute as @e[tag=explode] at @s run summon tnt ~ ~.1 ~ {Fuse:11,Motion:[0.0,0.4,0.0]}
execute as @e[tag=explode] at @s run summon tnt ~ ~.1 ~ {Fuse:11,Motion:[0.0,0.35,0.0]}
kill @e[tag=explode,type=arrow]

scoreboard players set @e[type=arrow] Inbarrier 0
scoreboard players set @e[type=arrow,nbt={inBlockState:{Name:"minecraft:barrier"}}] Inbarrier 1
#scoreboard players set @e[type=arrow,nbt={inBlockState:{Name:"minecraft:white_stained_glass"}}] Inbarrier 2
execute as @e[tag=inG,type=arrow,scores={BombBow=..0}] at @s run function game:arrow
kill @e[tag=inG,type=arrow,scores={BombBow=..0}]
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run scoreboard players set @a[gamemode=adventure,distance=..10,scores={class=8}] rjump 10

#slime
tag @e[name=SM,type=minecraft:marker] add slimerpro
execute as @e[type=snowball] at @s run kill @e[distance=..8,name=SM,type=minecraft:marker]
execute as @e[type=snowball] at @s run summon minecraft:marker ~ ~ ~ {CustomName:"{\"italic\":false,\"text\":\"SM\"}",Invulnerable:1,Marker:1,Silent:1,NoGravity:1,Invisible:1}
execute as @e[tag=slimerpro,scores={slimetime=..0}] at @s run summon slime ~ ~-1 ~ {Size:3,NoGravity:1,CustomName:"{\"italic\":false,\"text\":\"slimer\"}",Tags:["slimer"]}
execute as @e[tag=slimerpro,scores={slimetime=1}] at @s run summon slime ~ ~-1 ~ {Size:4,NoGravity:1,CustomName:"{\"italic\":false,\"text\":\"slimer\"}",Tags:["slimer"]}
execute as @e[tag=slimerpro,scores={slimetime=2}] at @s run summon slime ~ ~-1 ~ {Size:6,NoGravity:1,CustomName:"{\"italic\":false,\"text\":\"slimer\"}",Tags:["slimer"]}
execute as @e[tag=slimerpro,scores={slimetime=2}] at @s run effect give @e[type=slime,distance=..10] minecraft:resistance 999 10 true
execute as @e[type=snowball] at @s run execute as @a[gamemode=adventure,distance=..3,scores={snow=..0,snowReset=..94}] at @s run kill @e[type=snowball,distance=..2]
scoreboard players add @e[type=slime] time 1
execute as @e[type=slime,scores={time=40..},tag=slimer] at @s run summon tnt ~ ~ ~ {Fuse:2}
tp @e[type=slime,scores={time=40..},tag=slimer] ~ ~-2000 ~

tp @e[type=slime,scores={time=60..}] ~ ~-2000 ~
execute as @e[tag=slimerpro] at @s run playsound minecraft:entity.slime.attack master @a
kill @e[tag=slimerpro]
scoreboard players add @e[type=snowball] slimetime 1
execute as @e[type=snowball,scores={slimetime=6..}] at @s run scoreboard players set @e[distance=..8,name=SM,type=minecraft:marker] slimetime 1
execute as @e[type=snowball,scores={slimetime=16..}] at @s run scoreboard players set @e[distance=..8,name=SM,type=minecraft:marker] slimetime 2
scoreboard players add @e[name=SM,type=minecraft:marker] slimetime 0

# eggs throw
scoreboard players add @a snowReset 0
tag @e[name=AM,type=armor_stand] add slime
execute as @e[type=egg] at @s run kill @e[distance=..8,name=AM,type=armor_stand]
execute as @e[type=egg] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"italic\":false,\"text\":\"AM\"}",Invulnerable:1,Marker:1,Silent:1,NoGravity:1,Invisible:1}
execute as @e[name=AM,type=armor_stand,tag=slime] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1,Silent:1,Tags:["a","frostnade"]}
scoreboard players set @a[gamemode=adventure,scores={egguse=1..}] eggtimer 40
scoreboard players set @a[gamemode=adventure,scores={egguse=1..}] egguse 0
scoreboard players remove @a[gamemode=adventure,scores={eggtimer=-1..}] eggtimer 1
#item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={eggtimer=1}] hotbar.1 with egg{display:{Name:"{\"italic\":false,\"text\":\"§3Cold Bomb §f§r: Right-click\"}"}}
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={eggtimer=1}] hotbar.1 with yellow_dye{display:{Name:"{\"italic\":false,\"text\":\"§3Snowman §f§r: Right-click\"}"}}
kill @e[tag=slime,name=AM,type=armor_stand]

# potions
execute as @a[gamemode=adventure,scores={potion=-200..}] at @s run function game:items/potion

#master_wand
tag @a[gamemode=adventure,tag=!mwnext] remove mwnext2
tag @a remove mwnext
execute as @a[gamemode=adventure,scores={click=1..,class=9}] at @s run function game:char/overlord/wandtrigger
tag @a[gamemode=adventure,tag=mwnext,tag=!mwnext2] add mwnext2

#master boom
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] at @s run function game:char/overlord/masterboom
scoreboard players remove @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] masterb 13
clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] gold_ore 13
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] at @s run function game:char/overlord/masterwanditems

#wand upgrade
scoreboard players add @a[gamemode=adventure,scores={masterc=25..}] mastercT 1
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={mastercT=1}] mastercT 4
scoreboard players set @a[gamemode=adventure,scores={mastercT=40..}] masterc 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={mastercT=40..,class=9}] at @s run function game:char/overlord/masterwandreload
scoreboard players set @a[gamemode=adventure,scores={mastercT=40..}] mastercT 0

execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cod"}}] at @s anchored eyes run function game:char/overlord/masterwandup

#matter refill
scoreboard players add @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9}] matfill 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,matfill=24}] at @s run function game:char/overlord/masterwandget
scoreboard players set @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,matfill=24}] matfill 0

#master storm
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] at @s run function game:char/overlord/stormuse
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=0..,class=9}] at @s run function game:char/overlord/stormactive
execute as @e[tag=stormtnt] at @s run function game:char/overlord/masterstormmove

#mastershift
execute as @e[name=ground2] at @s run function game:char/overlord/masterground

#fireball manage
scoreboard players add @e[type=fireball] egg 1
kill @e[type=fireball,scores={egg=150..}]

#fireball mot
execute as @e[tag=trackshot2,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro4mot
execute as @e[scores={fballtimer=1}] at @s run function game:cprojectile/pro4mot2
scoreboard players add @e[scores={fballtimer=1..}] fballtimer 1
kill @e[scores={fballtimer=300..}]

#out of bounds entities
kill @e[type=ender_pearl,x=614,y=50,z=614,distance=60..200]
kill @e[type=arrow,x=614,y=50,z=614,distance=60..200]

#master tnt
scoreboard players add @e[tag=mastertnt] masterb 1
#execute as @e[tag=mastertnt,scores={masterb=2}] at @s run data merge entity @s {NoGravity:1}
execute as @e[tag=mastertnt,scores={masterb=14}] at @s run summon tnt ~ ~.4 ~ {Fuse:2}
execute as @e[tag=mastertnt,scores={masterb=14}] at @s run summon tnt ~ ~.4 ~ {Fuse:2}
kill @e[tag=mastertnt,scores={masterb=14}]

execute as @e[tag=mastertnt,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro2mot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:salmon"}}] at @s run function game:cprojectile/pro2

#creeper projectile wizard
execute as @e[tag=wizcreep,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro8mot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:gray_dye"}}] at @s run function game:cprojectile/pro8

effect give @e[tag=wizcreep] minecraft:slow_falling 999 0 true

#creeper projectile reaper
scoreboard players add @e[tag=creepro] masterb 1

execute as @e[tag=creeppro,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro5mot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] at @s run function game:cprojectile/pro5

#slime projectile
execute as @e[tag=slimepro,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro6mot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:slime_spawn_egg"}}] at @s run function game:cprojectile/pro6

#entity particles
execute as @e[tag=critpart,nbt=!{inGround:1b}] at @s run particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0 1 force
execute as @e[tag=waxpart,nbt=!{inGround:1b}] at @s run particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force

#trapper arrows
execute as @e[tag=trackshot,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro3mot

#ground path
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] at @s run function game:char/overlord/groundpathuse
execute as @e[tag=groundpath] at @s run function game:char/overlord/groundpath

#vortex
scoreboard players remove @a[gamemode=adventure,scores={vortextime=0..}] vortextime 1
item replace entity @a[gamemode=adventure,scores={vortextime=1}] hotbar.5 with minecraft:clay_ball{display:{Name:"{\"italic\":false,\"text\":\"§bVortex §r: Right-click\"}"}}
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s run function game:char/wizard/vortex

execute as @e[name=vortex] at @s run function game:char/wizard/vortexent

# platform
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run function game:char/trapper/platform

scoreboard players remove @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1}] platUse 1

scoreboard players remove @a[gamemode=adventure,scores={PlatTimer=1..}] PlatTimer 1
execute as @a[gamemode=adventure,scores={platAm=1}] at @s positioned ~ ~-.1 ~ run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_stained_glass replace air
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=4}] hotbar.4 with diamond_sword{Damage:100,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform §r: Right-click\"}"}}
scoreboard players add @e[name=SP] PlatTimer 1
execute as @e[name=SP,scores={PlatTimer=50..}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace white_stained_glass
kill @e[name=SP,scores={PlatTimer=50..}]
execute as @e[name=SP,scores={PlatTimer=..1}] at @s run teleport @p[distance=..1] ~ ~.2 ~
execute as @a at @s if block ~ ~ ~ white_stained_glass run teleport @s ~ ~1 ~
execute as @a[gamemode=adventure,scores={platAm=1}] at @s positioned ~ ~-.1 ~ run summon armor_stand ~ ~-1 ~ {NoGravity:1,Invlunerable:1,Marker:1,Silent:1,CustomName:"{\"italic\":false,\"text\":\"SP\"}",Invisible:1}
scoreboard players remove @a[gamemode=adventure,scores={platAm=1..}] platAm 1
execute as @a[gamemode=adventure,scores={platAm=6}] at @s run playsound minecraft:entity.illusion_illager.cast_spell master @a ~ ~ ~ 1 1.2
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=2}] hotbar.4 with diamond_sword{Damage:520,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform §r: Right-click\"}"}}
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=1}] hotbar.4 with diamond_sword{Damage:1040,display:{Name:"{\"italic\":false,\"text\":\"Temporary Platform §r: Right-click\"}"}}
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=2,platUse=1..}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Reloaded ","color":"white"},{"text":"Platform","color":"red","bold":"true"},{"text":"","color":"white"}]

# tnt egg
execute as @e[name=tnt] at @s run summon tnt ~ ~.6 ~ {Fuse:4}
execute as @e[name=tnt] at @s run summon tnt ~ ~.6 ~ {Fuse:4}
tp @e[type=mooshroom,name=tnt] ~ ~-1000 ~

execute as @a[x=580,dx=80,y=-1,dy=100,z=580,dz=80,distance=..100,scores={tntegguset=1..,class=5}] at @s run function game:char/mads/tntegguse

# acid
scoreboard players set @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:sugar"}}] acidTimer 60
execute as @a[gamemode=adventure,scores={acidTimer=1..}] at @s run function game:items/acid

execute as @e[name=acid,type=armor_stand] at @s run function game:char/mads/acident

#grab switch
function game:givegrab

#grab
scoreboard players add @e[name="Fishing Bobber"] fishingT 1
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect give @p slowness 3 255
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect clear @p jump_boost
#execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect give @p jump_boost 3 128
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run scoreboard players set @p stun 52
kill @e[type=armor_stand,name=Mark]
title @a[gamemode=adventure,scores={stun=32..}] title {"text":"SHIFT to escape","color":"red","bold":"true"}
title @a[gamemode=adventure,scores={stun=2}] title {"text":"","color":"red","bold":"true"}
scoreboard players remove @a[gamemode=adventure,scores={stun=0..}] stun 1
effect clear @a[gamemode=adventure,scores={stun=1}] slowness
#effect clear @a[gamemode=adventure,scores={stun=1}] jump_boost

execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run execute as @e[distance=..1,name="Fishing Bobber",scores={fishingT=3..}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1.12
execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run scoreboard players set @a[gamemode=adventure,distance=..1,scores={stun=9..}] stun 9
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1] at @s run scoreboard players add @p TimeStun 1
scoreboard players set @a[gamemode=adventure,scores={stun=1}] TimeStun 0
execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run kill @e[distance=..1,name="Fishing Bobber",scores={fishingT=5..}]
scoreboard players set @a[gamemode=adventure,scores={shStun=1..,stun=35..}] stun 35

effect give @a[gamemode=adventure,scores={class=0,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
effect give @a[gamemode=adventure,scores={class=2,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
effect give @a[gamemode=adventure,scores={class=4,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
effect give @a[gamemode=adventure,scores={class=5,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
effect give @a[gamemode=adventure,scores={class=6,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
effect give @a[gamemode=adventure,scores={class=7,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
effect give @a[gamemode=adventure,scores={class=10,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
scoreboard players set @a[gamemode=adventure,scores={shStun=1}] shStun -3
scoreboard players set @a[gamemode=adventure,scores={shStunD=1..,shStun=..-1}] shStun -3
scoreboard players add @a[gamemode=adventure,scores={shStun=..-1}] shStun 1
scoreboard players set @a[gamemode=adventure,scores={shStunD=1..,shStun=0}] shStun 1
scoreboard players set @a shStunD 0
scoreboard players add @a shStun 0

#boom wand
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={class=7}] at @s anchored eyes run function game:items/boomwman

#boom shard
execute as @e[tag=tntpro,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro7mot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:pink_dye"}}] at @s run function game:cprojectile/pro7

#echo wall limit
tag @a[nbt={OnGround:1b},scores={grtest=0}] remove nowalllev

#blast wand
execute as @e[name=blast] at @s run function game:char/echo/blast/blasttick

#sky wand
scoreboard players remove @a[gamemode=adventure,scores={airwandtime=0..}] airwandtime 1
execute as @a[gamemode=adventure,scores={click=1..,airwandtime=..0},nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] at @s run function game:items/airwand
item replace entity @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={airwandtime=0}] hotbar.3 with minecraft:diamond_hoe{display:{Name:"{\"italic\":false,\"text\":\"§bSky Wand §r: Right-click\"}"},AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:77216,UUIDMost:618122}]}

#ground spell
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={click=1..},nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run function game:items/groundspell
scoreboard players remove @a[gamemode=adventure,scores={groundtime=1..}] groundtime 1

scoreboard players add @e[name=ground] gtimer 1
execute as @e[name=ground,scores={gtimer=500..}] at @s run function game:items/groundspelldecay

#scythe
tag @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add pro1
clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] iron_hoe
scoreboard players set @a throwP1 0
effect give @a[gamemode=adventure,tag=pro1] minecraft:slow_falling 1 10
execute as @a[gamemode=adventure,tag=pro1] at @s positioned ~ ~ ~ run function game:cprojectile/pro1
tag @a remove pro1
execute as @e[name=pro1] at @s positioned ~ ~ ~ run function game:physics/movevol
scoreboard players add @e[name=pro1] prolife 1
kill @e[scores={prolife=60..}]
scoreboard players remove @e[tag=!boom,name=pro1,scores={DirX=-70..}] DirX 1

scoreboard players remove @a[gamemode=adventure,scores={Sreload=0..}] Sreload 1

# sneak attack
execute as @e[type=squid] at @s run summon tnt ~ ~1 ~ {Fuse:3}
execute as @e[type=squid] at @s run summon tnt ~ ~1 ~ {Fuse:3}
execute as @e[type=squid] at @s run summon tnt ~ ~1 ~ {Fuse:3}
execute as @e[type=squid] at @s run tp @s ~ ~-1000 ~

# freeze
execute as @e[scores={frozen=0..}] at @s run function game:player/frozen

#pig
scoreboard players add @e[type=pig] egg 1
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s run execute as @e[scores={egg=..1},limit=1,type=pig] at @s run teleport @p[scores={class=4,egg=1..}] ~ ~ ~
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s run tp @s @s
scoreboard players set @a[gamemode=adventure,scores={class=4,egg=1..}] pig 41
scoreboard players set @a[gamemode=adventure,scores={class=4}] egg 0
execute as @e[type=pig] at @s run data merge entity @s {Invulnerable:1}
scoreboard players set @e[type=pig,scores={egg=..1}] pig 41
kill @e[type=pig,scores={pig=..0}]
execute as @a[gamemode=adventure,scores={pig=-100..}] at @s run function game:char/wizard/pig
scoreboard players remove @e[scores={pig=-100..}] pig 1

#frost suck
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={click=1..},nbt={SelectedItem:{id:"minecraft:lime_dye"}}] at @s run function game:char/shard/frostsuck/use
execute as @e[tag=frostsuck,scores={frostl=-200..}] at @s run function game:char/shard/frostsuck/frostl
execute as @e[tag=frostsuck,tag=org] at @s align x align y align z run function game:char/shard/frostsuck/frosts
scoreboard players add @e[tag=frostsuck] frostl 0

item replace entity @a[scores={class=10,frostsT=0},x=620,y=20,z=620,distance=..100] hotbar.3 with lime_dye{display:{Name:"{\"italic\":false,\"text\":\"§3Ice Suck §f§r: Right-click\"}"}}
scoreboard players remove @e[scores={frostsT=-100..}] frostsT 1

execute as @e[tag=frostplat] at @s run function game:char/shard/frostsuck/plat

#snowman
execute as @e[type=minecraft:snow_golem] at @s run function game:char/shard/snowman/tick

execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={click=1..},nbt={SelectedItem:{id:"minecraft:yellow_dye"}}] at @s run function game:char/shard/snowman/create
#item replace entity @a[scores={class=10,snowmanT=0},x=620,y=20,z=620,distance=..100] hotbar.2 with yellow_dye{display:{Name:"{\"italic\":false,\"text\":\"§6Snowman §f§r: Right-click\"}"}}
item replace entity @a[scores={class=10,snowmanT=0},x=620,y=20,z=620,distance=..100] hotbar.1 with egg{display:{Name:"{\"italic\":false,\"text\":\"§3Cold Bomb §f§r: Right-click\"}"}}
scoreboard players remove @e[scores={snowmanT=-100..}] snowmanT 1

#trident trow
execute as @e[type=minecraft:trident,nbt={inGround:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["tntstorm","gameae"]}
#execute as @e[type=minecraft:trident,nbt={inGround:1b}] at @s run function game:char/shard/frostplace2
execute as @e[type=minecraft:trident,nbt={inGround:1b}] at @s run kill @s
scoreboard players remove @a[scores={tridentT=0..}] tridentT 1
scoreboard players set @a[scores={tridentuse=1..}] tridentT 130
item replace entity @a[scores={class=10,tridentT=0},x=620,y=20,z=620,distance=..100] hotbar.2 with trident{display:{Name:"{\"italic\":false,\"text\":\"§9Trident §f§r: Right-click\"}"}}
scoreboard players set @a[scores={tridentuse=1..}] tridentuse 0
execute as @e[tag=tntstorm] at @s run function game:char/shard/tntstorm

#power shield
execute as @a[gamemode=adventure,scores={powerAn=1},x=600,y=60,z=600,distance=3..100] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"italic\":false,\"text\":\"PS\"}",Marker:1,Silent:1,NoGravity:1,Invulnerable:1,Invisible:1}
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:stick"}}] at @s run function game:char/mads/powershield
scoreboard players remove @a[gamemode=adventure,scores={PStimer=1..}] PStimer 1
execute as @a[gamemode=adventure,scores={PStimer=148}] at @s run tp @s @s
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PStimer=1}] hotbar.3 with stick{display:{Name:"{\"italic\":false,\"text\":\"§9Power Shield §r: Right-click\"}"}}

execute as @e[name=PS,type=armor_stand] at @s run function game:char/mads/powershieldent

execute as @e[type=tnt] at @s if block ~ ~ ~ barrier run kill @e[type=tnt,distance=..1]
scoreboard players remove @a[gamemode=adventure,scores={powerAn=-10..}] powerAn 1
execute as @a[gamemode=adventure,scores={powerAn=6}] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.3 .5
execute as @a[gamemode=adventure,scores={powerAn=6}] at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ .4 2

# detonation
scoreboard players add @e[type=arrow] BowTime 1
scoreboard players set @e[type=arrow,scores={BowTime=..1},tag=!trackshot] BombBow 0
execute as @a[gamemode=adventure,scores={class=3,BowUse=1..}] at @s run scoreboard players set @e[type=arrow,scores={BowTime=..2},distance=..5] BombBow 1
execute as @a[gamemode=adventure,scores={class=3,BowUse=1..}] at @s run scoreboard players operation @e[type=arrow,scores={BowTime=..2},distance=..5] tntID = @p tntID
scoreboard players set @a BowUse 0
kill @e[type=arrow,scores={BombBow=1..,BowTime=300..}]
execute as @e[type=arrow,scores={BombBow=1..}] at @s run data merge entity @s {pickup:0}
execute as @a[gamemode=adventure,scores={class=3,BowUse=1..}] at @s run scoreboard players operation @e[type=arrow,scores={BowTime=..2},distance=..5] tntID = @p tntID
scoreboard players set @a[gamemode=adventure,sort=random,limit=1,scores={BombExplode=1..},nbt={SelectedItem:{id:"minecraft:bone"}}] RanExplode 1
scoreboard players operation @e[scores={BombBow=1..}] tntID -= @p[scores={RanExplode=1..}] tntID
execute as @e[type=arrow,tag=!trapchick,scores={BombBow=1..,tntID=0}] at @s run summon tnt ~ ~.55 ~ {Fuse:4,NoGravity:0}
execute as @e[type=arrow,tag=trapchick,scores={BombBow=1..,tntID=0}] at @s run summon chicken ~ ~ ~ {Tags:["exchicken"],Invulnerable:1}
kill @e[type=arrow,scores={BombBow=1..,tntID=0}]
scoreboard players operation @e[scores={BombBow=1..}] tntID += @p[scores={RanExplode=1..}] tntID
scoreboard players set @a[gamemode=adventure,nbt=!{SelectedItem:{id:"minecraft:bone"}}] BombExplode 0
scoreboard players set @a[gamemode=adventure,scores={RanExplode=1..}] BombExplode 0
execute as @a[gamemode=adventure,scores={RanExplode=1..}] at @s run playsound minecraft:block.piston.extend master @p ~ ~ ~ 1 2
scoreboard players set @a[gamemode=adventure,scores={RanExplode=1..}] RanExplode 0
execute as @e[scores={BombBow=1..}] at @s run data merge entity @s {NoGravity:1}

# platform
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100] at @s run function game:char/gardener/gravetrap
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100] at @s run function game:char/gardener/boosttrap

effect clear @a wither

execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={grave=1..}] at @s run function game:char/gardener/grave

# creepers and slimes
effect give @e[name=Bomb,type=creeper] slowness 999 100 true
effect give @e[type=slime] slowness 999 100 true
effect give @e[type=slime] resistance 999 100 true
effect give @e[type=creeper] resistance 999 100 true

execute as @e[type=slime,tag=s1] at @s run function game:items/reaperslime

execute as @e[scores={Ctimer=1..},tag=!nodub] at @s run particle minecraft:wax_off ~ ~1 ~ 0.3 0.6 0.3 0 2 force

scoreboard players add @e[name=Bomb,type=creeper] Ctimer 1
execute as @e[scores={Ctimer=17},tag=!nodub] at @s run summon minecraft:creeper ~ ~ ~ {NoAI:1,ignited:1,Fuse:3,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"{\"italic\":false,\"text\":\"Bomb\"}",Health:500,powered:1,ExplosionRadius:2,Invulnerable:1,NoAI:1}
execute as @e[scores={Ctimer=17},tag=!nodub] at @s run summon minecraft:creeper ~ ~ ~ {NoAI:1,ignited:1,Fuse:5,Invulnerable:0,PersistenceRequired:1,Silent:1,NoAI:0,CustomName:"{\"italic\":false,\"text\":\"Bomb\"}",Health:500,powered:1,ExplosionRadius:2,Invulnerable:1,NoAI:1}

#execute as @a[scores={creepegguse=8,creeperegguset=1..}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Creeper","color":"green","bold":"true"},{"text":" (2 Remaining) ","color":"white"}]
#execute as @a[scores={creepegguse=9,creeperegguset=1..}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Creeper","color":"green","bold":"true"},{"text":" (1 Remaining) ","color":"white"}]
#execute as @a[scores={creepegguse=10,creeperegguset=1..}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s","color":"gold"},{"text":" Used ","color":"white"},{"text":"Creeper","color":"green","bold":"true"},{"text":" (0 Remaining) ","color":"white"}]

scoreboard players set @a creeperegguset 0 

#creep and scyth reload
scoreboard players add @a[scores={creepegguse=1..}] creepeggr 1
scoreboard players add @a[scores={slimeegguse=1..}] slimeeggr 1

clear @a[scores={creepeggr=140..}] creeper_spawn_egg
clear @a[scores={slimeeggr=140..}] slime_spawn_egg

scoreboard players remove @a[scores={creepeggr=140..}] creepegguse 1
scoreboard players remove @a[scores={slimeeggr=140..}] slimeegguse 1

scoreboard players set @a[scores={creepeggr=140..}] creepeggr 0
scoreboard players set @a[scores={slimeeggr=140..}] slimeeggr 0

# sythe reloading
item replace entity @a[gamemode=adventure,scores={class=6,Sreload=0},x=600,y=60,z=600,distance=3..100] hotbar.1 with iron_hoe{display:{Name:"{\"italic\":false,\"text\":\"§aScythe §f: Right-click to throw\"}"},Enchantments:[{id:knockback,lvl:2}],Unbreakable:1}

#dark pillar
execute as @e[type=armor_stand,name=NArrow] at @s run function game:char/reaper/darkpillararrow

# smoke bomb
execute as @e[type=experience_bottle] at @s run kill @e[type=area_effect_cloud,name=place,distance=..4]
execute as @a[gamemode=adventure,scores={Escape=1..}] at @s run particle spit ~ ~ ~ .5 1 .5 .1 20 force
scoreboard players add @e[type=area_effect_cloud,name=place] XPTimer 1
execute as @e[type=experience_bottle] at @s run summon area_effect_cloud ~ ~ ~ {Potion:"minecraft:strong_healing",Duration:3,Tags:["a"],CustomName:"{\"italic\":false,\"text\":\"place\"}"}
execute as @e[type=area_effect_cloud,name=place,tag=!gameae,scores={XPTimer=2..}] at @s run summon tnt ~ ~.1 ~ {Fuse:14,Tags:["sit"],NoAI:1,NoGravity:1}
execute as @e[type=area_effect_cloud,name=place,tag=!gameae,scores={XPTimer=2..}] at @s run summon tnt ~ ~.11 ~ {Fuse:17,Tags:["sit"],NoAI:1,NoGravity:1}
# NOTE: 10.5 blocks launch with 3 tick dif, 12.5 block launch with 2 tick dif (no jump) | 17 blocks launch with 3 tick dif, 20 block launch with 2 tick dif (jump)
clear @a[gamemode=adventure,scores={Escape=1..}] experience_bottle
kill @e[type=experience_orb]
scoreboard players set @a[gamemode=adventure,scores={Escape=1..,XPReset=..0}] XPReset 100
scoreboard players set @a[gamemode=adventure,scores={Escape=1..,XPReset=90}] XPReset 89
effect give @a[gamemode=adventure,scores={Escape=1..}] invisibility 2 1
scoreboard players remove @a[gamemode=adventure,scores={XPReset=0..89}] XPReset 1
scoreboard players remove @a[gamemode=adventure,scores={XPReset=91..}] XPReset 1
#item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=1}] hotbar.1 with experience_bottle{display:{Name:"{\"italic\":false,\"text\":\"§7Smoke Bomb §r: Right-click\"}"}} 2
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=50}] hotbar.1 with minecraft:coal{display:{Name:"{\"italic\":false,\"text\":\"§9Air Missile§r : Right-click\"}"}}
tag @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=50}] add coal
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=91}] hotbar.1 with experience_bottle{display:{Name:"{\"italic\":false,\"text\":\"§7Smoke Bomb §r: Right-click\"}"}}
scoreboard players set @a[gamemode=adventure,scores={Escape=1..}] Invis 24
execute as @e[type=experience_bottle] at @s run particle spit ~ ~ ~ .5 .5 .5 .1 4 force
scoreboard players reset @a Escape
#scoreboard players remove @a[gamemode=adventure,score_Invis_min=1] Invis 1
execute as @e[tag=sit] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]}

#air grenade
execute as @e[tag=airnade] at @s run function game:items/airnade

#air grenade
execute as @e[tag=frostnade] at @s run function game:items/frostnade

# mass lev
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run function game:items/masslev
#effect give @a[gamemode=adventure,scores={mTtimer=119}] levitation 1 1
scoreboard players remove @a[gamemode=adventure,scores={mTtimer=1..}] mTtimer 1
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={mTtimer=1}] hotbar.3 with iron_ingot{display:{Name:"{\"italic\":false,\"text\":\"Mass Levitate §r: Right-click [everyone within 3 blocks]\"}"}}

# pearls
scoreboard players add @e[type=minecraft:ender_pearl] enderT 1

execute as @a[scores={ender=1..}] at @s run function game:player/enderthrow

scoreboard players remove @a[gamemode=adventure,scores={enderreload=0..,class=1}] enderreload 1
scoreboard players remove @a[gamemode=adventure,scores={enderreload=0..,class=2}] enderreload 1

# plague
tag @a[gamemode=adventure,scores={plagueuse=1..}] remove checkairnade
scoreboard players set @a[gamemode=adventure,scores={plagueuse=1..}] plaguetimer 200
scoreboard players set @a[gamemode=adventure,scores={plagueuse=1..}] plagueuse 0
scoreboard players remove @a[gamemode=adventure,scores={plaguetimer=0..}] plaguetimer 1
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={plaguetimer=0,class=8}] hotbar.2 with minecraft:lingering_potion{Potion:"minecraft:poison",display:{Name:"{\"italic\":false,\"text\":\"§2Plague §r: Right-click\"}"}}
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={plaguetimer=150,class=0}] hotbar.1 with snowball{display:{Name:"{\"italic\":false,\"text\":\"§2Slimer §f§r: Right-click (hit players)\"}"}}
clear @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,plaguetimer=-1},nbt=!{Inventory:[{id:"minecraft:lingering_potion"}]}] lingering_potion
scoreboard players set @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,plaguetimer=-1},nbt=!{Inventory:[{id:"minecraft:lingering_potion"}]}] plaguetimer 1

#phantom missile
execute as @e[tag=phantommissile] at @s run function game:missile

#phantom air missile
execute as @e[tag=phantomairmissile] at @s run function game:airmissile

#chicken bow
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={chickenbow=1..4}] at @s run playsound minecraft:entity.chicken.death master @a ~ ~ ~ 1 1.5
scoreboard players remove @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100] chickenbow 1

#DPeffect
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={DPeffect=1..}] run function game:items/dpeffect

#scythe begone
#execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8}] at @s run clear @a[gamemode=adventure,distance=..3.5,scores={class=6}] iron_hoe
#execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8}] at @s run execute as @a[gamemode=adventure,distance=..3.5,scores={Sreload=..10,class=6}] at @s run particle minecraft:item iron_block ~ ~.4 ~ .3 .4 .3 .05 2 force
#execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8}] at @s run scoreboard players set @a[gamemode=adventure,distance=..3.5,scores={Sreload=..10,class=6}] Sreload 10

#track bomb
execute as @e[tag=tnttrack] at @s run function game:tnttrack

#reaper egg sound
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={slimeplace=1..}] at @s run playsound minecraft:entity.slime.death master @a ~ ~ ~ 1 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={slimeplace=1..}] at @s run playsound minecraft:entity.slime.hurt master @a ~ ~ ~ 1 2
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={creepplace=1..}] at @s run playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={creepplace=1..}] at @s run playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 1
scoreboard players set @a slimeplace 0
scoreboard players set @a creepplace 0

#inventory correction
tag @a remove corinv
tag @a[gamemode=adventure,x=594.1,z=594.1,y=0,dx=48.8,dz=48.8,dy=108,distance=..1000] add corinv
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,tag=corinv] at @s run function game:invcorrect

# wizard bow
scoreboard players add @e[type=arrow] ballArrowT 1
scoreboard players set @a[gamemode=adventure,scores={class=4}] wizItem 0
scoreboard players set @a[gamemode=adventure,scores={class=4},nbt={SelectedItemSlot:0}] wizItem 1
scoreboard players set @a[gamemode=adventure,scores={class=4},nbt={SelectedItemSlot:1}] wizItem 2
scoreboard players set @a[gamemode=adventure,scores={class=4},nbt={SelectedItemSlot:2}] wizItem 3
scoreboard players set @e[scores={ballArrowT=..1}] isBall 0
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=1}] at @s run function game:cprojectile/pro4
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=1}] at @s run kill @e[distance=..5,type=arrow,scores={ballArrowT=..1}]
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=2}] at @s run scoreboard players set @e[limit=1,distance=..5,type=arrow,scores={ballArrowT=..1}] isBall 2
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=3}] at @s run scoreboard players set @e[limit=1,distance=..5,type=arrow,scores={ballArrowT=..1}] isBall 3
execute as @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=3}] at @s run scoreboard players operation @e[limit=1,distance=..5,type=arrow,scores={ballArrowT=..1}] tntID = @s tntID
#clear @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=3}] tipped_arrow
#scoreboard players set @a[gamemode=adventure,scores={class=4,shootBall=1..,wizItem=3}] bow 1
scoreboard players set @a shootBall 0

#ghost bow
execute as @e[type=arrow,scores={ballArrowT=1..,VaporBow=1..},tag=crit] at @s run function game:char/ghost/critarrow

#remove fire
scoreboard players add @e[tag=firecheck] firer 1
execute as @e[tag=firecheck,scores={firer=2..}] at @s unless entity @e[type=fireball,distance=..6] run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace fire
kill @e[tag=firecheck,scores={firer=2..}]
execute as @e[type=fireball] at @s run summon armor_stand ~ ~ ~ {Tags:["firecheck"],Marker:1,Silent:1,Invulnerable:1}

#telebow
execute as @e[tag=telebow] at @s run function game:char/wizard/telebow

#soldier shift
scoreboard players add @e[tag=soldiershift] timer 1
execute as @e[tag=soldiershift,scores={timer=3}] at @s run summon minecraft:fireball ~ ~ ~ {Motion:[0.0,-1.0,0.0],ExplosionPower:3}
execute as @e[tag=soldiershift,scores={timer=3}] at @s run summon minecraft:slime ~ ~-0.9 ~ {NoAI:1,Size:0,Invulnerable:1,Tags:["killthis"]}
kill @e[tag=soldiershift,scores={timer=3}]

#Time Bomb
execute as @e[tag=timebombpro,tag=newbomb] at @s anchored eyes run function game:cprojectile/timebombmot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:emerald"}}] at @s run function game:cprojectile/timebomb

scoreboard players add @e[tag=timebombpro] masterb 0
scoreboard players add @e[tag=timebombpro,scores={masterb=8..}] masterb 1

execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~0.0 ~0.5 air unless block ~ ~0.0 ~0.5 barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~0.0 ~-0.5 air unless block ~ ~0.0 ~-0.5 barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~0.5 ~0.0 ~ air unless block ~0.5 ~0.0 ~ barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~-0.5 ~0.0 ~ air unless block ~-0.5 ~0.0 ~ barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~0.9 ~0.5 air unless block ~ ~0.9 ~0.5 barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~0.9 ~-0.5 air unless block ~ ~0.9 ~-0.5 barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~0.5 ~0.9 ~ air unless block ~0.5 ~0.9 ~ barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~-0.5 ~0.9 ~ air unless block ~-0.5 ~0.9 ~ barrier run scoreboard players add @s masterb 1
execute as @e[tag=timebombpro,scores={masterb=7}] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ barrier run scoreboard players add @s masterb 1

scoreboard players add @e[tag=timebombpro,nbt={OnGround:1b},scores={masterb=7}] masterb 1
scoreboard players add @e[tag=timebombpro,scores={masterb=..6}] masterb 1

execute as @e[tag=timebombpro,scores={masterb=8..}] at @s run execute as @s at @s run data merge entity @s {Motion:[0.0,0.0,0.0],Marker:1}

execute as @e[tag=timebombpro,scores={masterb=8}] at @s run particle minecraft:wax_off ~ ~1 ~ 0 0 0 15 10 force
execute as @e[tag=timebombpro,scores={masterb=8}] at @s run playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 1

execute as @e[tag=timebombpro,scores={masterb=8..}] at @s run tp @s @s

execute as @e[tag=timebombpro,scores={masterb=15}] at @s run function game:cprojectile/timebombboom
kill @e[tag=timebombpro,scores={masterb=15}]

scoreboard players add @e[tag=timebombpro] nogravity 1
scoreboard players set @e[tag=timebombpro,scores={nogravity=1..}] nogravity 0

execute as @e[tag=timebombpro,scores={nogravity=1..}] at @s run data merge entity @s {NoGravity:1}
execute as @e[tag=timebombpro,scores={nogravity=0}] at @s run data merge entity @s {NoGravity:0}

scoreboard players add @e[type=husk,tag=timeposmark] time_pos 1
effect give @e[type=husk,tag=timeposmark,scores={time_pos=..18}] minecraft:invisibility 10 10 true
tp @e[type=husk,tag=timeposmark,scores={time_pos=18..}] ~ ~-1000 ~

execute as @e[type=husk,tag=timeposmark] at @s run tp @s @s

scoreboard players remove @a[scores={time_pos=-100..}] time_pos 1
execute as @a[scores={time_pos=..-1}] at @s run function game:player/updatetimepos
execute as @a[scores={time_pos=0..}] at @s run particle minecraft:dolphin ~ ~1 ~ 1 1 1 0.25 1 force
execute as @a[scores={time_pos=0..}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0 1 force
execute as @a[scores={time_pos=30}] at @s run playsound minecraft:entity.enderman.hurt master @s ~ ~ ~ 1 0
execute as @a[scores={time_pos=20}] at @s run playsound minecraft:entity.enderman.hurt master @s ~ ~ ~ 1 0
execute as @a[scores={time_pos=10}] at @s run playsound minecraft:entity.enderman.hurt master @s ~ ~ ~ 1 0
execute as @a[scores={time_pos=0..}] at @s run function game:player/revtime
execute as @a[scores={time_pos=0..}] at @s run function game:player/revtime

execute as @a[scores={time_pos=19}] at @s run summon husk ~ ~100 ~ {Tags:["timeposmark"],NoAI:1,Invulnerable:1,Silent:1,NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{Count:1,id:ghast_tear}]}
effect give @a[scores={time_pos=19..}] minecraft:glowing 1 1
effect give @a[scores={time_pos=1}] minecraft:blindness 2 1 true
#clear @a[scores={time_pos=1}] arrow
#team join Main @e[type=minecraft:husk]

execute as @a[scores={time_pos=1..19}] at @s run function game:player/timemark

#Creeper place motion
execute as @a[scores={creeperegguse=1..}] at @s run function game:cprojectile/groundcreepmot
scoreboard players set @a[scores={creeperegguse=1..}] creeperegguse 0
tag @e[type=creeper] add beenaround

#Slime place motion
execute as @a[scores={slimeegguseset=1..}] at @s run function game:cprojectile/groundslimemot
scoreboard players set @a[scores={slimeegguseset=1..}] slimeegguseset 0
tag @e[type=creeper] add beenaround

#Invis 
effect give @a[scores={Invis=1..}] minecraft:invisibility 5 0 true
scoreboard players remove @a[scores={Invis=1..}] Invis 1
effect clear @a[scores={Invis=..0}] minecraft:invisibility

#In barrier wall
execute as @a[gamemode=adventure] at @s if block ~ ~ ~.3 barrier run tp @s ~ ~ ~-.4
execute as @a[gamemode=adventure] at @s if block ~ ~ ~-.3 barrier run tp @s ~ ~ ~.4
execute as @a[gamemode=adventure] at @s if block ~.3 ~ ~ barrier run tp @s ~-.4 ~ ~
execute as @a[gamemode=adventure] at @s if block ~-.3 ~ ~ barrier run tp @s ~.4 ~ ~

#test
#execute as @e[type=tnt,nbt={Fuse:1s}] at @s run execute store result score @s y run data get entity @s Pos[1] 100
#execute as @e[type=tnt,nbt={Fuse:1s}] at @s run scoreboard players operation @p y = @s y

#manage click
scoreboard players set @a click 0

clear @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] minecraft:carrot_on_a_stick
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand with minecraft:carrot_on_a_stick
