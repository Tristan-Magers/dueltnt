#
#execute as @s[scores={countdown=95}] at @s run title @a times 4 10 4
execute as @s[scores={countdown=75}] at @s run title @a times 10 15 10
execute as @s[scores={countdown=1..45}] at @s run title @a times 0 10 20
execute as @s[scores={countdown=0}] at @s run title @a times 6 14 10

#
#execute as @s[scores={countdown=75..}] at @s run effect 

#
execute as @s[scores={countdown=95}] at @s run function game:game/kill
execute as @s[scores={countdown=75}] at @s run function game:game/kill

#
execute as @s[scores={countdown=75..}] at @s run fill 599 59 599 601 10 601 barrier hollow
execute as @s[scores={countdown=75..}] at @s run fill 599 59 599 601 63 601 barrier hollow
execute as @s[scores={countdown=75..}] at @s run tp @a[x=600,y=60,z=600,distance=..3,gamemode=adventure] 600 61 600 -45 80

#
execute as @s[scores={countdown=75}] at @s run function game:game/say_map

#say class names solo
execute as @s[scores={countdown=65}] at @s run execute as @a[x=600,y=60,z=600,distance=..39,scores={teamed=..0,ingame=1..}] at @s run function game:player/sayclass

#say class names teams
#execute as @s[scores={countdown=72}] at @s run execute as @s[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=red,scores={teamed=1..}] at @s run tellraw @a [{"text":"TEAM RED","color":"red"},{"text":": ","color":"white"}]
execute as @s[scores={countdown=65}] at @s run execute as @a[x=600,y=60,z=600,distance=..39,scores={teamed=1..,ingame=1..},tag=red] at @s run function game:player/sayclass

#execute as @s[scores={countdown=72}] at @s run execute as @s[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=blue,scores={teamed=1..}] at @s run tellraw @a [{"text":"TEAM BLUE","color":"aqua"},{"text":": ","color":"white"}]
execute as @s[scores={countdown=65}] at @s run execute as @a[x=600,y=60,z=600,distance=..39,scores={teamed=1..,ingame=1..},tag=blue] at @s run function game:player/sayclass

#execute as @s[scores={countdown=72}] at @s run execute as @s[x=615,y=30,z=615,distance=..90,gamemode=adventure,tag=green,scores={teamed=1..}] at @s run tellraw @a [{"text":"TEAM GREEN","color":"green"},{"text":": ","color":"white"}]
execute as @s[scores={countdown=65}] at @s run execute as @a[x=600,y=60,z=600,distance=..39,scores={teamed=1..,ingame=1..},tag=green] at @s run function game:player/sayclass

execute as @s[scores={countdown=75}] at @s run title @a[x=620,y=20,z=620,distance=..100] subtitle [{"text":""}]
execute as @s[scores={countdown=75}] at @s run bossbar set minecraft:time visible false

execute as @s[scores={countdown=75}] at @s run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"score":{"name":"RoundAnnounce","objective":"game"},"color":"light_purple","bold":true}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .1 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"1","font":"title","color":"light_purple","bold":false}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .2 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"2","font":"title","color":"light_purple","bold":false}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .3 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"3","font":"title","color":"light_purple","bold":false}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .4 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"4","font":"title","color":"light_purple","bold":false}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .5 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"5","font":"title","color":"light_purple","bold":false}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .6 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"6","font":"title","color":"light_purple","bold":false}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .7 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"7","font":"title","color":"light_purple","bold":false}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .8 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"8","font":"title","color":"light_purple","bold":false}]
execute as @s[scores={countdown=75}] at @s if score RoundAnnounce game = .9 .num run title @a[x=620,y=20,z=620,distance=..100] title ["",{"translate":"\u000a","font":"title","color":"light_purple","bold":false},{"translate":"9","font":"title","color":"light_purple","bold":false}]

