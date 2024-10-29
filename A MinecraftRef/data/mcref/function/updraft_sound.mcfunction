scoreboard players add @n[type=marker,tag=updraft] Ticktimer 1
execute at @n[type=marker,tag=updraft,scores={Ticktimer=1}] run playsound minecraft:entity.breeze.idle_ground master @a[distance=..5] ~ ~ ~ 0.2 1.3
execute at @n[type=marker,tag=updraft,scores={Ticktimer=7}] run playsound minecraft:entity.breeze.whirl master @a[distance=..5] ~ ~ ~ 1 0.5
execute at @n[type=marker,tag=updraft,scores={Ticktimer=15}] run scoreboard players set @n Ticktimer 0
execute at @n[type=marker,tag=updraft] if entity @p[distance=..1] run function mcref:updraft_flight
