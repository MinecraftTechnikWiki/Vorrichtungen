# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZSichtWS.1Wert

# Das Etikett zur Auswahl des Kompasses, wird wieder entfernt, falls es noch vorhanden war.
tag @a[tag=EtiSichtWS.1Auswahl] remove EtiSichtWS.1Auswahl

# Der magische Kompass wird aus dem Inventar entfernt.
clear @a minecraft:compass{EigSichtWS.1Alle:true}

# Falls der Kompass auf dem Boden geworfen wurde, wird der Drop entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigSichtWS.1Alle:true} } }]

# Der aktive Chunk wird wieder entladen.
forceload remove ~ ~
