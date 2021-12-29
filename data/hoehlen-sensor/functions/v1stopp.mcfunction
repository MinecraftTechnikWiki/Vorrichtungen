# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZHoehlS.1Wert

# Das Etikett zur Auswahl des Stockes und für die Höhle, werden wieder entfernt, falls sie noch vorhanden sind.
tag @a[tag=EtiHoehlS.1Auswahl] remove EtiHoehlS.1Auswahl
tag @a[tag=EtiHoehlS.1Hoehle] remove EtiHoehlS.1Hoehle

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick{EigHoehlS.1Alle:true}

# Falls der Stock auf dem Boden geworfen wurde, wird der Drop entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigHoehlS.1Alle:true} } }]

# Der aktive Chunk wird wieder entladen.
forceload remove ~ ~
