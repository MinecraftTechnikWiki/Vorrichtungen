# Die Punkte-Ziele werden wieder entfernt.
scoreboard objectives remove PZInvS.5Werfer
scoreboard objectives remove PZInvS.5Truhe
scoreboard objectives remove PZInvS.5Ofen
scoreboard objectives remove PZInvS.5Shulker
scoreboard objectives remove PZInvS.5Fass

# Alle Behälter werden aus dem Inventar entfernt.
clear @a *[minecraft:custom_data~{EigInvS.5Alle:true}]

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiInvS.5Block] remove EtiInvS.5Block

# Der Fortschritt, sofern noch vorhanden, wird entfernt.
advancement revoke @a[advancements={inventar-sensor:v5behaelter_platziert=true}] only inventar-sensor:v5behaelter_platziert

# Alle Behälter die noch an der Position der Markierer sind, werden entfernt.
execute at @e[type=minecraft:marker,tag=EtiInvS.5Inventar] if block ~ ~ ~ #inventar-sensor:v5behaelter run setblock ~ ~ ~ minecraft:air replace

# Herumliegende Drops und alle anderen Objekte für den Sensor werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigInvS.5Alle:true}] run kill @s
kill @e[tag=EtiInvS.5Alle]
