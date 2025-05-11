player Alex move backward
execute unless score Alex carpetbot.tridentHoldTimer matches 15.. run function speed_pvp:secondbot/trident/using
execute if score Alex carpetbot.tridentHoldTimer matches 15.. unless score Alex carpetbot.tridentCD matches 1.. run function speed_pvp:secondbot/trident/release