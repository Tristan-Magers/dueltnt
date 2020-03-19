replaceitem entity @s[scores={nobow=3..}] hotbar.0 bow{Damage:180,display:{Name:"{\"italic\":false,\"text\":\"§7Dark Pillar§r : Throw to switch\"}"},Unbreakable:1}

clear @s[nbt=!{Inventory:[{id:"minecraft:iron_hoe",Slot:1b}]},scores={Sreload=..0}] iron_hoe
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:iron_hoe",Slot:1b}]},scores={Sreload=..0}] Sreload 2