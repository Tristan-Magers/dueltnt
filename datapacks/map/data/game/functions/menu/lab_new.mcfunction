summon minecraft:chicken 496 12 507 {Silent:1,Invulnerable:1,Motion:[0.0,-10.0,0.0],Rotation:[180F,10F],Tags:["lab"]}

playsound minecraft:entity.chicken.egg master @a 499.34 12.70 506.00 1 0.1
playsound minecraft:entity.chicken.ambient master @a 499.34 12.70 506.00 1 1.1
playsound minecraft:block.piston.contract master @a 499.34 12.70 506.00 1 0.7

scoreboard players set .lab_spawn .data 120