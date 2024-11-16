#execute as @e[type=tnt,tag=part] at @s run particle minecraft:dripping_obsidian_tear ~ ~ ~

tp @e[type=minecraft:silverfish] ~ ~-1000 ~

#


#nolev
#execute as @a[scores={nolev=1}] run say test
effect clear @a[scores={nolev=1}] levitation
scoreboard players remove @a[scores={nolev=0..}] nolev 1

#characters
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100] at @s run function game:char/items

# items
function game:realitems

scoreboard players add @a[scores={ggravuse=1..}] gravuse 1
scoreboard players remove @a[scores={ggravuse=1..}] ggravuse 1

scoreboard players set @a[gamemode=adventure,scores={class=8,bow=1..17,garboost=1..}] bow 19
#item replace entity @a[gamemode=adventure,scores={class=8,garboost=1}] hotbar.0 with minecraft:bow[damage=220,unbreakable={show_in_tooltip:false},custom_name='{"italic":false,"text":"§6Blast Jumper§r : Throw to switch"}',enchantments={punch:2}]
scoreboard players remove @a[gamemode=adventure,scores={class=8,garboost=1..}] garboost 1

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,rjump=1},nbt={OnGround:1b}] at @s run scoreboard players remove @s rjump 1
scoreboard players remove @a[gamemode=adventure,scores={class=8,rjump=2..}] rjump 1

#team join Main @a[gamemode=adventure,team=!Main,x=600,y=60,z=600,distance=110..]
#team join Main @a[gamemode=adventure,team=!Main,scores={class=..7}]
#team join Main @a[gamemode=adventure,team=!Main,scores={class=9..}]

# arrow reloading
scoreboard players set @a[gamemode=adventure,scores={bow=-100}] bow 1
scoreboard players add @a[gamemode=adventure,scores={bow=..-99}] bow 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={bow=1..}] at @s run function game:player/arrowreload

#ender land effects
execute as @a[gamemode=adventure,distance=..100,x=620,y=20,z=620] at @s run function game:items/endercount

# shifting specials
tag @a remove shift_lock

tag @a[scores={class=1},nbt={OnGround:0b}] add shift_lock
tag @a[scores={class=3},nbt={OnGround:0b}] add shift_lock
tag @a[scores={class=7},nbt={OnGround:0b}] add shift_lock
tag @a[scores={class=10},nbt={OnGround:0b}] add shift_lock

scoreboard players set @a[tag=!shift_lock] coyote_frames 4
scoreboard players remove @a[tag=shift_lock] coyote_frames 1
tag @a[tag=shift_lock,scores={coyote_frames=1..}] remove shift_lock

execute as @a[tag=!shift_lock] unless entity @s[scores={class=9}] run scoreboard players remove @s shift_cool 1
execute as @a[tag=shift_lock,scores={shift_cool=..1}] unless entity @s[scores={class=9}] run scoreboard players remove @s shift_cool 1

scoreboard players remove @a[scores={class=9,overlordsc=2..},tag=!shift_lock] shift_cool 1
execute as @a unless entity @s[scores={class=9},tag=!shift_lock] run xp add @s -1 levels
xp add @a[scores={class=9,overlordsc=2..},tag=!shift_lock] -1 levels
scoreboard players add @a[gamemode=adventure,scores={timer=1..},distance=..100,x=620,y=20,z=620,tag=!shift_lock] timer 1
#> WoA1 Cosmetic for TheViralMelon
execute as 3184a2a5-8544-4135-89ec-e63fd7a3f12f if entity @s[gamemode=adventure,scores={shift=1..,timer=..0,class=6},distance=..100,x=620,y=20,z=620] if score #woa1PhantomJump .num matches 1 at @s run function game:tournament_rewards/woa1/phantom_jump
execute as @a[gamemode=adventure,scores={shift=1..,timer=..0},distance=..100,x=620,y=20,z=620] at @s unless entity @s[scores={class=9,overlordsc=2..}] unless entity @s[scores={class=0,soldier_shifts=..0}] run function game:shift
execute as @a[gamemode=adventure,scores={shift=1..,timer=..0},distance=..100,x=620,y=20,z=620] at @s unless entity @s[scores={class=9,overlordsc=2..}] as @s[scores={class=0,soldier_shifts=..0,soldier_shift_sound=..0}] at @s run playsound minecraft:block.note_block.basedrum master @s
execute as @a[gamemode=adventure,scores={shift=1..,timer=..0},distance=..100,x=620,y=20,z=620] at @s unless entity @s[scores={class=9,overlordsc=2..}] as @s[scores={class=0,soldier_shifts=..0,soldier_shift_sound=..0}] at @s run playsound minecraft:block.note_block.snare master @s
execute as @a[gamemode=adventure,scores={shift=1..,timer=..0},distance=..100,x=620,y=20,z=620] at @s unless entity @s[scores={class=9,overlordsc=2..}] as @s[scores={class=0,soldier_shifts=..0,soldier_shift_sound=..0}] at @s run scoreboard players set @s soldier_shift_sound 10

scoreboard players remove @a[scores={soldier_shift_sound=1..}] soldier_shift_sound 1

execute as @a[gamemode=adventure,scores={timer=1..},distance=..100,x=620,y=20,z=620] at @s run function game:player/shifttime

#title @a[gamemode=adventure,scores={shift=1..},x=600,y=60,z=600,distance=3..500] title {"text":""}
scoreboard players reset @a[gamemode=adventure,scores={shift=1..}] shift

# arrow effects
execute as @e[tag=!inG,type=arrow,tag=fast,scores={BombBow=1..}] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=!inG,type=arrow,tag=fast,scores={BombBow=1..}] at @s run particle minecraft:crimson_spore ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=!inG,type=arrow,tag=!fast,scores={BombBow=1..}] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force

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
execute as @e[tag=explode] at @s run summon tnt ~ ~.1 ~ {fuse:11,Motion:[0.0d,0.4d,0.0d]}
execute as @e[tag=explode] at @s run summon tnt ~ ~.1 ~ {fuse:11,Motion:[0.0d,0.35d,0.0d]}
kill @e[tag=explode,type=arrow]

