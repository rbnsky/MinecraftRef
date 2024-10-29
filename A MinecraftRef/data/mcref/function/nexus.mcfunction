#Nexus Player Effects
effect give @a[distance=..45,gamemode=survival] minecraft:resistance 2 255 true
effect give @a[distance=..45,gamemode=survival] minecraft:weakness 2 255 true

#Deflect Hostile Projectiles
execute at @e[type=minecraft:trident,distance=..45] unless entity @n[distance=0,nbt={Motion:[0.0,0.0,0.0]}] run function mcref:nexus_deflect_trident

#Tag Hostile Projectiles and Mobs
tag @e[type=minecraft:arrow,distance=..45] add nexus_hostile_projectile
tag @n[type=minecraft:spectral_arrow,distance=..45] add nexus_hostile_projectile
tag @n[type=minecraft:breeze_wind_charge,distance=..45] add nexus_hostile_projectile
tag @n[type=minecraft:dragon_fireball,distance=..45] add nexus_hostile_projectile
tag @n[type=minecraft:evoker_fangs,distance=..45] add nexus_hostile_projectile
tag @n[type=minecraft:fireball,distance=..45] add nexus_hostile_projectile
tag @n[type=minecraft:potion,distance=..45] add nexus_hostile_projectile
tag @n[type=minecraft:shulker_bullet,distance=..45] add nexus_hostile_projectile
tag @n[type=minecraft:small_fireball,distance=..45] add nexus_hostile_projectile
#Tag Incendium Projectiles
tag @n[distance=..45,type=marker,tag=in.ragnarok] add nexus_hostile_projectile
tag @n[distance=..45,type=marker,tag=in.sentrys_wrath] add nexus_hostile_projectile
#Tag Spellbound Projectiles
tag @n[distance=..45,type=marker,tag=spellbound_marker] add nexus_hostile_projectile
tag @n[distance=..45,type=armor_stand,tag=spellbound_ice_staff_ice] add nexus_hostile_projectile
tag @n[distance=..45,type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] add nexus_hostile_projectile
#Kill Hostile Projectiles and Mobs
execute at @n[tag=nexus_hostile_projectile] run function mcref:nexus_kill_projectiles

#Prevent Spellbound Staffs from charging
scoreboard players set @a[distance=..45,scores={spellbound_e_staff_cooldown=..50}] spellbound_e_staff_cooldown 0
scoreboard players set @a[distance=..45,scores={spellbound_e_staff_cooldown=..50}] spellbound_i_staff_cooldown 0
scoreboard players set @a[distance=..45,scores={spellbound_e_staff_cooldown=..50}] spellbound_f_staff_cooldown 0

#Tag Hostile Mobs
tag @n[type=minecraft:blaze,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:bogged,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:blaze,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:breeze,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:cave_spider,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:creeper,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:drowned,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:enderman,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:endermite,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:evoker,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:ghast,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:hoglin,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:husk,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:illusioner,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:magma_cube,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:phantom,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:piglin,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:piglin_brute,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:pillager,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:ravager,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:shulker,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:silverfish,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:skeleton,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:slime,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:spider,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:stray,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:vex,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:vindicator,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:warden,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:wither,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:wither_skeleton,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:witch,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:zombified_piglin,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:zombie_villager,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:zombie,distance=..45] add nexus_hostile_mob
tag @n[type=minecraft:zoglin,distance=..45] add nexus_hostile_mob
#Teleport Hostile Mobs
execute at @n[tag=nexus_hostile_mob] run function mcref:nexus_teleport_mobs

#Anti Lightning Grief
execute at @e[type=lightning_bolt,distance=..45] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace fire