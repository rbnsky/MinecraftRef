summon minecraft:marker 400 85 0
execute positioned 400 85 0 run tag @n[type=marker] add nexus
summon minecraft:marker 400 135 0
execute positioned 400 135 0 run tag @n[type=marker] add nexus
tellraw @a ["",{"text":"Set up nexus at 400 85 0 and 400 135 0.","color":"white"}]

summon marker 417.5 134 0.5
execute positioned 417.5 134 0.5 run tag @n[type=marker] add updraft
tellraw @a ["",{"text":"Set up updraft at 417.5 134 0.5.","color":"white"}]

summon marker 380 86 20
execute positioned 380 86 20 run tag @n[type=marker] add geysir
tellraw @a ["",{"text":"Set up geysir at 380 86 20.","color":"white"}]

summon marker 399 86 -11
execute positioned 399 86 -11 run tag @n[type=marker] add effigy_chest
tellraw @a ["",{"text":"Set up effigy_chest at 418 134 0.","color":"white"}]

summon marker 399 86.3 -11
execute positioned 399 86.3 -11 run tag @n[type=marker] add effigy_chest
tellraw @a ["",{"text":"Set up effigy_chest at 399 86.3 -11.","color":"white"}]

summon marker 399 81.3 -11
execute positioned 399 81.3 -11 run tag @n[type=marker] add effigy_pond
tellraw @a ["",{"text":"Set up effigy_pond at 399 81.3 -11.","color":"white"}]

tellraw @a ["",{"text":"Now Summon a Marker in every Effigy Loot Chest (/summon Marker ~ ~-0.5 ~) and tag them as effigy_loot","color":"white"}]
tellraw @a ["",{"text":"And don't forget Guided Path item displays: Axe, Book, Gallery","color":"white"}]