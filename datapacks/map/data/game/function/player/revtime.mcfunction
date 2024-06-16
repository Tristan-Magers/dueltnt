summon marker ~ ~ ~ {Tags:["timepos"]}

execute store result entity @e[tag=timepos,limit=1,sort=nearest] Pos[0] double .001 run scoreboard players get @s time_pos_x.1
execute store result entity @e[tag=timepos,limit=1,sort=nearest] Pos[1] double .001 run scoreboard players get @s time_pos_y.1
execute store result entity @e[tag=timepos,limit=1,sort=nearest] Pos[2] double .001 run scoreboard players get @s time_pos_z.1

execute store result entity @e[tag=timepos,limit=1,sort=nearest] Rotation[0] float .001 run scoreboard players get @s time_pos_r1.1
execute store result entity @e[tag=timepos,limit=1,sort=nearest] Rotation[1] float .001 run scoreboard players get @s time_pos_r2.1

tp @s @e[tag=timepos,limit=1,sort=nearest]

kill @e[tag=timepos]

scoreboard players operation @s time_pos_x.1 = @s time_pos_x.2
scoreboard players operation @s time_pos_y.1 = @s time_pos_y.2
scoreboard players operation @s time_pos_z.1 = @s time_pos_z.2
scoreboard players operation @s time_pos_r1.1 = @s time_pos_r1.2
scoreboard players operation @s time_pos_r2.1 = @s time_pos_r2.2

scoreboard players operation @s time_pos_x.2 = @s time_pos_x.3
scoreboard players operation @s time_pos_y.2 = @s time_pos_y.3
scoreboard players operation @s time_pos_z.2 = @s time_pos_z.3
scoreboard players operation @s time_pos_r1.2 = @s time_pos_r1.3
scoreboard players operation @s time_pos_r2.2 = @s time_pos_r2.3

scoreboard players operation @s time_pos_x.3 = @s time_pos_x.4
scoreboard players operation @s time_pos_y.3 = @s time_pos_y.4
scoreboard players operation @s time_pos_z.3 = @s time_pos_z.4
scoreboard players operation @s time_pos_r1.3 = @s time_pos_r1.4
scoreboard players operation @s time_pos_r2.3 = @s time_pos_r2.4

scoreboard players operation @s time_pos_x.4 = @s time_pos_x.5
scoreboard players operation @s time_pos_y.4 = @s time_pos_y.5
scoreboard players operation @s time_pos_z.4 = @s time_pos_z.5
scoreboard players operation @s time_pos_r1.4 = @s time_pos_r1.5
scoreboard players operation @s time_pos_r2.4 = @s time_pos_r2.5

scoreboard players operation @s time_pos_x.5 = @s time_pos_x.6
scoreboard players operation @s time_pos_y.5 = @s time_pos_y.6
scoreboard players operation @s time_pos_z.5 = @s time_pos_z.6
scoreboard players operation @s time_pos_r1.5 = @s time_pos_r1.6
scoreboard players operation @s time_pos_r2.5 = @s time_pos_r2.6

scoreboard players operation @s time_pos_x.6 = @s time_pos_x.7
scoreboard players operation @s time_pos_y.6 = @s time_pos_y.7
scoreboard players operation @s time_pos_z.6 = @s time_pos_z.7
scoreboard players operation @s time_pos_r1.6 = @s time_pos_r1.7
scoreboard players operation @s time_pos_r2.6 = @s time_pos_r2.7

scoreboard players operation @s time_pos_x.7 = @s time_pos_x.8
scoreboard players operation @s time_pos_y.7 = @s time_pos_y.8
scoreboard players operation @s time_pos_z.7 = @s time_pos_z.8
scoreboard players operation @s time_pos_r1.7 = @s time_pos_r1.8
scoreboard players operation @s time_pos_r2.7 = @s time_pos_r2.8

scoreboard players operation @s time_pos_x.8 = @s time_pos_x.9
scoreboard players operation @s time_pos_y.8 = @s time_pos_y.9
scoreboard players operation @s time_pos_z.8 = @s time_pos_z.9
scoreboard players operation @s time_pos_r1.8 = @s time_pos_r1.9
scoreboard players operation @s time_pos_r2.8 = @s time_pos_r2.9