scoreboard players set @e[type=arrow] Inbarrier 0
scoreboard players set @e[type=arrow,nbt={inBlockState:{Name:"minecraft:barrier"}}] Inbarrier 1
#scoreboard players set @e[type=arrow,nbt={inBlockState:{Name:"minecraft:white_stained_glass"}}] Inbarrier 2
execute as @e[tag=inG,type=arrow,scores={BombBow=..0}] at @s run function game:arrow
kill @e[tag=inG,type=arrow,scores={BombBow=..0}]
execute as @e[type=tnt,nbt={fuse:1s}] at @s run scoreboard players set @a[gamemode=adventure,distance=..10,scores={class=8}] rjump 10

#slime
tag @e[name=SM,type=minecraft:marker] add slimerpro
execute as @e[type=snowball] at @s run kill @e[distance=..8,name=SM,type=minecraft:marker,limit=1,sort=nearest]
execute as @e[type=snowball] at @s run summon minecraft:marker ~ ~ ~ {CustomName:'{"italic":false,"text":"SM"}',Invulnerable:1,Marker:1,Silent:1,NoGravity:1,Invisible:1,Attributes:[{Name:"knockback_resistance",Base:0.6d}]}
execute as @e[tag=slimerpro] at @s run function game:cprojectile/correct_landing
execute as @e[tag=slimerpro,scores={slimetime=..0}] at @s run summon slime ~ ~-1 ~ {Size:3,NoGravity:1,CustomName:'{"italic":false,"text":"slimer"}',Tags:["slimer"],Attributes:[{Name:"knockback_resistance",Base:0.6d}]}
execute as @e[tag=slimerpro,scores={slimetime=1}] at @s run summon slime ~ ~-1 ~ {Size:4,NoGravity:1,CustomName:'{"italic":false,"text":"slimer"}',Tags:["slimer"],Attributes:[{Name:"knockback_resistance",Base:0.6d}]}
execute as @e[tag=slimerpro,scores={slimetime=2}] at @s run summon slime ~ ~-1 ~ {Size:6,NoGravity:1,CustomName:'{"italic":false,"text":"slimer"}',Tags:["slimer"]}
execute as @e[tag=slimerpro,scores={slimetime=2}] at @s run effect give @e[type=slime,distance=..10] minecraft:resistance 999 10 true
execute as @e[type=snowball] at @s run execute as @a[gamemode=adventure,distance=..3,scores={snow=..0,snowReset=..94}] at @s run kill @e[type=snowball,distance=..2]
scoreboard players add @e[type=slime] time 1
execute as @e[type=slime,scores={time=40..},tag=slimer] at @s run summon tnt ~ ~ ~ {fuse:2}
tp @e[type=slime,scores={time=40..},tag=slimer] ~ ~-2000 ~

tp @e[type=slime,scores={time=60..}] ~ ~-2000 ~
execute as @e[tag=slimerpro] at @s run playsound minecraft:entity.slime.attack master @a
kill @e[tag=slimerpro]
scoreboard players add @e[type=snowball] slimetime 1
execute as @e[type=snowball] store result score @s x_mot run data get entity @s Motion[0] 10
execute as @e[type=snowball] store result score @s y_mot run data get entity @s Motion[1] 10
execute as @e[type=snowball] store result score @s z_mot run data get entity @s Motion[2] 10
execute as @e[type=snowball] at @s run scoreboard players operation @e[distance=..8,name=SM,type=minecraft:marker,limit=1,sort=nearest] x_mot = @s x_mot
execute as @e[type=snowball] at @s run scoreboard players operation @e[distance=..8,name=SM,type=minecraft:marker,limit=1,sort=nearest] y_mot = @s y_mot
execute as @e[type=snowball] at @s run scoreboard players operation @e[distance=..8,name=SM,type=minecraft:marker,limit=1,sort=nearest] z_mot = @s z_mot
execute as @e[type=snowball,scores={slimetime=6..}] at @s run scoreboard players set @e[distance=..8,name=SM,type=minecraft:marker] slimetime 1
execute as @e[type=snowball,scores={slimetime=16..}] at @s run scoreboard players set @e[distance=..8,name=SM,type=minecraft:marker] slimetime 2
scoreboard players add @e[name=SM,type=minecraft:marker] slimetime 0

# eggs throw
execute as @a[gamemode=adventure,scores={egguse=1..}] at @s run scoreboard players operation @e[distance=..8,type=egg,limit=1,sort=nearest,tag=!old] tntID = @s tntID
tag @e[type=egg] add old
execute as @e[type=egg] store result score @s x_mot run data get entity @s Motion[0] 10
execute as @e[type=egg] store result score @s y_mot run data get entity @s Motion[1] 10
execute as @e[type=egg] store result score @s z_mot run data get entity @s Motion[2] 10
scoreboard players add @a snowReset 0
tag @e[name=AM,type=armor_stand] add slime
execute as @e[type=egg] at @s run kill @e[distance=..8,name=AM,type=armor_stand,limit=1,sort=nearest]
execute as @e[type=egg] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"italic":false,"text":"AM"}',Invulnerable:1,Marker:1,Silent:1,NoGravity:1,Invisible:1}
execute as @e[type=egg] at @s run scoreboard players operation @e[distance=..8,name=AM,type=armor_stand,limit=1,sort=nearest] tntID = @s tntID
execute as @e[type=egg] at @s run scoreboard players operation @e[distance=..8,name=AM,type=armor_stand,limit=1,sort=nearest] x_mot = @s x_mot
execute as @e[type=egg] at @s run scoreboard players operation @e[distance=..8,name=AM,type=armor_stand,limit=1,sort=nearest] y_mot = @s y_mot
execute as @e[type=egg] at @s run scoreboard players operation @e[distance=..8,name=AM,type=armor_stand,limit=1,sort=nearest] z_mot = @s z_mot
execute as @e[name=AM,type=armor_stand,tag=slime] at @s run function game:cprojectile/correct_landing
execute as @e[name=AM,type=armor_stand,tag=slime] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1,Silent:1,Tags:["a","frostnade"]}
execute as @e[name=AM,type=armor_stand,tag=slime] at @s run scoreboard players operation @e[distance=..8,tag=frostnade,tag=a,type=armor_stand,limit=1,sort=nearest] tntID = @s tntID
scoreboard players set @a[gamemode=adventure,scores={egguse=1..}] eggtimer 40
scoreboard players set @a[gamemode=adventure,scores={egguse=1..}] egguse 0
scoreboard players remove @a[gamemode=adventure,scores={eggtimer=-1..}] eggtimer 1
#item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={eggtimer=1}] hotbar.1 with minecraft:egg[custom_name='{"italic":false,"text":"§3Frost Nade §f§r: Right-click"}']
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={eggtimer=1}] run function game:char/shard/give/snowman
kill @e[tag=slime,name=AM,type=armor_stand]

