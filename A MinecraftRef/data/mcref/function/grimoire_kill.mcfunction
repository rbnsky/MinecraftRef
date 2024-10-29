particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0 5 normal
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.7
tellraw @p[distance=..10] {"text":"The Grimoire faded into nothingness.","color":"light_purple"}
kill @n[type=!player]