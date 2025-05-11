$execute on attacker run tellraw @s ["",{"text":"You dealt ","type":"text"},{"bold":true,"color":"green","text":"$(damage)","type":"text"},{"color":"red","text":" ","type":"text"},{"color":"white","text":"damage","type":"text"}]
$tellraw @s ["",{"text":"You recieved ","type":"text"},{"bold":true,"color":"red","text":"$(damage)","type":"text"},{"color":"red","text":" ","type":"text"},{"color":"white","text":"damage","type":"text"}]
$damage @s $(damage) speed_pvp:speed_damage by @p[tag=speed_pvp.attacker]
execute on attacker run tag @s remove speed_pvp.attacker