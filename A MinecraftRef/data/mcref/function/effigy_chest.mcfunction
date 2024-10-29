#Chest Full
execute at @e[type=marker,tag=effigy_chest] run execute unless block ~ ~ ~ minecraft:chest{Items:[]} run title @a[distance=..6] actionbar ["",{"text":"Empty","color":"gold"},{"text":" the "},{"text":"Effigy's chest","color":"gold"},{"text":" so new loot can be generated."}]
#Chest Empty
execute at @e[type=marker,tag=effigy_chest] run execute if block ~ ~ ~ minecraft:chest{Items:[]} run function mcref:effigy_loot