scoreboard players operation @s time_pos_x.9 = @s time_pos_x.10
scoreboard players operation @s time_pos_y.9 = @s time_pos_y.10
scoreboard players operation @s time_pos_z.9 = @s time_pos_z.10
scoreboard players operation @s time_pos_r1.9 = @s time_pos_r1.10
scoreboard players operation @s time_pos_r2.9 = @s time_pos_r2.10

scoreboard players operation @s time_pos_x.10 = @s time_pos_x.11
scoreboard players operation @s time_pos_y.10 = @s time_pos_y.11
scoreboard players operation @s time_pos_z.10 = @s time_pos_z.11
scoreboard players operation @s time_pos_r1.10 = @s time_pos_r1.11
scoreboard players operation @s time_pos_r2.10 = @s time_pos_r2.11

scoreboard players operation @s time_pos_x.11 = @s time_pos_x.12
scoreboard players operation @s time_pos_y.11 = @s time_pos_y.12
scoreboard players operation @s time_pos_z.11 = @s time_pos_z.12
scoreboard players operation @s time_pos_r1.11 = @s time_pos_r1.12
scoreboard players operation @s time_pos_r2.11 = @s time_pos_r2.12

scoreboard players operation @s time_pos_x.12 = @s time_pos_x.13
scoreboard players operation @s time_pos_y.12 = @s time_pos_y.13
scoreboard players operation @s time_pos_z.12 = @s time_pos_z.13
scoreboard players operation @s time_pos_r1.12 = @s time_pos_r1.13
scoreboard players operation @s time_pos_r2.12 = @s time_pos_r2.13

scoreboard players operation @s time_pos_x.13 = @s time_pos_x.14
scoreboard players operation @s time_pos_y.13 = @s time_pos_y.14
scoreboard players operation @s time_pos_z.13 = @s time_pos_z.14
scoreboard players operation @s time_pos_r1.13 = @s time_pos_r1.14
scoreboard players operation @s time_pos_r2.13 = @s time_pos_r2.14

scoreboard players operation @s time_pos_x.14 = @s time_pos_x.15
scoreboard players operation @s time_pos_y.14 = @s time_pos_y.15
scoreboard players operation @s time_pos_z.14 = @s time_pos_z.15
scoreboard players operation @s time_pos_r1.14 = @s time_pos_r1.15
scoreboard players operation @s time_pos_r2.14 = @s time_pos_r2.15

scoreboard players operation @s time_pos_x.15 = @s time_pos_x.16
scoreboard players operation @s time_pos_y.15 = @s time_pos_y.16
scoreboard players operation @s time_pos_z.15 = @s time_pos_z.16
scoreboard players operation @s time_pos_r1.15 = @s time_pos_r1.16
scoreboard players operation @s time_pos_r2.15 = @s time_pos_r2.16

scoreboard players operation @s time_pos_x.16 = @s time_pos_x.17
scoreboard players operation @s time_pos_y.16 = @s time_pos_y.17
scoreboard players operation @s time_pos_z.16 = @s time_pos_z.17
scoreboard players operation @s time_pos_r1.16 = @s time_pos_r1.17
scoreboard players operation @s time_pos_r2.16 = @s time_pos_r2.17

scoreboard players operation @s time_pos_x.17 = @s time_pos_x.18
scoreboard players operation @s time_pos_y.17 = @s time_pos_y.18
scoreboard players operation @s time_pos_z.17 = @s time_pos_z.18
scoreboard players operation @s time_pos_r1.17 = @s time_pos_r1.18
scoreboard players operation @s time_pos_r2.17 = @s time_pos_r2.18

scoreboard players operation @s time_pos_x.18 = @s time_pos_x.19
scoreboard players operation @s time_pos_y.18 = @s time_pos_y.19
scoreboard players operation @s time_pos_z.18 = @s time_pos_z.19
scoreboard players operation @s time_pos_r1.18 = @s time_pos_r1.19
scoreboard players operation @s time_pos_r2.18 = @s time_pos_r2.19

