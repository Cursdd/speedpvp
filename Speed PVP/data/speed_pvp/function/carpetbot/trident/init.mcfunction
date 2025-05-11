player PVPBOT move backward
execute unless score PVPBOT carpetbot.tridentHoldTimer matches 15.. run function speed_pvp:carpetbot/trident/using
execute if score PVPBOT carpetbot.tridentHoldTimer matches 15.. unless score PvPBot carpetbot.tridentCD matches 1.. run function speed_pvp:carpetbot/trident/release