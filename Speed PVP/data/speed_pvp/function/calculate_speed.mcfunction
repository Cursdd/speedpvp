execute store result score .temp txdist run data get entity @s Pos[0] 100
execute store result score .temp tzdist run data get entity @s Pos[2] 100

scoreboard players operation @s xdist = .temp txdist
scoreboard players operation @s xdist -= @s pxdist
scoreboard players operation @s zdist = .temp tzdist
scoreboard players operation @s zdist -= @s pzdist

scoreboard players operation @s pxdist = .temp txdist
scoreboard players operation @s pzdist = .temp tzdist

execute if score @s xdist matches ..0 run scoreboard players operation @s xdist *= -1 numbers
execute if score @s zdist matches ..0 run scoreboard players operation @s zdist *= -1 numbers

function distance:start

scoreboard players operation @s speed_pvp.speed.decimals = @s speed_pvp.speed
scoreboard players operation @s speed_pvp.speed.decimals %= 10000 numbers
scoreboard players operation @s speed_pvp.speed.decimals /= 100 numbers

scoreboard players operation @s speed_pvp.speed.whole = @s speed_pvp.speed
scoreboard players operation @s speed_pvp.speed.whole /= 10000 numbers

title @s actionbar ["",{"text":"Speed: ","type":"text"},{"bold":true,"color":"yellow","score":{"name":"@s","objective":"speed_pvp.speed.whole"},"type":"score"},{"bold":true,"color":"white","text":".","type":"text"},{"bold":true,"color":"yellow","score":{"name":"@s","objective":"speed_pvp.speed.decimals"},"type":"score"},{"bold":true,"color":"yellow","text":" ","type":"text"},{"bold":true,"color":"white","text":"| Recent Damage: ","type":"text"},{"bold":true,"color":"red","score":{"name":"@s","objective":"speed_pvp.damage.whole"},"type":"score"},{"bold":true,"color":"white","text":".","type":"text"},{"bold":true,"color":"red","score":{"name":"@s","objective":"speed_pvp.damage.decimals"},"type":"score"}]