scoreboard players operation @s time_pos_x.19 = @s time_pos_x.20
scoreboard players operation @s time_pos_y.19 = @s time_pos_y.20
scoreboard players operation @s time_pos_z.19 = @s time_pos_z.20
scoreboard players operation @s time_pos_r1.19 = @s time_pos_r1.20
scoreboard players operation @s time_pos_r2.19 = @s time_pos_r2.20

scoreboard players operation @s time_pos_x.20 = @s time_pos_x.21
scoreboard players operation @s time_pos_y.20 = @s time_pos_y.21
scoreboard players operation @s time_pos_z.20 = @s time_pos_z.21
scoreboard players operation @s time_pos_r1.20 = @s time_pos_r1.21
scoreboard players operation @s time_pos_r2.20 = @s time_pos_r2.21

scoreboard players operation @s time_pos_x.21 = @s time_pos_x.22
scoreboard players operation @s time_pos_y.21 = @s time_pos_y.22
scoreboard players operation @s time_pos_z.21 = @s time_pos_z.22
scoreboard players operation @s time_pos_r1.21 = @s time_pos_r1.22
scoreboard players operation @s time_pos_r2.21 = @s time_pos_r2.22

scoreboard players operation @s time_pos_x.22 = @s time_pos_x.23
scoreboard players operation @s time_pos_y.22 = @s time_pos_y.23
scoreboard players operation @s time_pos_z.22 = @s time_pos_z.23
scoreboard players operation @s time_pos_r1.22 = @s time_pos_r1.23
scoreboard players operation @s time_pos_r2.22 = @s time_pos_r2.23

scoreboard players operation @s time_pos_x.23 = @s time_pos_x.24
scoreboard players operation @s time_pos_y.23 = @s time_pos_y.24
scoreboard players operation @s time_pos_z.23 = @s time_pos_z.24
scoreboard players operation @s time_pos_r1.23 = @s time_pos_r1.24
scoreboard players operation @s time_pos_r2.23 = @s time_pos_r2.24

scoreboard players operation @s time_pos_x.24 = @s time_pos_x.25
scoreboard players operation @s time_pos_y.24 = @s time_pos_y.25
scoreboard players operation @s time_pos_z.24 = @s time_pos_z.25
scoreboard players operation @s time_pos_r1.24 = @s time_pos_r1.25
scoreboard players operation @s time_pos_r2.24 = @s time_pos_r2.25

scoreboard players operation @s time_pos_x.25 = @s time_pos_x.26
scoreboard players operation @s time_pos_y.25 = @s time_pos_y.26
scoreboard players operation @s time_pos_z.25 = @s time_pos_z.26
scoreboard players operation @s time_pos_r1.25 = @s time_pos_r1.26
scoreboard players operation @s time_pos_r2.25 = @s time_pos_r2.26

scoreboard players operation @s time_pos_x.26 = @s time_pos_x.27
scoreboard players operation @s time_pos_y.26 = @s time_pos_y.27
scoreboard players operation @s time_pos_z.26 = @s time_pos_z.27
scoreboard players operation @s time_pos_r1.26 = @s time_pos_r1.27
scoreboard players operation @s time_pos_r2.26 = @s time_pos_r2.27

scoreboard players operation @s time_pos_x.27 = @s time_pos_x.28
scoreboard players operation @s time_pos_y.27 = @s time_pos_y.28
scoreboard players operation @s time_pos_z.27 = @s time_pos_z.28
scoreboard players operation @s time_pos_r1.27 = @s time_pos_r1.28
scoreboard players operation @s time_pos_r2.27 = @s time_pos_r2.28

scoreboard players operation @s time_pos_x.28 = @s time_pos_x.29
scoreboard players operation @s time_pos_y.28 = @s time_pos_y.29
scoreboard players operation @s time_pos_z.28 = @s time_pos_z.29
scoreboard players operation @s time_pos_r1.28 = @s time_pos_r1.29
scoreboard players operation @s time_pos_r2.28 = @s time_pos_r2.29

scoreboard players operation @s time_pos_x.29 = @s time_pos_x.30
scoreboard players operation @s time_pos_y.29 = @s time_pos_y.30
scoreboard players operation @s time_pos_z.29 = @s time_pos_z.30
scoreboard players operation @s time_pos_r1.29 = @s time_pos_r1.30
scoreboard players operation @s time_pos_r2.29 = @s time_pos_r2.30