# potions
execute as @a[gamemode=adventure,scores={potion=-200..}] at @s run function game:items/potion

#master_wand
tag @a[gamemode=adventure,tag=!mwnext] remove mwnext2
tag @a remove mwnext
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={click=1..,class=9}] at @s run function game:char/overlord/wandtrigger
scoreboard players remove @a[scores={wand_cooldown=1..}] wand_cooldown 1
tag @a[gamemode=adventure,tag=mwnext,tag=!mwnext2] add mwnext2

#master boom
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] at @s run function game:char/overlord/masterboom
scoreboard players remove @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] masterb 14
clear @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:beef"}}] gold_ore 14
execute as @a[gamemode=adventure,scores={click=1..,class=9},nbt={SelectedItem:{id:"minecraft:beef"}}] at @s run function game:char/overlord/masterwanditems

scoreboard players remove @e[scores={halo_cooldown=0..}] halo_cooldown 1
execute as @a[scores={halo_cooldown=0,class=9}] run function game:char/overlord/masterwanditems

#wand upgrade
scoreboard players add @a[gamemode=adventure,scores={masterc=25..}] mastercT 1
execute if entity @e[scores={mode=1}] run scoreboard players set @a[gamemode=adventure,scores={mastercT=1}] mastercT 4

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={mastercT=135..,class=9},tag=gather] at @s run function game:char/overlord/gather_reload

scoreboard players set @a[gamemode=adventure,scores={mastercT=50..},tag=!gather] masterc 0
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={mastercT=50..,class=9},tag=!gather] at @s run function game:char/overlord/masterwandreload
scoreboard players set @a[gamemode=adventure,scores={mastercT=50..},tag=!gather] mastercT 0

scoreboard players add @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,masterup=..3}] masterwand_upgrade_timer 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,masterwand_upgrade_timer=140..,masterup=..3}] at @s anchored eyes run function game:char/overlord/masterwandup
scoreboard players set @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,masterwand_upgrade_timer=140..}] masterwand_upgrade_timer 0

# (removed item use)
#execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:cod"}}] at @s anchored eyes run function game:char/overlord/masterwandup

#wand gather degrade
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,masterc=..24},tag=gather] at @s anchored eyes run function game:char/overlord/degrade_one

scoreboard players add @a[gamemode=adventure,scores={gather_cooldown=1..}] gather_cooldown_T 1
scoreboard players remove @a[gamemode=adventure,scores={gather_cooldown_T=20..}] gather_cooldown 1

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={gather_cooldown_T=20..,gather_cooldown=0,class=9}] at @s run playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 0.7 1.5
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={gather_cooldown_T=20..,gather_cooldown=0,class=9}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={gather_cooldown_T=20..,gather_cooldown=0,class=9}] at @s run playsound minecraft:ui.loom.select_pattern master @s
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={gather_cooldown_T=20..,gather_cooldown=0,class=9}] at @s run scoreboard players set @s ui_action_text 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={gather_cooldown_T=20..,gather_cooldown=0,class=9}] at @s run scoreboard players set @s ui_action_time 30

scoreboard players set @a[gamemode=adventure,scores={gather_cooldown_T=20..}] gather_cooldown_T 0

item modify entity @a weapon.offhand game:model_0

item modify entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={gather_cooldown=..0,class=9}] weapon.offhand game:model_1
item modify entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={gather_cooldown=1..,class=9}] weapon.offhand game:model_0

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=5}] at @s run function game:char/mads/check_portal
item modify entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=5},tag=near_portal] weapon.offhand game:model_2
item modify entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=5},tag=!near_portal] weapon.offhand game:model_0

#matter refill
scoreboard players add @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9}] matfill 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,matfill=24}] at @s run function game:char/overlord/masterwandget
scoreboard players set @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={class=9,matfill=24}] matfill 0

#master storm
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=..2,click=1..,storm_cooldown=..0},nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] at @s run function game:char/overlord/stormuse
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={masterstorm=0..,class=9}] at @s run function game:char/overlord/stormactive
execute as @e[tag=stormtnt] at @s run function game:char/overlord/masterstormmove

scoreboard players remove @e[scores={storm_cooldown=0..}] storm_cooldown 1
execute as @a[scores={storm_cooldown=0,class=9}] run function game:char/overlord/masterwanditems

execute as @e[tag=storm_tnt] at @s run function game:char/overlord/storm_tnt

execute as @e[tag=gather_storm] at @s run function game:char/overlord/gather_storm


#mastershift
execute as @e[name=ground2] at @s run function game:char/overlord/masterground

#fireball manage
scoreboard players add @e[type=fireball,tag=!boom] egg 1
kill @e[type=fireball,scores={egg=150..}]

