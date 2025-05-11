execute anchored eyes positioned ^ ^ ^ run function speed_pvp:carpetbot/aim

execute if score PvPBot carpetbot.tridentCD matches 1.. run scoreboard players remove PvPBot carpetbot.tridentCD 1
execute if score PvPBot carpetbot.tridentCD matches ..0 run scoreboard players reset PvPBot carpetbot.tridentHoldTimer
execute if score PvPBot carpetbot.tridentCD matches ..0 run scoreboard players reset PvPBot carpetbot.tridentCD

function speed_pvp:carpetbot/trident/init