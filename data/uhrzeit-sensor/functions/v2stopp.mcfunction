# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZUhrzeitS.2Wert

# Die drei Eigenschaften des Datenspeichers werden entfernt.
data remove storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit"
data remove storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Zeit"

# Das Etikett zur Auswahl des Stocks, wird wieder entfernt, falls es noch vorhanden war.
tag @a[tag=EtiUhrzeitS.2Auswahl] remove EtiUhrzeitS.2Auswahl

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigUhrzeitS.2Alle:true}]

# Falls der Stock auf dem Boden geworfen wurde, wird der Drop entfernt. Ebenso der Markierer.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigUhrzeitS.2Alle:true}] run kill @s
kill @e[tag=EtiUhrzeitS.2Alle]

# Der aktive Chunk wird wieder entladen.
forceload remove ~ ~

# Die Plan-Funktion wird gestoppt.
schedule clear uhrzeit-sensor:v2sensor