#fireball mot
execute as @e[tag=trackshot2,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro4mot
execute as @e[scores={fballtimer=1},tag=!delay] at @s run function game:cprojectile/pro4mot2
execute as @e[scores={fballtimer=2},tag=delay] at @s run function game:cprojectile/pro4mot2
scoreboard players add @e[scores={fballtimer=1..}] fballtimer 1
kill @e[scores={fballtimer=300..}]

#out of bounds entities
kill @e[type=ender_pearl,x=614,y=50,z=614,distance=60..200]
kill @e[type=arrow,x=614,y=50,z=614,distance=60..200]

#master tnt
scoreboard players add @e[tag=mastertnt] masterb 1
scoreboard players add @e[tag=mastertnt_vis] masterb 1
#execute as @e[tag=mastertnt,scores={masterb=2}] at @s run data merge entity @s {NoGravity:1}
execute as @e[tag=mastertnt,scores={masterb=1..}] at @s run clone ~-4 ~-4 ~96 ~4 ~4 ~104 ~-4 ~-4 ~-4
execute as @e[tag=mastertnt,scores={masterb=1}] at @s run summon minecraft:armor_stand ~ ~0.4 ~100 {Small:1,Marker:1,Invulnerable:1,Invisible:1,ArmorItems:[{},{},{},{id:"air",count:1}],DisabledSlots:4144959,Tags:["mastertnt_vis"]}
#execute as @e[tag=mastertnt,scores={masterb=1}] at @s run summon block_display ~-0.3 ~0.4 ~-100.3 {block_state:{Name:"minecraft:diamond_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]},Tags:["mastertnt_vis"]}
execute as @e[tag=mastertnt,scores={masterb=2..14}] at @s positioned ~ ~ ~100 run tp @e[tag=mastertnt_vis,limit=1,sort=nearest,distance=..3] ~ ~0.4 ~
execute as @e[tag=mastertnt,scores={masterb=1..14}] at @s run particle minecraft:smoke ~ ~0.4 ~100 0 0 0 0 1 force
execute as @e[tag=mastertnt,scores={masterb=14}] at @s run summon tnt ~ ~.4 ~100 {fuse:2}
execute as @e[tag=mastertnt,scores={masterb=14}] at @s run summon tnt ~ ~.4 ~100 {fuse:2}
execute as @e[tag=mastertnt_vis,scores={masterb=1}] at @s run item replace entity @s armor.head with minecraft:diamond_ore
kill @e[tag=mastertnt,scores={masterb=14}]
kill @e[tag=mastertnt_vis,scores={masterb=13}]

execute as @e[tag=mastertnt,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro2mot
execute as @a[gamemode=adventure,scores={click=1..,master_bomb_cooldown=..0},nbt={SelectedItem:{id:"minecraft:salmon"}}] at @s run function game:cprojectile/pro2

scoreboard players remove @a[scores={master_bomb_cooldown=0..}] master_bomb_cooldown 1
execute as @a[scores={master_bomb_cooldown=0,class=9}] run function game:char/overlord/masterwanditems

#creeper projectile wizard
execute as @e[tag=wizcreep,tag=newbomb] at @s anchored eyes run function game:cprojectile/pro8mot
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:gray_dye"}}] at @s run function game:cprojectile/pro8

effect give @e[tag=wizcreep] minecraft:slow_falling 999 0 true

team join noCol @e[tag=wizcreep]
execute as @e[tag=wizcreep] run scoreboard players add @s wizard_creeper 1 
execute as @e[tag=wizcreep,scores={wizard_creeper=70..}] run tag @s add time_boom
execute as @e[tag=wizcreep,scores={wizard_creeper=70..}] run function game:char/wizard/boom_creeper

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
execute as @a[gamemode=adventure,scores={click=1..,slide_cooldown=..0},nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] at @s run function game:char/overlord/groundpathuse
execute as @e[tag=groundpath] at @s run function game:char/overlord/groundpath

scoreboard players remove @a[scores={slide_cooldown=0..}] slide_cooldown 1

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={slide_cooldown=0,class=9}] run function game:char/overlord/masterwanditems

#vortex
scoreboard players remove @a[gamemode=adventure,scores={vortextime=0..}] vortextime 1
execute as @a[gamemode=adventure,scores={vortextime=1}] run function game:char/wizard/give/vortex
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=..90,scores={click=1..},nbt={SelectedItem:{id:"minecraft:clay_ball"}}] at @s run function game:char/wizard/vortex

execute as @e[name=vortex] at @s run function game:char/wizard/vortexent

# platform
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] at @s run function game:char/trapper/platform

scoreboard players remove @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1}] platUse 1

scoreboard players remove @a[gamemode=adventure,scores={PlatTimer=1..}] PlatTimer 1
execute as @a[gamemode=adventure,scores={platAm=1}] at @s positioned ~ ~-.1 ~ run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_stained_glass replace air
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=4}] run function game:char/trapper/give/platform {damage:100}
scoreboard players add @e[name=SP] PlatTimer 1
execute as @e[name=SP,tag=!extra,scores={PlatTimer=50..}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace white_stained_glass
kill @e[name=SP,tag=!extra,scores={PlatTimer=50..}]
execute as @e[name=SP,tag=extra,scores={PlatTimer=70..}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace white_stained_glass
kill @e[name=SP,tag=extra,scores={PlatTimer=70..}]
execute as @e[name=SP,scores={PlatTimer=..1}] at @s run teleport @p[distance=..1] ~ ~.2 ~
execute as @a at @s if block ~ ~ ~ white_stained_glass run teleport @s ~ ~1 ~
execute as @a[gamemode=adventure,scores={platAm=1}] at @s positioned ~ ~-.1 ~ run summon armor_stand ~ ~-1 ~ {NoGravity:1,Invlunerable:1,Marker:1,Silent:1,CustomName:'{"italic":false,"text":"SP"}',Invisible:1,Tags:["extra"]}
scoreboard players remove @a[gamemode=adventure,scores={platAm=1..}] platAm 1
execute as @a[gamemode=adventure,scores={platAm=6}] at @s run playsound minecraft:entity.illusion_illager.cast_spell master @a ~ ~ ~ 1 1.2
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=2}] run function game:char/trapper/give/platform {damage:520}
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=1,platUse=1}] run function game:char/trapper/give/platform {damage:1040}
execute as @a[scores={class=10,frostsT=0},x=620,y=20,z=620,distance=..100] run function game:player/class_team
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PlatTimer=2,platUse=1..}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Reloaded ","color":"white"},{"text":"Platform","color":"red","bold":true},{"text":"","color":"white"}]

# tnt egg
execute as @e[name=tnt] at @s run summon tnt ~ ~.6 ~ {fuse:4}
execute as @e[name=tnt] at @s run summon tnt ~ ~.6 ~ {fuse:4}
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

