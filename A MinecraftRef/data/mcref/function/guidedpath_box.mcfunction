execute positioned ~ ~4 ~ run execute unless entity @p[tag=guidedpath_box] run give @p[distance=..1] lime_shulker_box[custom_name='["",{"text":"Starter Box","italic":false,"color":"light_purple"}]',lore=['["",{"text":"Rewarded for completing the Guided Path.","italic":false,"color":"gold"}]']]
execute positioned ~ ~4 ~ run tag @p[distance=..1] add guidedpath_box