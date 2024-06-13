#blast wand
#scoreboard players set @s[scores={grtest=0}] bwandlimit 0
#limits uses in air. currently unused and negated by previous command
scoreboard players set @s[nbt={OnGround:1b},scores={grtest=0}] bwandlimit 0
scoreboard players remove @s[scores={blastwandtime=0..}] blastwandtime 1
execute as @s[scores={click=1..,blastwandtime=..0,bwandlimit=..5},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] at @s run function game:items/blastwand

execute as @s[scores={blastwandtime=0,blastdur=0}] run function game:char/echo/give/blastwand {damage:0}
execute as @s[scores={blastwandtime=0,blastdur=1}] run function game:char/echo/give/blastwand {damage:22}
execute as @s[scores={blastwandtime=0,blastdur=2}] run function game:char/echo/give/blastwand {damage:43}
execute as @s[scores={blastwandtime=0,blastdur=3}] run function game:char/echo/give/blastwand {damage:65}
execute as @s[scores={blastwandtime=0,blastdur=4}] run function game:char/echo/give/blastwand {damage:84}
execute as @s[scores={blastwandtime=0,blastdur=5}] run function game:char/echo/give/blastwand {damage:104}
execute as @s[scores={blastwandtime=0,blastdur=6..}] run function game:char/echo/give/blastwand {damage:130}

scoreboard players set @s[scores={blastdur=0}] blastdurt 0
scoreboard players set @s[scores={blastwandtime=1..}] blastdurt 0
scoreboard players add @s[scores={blastdur=1..,blastwandtime=..0}] blastdurt 1
scoreboard players remove @s[scores={blastdurt=20..}] blastdur 1
scoreboard players set @s[scores={blastdurt=20..}] blastwandtime 1
scoreboard players set @s[scores={blastdurt=20..}] blastdurt 0

execute as @s[scores={blastwandtime=90}] run function game:char/echo/give/orb {wand:"§aBlast Wand§r",orb_id:{BlastOrb:1b},slot:2}
scoreboard players set @s[scores={blastwandtime=89..90}] blastwandtime 90

scoreboard players remove @s[scores={grtest=1..}] grtest 1