execute as @e[name="Fishing Bobber",scores={fishingT=1}] at @s run data merge entity @s {Air:1s}
execute as @e[name="Fishing Bobber",scores={fishingT=1}] at @s run function game:cprojectile/fish_motion
execute as @e[name="Fishing Bobber",scores={fishingT=2}] at @s run data merge entity @s {Air:1s}
execute as @e[name="Fishing Bobber",scores={fishingT=3}] at @s run data merge entity @s {Air:0s}
execute as @e[name="Fishing Bobber",scores={fishingT=4}] at @s run data merge entity @s {Air:1s}
execute as @e[name="Fishing Bobber",scores={fishingT=5}] at @s run data merge entity @s {Air:0s}

#execute as @e[name="Fishing Bobber",scores={fishingT=120..}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1.12
kill @e[name="Fishing Bobber",scores={fishingT=120..}]

execute as @e[name="Fishing Bobber",scores={t6=60..}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1.12
kill @e[name="Fishing Bobber",scores={t6=60..}]
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ if entity @p[distance=..1,gamemode=adventure] at @s run scoreboard players set @s fishingT 60
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ if entity @p[distance=..1,gamemode=adventure] at @s run scoreboard players add @s t6 1
execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ if entity @e[distance=..1,tag=dummy] at @s run scoreboard players add @s t6 1

execute as @e[name="Fishing Bobber",scores={t6=2}] at @s run playsound minecraft:entity.player.levelup master @a[distance=..25] ~ ~ ~ 1 1.3 0.5
execute as @e[name="Fishing Bobber",scores={t6=2}] at @s run scoreboard players add @e[name="Fishing Bobber"] t6 1

#execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect give @p slowness 3 255
#execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect clear @p jump_boost
#execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run effect give @p jump_boost 3 128
#execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1,gamemode=adventure] at @s run scoreboard players set @p stun 52
#kill @e[type=armor_stand,name=Mark]
#title @a[gamemode=adventure,scores={stun=32..}] title {"text":"SHIFT to escape","color":"red","bold":true}
#title @a[gamemode=adventure,scores={stun=2}] title {"text":"","color":"red","bold":true}
#scoreboard players remove @a[gamemode=adventure,scores={stun=0..}] stun 1
#effect clear @a[gamemode=adventure,scores={stun=1}] slowness

#execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run execute as @e[distance=..1,name="Fishing Bobber",scores={fishingT=3..}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1.12
#execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run scoreboard players set @a[gamemode=adventure,distance=..1,scores={stun=9..}] stun 9
#execute as @e[name="Fishing Bobber",scores={fishingT=3..}] at @s positioned ~ ~-1 ~ run execute as @p[distance=..1] at @s run scoreboard players add @p TimeStun 1
#scoreboard players set @a[gamemode=adventure,scores={stun=1}] TimeStun 0
#execute as @e[scores={shStun=1..}] at @s positioned ~ ~1 ~ run kill @e[distance=..1,name="Fishing Bobber",scores={fishingT=5..}]
#scoreboard players set @a[gamemode=adventure,scores={shStun=1..,stun=35..}] stun 35

#effect give @a[gamemode=adventure,scores={class=0,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
#effect give @a[gamemode=adventure,scores={class=2,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
#effect give @a[gamemode=adventure,scores={class=4,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
#effect give @a[gamemode=adventure,scores={class=5,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
#effect give @a[gamemode=adventure,scores={class=6,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 2 true
#effect give @a[gamemode=adventure,scores={class=7,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
#effect give @a[gamemode=adventure,scores={class=10,stun=1},x=620,y=20,z=620,distance=..100] jump_boost 300 1 true
#scoreboard players set @a[gamemode=adventure,scores={shStun=1}] shStun -3
#scoreboard players set @a[gamemode=adventure,scores={shStunD=1..,shStun=..-1}] shStun -3
#scoreboard players add @a[gamemode=adventure,scores={shStun=..-1}] shStun 1
#scoreboard players set @a[gamemode=adventure,scores={shStunD=1..,shStun=0}] shStun 1
#scoreboard players set @a shStunD 0
#scoreboard players add @a shStun 0

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
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={airwandtime=0}] run function game:char/echo/give/skywand

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
execute as @e[type=squid] at @s run summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",fuse:10,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
execute as @e[type=squid] at @s run summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",fuse:10,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
execute as @e[type=squid] at @s run summon armor_stand ~ ~1 ~ {Marker:1b,Tags:["blue_tnt_marker"],Passengers:[{id:"minecraft:tnt",fuse:10,NoGravity:1,Tags:["blue_tnt"],Glowing:1}]}
execute as @e[type=squid] at @s run tp @s ~ ~-1000 ~

# freeze
execute as @e[scores={frozen=0..}] at @s run function game:player/frozen
tag @e remove frozen
tag @e[scores={frozen=0..}] add frozen

#pig
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={pigThrow=1..,egg=0}] at @s run scoreboard players set @s pig 41
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={pigThrow=1..,egg=0}] at @s run effect give @s levitation 1 15 true
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={pigThrow=1..,egg=0}] at @s run scoreboard players set @s nolev 6
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={pigThrow=1..,egg=0}] at @s run summon pig ~ ~ ~ {Tags:["long"],Invulnerable:1}
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={pigThrow=1..,egg=0}] at @s run clear @s pig_spawn_egg
scoreboard players set @a pigThrow 0

scoreboard players add @e[type=pig] egg 1
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s run execute as @e[scores={egg=..1},limit=1,type=pig] at @s run teleport @p[scores={class=4,egg=1..}] ~ ~ ~
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s run tp @s @s
tag @a[gamemode=adventure,scores={class=4,egg=1..}] add pig_place
scoreboard players set @a[gamemode=adventure,scores={class=4,egg=1..}] pig 31
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s if block ~ ~-1 ~ air run effect give @s levitation 1 15 true
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s if block ~ ~-1 ~ air run scoreboard players set @s nolev 6
execute as @a[gamemode=adventure,scores={class=4,egg=1..}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s pig 21
scoreboard players set @a[gamemode=adventure,scores={class=4}] egg 0
execute as @e[type=pig] at @s run data merge entity @s {Invulnerable:1}
scoreboard players set @e[type=pig,scores={egg=..1}] pig 41
kill @e[type=pig,scores={pig=..0},tag=long]
kill @e[type=pig,scores={pig=..10},tag=!long]
execute as @a[gamemode=adventure,scores={pig=-200..}] at @s run function game:char/wizard/pig
scoreboard players remove @e[scores={pig=-200..}] pig 1

#frost suck
execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={click=1..},nbt={SelectedItem:{id:"minecraft:lime_dye"}}] at @s run function game:char/shard/frostsuck/use
execute as @e[tag=frostsuck,scores={frostl=-200..}] at @s run function game:char/shard/frostsuck/frostl
execute as @e[tag=frostsuck,tag=org] at @s align x align y align z run function game:char/shard/frostsuck/frosts
scoreboard players add @e[tag=frostsuck] frostl 0

