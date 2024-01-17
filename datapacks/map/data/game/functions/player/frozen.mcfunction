execute as @s[scores={frozen=15..}] at @s run tp @s @s
scoreboard players remove @s frozen 1
title @s[scores={frozen=39..}] title {"text":"FROZEN","color":"dark_aqua"}
title @s[scores={frozen=1}] title {"text":"","color":"dark_aqua"}
effect give @s[scores={frozen=30..}] levitation 2 0 true
effect give @s[scores={frozen=20..}] glowing 1 0 true