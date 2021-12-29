# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZChunkS.1Wert

# Das Etikett zur Auswahl des Kompasses, wird wieder entfernt, falls es noch vorhanden war.
tag @a[tag=EtiChunkS.1Auswahl] remove EtiChunkS.1Auswahl

# Der Kompass wird aus dem Inventar entfernt.
clear @a minecraft:compass{EigChunkS.1Alle:true}

# Falls der Kompass auf dem Boden geworfen wurde, wird der Drop entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigChunkS.1Alle:true} } }]

# Der aktive Chunk wird wieder entladen.
forceload remove ~ ~