scoreboard players operation @s time_pos_x.30 = @s time_pos_x.31
scoreboard players operation @s time_pos_y.30 = @s time_pos_y.31
scoreboard players operation @s time_pos_z.30 = @s time_pos_z.31
scoreboard players operation @s time_pos_r1.30 = @s time_pos_r1.31
scoreboard players operation @s time_pos_r2.30 = @s time_pos_r2.31

scoreboard players operation @s time_pos_x.31 = @s time_pos_x.32
scoreboard players operation @s time_pos_y.31 = @s time_pos_y.32
scoreboard players operation @s time_pos_z.31 = @s time_pos_z.32
scoreboard players operation @s time_pos_r1.31 = @s time_pos_r1.32
scoreboard players operation @s time_pos_r2.31 = @s time_pos_r2.32

scoreboard players operation @s time_pos_x.32 = @s time_pos_x.33
scoreboard players operation @s time_pos_y.32 = @s time_pos_y.33
scoreboard players operation @s time_pos_z.32 = @s time_pos_z.33
scoreboard players operation @s time_pos_r1.32 = @s time_pos_r1.33
scoreboard players operation @s time_pos_r2.32 = @s time_pos_r2.33

scoreboard players operation @s time_pos_x.33 = @s time_pos_x.34
scoreboard players operation @s time_pos_y.33 = @s time_pos_y.34
scoreboard players operation @s time_pos_z.33 = @s time_pos_z.34
scoreboard players operation @s time_pos_r1.33 = @s time_pos_r1.34
scoreboard players operation @s time_pos_r2.33 = @s time_pos_r2.34

scoreboard players operation @s time_pos_x.34 = @s time_pos_x.35
scoreboard players operation @s time_pos_y.34 = @s time_pos_y.35
scoreboard players operation @s time_pos_z.34 = @s time_pos_z.35
scoreboard players operation @s time_pos_r1.34 = @s time_pos_r1.35
scoreboard players operation @s time_pos_r2.34 = @s time_pos_r2.35

scoreboard players operation @s time_pos_x.35 = @s time_pos_x.36
scoreboard players operation @s time_pos_y.35 = @s time_pos_y.36
scoreboard players operation @s time_pos_z.35 = @s time_pos_z.36
scoreboard players operation @s time_pos_r1.35 = @s time_pos_r1.36
scoreboard players operation @s time_pos_r2.35 = @s time_pos_r2.36

scoreboard players operation @s time_pos_x.36 = @s time_pos_x.37
scoreboard players operation @s time_pos_y.36 = @s time_pos_y.37
scoreboard players operation @s time_pos_z.36 = @s time_pos_z.37
scoreboard players operation @s time_pos_r1.36 = @s time_pos_r1.37
scoreboard players operation @s time_pos_r2.36 = @s time_pos_r2.37

scoreboard players operation @s time_pos_x.37 = @s time_pos_x.38
scoreboard players operation @s time_pos_y.37 = @s time_pos_y.38
scoreboard players operation @s time_pos_z.37 = @s time_pos_z.38
scoreboard players operation @s time_pos_r1.37 = @s time_pos_r1.38
scoreboard players operation @s time_pos_r2.37 = @s time_pos_r2.38

scoreboard players operation @s time_pos_x.38 = @s time_pos_x.39
scoreboard players operation @s time_pos_y.38 = @s time_pos_y.39
scoreboard players operation @s time_pos_z.38 = @s time_pos_z.39
scoreboard players operation @s time_pos_r1.38 = @s time_pos_r1.39
scoreboard players operation @s time_pos_r2.38 = @s time_pos_r2.39

scoreboard players operation @s time_pos_x.39 = @s time_pos_x.40
scoreboard players operation @s time_pos_y.39 = @s time_pos_y.40
scoreboard players operation @s time_pos_z.39 = @s time_pos_z.40
scoreboard players operation @s time_pos_r1.39 = @s time_pos_r1.40
scoreboard players operation @s time_pos_r2.39 = @s time_pos_r2.40