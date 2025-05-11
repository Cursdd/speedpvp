execute if entity @s[nbt={inGround:true}] run return run function speed_pvp:trident_entity/get_speed/2
function speed_pvp:calculate_speed
execute on origin run advancement revoke @s only speed_pvp:trident_tick