execute as @a[scores={class=10,frostsT=0},x=620,y=20,z=620,distance=..100] run function game:player/class_team
execute as @a[scores={class=10,frostsT=0},x=620,y=20,z=620,distance=..100] run tellraw @a[gamemode=spectator,x=620,y=20,z=620,distance=..100] [{"selector":"@s"},{"text":" Reloaded ","color":"white"},{"text":"Ice Suck","color":"dark_aqua","bold":true}]
execute as @a[scores={class=10,frostsT=0},x=620,y=20,z=620,distance=..100] run function game:char/shard/give/ice_suck
scoreboard players remove @e[scores={frostsT=-100..}] frostsT 1

execute as @e[tag=frostplat] at @s run function game:char/shard/frostsuck/plat

#snowman
execute as @e[tag=snowman] at @s run function game:char/shard/snowman/tick

execute as @a[gamemode=adventure,x=580,dx=80,y=2,dy=100,z=580,dz=80,distance=..100,scores={click=1..},nbt={SelectedItem:{id:"minecraft:yellow_dye"}}] at @s run function game:char/shard/snowman/create
execute as @a[scores={class=10,snowmanT=0},x=620,y=20,z=620,distance=..100] run function game:char/shard/give/frosty_poppy
scoreboard players remove @e[scores={snowmanT=-100..}] snowmanT 1

#snowman bolt
scoreboard players set @e[name=snowscan] t2 0
execute as @e[name=snowscan] at @s run function game:char/shard/snowman/hitscan
execute as @e[name=snowscan,tag=!old] at @s run tp @s ^ ^ ^-.11
tag @e[name=snowscan,tag=!old] add old
execute as @e[name=snowscan,tag=!in,scores={t1=15..}] at @s run function game:char/shard/snowman/hit
kill @e[name=snowscan,tag=!in,scores={t1=15..}]
kill @e[name=snowscan,scores={t2=270..}]

#trident trow
#execute as @e[type=minecraft:trident,nbt={inGround:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["tntstorm","gameae"]}
#execute as @e[type=minecraft:trident,nbt={inGround:1b}] at @s run function game:char/shard/frostplace2

#execute as @a[scores={tridentuse=1..}] run effect give @s levitation 1 0 true
#execute as @a[scores={tridentuse=1..}] run scoreboard players set @s nolev 8
execute as @a[scores={tridentuse=1..}] at @s run playsound minecraft:item.trident.riptide_3 master @a[distance=..60] ~ ~ ~ 1 1 0.4
execute as @a[scores={tridentuse=1..}] run scoreboard players operation @e[type=minecraft:trident,limit=1,sort=nearest,tag=!old] tntID = @s tntID

execute as @e[type=minecraft:trident] run function game:char/shard/trident

scoreboard players remove @a[scores={tridentT=0..}] tridentT 1
scoreboard players set @a[scores={tridentuse=1..}] tridentT 116

execute as @a[scores={class=10,tridentT=0},x=620,y=20,z=620,distance=..100] run function game:char/shard/give/trident
scoreboard players set @a[scores={tridentuse=1..}] tridentuse 0
execute as @e[tag=tntstorm] at @s run function game:char/shard/tntstorm

#power shield
execute as @a[gamemode=adventure,scores={powerAn=1},x=600,y=60,z=600,distance=3..100] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"PS"}',Marker:1,Silent:1,NoGravity:1,Invulnerable:1,Invisible:1}
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:stick"}}] at @s run function game:char/mads/powershield
scoreboard players remove @a[gamemode=adventure,scores={PStimer=1..}] PStimer 1
execute as @a[gamemode=adventure,scores={PStimer=148}] at @s run tp @s @s
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={PStimer=1}] run function game:char/mads/give/powershield

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

execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run function game:char/trapper/det

execute as @e[scores={BombBow=1..}] at @s run data merge entity @s {NoGravity:1}

# platform
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100] at @s run function game:char/gardener/gravetrap
execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100] at @s run function game:char/gardener/boosttrap

effect clear @a wither

execute as @a[gamemode=adventure,x=620,y=20,z=620,distance=..100,scores={grave=1..}] at @s run function game:char/gardener/grave

# creepers and slimes
effect give @e[name=Bomb,type=creeper,tag=!slow_disable] slow_falling 999 100 true
effect give @e[name=Bomb,type=creeper] slowness 999 100 true
effect give @e[type=slime] slowness 999 100 true
effect give @e[type=slime] resistance 999 100 true
effect give @e[type=creeper] resistance 999 100 true

execute as @e[type=slime,tag=s1] at @s run function game:items/reaperslime
#execute as @e[name=Bomb,type=creeper] at @s run function game:physics/negate_gravity

execute as @e[scores={Ctimer=1..},tag=!nodub] at @s run particle minecraft:wax_off ~ ~1 ~ 0.3 0.6 0.3 0 2 force

scoreboard players add @e[name=Bomb,type=creeper] Ctimer 1
execute as @e[scores={Ctimer=17},tag=!nodub,tag=!thrown_creeper] at @s run summon minecraft:creeper ~ ~ ~ {NoAI:1,ignited:1,Fuse:3,Invulnerable:1,PersistenceRequired:1,Silent:1,CustomName:'{"italic":false,"text":"Bomb"}',Health:500,powered:1,ExplosionRadius:2}
execute as @e[scores={Ctimer=17},tag=!nodub,tag=!thrown_creeper] at @s run summon minecraft:creeper ~ ~ ~ {NoAI:1,ignited:1,Fuse:5,Invulnerable:1,PersistenceRequired:1,Silent:1,CustomName:'{"italic":false,"text":"Bomb"}',Health:500,powered:1,ExplosionRadius:2}

