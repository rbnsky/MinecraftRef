execute positioned ~ ~4 ~ run execute unless entity @p[tag=guidedpath_carrot] run give @p[distance=..1] golden_carrot[custom_name='["",{"text":"Guided Path Carrot","italic":false,"color":"light_purple"}]',lore=['["",{"text":"So you don\'t start your journey hungry!","italic":false,"color":"gold"}]']] 5
execute positioned ~ ~4 ~ run tag @p[distance=..1] add guidedpath_carrot