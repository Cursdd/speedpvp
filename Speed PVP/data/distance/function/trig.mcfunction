scoreboard players operation @s txdist = @s xdist
scoreboard players operation @s txdist *= .100 numbers
scoreboard players operation @s txdist /= @s zdist
function distance:math/v
scoreboard players operation @s speed_pvp.speed *= @s xdist