execute as @e[scores={Ctimer=15},tag=thrown_creeper] run tag @s add slow_disable
execute as @e[scores={Ctimer=15},tag=thrown_creeper] run effect clear @s slow_falling

execute as @e[scores={Ctimer=17},tag=thrown_creeper] at @s run data merge entity @s {Fuse:0} 
execute as @e[scores={Ctimer=17},tag=thrown_creeper] at @s run summon minecraft:creeper ~ ~0.6 ~ {NoAI:1,ignited:1,Fuse:3,Invulnerable:1,PersistenceRequired:1,Silent:1,CustomName:'{"italic":false,"text":"Bomb"}',Health:500,powered:1,ExplosionRadius:2}
execute as @e[scores={Ctimer=17},tag=thrown_creeper] at @s run summon minecraft:creeper ~ ~ ~ {NoAI:1,ignited:1,Fuse:5,Invulnerable:1,PersistenceRequired:1,Silent:1,CustomName:'{"italic":false,"text":"Bomb"}',Health:500,powered:1,ExplosionRadius:2}

#execute as @a[scores={creepegguse=8,creeperegguset=1..}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Creeper","color":"green","bold":true},{"text":" (2 Remaining) ","color":"white"}]
#execute as @a[scores={creepegguse=9,creeperegguset=1..}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Creeper","color":"green","bold":true},{"text":" (1 Remaining) ","color":"white"}]
#execute as @a[scores={creepegguse=10,creeperegguset=1..}] at @s run tellraw @a[gamemode=spectator] [{"selector":"@s"},{"text":" Used ","color":"white"},{"text":"Creeper","color":"green","bold":true},{"text":" (0 Remaining) ","color":"white"}]

scoreboard players set @a creeperegguset 0 

execute as @e[type=creeper] at @s positioned ~ -50 ~ run kill @e[type=creeper,distance=..45]

#creep and scyth reload
scoreboard players add @a[scores={creepegguse=1..}] creepeggr 1
scoreboard players add @a[scores={slimeegguse=1..}] slimeeggr 1

clear @a[scores={creepeggr=155..}] creeper_spawn_egg
clear @a[scores={slimeeggr=100..}] slime_spawn_egg

scoreboard players remove @a[scores={creepeggr=155..}] creepegguse 1
scoreboard players remove @a[scores={slimeeggr=100..}] slimeegguse 1

scoreboard players set @a[scores={creepeggr=155..}] creepeggr 0
scoreboard players set @a[scores={slimeeggr=100..}] slimeeggr 0

# sythe reloading
execute as @a[gamemode=adventure,scores={class=6,Sreload=0},x=600,y=60,z=600,distance=3..100] run function game:char/reaper/give/scythe

#dark pillar
execute as @e[type=armor_stand,name=NArrow] at @s run function game:char/reaper/darkpillararrow

# smoke bomb
execute as @e[type=experience_bottle] at @s run kill @e[type=area_effect_cloud,name=place,distance=..4]
execute as @a[gamemode=adventure,scores={Escape=1..}] at @s run particle spit ~ ~ ~ .5 1 .5 .1 20 force
scoreboard players add @e[type=area_effect_cloud,name=place] XPTimer 1
execute as @e[type=experience_bottle] at @s run summon area_effect_cloud ~ ~ ~ {potion_contents:{potion:"minecraft:strong_healing"},Duration:3,Tags:["a"],CustomName:'{"italic":false,"text":"place"}'}
execute as @e[type=area_effect_cloud,name=place,tag=!gameae,scores={XPTimer=2..}] at @s run summon tnt ~ ~.1 ~ {fuse:14,Tags:["sit"],NoAI:1,NoGravity:1,Motion:[0.0d,0.26d,0.0d]}
execute as @e[type=area_effect_cloud,name=place,tag=!gameae,scores={XPTimer=2..}] at @s run summon tnt ~ ~.11 ~ {fuse:17,Tags:["sit"],NoAI:1,NoGravity:1}
# NOTE: 10.5 blocks launch with 3 tick dif, 12.5 block launch with 2 tick dif (no jump) | 17 blocks launch with 3 tick dif, 20 block launch with 2 tick dif (jump)
clear @a[gamemode=adventure,scores={Escape=1..}] experience_bottle
kill @e[type=experience_orb]
scoreboard players set @a[gamemode=adventure,scores={Escape=1..,XPReset=..0}] XPReset 100
scoreboard players set @a[gamemode=adventure,scores={Escape=1..,XPReset=90}] XPReset 89
effect give @a[gamemode=adventure,scores={Escape=1..}] invisibility 2 1
scoreboard players remove @a[gamemode=adventure,scores={XPReset=0..89}] XPReset 1
scoreboard players remove @a[gamemode=adventure,scores={XPReset=91..}] XPReset 1
#item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=1}] hotbar.1 with minecraft:experience_bottle[custom_name='{"italic":false,"text":"§7Smoke Bomb §r: Right-click"}'] 2
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=50}] run function game:char/ghost/give/air_missile
tag @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=50}] add coal
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={XPReset=91}] run function game:char/ghost/give/smoke_bomb {count:1}
scoreboard players set @a[gamemode=adventure,scores={Escape=1..}] Invis 23
execute as @e[type=experience_bottle] at @s run particle spit ~ ~ ~ .5 .5 .5 .1 4 force
scoreboard players reset @a Escape
#scoreboard players remove @a[gamemode=adventure,score_Invis_min=1] Invis 1
execute as @e[tag=sit] at @s run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

#air grenade
execute as @e[tag=airnade] at @s run function game:items/airnade

#air grenade
execute as @e[tag=frostnade] at @s run function game:items/frostnade

# mass lev
scoreboard players set @a[nbt={OnGround:1b}] mass_lev_air_use 0
execute as @a[gamemode=adventure,scores={click=1..,mass_lev_air_use=..1},nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] at @s run function game:items/masslev
#effect give @a[gamemode=adventure,scores={mTtimer=119}] levitation 1 1
scoreboard players remove @a[gamemode=adventure,scores={mTtimer=1..}] mTtimer 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,scores={mTtimer=1}] run function game:char/ghost/give/masslev