execute as @s[scores={countdown=75}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 1 1.2

#xecute as @s[scores={countdown=45}] at @s run summon minecraft:armor_stand 618 18 618 {Marker:1,invulnerable:1,Tags:["countdown_spec_p"]}
#execute as @s[scores={countdown=45}] at @s run summon minecraft:armor_stand 600 60 600 {Marker:1,invulnerable:1,Tags:["counddown_spec"]}
#execute as @s[scores={countdown=45}] as @e[tag=counddown_spec] at @s run tp @s 600 60 600 facing entity @e[tag=countdown_spec_p,limit=1]

execute as @s[scores={countdown=74}] at @s run tag @a remove countdown
execute as @s[scores={countdown=74}] at @s run tag @a[scores={ingame=1..}] add countdown
#execute as @s[scores={countdown=74}] at @s run gamemode spectator @a[scores={ingame=1..}]

#execute as @s[scores={countdown=-9..44}] as @a[tag=countdown] run spectate @e[tag=counddown_spec,limit=1] @s
#execute as @s[scores={countdown=-9..44}] as @e[tag=countdown_spec_p] at @s run tp @s ~ ~0.12 ~
#execute as @s[scores={countdown=-9..44}] as @e[tag=counddown_spec] at @s run tp @s ~0.1 ~ ~ facing entity @e[tag=countdown_spec_p,limit=1]

execute as @s[scores={countdown=64..}] at @s run tag @e[tag=name_temp,type=marker] remove active
execute as @s[scores={countdown=64..}] at @s run tag @e[tag=stock_temp,type=marker] remove active

execute as @s[scores={countdown=69}] at @s run function game:makemap
execute as @s[scores={countdown=69}] at @s run fill 599 59 599 601 10 601 barrier hollow
execute as @s[scores={countdown=69}] at @s run fill 599 59 599 601 63 601 barrier hollow
#execute as @s[scores={countdown=-10}] at @s run scoreboard objectives setdisplay sidebar l
execute as @s[scores={countdown=-10}] at @s run scoreboard objectives setdisplay sidebar

execute as @s[scores={countdown=67}] at @s run setblock 600 9 600 air
execute as @s[scores={countdown=67}] at @s run setblock 600 10 600 air

execute as @s[scores={countdown=75}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run stopsound @s

execute as @s[scores={countdown=60..}] at @s run time set 11000
execute as @s[scores={countdown=60..}] at @s run execute as @e[name=Map,type=armor_stand,scores={game=99}] at @s run time set 12800

execute as @s[scores={countdown=42}] as @a[x=620,y=20,z=620,distance=..100] at @s positioned ~ ~1.6 ~ run particle item{item:{id:"minecraft:redstone_block"}} ^ ^ ^3.5 0 0 0 1 10 force @s
execute as @s[scores={countdown=27}] as @a[x=620,y=20,z=620,distance=..100] at @s positioned ~ ~1.6 ~ run particle item{item:{id:"minecraft:gold_block"}} ^ ^ ^3.0 0 0 0 1 10 force @s
execute as @s[scores={countdown=12}] as @a[x=620,y=20,z=620,distance=..100] at @s positioned ~ ~1.6 ~ run particle item{item:{id:"minecraft:emerald_block"}} ^ ^ ^2.5 0 0 0 1 10 force @s
execute as @s[scores={countdown=0}] as @a[x=620,y=20,z=620,distance=..100] at @s positioned ~ ~1.6 ~ run particle minecraft:explosion_emitter ^ ^ ^2.5 0.1 0.1 0.1 0.0 2 force @s

execute as @s[scores={countdown=45}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3000","font":"title","color":"#E34634"}]

execute as @s[scores={countdown=43}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3a01","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=42}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3a02","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=40}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3a03","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=39}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3a04","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=37}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3000","font":"title","color":"#E34634"}]

