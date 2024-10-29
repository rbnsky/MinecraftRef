#DirtPath Speed
execute at @a if block ~ ~-0.9 ~ minecraft:dirt_path run effect give @p minecraft:speed 2 0 true
#Age Grimoire
execute at @n[type=item,nbt={Item:{id:"minecraft:written_book",components:{"minecraft:custom_data":{grimoire:true}}}}] run function mcref:grimoire_tick
#Updraft
execute at @e[type=marker,tag=updraft] if entity @p[distance=..15] run function mcref:updraft
#Remove Temporary Wings
execute at @a[tag=temporary_wings] unless block ~ ~-0.1 ~ minecraft:air run function mcref:updraft_remove_wings
#Geysir
execute at @e[type=marker,tag=geysir] if entity @p[distance=..15] run function mcref:geysir
#Nexus Spawn Protection
execute at @e[type=marker,tag=nexus] if entity @p[distance=..115] run function mcref:nexus
#Always-Online Nexus Spawn Protection
execute at @e[type=marker,tag=nexus] run tag @n[type=minecraft:tnt,distance=..53] add nexus_hostile_projectile
execute at @e[type=marker,tag=nexus] run tag @n[type=minecraft:tnt_minecart,distance=..53] add nexus_hostile_projectile
execute at @e[type=marker,tag=nexus] run tag @n[type=minecraft:wither_skull,distance=..50] add nexus_hostile_projectile
execute at @e[type=marker,tag=nexus] run tag @n[type=minecraft:ender_dragon,distance=..50] add nexus_hostile_projectile
execute at @e[tag=nexus_hostile_projectile] run function mcref:nexus_kill_projectiles
#Trading Effigy
#execute at @e[type=marker,tag=effigy_pond] if entity @n[distance=..2.5,type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:custom_data":{super_emerald:true}}}}] run function mcref:effigy_chest
execute at @e[type=marker,tag=effigy_pond] run execute at @n[distance=..2.5,type=item,limit=1,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:custom_data":{super_emerald:true}}}}] run function mcref:effigy_chest
