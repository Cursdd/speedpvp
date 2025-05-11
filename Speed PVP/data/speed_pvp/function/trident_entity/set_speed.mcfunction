execute on origin run tag @s remove has_trident
scoreboard players operation .temp speed_pvp.speed = @s[type=trident] speed_pvp.speed

execute if entity @e[type=trident,tag=trident] on origin run scoreboard players operation @s speed_pvp.speed = .temp speed_pvp.speed
execute if score .temp speed_pvp.speed matches 1000000.. on origin run tag @s add remove_damage

execute as @a[tag=trident_damage] run function speed_pvp:damage/init
scoreboard players reset .temp speed_pvp.speed
scoreboard players reset @s speed_pvp.speed
tag @s remove trident