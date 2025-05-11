tag @s remove trident_damage
scoreboard players reset .temp speed_pvp.speed

execute on attacker run function speed_pvp:damage/attacker
function speed_pvp:damage/damage with storage speed_pvp:values

execute if entity @e[type=trident,tag=trident,distance=..0.2] run ride @s mount @n[type=trident,tag=trident]
