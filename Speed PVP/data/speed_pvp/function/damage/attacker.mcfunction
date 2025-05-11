tag @s add speed_pvp.attacker

scoreboard players operation @s speed_pvp.damage.decimals = @s speed_pvp.speed
scoreboard players operation @s speed_pvp.damage.decimals %= 10000 numbers
scoreboard players operation @s speed_pvp.damage.decimals /= 100 numbers

scoreboard players operation @s speed_pvp.damage.whole = @s speed_pvp.speed
scoreboard players operation @s speed_pvp.damage.whole /= 10000 numbers

execute unless entity @s[tag=remove_damage] store result storage speed_pvp:values damage double 0.0001 run scoreboard players get @s speed_pvp.speed
execute if entity @s[tag=remove_damage] store result storage speed_pvp:values damage double 0.000015 run scoreboard players get @s speed_pvp.speed
tag @s[tag=remove_damage] remove remove_damage