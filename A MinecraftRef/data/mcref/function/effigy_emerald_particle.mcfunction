particle happy_villager ~ ~ ~ 0.2 0.2 0.2 0 3 normal
playsound entity.experience_orb.pickup master @a ~ ~ ~
#kill @n[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:custom_data":{super_emerald:true}}}}]
execute as @n[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:custom_data":{super_emerald:true}}}}] run function mcref:effigy_kill_emerald