# pearls
scoreboard players add @e[type=minecraft:ender_pearl] enderT 1

execute as @a[scores={ender=1..}] at @s run function game:player/enderthrow

scoreboard players remove @a[gamemode=adventure,scores={enderreload=0..,class=1}] enderreload 1
scoreboard players remove @a[gamemode=adventure,scores={enderreload=0..,class=2}] enderreload 1

# plague
scoreboard players set @a[gamemode=adventure,scores={plagueuse=1..,class=8},nbt={OnGround:0b}] nolev 15
effect give @a[gamemode=adventure,scores={plagueuse=1..,class=8},nbt={OnGround:0b}] slow_falling 1 7
effect give @a[gamemode=adventure,scores={plagueuse=1..,class=8},nbt={OnGround:0b}] levitation 1 7
tag @a[gamemode=adventure,scores={plagueuse=1..}] remove checkairnade
scoreboard players set @a[gamemode=adventure,scores={plagueuse=1..}] plaguetimer 200
scoreboard players set @a[gamemode=adventure,scores={plagueuse=1..}] plagueuse 0
scoreboard players remove @a[gamemode=adventure,scores={plaguetimer=0..}] plaguetimer 1
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={plaguetimer=0,class=8}] run function game:char/gardener/give/plague

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={plaguetimer=150,class=0}] run function game:char/soldier/give/slimer

clear @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,plaguetimer=-1},nbt=!{Inventory:[{id:"minecraft:lingering_potion"}]}] lingering_potion
scoreboard players set @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8,plaguetimer=-1},nbt=!{Inventory:[{id:"minecraft:lingering_potion"}]}] plaguetimer 1

#phantom missile
execute as @e[tag=phantommissile] at @s run function game:missile

#phantom air missile
execute as @e[tag=phantomairmissile,tag=!pause] at @s run function game:airmissile
scoreboard players remove @e[tag=phantomairmissile,tag=pause] t4 1
tag @e[tag=phantomairmissile,scores={t4=..0}] remove pause

#chicken bow
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={chickenbow=1..4}] at @s run playsound minecraft:entity.chicken.death master @a ~ ~ ~ 1 1.5
scoreboard players remove @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100] chickenbow 1

#DPeffect
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={DPeffect=1..}] run function game:items/dpeffect

#scythe begone
#execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8}] at @s run clear @a[gamemode=adventure,distance=..3.5,scores={class=6}] iron_hoe
#execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={class=8}] at @s run execute as @a[gamemode=adventure,distance=..3.5,scores={Sreload=..10,class=6}] at @s run particle item{item:{id:"minecraft:iron_block"}} ~ ~.4 ~ .3 .4 .3 .05 2 force
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
execute as @e[tag=firecheck,scores={firer=2..}] at @s unless entity @e[type=fireball,distance=..6,tag=!boom] run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace fire
kill @e[tag=firecheck,scores={firer=2..}]
execute as @e[type=fireball,tag=!boom] at @s run summon armor_stand ~ ~ ~ {Tags:["firecheck"],Marker:1,Silent:1,Invulnerable:1}

#telebow
execute as @e[tag=telebow] at @s run function game:char/wizard/telebow

#Time Bomb
#function game:char/trapper/timebomb_main

#Phantom Blocks
execute as @a[gamemode=adventure,scores={click=1..},nbt={SelectedItem:{id:"minecraft:emerald"}}] at @s run execute as @s at @s run function game:char/trapper/phantom_hitscan_start
execute as @e[tag=phantom_block] at @s run function game:char/trapper/phantom_block_main

#Creeper place motion
execute as @a[scores={creeperegguse=1..}] at @s run function game:cprojectile/groundcreepmot
scoreboard players set @a[scores={creeperegguse=1..}] creeperegguse 0
tag @e[type=creeper] add beenaround

#Slime place motion
execute as @a[scores={slimeegguseset=1..}] at @s run function game:cprojectile/groundslimemot
scoreboard players set @a[scores={slimeegguseset=1..}] slimeegguseset 0
tag @e[type=creeper] add beenaround

#dive kick
scoreboard players set @a[scores={dive_kick=4..9},nbt={OnGround:1b},tag=!ender_tnt_land] dive_kick 3
scoreboard players remove @a[scores={dive_kick=-5..}] dive_kick 1

execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={dive_kick=1..}] at @s run particle minecraft:squid_ink ~ ~ ~ 0 0 0 0 1 force
execute as @a[gamemode=adventure,x=600,y=60,z=600,distance=3..100,scores={dive_kick=0}] at @s run function game:char/assassin/dive_boom

#darts
scoreboard players set @e[tag=dart] dart_steps 11
execute as @e[tag=dart] at @s run function game:char/assassin/dartmove

#
scoreboard players add @e[tag=blue_tnt_marker] t1 1
kill @e[tag=blue_tnt_marker,scores={t1=40..}]

#
execute as @e[type=minecraft:fireball,tag=!boom] at @s run function game:char/wizard/fireball_check

#soldier shift
scoreboard players add @e[tag=soldiershift] timer 1
execute as @e[tag=soldiershift,scores={timer=3}] at @s run summon minecraft:fireball ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d],ExplosionPower:4,Tags:["boom"]}
execute as @e[tag=soldiershift,scores={timer=3}] at @s run summon minecraft:endermite ~ ~-0.8 ~ {NoAI:1,Size:0,Invulnerable:1,Tags:["killthis"],Activeeffect:[{Id:14,Amplifier:1,Duration:999999,ShowParticles:0b}]}
kill @e[tag=soldiershift,scores={timer=3}]

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
#execute as @e[type=tnt,nbt={fuse:1s}] at @s run execute store result score @s y run data get entity @s Pos[1] 100
#execute as @e[type=tnt,nbt={fuse:1s}] at @s run scoreboard players operation @p y = @s y

#manage click
scoreboard players set @a[tag=!click_delay] click 0
tag @a remove click_delay

clear @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] minecraft:carrot_on_a_stick
item replace entity @a[gamemode=adventure,x=600,y=60,z=600,distance=3..95,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] weapon.offhand with minecraft:carrot_on_a_stick

execute as @e[tag=no_motion] at @s run tp @s @s