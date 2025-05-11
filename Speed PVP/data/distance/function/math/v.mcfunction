execute if score @s zdist matches 0 run return run scoreboard players set @s speed_pvp.speed 1000
execute if score @s txdist matches 2301.. run return run scoreboard players set @s speed_pvp.speed 1000

execute store result storage input tan int 1 run scoreboard players get @s txdist
function distance:math/v_table with storage input