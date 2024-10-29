#replace air with temporary elytra
execute unless data entity @p Inventory[{Slot:102b}] run item replace entity @p armor.chest with elytra[minecraft:custom_data={temporary_wings:true},custom_name='["",{"text":"Temporary Wings","italic":false,"color":"light_purple"}]',lore=['["",{"text":"Wings granted from an Updraft.","italic":false,"color":"gold"}]','["",{"text":"They will disappear once you land!","italic":false,"color":"gold"}]'],rarity=epic,enchantments={levels:{binding_curse:1,vanishing_curse:1}}]
#add tag to player with temporary elytra
execute if items entity @p armor.chest minecraft:elytra[minecraft:custom_data={temporary_wings:true}] run tag @p add temporary_wings
#give levitation to player with any elytra
execute if items entity @p armor.chest minecraft:elytra run effect give @p[distance=..1] levitation 1 40 true
#play sound to player with any elytra
execute if items entity @p armor.chest minecraft:elytra run playsound minecraft:entity.breeze.idle_air master @a ~ ~ ~ 1 1
#tell player with elytra to press jump to glide
execute if items entity @p armor.chest minecraft:elytra run title @p actionbar ["",{"text":"Press ","color":"white"},{"text":"[Jump]","color":"gold"},{"text":" to start gliding!","color":"white"}]
#tell players without elytra to take off chestplate
execute unless items entity @p armor.chest minecraft:elytra run title @p actionbar ["",{"text":"Remove","color":"gold"},{"text":" your "},{"text":"Chestplate","color":"gold"},{"text":" to launch!"}]