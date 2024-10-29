execute at @n[type=marker,tag=geysir,scores={Ticktimer=1}] run playsound minecraft:weather.rain master @a[distance=..8] ~ ~ ~ 0.2 0.9
execute at @n[type=marker,tag=geysir,scores={Ticktimer=30}] run scoreboard players set @n Ticktimer 0
execute at @n[type=marker,tag=geysir] if entity @p[distance=..1] run function mcref:geysir_boost