execute as @s[scores={countdown=36}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3b01","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=35}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3b02","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=34}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3b03","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=33}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3b02","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=32}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3b01","font":"title","color":"#E34634"}]
execute as @s[scores={countdown=31}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u3000","font":"title","color":"#E34634"}]

execute as @s[scores={countdown=30}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2000","font":"title","color":"gold"}]

execute as @s[scores={countdown=28}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2a01","font":"title","color":"gold"}]
execute as @s[scores={countdown=27}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2a02","font":"title","color":"gold"}]
execute as @s[scores={countdown=25}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2a03","font":"title","color":"gold"}]
execute as @s[scores={countdown=24}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2a04","font":"title","color":"gold"}]
execute as @s[scores={countdown=22}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2000","font":"title","color":"gold"}]

execute as @s[scores={countdown=21}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2b01","font":"title","color":"gold"}]
execute as @s[scores={countdown=20}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2b02","font":"title","color":"gold"}]
execute as @s[scores={countdown=19}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2b03","font":"title","color":"gold"}]
execute as @s[scores={countdown=18}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2b02","font":"title","color":"gold"}]
execute as @s[scores={countdown=17}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2b01","font":"title","color":"gold"}]
execute as @s[scores={countdown=16}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u2000","font":"title","color":"gold"}]

execute as @s[scores={countdown=15}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1000","font":"title","color":"dark_green"}]

execute as @s[scores={countdown=13}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1a01","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=12}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1a02","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=10}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1a03","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=9}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1a04","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=7}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1000","font":"title","color":"dark_green"}]

execute as @s[scores={countdown=6}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1b01","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=5}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1b02","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=4}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1b03","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=3}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1b02","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=2}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1b01","font":"title","color":"dark_green"}]
execute as @s[scores={countdown=1}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u1000","font":"title","color":"dark_green"}]

execute as @s[scores={countdown=1}] at @s run effect give @s minecraft:darkness 3 0 true

execute as @s[scores={countdown=0}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"translate":"\u000b","font":"title","color":"green"}]

execute as @s[scores={countdown=75}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 0.3 0
execute as @s[scores={countdown=75}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ .2 1.5
execute as @s[scores={countdown=75}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:item.bundle.insert master @s ~ ~ ~ 1 0

#execute as @s[scores={countdown=70}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound custom:intro master @s

execute as @s[scores={countdown=45}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ 1 0.6
execute as @s[scores={countdown=45}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.creeper.hurt master @s ~ ~ ~ .1 0
execute as @s[scores={countdown=45}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.bamboo.hit master @s ~ ~ ~ 0.7 0.6
execute as @s[scores={countdown=41}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.8 0.8
execute as @s[scores={countdown=46}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.4 0.6
execute as @s[scores={countdown=46}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.4 0.8

execute as @s[scores={countdown=30}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ 1 0.8
execute as @s[scores={countdown=30}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.creeper.hurt master @s ~ ~ ~ .1 0
execute as @s[scores={countdown=30}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.bamboo.hit master @s ~ ~ ~ 0.7 0.8
execute as @s[scores={countdown=26}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.85 0.7
execute as @s[scores={countdown=31}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.5 0.5
execute as @s[scores={countdown=31}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.5 0.7

execute as @s[scores={countdown=15}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ 1 1
execute as @s[scores={countdown=15}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.creeper.hurt master @s ~ ~ ~ .1 0
execute as @s[scores={countdown=15}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.bamboo.hit master @s ~ ~ ~ 0.7 1
execute as @s[scores={countdown=11}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1.0 1.2
execute as @s[scores={countdown=16}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.6 0.9
execute as @s[scores={countdown=16}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.6 1.2

execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.player.levelup master @s
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.shulker_bullet.hit master @s ~ ~ ~ 1 1
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.shulker_bullet.hit master @s ~ ~ ~ 1 1
execute as @s[scores={countdown=0}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ .5 1.7

execute as @s[scores={countdown=-9}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 1.8
execute as @s[scores={countdown=-9}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.45 1
execute as @s[scores={countdown=-8}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.6
execute as @s[scores={countdown=-6}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
execute as @s[scores={countdown=-4}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 1
execute as @s[scores={countdown=-4}] at @s run execute as @a[x=620,y=20,z=600,distance=..100] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.7 1.8

#clone extra map for phantom blocks
execute as @s[scores={countdown=-11}] at @s run clone 596 7 596 639 21 639 596 7 696
execute as @s[scores={countdown=-11}] at @s run clone 596 22 596 639 34 639 596 22 696
execute as @s[scores={countdown=-11}] at @s run clone 596 35 596 639 49 639 596 35 696

execute as @s[scores={countdown=-11}] at @s run clone 596 7 596 639 21 639 596 7 496
execute as @s[scores={countdown=-11}] at @s run clone 596 22 596 639 34 639 596 22 496
execute as @s[scores={countdown=-11}] at @s run clone 596 35 596 639 49 639 596 35 496

#execute as @s[scores={countdown=0}] at @s run effect give @a[gamemode=adventure,scores={ingame=1..}] slow_falling 3 4 true
execute as @s[scores={countdown=-19..50}] at @s run tp @a[tag=!countdown,gamemode=adventure,scores={ingame=1..}] 600 60 600 -45 62
execute as @s[scores={countdown=61}] as @a[tag=countdown,scores={ingame=1..}] at @s run tp @s 600 50 600 -45 50
execute as @s[scores={countdown=61}] as @a[tag=countdown,scores={ingame=1..}] at @s run effect give @s slow_falling 4 10 true
execute as @s[scores={countdown=-19..60}] as @a[tag=countdown,scores={ingame=1..}] at @s run tp @s 600 ~0.05 600 -45 50

#execute as @s[scores={countdown=-20}] at @s run title @a[x=620,y=20,z=620,distance=..100] title [{"text":"","color":"dark_green","bold":true}]

execute as @s[scores={countdown=-20}] at @s run tag @a remove countdown
execute as @s[scores={countdown=-20}] at @s run gamemode adventure @a[scores={ingame=1..}]
execute as @s[scores={countdown=-20}] at @s run tp @a[gamemode=adventure,scores={ingame=1..}] 600 60 600 -45 62
execute as @s[scores={countdown=-20}] at @s run kill @e[tag=counddown_spec]
execute as @s[scores={countdown=-20}] at @s run kill @e[tag=countdown_spec_p]
execute as @s[scores={countdown=-20}] at @s run function game:spawn
execute as @s[scores={countdown=-20}] at @s run fill 599 59 599 601 100 601 air
execute as @s[scores={countdown=-20}] at @s run fill 599 59 599 601 0 601 air
#execute as @s[scores={countdown=-10}] at @s run scoreboard players remove CurrentRound game 1
execute as @s[scores={countdown=-20}] at @s run scoreboard players add RoundAnnounce game 1
execute as @s[scores={countdown=-20}] at @s run scoreboard players set Time game 6000

execute as @s[scores={countdown=-20}] at @s run execute if entity @e[tag=Map,scores={mode=0..1}] run tellraw @a[scores={ingame=1..,playercount=1}] [{"text":"You have joined solo. Welcome to training mode.","color":"gold"}]
execute as @s[scores={countdown=-20}] at @s run execute if entity @e[tag=Map,scores={mode=0..1}] run tellraw @a[scores={ingame=1..,playercount=1}] [{"text":"["},{"text":"Spawn Dummy","color":"dark_green","hoverEvent":{"action":"show_text","value":"Click to spawn dummy"},"clickEvent":{"action":"run_command","value":"/trigger dummytrigger add 1"}},{"text":"] [","color":"white"},{"text":"Spawn Punchable Dummy","color":"green","hoverEvent":{"action":"show_text","value":"Click to spawn dummy"},"clickEvent":{"action":"run_command","value":"/trigger dummytrigger2 add 1"}},{"text":"]","color":"white"}]

scoreboard players remove @s countdown 1

execute as @s[scores={countdown=-20}] at @s run gamerule mobGriefing true

#players spawning
scoreboard players set @a[x=600,y=60,z=600,distance=..39,scores={ingame=1..}] Invis 5
execute as @s[scores={countdown=50..}] at @s run xp add @a -100 levels
execute as @s[scores={countdown=0..}] at @s run clear @a[x=600,y=60,z=600,distance=..89,scores={ingame=1..}]
scoreboard players set @a[x=600,y=60,z=600,distance=..39,scores={ingame=1..}] timer 100
execute as @s[scores={countdown=50..}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] slowness 1 5 true
execute as @s[scores={countdown=48..}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] slowness 1 4 true
execute as @s[scores={countdown=46..}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] slowness 1 3 true
execute as @s[scores={countdown=44..}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] slowness 1 2 true
execute as @s[scores={countdown=42..}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] slowness 1 1 true
execute as @s[scores={countdown=38..}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] slowness 1 0 true
execute as @s[scores={countdown=55..}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] blindness 2 0 true

execute as @s[scores={countdown=8}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] darkness 3 5 true
execute as @s[scores={countdown=-2}] at @s run effect give @a[x=600,y=60,z=600,distance=..60,scores={ingame=1..}] blindness 2 5 true

execute as @s[scores={countdown=20..}] at @s run effect give @a[x=600,y=60,z=600,distance=..80,scores={ingame=1..}] invisibility 3 0 true